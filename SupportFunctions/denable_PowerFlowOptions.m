function denable_PowerFlowOptions(hObject,eventdata)   
%% Copyright Notice
% Copyright �2017. Shariq Riaz, Gregor Verbic. All Rights Reserved.
% Permission to use, copy, modify, and distribute this software and 
% its documentation for educational, research, and not-for-profit purposes,
% without fee and without a signed licensing agreement, is hereby granted,
% provided that the above copyright notice, this paragraph and the following
% two paragraphs appear in all copies, modifications, and distributions.
% Contact Gregor Verbic, School of Electrical and Information Engineering
% Centre for Future Energy Networks, J03 - Electrical Engineering Building,
% The University of Sydney, Ph +61 2 9351 8136, gregor.verbic@sydney.edu.au
% 
% IN NO EVENT SHALL AUTHORS BE LIABLE TO ANY PARTY FOR DIRECT,
% INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING
% LOST PROFITS, ARISING OUT OF THE USE OF THIS SOFTWARE AND ITS 
% DOCUMENTATION, EVEN IF AUTHORS HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH
% DAMAGE.
% 
% AUTHORS SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING, BUT NOT 
% LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A 
% PARTICULAR PURPOSE. THE SOFTWARE AND ACCOMPANYING DOCUMENTATION, IF ANY, 
% PROVIDED HEREUNDER IS PROVIDED "AS IS". AUTHORS HAS NO OBLIGATION TO 
% PROVIDE MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.
%%
    if strcmp(hObject.Tag,'CCR_pf')
        h=findobj('Tag','ESR_pf');
        h.Enable = 'off';
        h=findobj('Tag','PSR_pf');
        h.Enable = 'off';        
        h=findobj('Tag','CSR_pf');
        h.UserData=struct('Saved_results',0);
        h.Value=0;
    elseif strcmp(hObject.Tag,'CSR_pf')
        h=findobj('Tag','ESR_pf');
        h.Enable = 'on';
        h=findobj('Tag','PSR_pf');
        h.Enable = 'on';        
        h=findobj('Tag','CCR_pf');
        h.UserData=struct('Current_results',0);
        h.Value=0;
    end
  
end