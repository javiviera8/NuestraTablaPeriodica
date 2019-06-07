#!/usr/bin/python

import serial
#import vlc
import sys
import commands
import subprocess


#player1 = vlc.MediaPlayer('./Downloads/video1.mp4')
#player2 = vlc.MediaPlayer('./Downloads/video2.mp4')
#player3 = vlc.MediaPlayer('./Downloads/video3.mp4')

PuertoSerie = serial.Serial('/dev/ttyACM0',115200)

while True:
	arduino = PuertoSerie.readline()
	if arduino.rstrip()=='0':
		#player1.play()		
		subprocess.call(['vlc' ,'-f' ,'./Downloads/video1.mp4'])
	if arduino.rstrip()=='1':
		#player2.play()
		subprocess.call(['vlc' ,'-f' ,'./Downloads/video2.mp4'])	
	if arduino.rstrip()=='2':
		subprocess.call(['vlc' ,'-f' ,'./Downloads/video3.mp4'])
		#player3.play()

