% ------------------------------------------------------------------
% ECE 102 Engineering Computation
%
% This script automates the measurement of the FIO4 voltage for
% at the resistor circuit. The core program only measures FIO4 at
% VDAC = 2V. You will modify the script to calculate several
% important values in order determine the output resistance of DAC0.
% ------------------------------------------------------------------
% Set FIO4 to analog input in initializeLJ
% analogWrite function verified by Chuck 2/25/18 (checked that VR1 values
% varied appropriately)
 
clc
initializeLJ();


% Constants
R1 = 1000;

% Create array of Voltages, and empty arrays for other values
VDAC0 = 0.2:0.2:4.8;
I = zeros(1,length(VDAC0));
VR1 = zeros(1,length(VDAC0));
VR0 = zeros(1,length(VDAC0));
R0 = zeros(1,length(VDAC0));
PRE = zeros(1,length(VDAC0));

for i = 1:length(VDAC0)
% Set the DAC0 output voltage
Error = analogWrite(0, VDAC0(i));
Error_Message(Error);

pause(0.2); % Wait a little to give output voltage enough time to stabilize
 
% Read FIO4 voltage
[Error, VFIO4] = analogRead(4);
Error_Message(Error);

% Add FIO4 Voltage to VR1 array
VR1(i) = VFIO4;

% Calculate I
I(i) = VR1(i)/R1;

% Calculate VR0
VR0(i) = VDAC0(i) - VR1(i);

% Calculate R0
R0(i) = VR0(i)/I(i);

% Calculate PRE
PRE(i) = (abs(R0(i)-50)/50)*100;

% Display results
%fprintf('VDAC0 = %.2f V\n', VDAC0(i))
%fprintf('VFIO4 = %.2f V\n', VR1(i))
%fprintf('R0 = %.2f V\n', R0(i))
%fprintf('PRE = %.2f V\n', PRE(i))
end

T = table(VDAC0', VR1', I', VR0', R0', PRE', 'VariableNames',{'VDAC0','VR1', 'I', 'VR0', 'R0', 'PRE'})