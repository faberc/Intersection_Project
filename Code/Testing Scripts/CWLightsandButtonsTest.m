initializeAll()
global readyNS
global readyEW

while true
    time = gtime();
    crossWalkLights();
    crossWalkButtons();
    disp([readyNS, readyEW])
    pause(1);
    fprintf("Time is %i ", round(time))
end