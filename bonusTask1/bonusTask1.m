% This file contains the script for the bonus tast 1 of CIBC Developer Tasks
% Written by:   Farshad Mogharrabi
% Date:         12/1/2019

% Goal of this script is to suggest project build order

% PS:
% I know I could use C++ or python but to add variety I decided to use MATLAB 
% (my friend told me I would get negative points for using MATLAB in SCI, so
% I just hope you don't dislike #1 as the starting index as much as him! (^-^) ) 

clc;clear;close all;


[projects, dep] = getInput();

[sortedProjects, ~] = sortProj(projects,dep);

[~, sortErrorFlag] = sortProj(sortedProjects,dep);

if sortErrorFlag == true
    fprintf(' **** Sorting Error occured ****\nThe projects are not sortable with the provided build requirements!')
else
    disp('Build the projects in the following order:')
    for i = 1:length(sortedProjects)
        disp([' > ',sortedProjects(i)]);
    end
end