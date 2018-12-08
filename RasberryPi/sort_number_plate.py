# -*- coding: utf-8 -*-
"""
Created on Thu Nov 29 19:14:08 2018

@author: JunYoungChoi
"""
import isNumber

def sort_number_plate(array):
    sort_result=''
    for i in range(len(array)):
        if isNumber.isNumber(array[i]):
            sort_result= sort_result+array[i]
        elif (len(sort_result)==2):
            if isNumber.isNumber(array[i])==False:
                sort_result= sort_result+array[i]
                
    return sort_result