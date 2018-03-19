function turnOffLights()
% turns off all board lights

initializeLJ();
shiftOut([0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]);
digitalWrite(2:5,0);
analogWrite(0,0);
end