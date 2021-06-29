scratch

--@type TRP3_API - not sure how this works
local _, TRP3_API = ...;

local Ellyb = Ellyb(...);

TRP3_API.dashboard = {
	NOTIF_CONFIG_PREFIX = "notification_"
};

-- some functions, dependent on TRP3_API
function TRP3_API.dashboard.isPlayerIC()
	return get("player/character/RP") == 1;
end

function TRP3_API.dashboard.getCharacterExchangeData()
	return get("player/character");
end

--define character info? 
local get, getDefaultProfile = TRP3_API.profile.getData, TRP3_API.profile.getDefaultProfile;

getDefaultProfile().player.character = {
	v = 1,
	RP = TRP3_Enums.ROLEPLAY_STATUS.IN_CHARACTER,
	XP = TRP3_Enums.ROLEPLAY_EXPERIENCE.EXPERIENCED,
	LC = GetLocale(),
}
local function incrementCharacterVernum()
	local character = get("player/character");
	character.v = Utils.math.incrementNumber(character.v or 1, 2);
	Events.fireEvent(Events.REGISTER_DATA_UPDATED, Globals.player_id, getPlayerCurrentProfileID(), "character");
end

--sanitize?
local FIELDS_TO_SANITIZE = {
	"CO", "CU"
}
---@param structure table
---@return boolean
function TRP3_API.dashboard.sanitizeCharacter(structure)
	local somethingWasSanitized = false;
	if structure then
		for _, field in pairs(FIELDS_TO_SANITIZE) do
			if structure[field] then
				local sanitizedValue = Utils.str.sanitize(structure[field]);
				if sanitizedValue ~= structure[field] then
					structure[field] = sanitizedValue;
					somethingWasSanitized = true;
				end
			end
		end
	end
	return somethingWasSanitized;
end

------------------------------------------------------------------------------
-- Register with TRP3.
--
local MODULE_INFO = {

    -- copy info over from the TOC file
    --
    ["name"]        = GetAddOnMetadata( addonName, "Title" );
    ["description"] = GetAddOnMetadata( addonName, "Notes" );
    
    -- we are cutting off the minor version for the two-figure version number
    -- in the module
    --
    ["version"]     = tonumber( GetAddOnMetadata( addonName, "Version" ):match("^%d+%.%d+") );
    
    ["id"]          = "trp3_currently_frame";
    ["onStart"]     = onStart;
    ["onInit"]      = onInit;
    ["minVersion"]  = 3;
};
 
TRP3_API.module.registerModule( MODULE_INFO );

-- changing currently
function Me:SetCurrently( text, ooc )
    if not ooc then
       Me.frame.text:SetText( text or "" )
    else
       Me.frame.textooc:SetText( text or "" )
    end
    Me:SaveCurrently()
 end
 
 function Me:SaveCurrently()
    local character = TRP3_API.profile.getData("player/character")
    local old_cu = character.CU
    local old_co = character.CO
    character.CU = self.frame.text:GetText()
    character.CO = self.frame.textooc:GetText()
    local changed = false
    if old_cu ~= character.CU then
       changed = true
       local context = TRP3_API.navigation.page.getCurrentContext()
       if context and context.isPlayer then
          TRP3_RegisterMiscViewCurrentlyICScrollText:SetText( character.CU or "" )
       end
    end
    
    if old_co ~= character.CO then
       changed = true
       local context = TRP3_API.navigation.page.getCurrentContext()
       if context and context.isPlayer then
          TRP3_RegisterMiscViewCurrentlyOOCScrollText:SetText( character.CO or "" )
       end
    end
    
    if changed then
       -- Update profile version (v) and then trigger an event for other
       --  TRP handlers.
       character.v = TRP3_API.utils.math.incrementNumber(character.v or 1, 2)
       TRP3_API.events.fireEvent( 
          TRP3_API.events.REGISTER_DATA_UPDATED,
          TRP3_API.globals.player_id, 
          TRP3_API.profile.getPlayerCurrentProfileID(), 
          "character"
       )
    end
 end
-- fix for nil ref
TRP3_API.events.listenToEvent(TRP3_API.events.WORKFLOW_ON_FINISH, function()
    character = TRP3_API.profile.getData("player/character")
    oldCU = character.CU
end);
--