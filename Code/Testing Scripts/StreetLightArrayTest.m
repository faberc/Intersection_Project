% Streetlights are dim with only 3.3 volts. They are very bright with
% 4.5 volts. But worried about burn out.
initializeLJ();
V = 4.5;
analogWrite(0,V);
pause(3);
analogWrite(0,0)