initializeAll();
global readyNS
global readyEW
t = gtime();
while true
if t < 51
    crossWalkButtons();
    pause(2);
    disp([readyNS, readyEW]);
else
    gtreset();
end
end