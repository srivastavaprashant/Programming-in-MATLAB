% WRITE YOU CODE HERE!!!

function myplotarea(str,n)
	% read the file into a cell
    cellarray = textscan(fopen(str,'r'),'%s %f %s %f');
    x=cellarray{2};
    y=cellarray{4};
	% check for l=value of n to be smaller than length of data
    if n<=length(x)
		% area plot
		area(x(1:n),y(1:n));
        hold on;
        xlabel('x');
        ylabel('y');
        title(sprintf('%d data points',n));
    else
        fprintf("The value of n cannot be greater than length of dataset. \n");
        fprintf("The length of dataset is: %d \n",length(x));
    end
end