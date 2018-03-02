initializeLJ();
gtreset();
trafficArray = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]; %initialize traffic lights
while true
    trafficArray = trafficLights(5);
    disp(trafficArray);
    pause(1)
end