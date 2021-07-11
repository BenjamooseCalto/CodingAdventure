from datetime import datetime

def get_UTC_Offset(): #who knows if this abomination works
    utc = datetime.utcnow()
    utc = utc.hour
    local = datetime.now()
    local = local.hour
    if local == 0:
        diff = utc
        diff = utc * -1
    else:
        diff = local - utc
    return diff

def get_dst(): #only verified for Texas
    localtime = datetime.now()
    month = localtime.month
    day = localtime.day
    hour = localtime.hour
    if 3 <= month <= 11:
        if month == 3:
            if day >= 14:
                if hour >= 2:
                    return True
                else:
                    return False
            else: 
                return False
        elif month == 11:
            if day <= 7:
                if hour >= 2:
                    return False
                else:
                    return True
            else:
                return False
        else:
            return True
    else:
        return False
