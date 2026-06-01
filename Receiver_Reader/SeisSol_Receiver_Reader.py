# -*- coding: utf-8 -*-
"""
Created on Sat Apr  4 22:10:59 2026

@author: semmo
"""

import numpy as np
import matplotlib.pyplot as plt

#Load Data
data = np.loadtxt('your_file_path',skiprows=2)
#load first 160000 data points (80 seconds)
#data = np.loadtxt('your_file_path',skiprows=2,max_rows=160000)
#load first 65000 data points
#data = np.loadtxt('your_file_path',skiprows=2,max_rows=65000)
#load first 135000 data points
#data = np.loadtxt('your_file_path',skiprows=2,max_rows=135000)

#Split Data
time = data[:, 0]
vx = data[:, 7]
vy = data[:, 8]
vz = data[:, 9]
dt = 0.0005

#Scale time data
x_scaled = np.arange(len(data)) * dt

#Take derivative of velocity to get acceleration
dxdx = np.gradient(vx)
dydx = np.gradient(vy)
dzdx = np.gradient(vz)

#Plot velocities
#plt.plot(x_scaled, vx, label='Vx')
#plt.plot(x_scaled, vy, label='Vy')
#plt.plot(x_scaled, vz, label='Vz')

#Total Acceleration
ddx = dxdx + dydx + dzdx