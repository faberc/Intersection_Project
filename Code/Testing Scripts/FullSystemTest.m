clear
clc
initializeAll();

global readyNS
global readyEW

while true
t = gtime();
trafficLights();
carSense = turnLanes();
crossWalkLights();
crossWalkButtons();
lux = ambientLight();

if abs(t - round(t)) < 0.01
  fprintf('Time: %i s.\n', round(t));
  fprintf('CW-NS: %i. CW-EW: %i.\n', [readyNS, readyEW]);
  fprintf('CarTLA: %i. CarTLC: %i.\n', ~carSense(1), ~carSense(2));
  fprintf('Lux: %f\n\n', lux);
end

end
