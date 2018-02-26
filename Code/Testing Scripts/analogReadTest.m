% -------------------------------------------------------------------------
% ECE 102 Engineering Computation
% Photocell and LED circuit
%
% This program automates the measurement of the FIO4 voltage for the
% photocell circuit. The core program continuously measures FIO4 and
% plots the value on a graph that is updated in real-time.
% -------------------------------------------------------------------------
% Build the Photoresistor circuit from LabJack Lab 3
% Set FIO4 to analog input in initializeLJ

% analogRead function verified by Chuck 2/15/2018

clc
initializeLJ()

disp('Measurement started:')

while true
    % Read FIO4 voltage
    [Error AIN] = analogRead(4);
    Error_Message(Error)

    fprintf('%6.3f\n', AIN)
    pause(0.5)
end
