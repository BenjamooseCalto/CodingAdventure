import numpy as np
import cv2

cap = cv2.VideoCapture(0)
face_cascade = cv2.CascadeClassifier(cv2.data.haarcascades + 'haarcascade_frontalface_default.xml')
eye_cascade = cv2.CascadeClassifier(cv2.data.haarcascades + 'haarcascade_eye.xml')

while True:
    ret, frame = cap.read()

    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    faces = face_cascade.detectMultiScale(gray, 1.3, 5)
    for (x, y, w, h) in faces:
        cv2.rectangle(frame, (x, y), (x + w, y + h), (0, 0, 255), 1)
        roi_gray = gray[y:y+w, x:x+w]
        roi_color = frame[y:y+w, x:x+w]
        eyes = eye_cascade.detectMultiScale(roi_gray, 1.3, 5)
        for (ex, ey, ew, eh) in eyes:
            cv2.rectangle(roi_color, (ex, ey), (ex + ew, ey + eh), (0, 255, 0), 1)

    cv2.imshow('frame', frame)

    if cv2.waitKey(1) == ord('q'):
        break

''' drawing on the image
    img = cv2.line(frame, (0, 0), (width, height), (0, 0, 255), 5)
    img = cv2.line(img, (0, height), (width, 0), (0, 0, 255), 5)
    img = cv2.rectangle(img, (100, 100), (200, 200), (128, 128, 128), 5)
    img = cv2. circle(img, (300, 300), 60, (0, 0, 255), -1)
    font = cv2.FONT_HERSHEY_SIMPLEX
    img = cv2.putText(img, 'Text Here!', (200, height - 10), font, 2, (255, 255, 255), 2, cv2.LINE_AA)


    finding color
    hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)
    lowerBlue = np.array([0, 54, 30])
    upperBlue = np.array([0, 72, 45])

    mask = cv2.inRange(hsv, lowerBlue, upperBlue)

    result = cv2.bitwise_and(frame, frame, mask=mask)

    BGR_color = np.array([[[255, 0, 0]]])
    cv2.cvtColor(BGR_color, cv2.COLOR_BGR2HSV)


    finding corners and drawing lines between them
    img = cv2.imread('OpenCV/assets/chessboard.png')
    img = cv2.resize(img, (0, 0), fx=0.5, fy=0.5)
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

    corners = cv2.goodFeaturesToTrack(gray, 100, 0.01, 10)
    corners = np.int0(corners)

    for corner in corners:
    x, y = corner.ravel()
    cv2.circle(img, (x, y), 5, (0, 0, 255), -1)

    for i in range(len(corners)):
        for j in range(i + 1, len(corners)):
            corner1 = tuple(corners[i][0])
            corner2 = tuple(corners[j][0])
            color = tuple(map(lambda x: int(x), np.random.randint(0, 255, size=3)))
            cv2.line(img, corner1, corner2, (color), 1)


    template matching
    img = cv2.resize(cv2.imread('OpenCV/assets/soccer_practice.jpg', 0), (0, 0), fx=0.5, fy=0.5)
    template = cv2.resize(cv2.imread('OpenCV/assets/shoe.png', 0), (0, 0), fx=0.5, fy=0.5)
    h, w = template.shape

    methods = [cv2.TM_CCOEFF, cv2.TM_CCOEFF_NORMED, cv2.TM_CCORR, cv2. TM_CCORR_NORMED, cv2.TM_SQDIFF, cv2.TM_SQDIFF_NORMED]

    for method in methods:
        img2 = img.copy()

        result = cv2.matchTemplate(img2, template, method)
        min_val, max_val, min_loc, max_loc = cv2.minMaxLoc(result)
        if method in [cv2.TM_SQDIFF, cv2.TM_SQDIFF_NORMED]:
            location = min_loc
        else:
            location = max_loc
        
        bottom_right = (location[0] + w, location[1] + h)
        cv2.rectangle(img2, location, bottom_right, 255, 1)
        cv2.imshow('match', img2)
        cv2.waitKey(0)
        cv2.destroyAllWindows()
'''

def randColor(int1, int2, size):
    color = tuple(map(lambda x: int(x), np.random.randint(int1, int2, size=size)))
    return color

