"""
Created on Thu Nov 29 19:14:08 2018

@author: JunYoungChoi
"""
#!/usr/bin/etc python
import cv2
import time
import numpy as np
import pytesseract
from  PIL import Image
import my_queue
import tcp_information
import RPi.GPIO as GPIO
import sort_number_plate
import order_points
import region_of_interest

GPIO.setmode(GPIO.BCM)
GPIO.setup(17,GPIO.OUT)
GPIO.output(17,False)
time.sleep(0.25)

camera  =cv2.VideoCapture(-1)
time.sleep(0.25)
camera.set(cv2.CAP_PROP_FPS, 15)
first_frame= None

count=0
checking_car = False
checking_execute_ocr_process=False
temp=my_queue.my_queue(15)

def checking_sub_frames_moving(frame):
    result = True # bool - true or flase 
    for i in range(len(frame)-1):#range(len(frame))==(0,9) -> we don't need i==9
        height, width = frame[i].shape[:2]
        frame_area = height*width
        count=0
        for h in range(0,height):
            #print("h",h)
            for w in range(0,width):
                #print("h",w)
                if 255 == frame[i][w][h]:
                    count +=1
        if count/frame_area<0.175:
            result=False
            return result
    return result
            
while True:
    count += 1
    (ret , frame) = camera.read()
    if not ret:
        print("faile to get frame")
        break
    
    h, w = frame.shape[:2]
    vertices = np.array([[50,h-1],[w/4,h/2+h/10],[(w/4)*3,h/2+h/10],[w-50,h-1]],np.int32)
    Roi_frame = region_of_interest.region_of_interest(frame,[vertices])
    
    shown_frame=Roi_frame.copy()#set shown frame which will be displayed on window
    
    gray = cv2.cvtColor(Roi_frame, cv2.COLOR_BGR2GRAY)
    
    Roi_sub_frames=[]
    if first_frame is None:
        first_frame = gray
        continue
    
   
    if (count%3 ==0 ):
        count = 0
        frameDelta = cv2.absdiff(first_frame, gray)
        
        Roi_sub_frame0=frameDelta[(h//2+h//10)+20:(h//2+h//10)+50, w//2-15:w//2+15]  #top
        #ret,threshold_sub_frame0 = cv2.threshold(Roi_sub_frame0,15,255,cv2.THRESH_BINARY)
        blur0=cv2.GaussianBlur(Roi_sub_frame0,(3,3),0)
        threshold_sub_frame0=cv2.adaptiveThreshold(blur0,255,cv2.ADAPTIVE_THRESH_MEAN_C,cv2.THRESH_BINARY,5,-0.5)
        cv2.rectangle(shown_frame,(w//2-15,(h//2+h//10)+20),(w//2+15,(h//2+h//10)+50),(0,0,255),2)
        
        Roi_sub_frame1=frameDelta[(h//4)*3:(h//4*3)+30,w//2-15:w//2+15] #second floor from the top
        #ret,threshold_sub_frame1 = cv2.threshold(Roi_sub_frame1,15,255,cv2.THRESH_BINARY)
        blur1=cv2.GaussianBlur(Roi_sub_frame1,(3,3),0)
        threshold_sub_frame1=cv2.adaptiveThreshold(blur1,255,cv2.ADAPTIVE_THRESH_MEAN_C,cv2.THRESH_BINARY,5,-0.5)
        cv2.rectangle(shown_frame,(w//2-15,(h//4)*3),(w//2+15,(h//4*3)+30),(0,0,255),2)
        
        Roi_sub_frame2=frameDelta[(h//4)*3:(h//4*3)+30,w//3+25:w//3+55] #second floor from the top
        #ret,threshold_sub_frame2 = cv2.threshold(Roi_sub_frame2,15,255,cv2.THRESH_BINARY)
        blur2=cv2.GaussianBlur(Roi_sub_frame2,(3,3),0)
        threshold_sub_frame2=cv2.adaptiveThreshold(blur2,255,cv2.ADAPTIVE_THRESH_MEAN_C,cv2.THRESH_BINARY,5,-0.5)
        cv2.rectangle(shown_frame,(w//3+25,(h//4)*3),(w//3+55,(h//4*3)+30),(0,0,255),2)
        
        Roi_sub_frame3=frameDelta[(h//4)*3:(h//4*3)+30,w//2+51:w//2+81] #second floor from the top
        #ret,threshold_sub_frame3 = cv2.threshold(Roi_sub_frame3,15,255,cv2.THRESH_BINARY)
        blur3=cv2.GaussianBlur(Roi_sub_frame3,(3,3),0)
        threshold_sub_frame3=cv2.adaptiveThreshold(blur3,255,cv2.ADAPTIVE_THRESH_MEAN_C,cv2.THRESH_BINARY,5,-0.5)
        cv2.rectangle(shown_frame,(w//2+51,(h//4)*3),(w//2+81,(h//4*3)+30),(0,0,255),2)
        
        Roi_sub_frame4=frameDelta[(h//4)*3+52:(h//4*3)+82,w//2-15:w//2+15] #third floor from the top
        #ret,threshold_sub_frame4 = cv2.threshold(Roi_sub_frame4,15,255,cv2.THRESH_BINARY)
        blur4=cv2.GaussianBlur(Roi_sub_frame4,(3,3),0)
        threshold_sub_frame4=cv2.adaptiveThreshold(blur4,255,cv2.ADAPTIVE_THRESH_MEAN_C,cv2.THRESH_BINARY,5,-0.5)
        cv2.rectangle(shown_frame,(w//2-15,(h//4)*3+52),(w//2+15,(h//4*3)+82),(0,0,255),2)
        
        Roi_sub_frame5=frameDelta[(h//4)*3+52:(h//4*3)+82,w//3+25:w//3+55] #third floor from the top
        #ret,threshold_sub_frame5 = cv2.threshold(Roi_sub_frame5,15,255,cv2.THRESH_BINARY)
        blur5=cv2.GaussianBlur(Roi_sub_frame5,(3,3),0)
        threshold_sub_frame5=cv2.adaptiveThreshold(blur5,255,cv2.ADAPTIVE_THRESH_MEAN_C,cv2.THRESH_BINARY,5,-0.5)
        cv2.rectangle(shown_frame,(w//3+25,(h//4)*3+52),(w//3+55,(h//4*3)+82),(0,0,255),2)
        
        Roi_sub_frame6=frameDelta[(h//4)*3+52:(h//4*3)+82,w//2+51:w//2+81] #third floor from the top
        #ret,threshold_sub_frame6 = cv2.threshold(Roi_sub_frame6,15,255,cv2.THRESH_BINARY)
        blur6=cv2.GaussianBlur(Roi_sub_frame6,(3,3),0)
        threshold_sub_frame6=cv2.adaptiveThreshold(blur6,255,cv2.ADAPTIVE_THRESH_MEAN_C,cv2.THRESH_BINARY,5,-0.5)
        cv2.rectangle(shown_frame,(w//2+51,(h//4)*3+52),(w//2+81,(h//4*3)+82),(0,0,255),2)
        
        Roi_sub_frame7=frameDelta[(h//4)*3+52:(h//4*3)+82,w//3-40:w//3-10] #third floor from the top
        #ret,threshold_sub_frame7 = cv2.threshold(Roi_sub_frame7,15,255,cv2.THRESH_BINARY)
        blur7=cv2.GaussianBlur(Roi_sub_frame7,(3,3),0)
        threshold_sub_frame7=cv2.adaptiveThreshold(blur7,255,cv2.ADAPTIVE_THRESH_MEAN_C,cv2.THRESH_BINARY,5,-0.5)
        cv2.rectangle(shown_frame,(w//3-40,(h//4)*3+52),(w//3-10,(h//4*3)+82),(0,0,255),2)
        
        Roi_sub_frame8=frameDelta[(h//4)*3+52:(h//4*3)+82,w//2+117:w//2+147] #third floor from the top
        #ret,threshold_sub_frame8 = cv2.threshold(Roi_sub_frame8,15,255,cv2.THRESH_BINARY)
        blur8=cv2.GaussianBlur(Roi_sub_frame8,(3,3),0)
        threshold_sub_frame8=cv2.adaptiveThreshold(blur8,255,cv2.ADAPTIVE_THRESH_MEAN_C,cv2.THRESH_BINARY,5,-0.5)
        cv2.rectangle(shown_frame,(w//2+117,(h//4)*3+52),(w//2+147,(h//4*3)+82),(0,0,255),2)
        
        Roi_sub_frames.append(threshold_sub_frame0)
        Roi_sub_frames.append(threshold_sub_frame1)
        Roi_sub_frames.append(threshold_sub_frame2)
        Roi_sub_frames.append(threshold_sub_frame3)
        Roi_sub_frames.append(threshold_sub_frame4)
        Roi_sub_frames.append(threshold_sub_frame5)
        Roi_sub_frames.append(threshold_sub_frame6)
        Roi_sub_frames.append(threshold_sub_frame7)
        Roi_sub_frames.append(threshold_sub_frame8)
        
        #if 1 -> 차만큼 큰 물체가 모든 roi를 차지하고 있으면 True 
        if checking_sub_frames_moving(Roi_sub_frames):
            #if2 ->차가 처음 입차 했을때 시간 설정
            if checking_car == False:                
                parking_time = time.time()
                checking_car = True
            #if 2
            else:
                blur = cv2.GaussianBlur(gray, (3,3), 0)
                canny=cv2.Canny(blur,20,100)
                
                (cnts,contours,hierarchy) = cv2.findContours(canny.copy(),cv2.RETR_LIST,cv2.CHAIN_APPROX_SIMPLE)
                sorted_contours = sorted(contours,key = cv2.contourArea, reverse = True)[:5]
                
                for c in sorted_contours:
                    peri =cv2.arcLength(c,True)
                    approx = cv2.approxPolyDP(c, 0.03 *peri , True)
                 
                    screenCnt = []
                    if len(approx) == 4:
                        contourSize = cv2.contourArea(approx)
                        camSize = frame.shape[0]*frame.shape[1]
                        ratio = contourSize / camSize
                        
                        #if 3 -> 추출된 사각형이 충분이 큰 비율을 가질때 screenCnt 에 그 플레이트의 좌표 저장
                        if ratio < 0.05 and ratio > 0.02:
                            screenCnt =approx
                            break
                #if 4 -> 번호판이 추출되지 않았을때 그냥 이미지를 보여준다    
                if len(screenCnt) == 0:
                    cv2.imshow("shown_frame",shown_frame)
                    continue
                #if 4
                else:
                    #if 5 -> 주차 시간이 5초 이상고 ocr이 한번도 실행되지 않았을때 일때 번호판 추출을 한다
                    cv2.drawContours(shown_frame,c,-1,(0,255,0),3)
                    cv2.imshow("shown_frame",shown_frame)
                    ad_th = cv2.adaptiveThreshold(blur,255,cv2.ADAPTIVE_THRESH_MEAN_C,cv2.THRESH_BINARY,21,10)
                    temp.insert(ad_th,screenCnt)
                    if (time.time()-parking_time> 5) and (checking_execute_ocr_process == False) :
                        checking_execute_ocr_process = True
                        while True:
                            try:
                                point=temp.get_screen_contours()
                            except IndexError:
                                print("fail to process try to get again ")
                                checking_car = False
                                checking_execute_ocr_process = False
                                break
                            rect = order_points.order_points(point.reshape(4,2))
                            (topLeft, topRight, bottomRight, bottomLeft) = rect
                            w1 = abs(bottomRight[0] - bottomLeft[0])
                            w2 = abs(topRight[0] - topLeft[0])
                            h1 = abs(topRight[1] - bottomRight[1])
                            h2 = abs(topLeft[1] - bottomLeft[1])
                            maxWidth = max([w1,w2])
                            maxHeight = max([h1,h2])
                            
                            dst = np.float32([[0,0], [maxWidth-1,0],[maxWidth-1,maxHeight-1],[0,maxHeight-1]])
                            
                            M  = cv2.getPerspectiveTransform(rect,dst)
                            warped = cv2.warpPerspective(temp.get_frame(), M, (maxWidth,maxHeight))
                
                            cv2.imwrite('/home/pi/example_pictures/sent_picture/sent_picture.jpg',frame)
                            cv2.imwrite('/home/pi/example_pictures/number_plate/er_plate.jpg',warped)
                            result = pytesseract.image_to_string(Image.open('/home/pi/example_pictures/number_plate/er_plate.jpg'), lang='kor')
                            print("result -> ",result)
                            sort_result=sort_number_plate.sort_number_plate(result)
                            print(sort_result)
                            cv2.imshow("warped",warped)
                            cv2.imshow("shown_frame",shown_frame)
                            if len(sort_result)==7:
                                tcp=tcp_information.tcp_information('25.20.30.103',2620,700000,'/home/pi/example_pictures/sent_picture')
                                tcp.Sever_connect(sort_result)
                                if 'X' in tcp.get_buzzer():
                                    GPIO.output(17,True)
                                temp.clear()
                                break
                            
        #if 1 -> 차만큼 큰 물체가 모든 roi를 차지하고 있으면 True 
        else:
            #print("exceute")
            checking_execute_ocr_process = False
            checking_car = False
            GPIO.output(17,False)
            cv2.imshow("shown_frame",shown_frame)
            
        key = cv2.waitKey(1) & 0xFF
        if key == 27:
            break
    else:
        cv2.imshow("shown_frame",shown_frame)
        key = cv2.waitKey(1) & 0xFF
        if key == 27:
            break

camera.release()
GPIO.cleanup()
cv2.destroyAllWindows()
