% FIO4 connected to positive lead of LED. Neg connected to ground.

% digitalWrite function verified by Chuck 2/15/2018

initializeLJ()
for i = 1:5
digitalWrite(0,1);
pause(3);
digitalWrite(0,0);
pause(3);
end