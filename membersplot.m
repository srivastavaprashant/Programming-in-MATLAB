% WRITE YOU CODE HERE!!!
function membersplot(str1,str2)
	%Create categorical variable for bar type plots
    xb = categorical({'ME','BM','CE', 'EE'});
	%Keep the order.
    xb=reordercats(xb,{'ME','BM','CE', 'EE'});
    % For pie chart
	xp = {'ME','BM','CE', 'EE'};
    % Y values
	y=[22 45 23 33];
    % left hand subplot
	subplot(1,2,1);
	% switch cases! read the first string and plot accordingly 
    switch(str1)
        case 'bar'
            bar(xb,y);
        case 'barh'
            barh(xb,y);
        case 'pie'
            pie(y,xp);
    end
	% show grid
    grid on;
	% set x & y label
    xlabel('Departments');
    ylabel('Number of faculty members');
    % set title
	title("Faculty members by department");
    subplot(1,2,2);
	% switch cases! read the first string and plot accordingly 
    switch(str2)
        case 'bar'
            bar(xb,y);
        case 'barh'
            barh(xb,y);
        case 'pie'
            pie(y,xp);
    end
    grid on;
    xlabel('Departments');
    ylabel('Number of faculty members');
    title("Faculty members by department");
end