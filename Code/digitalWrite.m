function Error = digitalWrite(ioPin, data)% Writes digital data to specified IO pin.% Inputs: ioPin, data% Outputs: Error% Initialize LJ (global?) Constantsglobal ljHandleglobal LJ_ioPUT_DIGITAL_BIT% Write data to LabJackioPin = uint8(ioPin);data = logical(data);Error = ljud_ePut(ljHandle,LJ_ioPUT_DIGITAL_BIT,ioPin,data,0);end