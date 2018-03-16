% Streetlights are dim with only 3.3 volts. They are very bright with
% 4.5 volts. But worried about burn out.
initializeLJ();
V = 4.5;
while true
analogWrite(0,V);
analogWrite(1,3.3); % Make house LEDs a random percentage of 3.3 volts.
pause(3);
analogWrite(0,0);
analogWrite(1,4);
end