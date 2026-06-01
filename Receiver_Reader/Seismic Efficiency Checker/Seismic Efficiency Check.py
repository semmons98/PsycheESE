# -*- coding: utf-8 -*-
"""
Created on Mon Apr 20 13:36:03 2026

@author: semmo
"""

import numpy as np
import scipy.integrate as spi

# Load Data
data = np.loadtxt('your file path',skiprows=2,max_rows=200)

# Split Data
time = data[:, 0]
vx = data[:, 7]
vy = data[:, 8]
vz = data[:, 9]

#Scale time data
dt = 0.0005
x_scaled = np.arange(len(data)) * dt

#Take derivative of velocity to get acceleration
dxdx = np.gradient(vx, dt)
dydx = np.gradient(vy, dt)
dzdx = np.gradient(vz, dt)

rho = 3900 #kg/m^3
c = 8000 #m/s

#Find magnitude of velocity squared
v_squared = vx**2 + vy**2 + vz**2

# Energy integral
integrand = rho * c * v_squared
E_out = spi.simpson(integrand, dx=dt)
print("Radiated Energy:", E_out)
E_initial = 4e7 #Input your initial impact energy
efficiency = E_out / E_initial * 100
print(efficiency)