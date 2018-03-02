*insert labjack startup code*
while true
  tic;
  while toc <= 50
    [Error state]= ljud_eGet(ljHandle, LJ_ioGET_DIGITAL_BIT,0,0,0); % Read switch
    Error_Message(Error)
  end
  tic;
  while toc <= 50  % north/south lights
    if (state == 1)
      Error = ljud_ePut(ljHandle, LJ_ioPUT_DIGITAL_BIT,4,1,0);
      Error_Message(Error)
      Error = ljud_ePut(ljHandle, LJ_ioPUT_DIGITAL_BIT,5,1,0);
      Error_Message(Error)
      [Error state]= ljud_eGet(ljHandle, LJ_ioGET_DIGITAL_BIT,1,0,0); % Read switch
      Error_Message(Error)
    end
  end
  tic;
  while toc <= 50 % east/west lights
    if (state == 1)
      Error = ljud_ePut(ljHandle, LJ_ioPUT_DIGITAL_BIT,2,1,0);
      Error_Message(Error)
      Error = ljud_ePut(ljHandle, LJ_ioPUT_DIGITAL_BIT,3,1,0);
      Error_Message(Error)
      [Error state]= ljud_eGet(ljHandle, LJ_ioGET_DIGITAL_BIT,0,0,0); % Read switch
      Error_Message(Error)
    end
 end
end
