clearclcglobal readyNSglobal readyEWglobal speedturnOffLights();prompt = 'Select a system to test';c1 = 'Traffic Lights';c2 = 'Crosswalk';c3 = 'Turn Lanes';c4 = 'Ambient Light';prompt2 = 'Select a speed';s1 = '1X';s2 = '3X';s3 = '5X';prompt3 = 'Select Scenario';sA = 'Scenario A';sB = 'Scenario B';sys = menu(prompt,c1,c2,c3,c4);ssel = menu(prompt2,s1,s2,s3);scen = menu(prompt3,sA,sB);switch ssel    case 1        speed = 1;    case 2        speed = 3;    case 3        speed = 5;endinitializeAll(speed);switch sys    case 1        while true        t = gtime();        if scen == 1            trafficArray = trafficLights();        else            trafficArray = trafficLightsB();        end        if abs(t - round(t)) < 0.01            fprintf('Time: %i s.\n', round(t));            disp("Traffic Array Values:");            trafficArray        end        end    case 2        while true        t = gtime();        if scen == 1            cwStates = crossWalkLights();            clickStates = crossWalkButtons();        else            cwStates = crossWalkLightsB();            clickStates = crossWalkButtonsB();        end                if abs(t - round(t)) < 0.01            fprintf('Time: %i s.\n', round(t));            fprintf('CW-NS: %i. CW-EW: %i.\n', [readyNS, readyEW]);            fprintf('NS Button: %i. EW Button: %i.\n', [clickStates(1), clickStates(2)]);        end        end    case 3        while true        t = gtime();        if scen == 1            carSense = turnLanes();        else            carSense = turnLanesB();        end                if abs(t - round(t)) < 0.01            fprintf('Time: %i s.\n', round(t));            fprintf('CarTLA: %i. CarTLC: %i.\n', ~carSense(1), ~carSense(2));        end        end    case 4        while true        t = gtime();        lux = ambientLight();        if abs(t - round(t)) < 0.01            fprintf('Time: %i s.\n', round(t));            fprintf('Lux: %f\n\n', lux);        end        endend% while true% t = gtime();% trafficArray = trafficLights();% carSense = turnLanes();% cwStates = crossWalkLights();% clickStates = crossWalkButtons();% lux = ambientLight();% % if abs(t - round(t)) < 0.01%   fprintf('Time: %i s.\n', round(t));%   fprintf('CW-NS: %i. CW-EW: %i.\n', [readyNS, readyEW]);%   fprintf('CarTLA: %i. CarTLC: %i.\n', ~carSense(1), ~carSense(2));%   fprintf('Lux: %f\n\n', lux);% end% % end