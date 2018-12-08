# -*- coding: utf-8 -*-
"""
Created on Thu Nov 29 19:14:08 2018

@author: JunYoungChoi
"""
import numpy as np

def order_points(pts):
    
    rect= np.zeros((4,2),dtype="float32")

    s=np.sum(pts,axis=1)
    rect[0] = pts[np.argmin(s)]
    rect[2] = pts[np.argmax(s)]

    diff = np.diff(pts, axis =1 )
    rect[1]= pts[np.argmin(diff)]
    rect[3]= pts[np.argmax(diff)]
    
    return rect