function [] = shiftOut(dataArray)% This function writes an array of data to the shift registers (74HC595)% Data sheet: https://assets.nexperia.com/documents/data-sheet/74HC_HCT595.pdf% Inputs: dataArray% Ouputs: ???% I/O Pin AssignmentslatchPin = 8;clkPin = 9;dataPin = 10;resetPin = 13;  % Needed?% Reset all data? (MR Pin activates low) -- Is this needed if latchOut has% already happened?digitalWrite(resetPin, 0);digitalWrite(resetPin, 1);% Set clkPin low to begin with?digitalWrite(clkPin, 0);% Set latchPin low for duration of data transferdigitalWrite(latchPin, 0);% Write Data  for i = 1:length(dataArray)    digitalWrite(dataPin, dataArray(i));    digitalWrite(clkPin, 1);    digitalWrite(clkPin, 0);  end  % Latch Out Data (check specs to find appropriate method)digitalWrite(latchPin, 1);end