initializeAll();
global readyNS
global readyEW
global TLAseq
global TLCseq
while true
t = gtime();
trafficLights();
turnLanes();
crossWalkLights();
crossWalkButtons();

if abs(t - round(t)) < 0.01
fprintf('Time: %i s.\n', round(t));
fprintf('CW-NS: %i. CW-EW: %i.\n', [readyNS, readyEW]);
fprintf('TLA: %d. TLC: %d.\n', [TLAseq, TLCseq]);
end

end
