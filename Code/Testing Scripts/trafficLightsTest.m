initializeAll();
gtreset();
trafficArray = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]; %initialize traffic lights
while true
    trafficArray = trafficLights();
    disp(trafficArray);
    pause(1)
end