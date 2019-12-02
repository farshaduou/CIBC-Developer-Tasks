% This file is related to the script "bonusTast1.m" 
% Written by:   Farshad Mogharrabi
% Date:         12/1/2019

% Information about function: 
% This function is to get the project letter names and dependencies in form
% of pairs of project (X,Y) such that building Y requires prior building of X

function [projects,dep] = getInput()

n = input('Enter how many projects you need to build:\n');
projects = char();

for i=1:n
    projects(i) = input(['Enter project ',int2str(i),' :'],'s');   
end

m = input('Enter how many dependencies there are:\n');

dep = char();
disp('Specify depenecies [(X,Y) where Y depends on X):');
for i=1:m
    disp(['dependency ',int2str(i),' :']);
    dep(i,1) = input('X: ','s');  
    dep(i,2) = input('Y: ','s'); 
end