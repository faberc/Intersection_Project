function Error = digitalWrite(ioPin, data)% Writes digital data to specified IO pin.% Inputs: ioPin, data% Outputs: Error% Initialize LJ (global?) Constants% Write data to LabJackError = ljud_ePut (ljHandle, LJ_ioPUT_DIGITAL_BIT, ioPin, data, 0);end