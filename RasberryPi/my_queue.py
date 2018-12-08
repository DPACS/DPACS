"""
Created on Thu Nov 29 19:14:08 2018

@author: JunYoungChoi
"""
class my_queue(object):
    SIZE=5
    temp=[]
    screen_contours=[]
    def __init__(self, size=5):
        self.SIZE=size
    def insert(self,frame,screenContours):
        if len(self.temp)<=self.SIZE-1:
            self.temp.append(frame)
            self.screen_contours.append(screenContours)
        else:
            self.temp.remove(self.temp[0])
            self.screen_contours.remove(self.screen_contours[0])
            self.temp.append(frame)
            self.screen_contours.append(screenContours)
    def print_attribute(self):
        print(self.temp)
        print(self.screen_contours)
    def clear(self):
        self.temp.clear()
        self.screen_contours.clear()
    def get_frame(self):
        return self.temp.pop()
    def get_screen_contours(self):
        return self.screen_contours.pop()
        