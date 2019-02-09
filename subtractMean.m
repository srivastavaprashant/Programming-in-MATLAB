function [a,b] = subtractMean(data)
	% mean of all the columns
    b=mean(data,1);
	% subtract the mean from columns
    a=data-b;
    
end