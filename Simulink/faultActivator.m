function faultActivator(fb, faultType)

set_param('conference_model/Fault_1', 'FaultA','OFF');
set_param('conference_model/Fault_1', 'FaultB','OFF');
set_param('conference_model/Fault_1', 'FaultC','OFF');
set_param('conference_model/Fault_1', 'GroundFault','OFF');

set_param('conference_model/Fault_2', 'FaultA','OFF');
set_param('conference_model/Fault_2', 'FaultB','OFF');
set_param('conference_model/Fault_2', 'FaultC','OFF');
set_param('conference_model/Fault_2', 'GroundFault','OFF');

set_param('conference_model/Fault_3', 'FaultA','OFF');
set_param('conference_model/Fault_3', 'FaultB','OFF');
set_param('conference_model/Fault_3', 'FaultC','OFF');
set_param('conference_model/Fault_3', 'GroundFault','OFF');

set_param('conference_model/Fault_1','SwitchTimes', '[0.05 0.07]')
set_param('conference_model/Fault_2','SwitchTimes', '[0.09 0.11]')
set_param('conference_model/Fault_3','SwitchTimes', '[0.13 0.15]')

set_param(['conference_model/' fb], 'SwitchTimes', '[0.25 0.65]')

if strcmp(faultType,'LG')==1
    set_param(['conference_model/' fb], 'FaultA','ON');
    set_param(['conference_model/' fb], 'GroundFault','ON');
elseif strcmp(faultType,'LL')==1
    set_param(['conference_model/' fb], 'FaultB','ON');
    set_param(['conference_model/' fb], 'FaultC','ON');
elseif strcmp(faultType,'LLG')==1 
    set_param(['conference_model/' fb], 'FaultB','ON');
    set_param(['conference_model/' fb], 'FaultC','ON');
    set_param(['conference_model/' fb], 'GroundFault','ON');
elseif strcmp(faultType,'LLL')==1
    set_param(['conference_model/' fb], 'FaultA','ON');
    set_param(['conference_model/' fb], 'FaultB','ON');
    set_param(['conference_model/' fb], 'FaultC','ON');
elseif strcmp(faultType,'none')==1
    set_param(['conference_model/' fb], 'FaultA','OFF');
    set_param(['conference_model/' fb], 'FaultB','OFF');
    set_param(['conference_model/' fb], 'FaultC','OFF');
    set_param(['conference_model/' fb], 'GroundFault','OFF');
end

end