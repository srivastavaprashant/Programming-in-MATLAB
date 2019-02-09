% WRITE YOU CODE HERE!!! 

function plottrigs(varargin)
	% create x vector
    x=[-2*pi:0.1:2*pi];
	% if else for sin or cos
    if cell2mat(varargin(1)) == "sin"
        y=sin(x);
    else
        y=cos(x);
    end
	% if no of inputs = 4. do this plot
    if(nargin==4)
        plot(x,y,sprintf('%s-%s',cell2mat(varargin(2)),cell2mat(varargin(4))),'LineWidth',cell2mat(varargin(3)));
	% if no of inputs = 3. do this plot
    elseif(nargin==3)
        plot(x,y,cell2mat(varargin(2)),'LineWidth',cell2mat(varargin(3)));
	% if no of inputs = 2. do this plot
    elseif(nargin==2)
        plot(x,y,cell2mat(varargin(2)));
	% if no of inputs = 1. do this plot
    else
        plot(x,y);
    end
	% show grid
    grid on
	% set title
    title(sprintf("%d input arguments",nargin));
	% set x and y label
    xlabel('x');
    ylabel(sprintf('%s (x)',cell2mat(varargin(1))));
end