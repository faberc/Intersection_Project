function turnOffLights()
% turns off the traffic lights
initializeLJ();
shiftOut([0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]);
digitalWrite(2:5,0);
end