% -------------------------------------------------------------------------
% ECE 102 Engineering Computation
% Mini Pushbutton Switch circuit
% 
% Chuck Faber
% 2/22/2018
% 
% This program automates the measurement of the FIO4 voltage for the
% switch circuit.
% -------------------------------------------------------------------------
% Build the switch circuit from LabJack Lab 3

% digitalRead function verified by Chuck 2/15/2018


initializeLJ()

count = 0; % Initialize counter for switch events
delay = 0.2;

while true  
    [Error State]= digitalRead(1); % Read switch
    Error_Message(Error)
    
    if (State == 0)  % Check if switch button was pressed
        pause(delay) % Yes, so wait for button to be released
        disp('switch is pressed')
        count = count + 1;  % Increment counter each time switch is pressed
             
        fprintf('count =  %d times\n', count)
    end
end
