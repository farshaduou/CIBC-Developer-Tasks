% This file is related to the script "bonusTast1.m" 
% Written by:   Farshad Mogharrabi
% Date:         12/1/2019

% Information about function: 
% This function is to sort projects based on the dependencies entered by
% the user
% The pseudocode for the algorithm designed for solving this problem is as 
% followed:
% for all existing projects
%     if they have required projects
%         if the required project isnn't already before them in stack
%            + bring the required project right before the current project  
%            + also set a flag to identiy change was made 
% end

% Note:(if after sorting by rerunning the algorithm we still get swaps in 
% the projects order this means there are dependencies that cannot be fulfilled.)


function [sorted,reorderWasNeeded] = sortProj(projects,dep)

reorderWasNeeded = false;
sorted = projects;
for i=1:length(projects)
    conditions = strfind(dep(:,2)',projects(i));
    if ~isempty(conditions)
        for j=1:length(conditions)
            if strfind(sorted,dep(conditions(j),1)) > strfind(sorted,dep(conditions(j),2))
                % bring the required project right before the dependent project
                temp = regexprep(sorted,dep(conditions(j),1),'');
                sorted = insertBefore(temp,dep(conditions(j),2),dep(conditions(j),1));
                % set flag to check whether the build order was changed
                reorderWasNeeded = true;
            end
        end
    end
end
