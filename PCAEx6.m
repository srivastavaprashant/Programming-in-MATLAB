% WRITE YOU CODE HERE!!!_

% load file
X=load('pcadata.mat');
% get the data from field
X=X.X;
% create figure 1
figure;
% scatter plot and set x and y limits
scatter(X(:,1),X(:,2))
xlim([0 7]);
ylim([2 8]);
hold on;

% get the mean subtracted mat and the mean from subtractMean() function
[Xmu,mu] = subtractMean(X);
% get the mean Eigenvectors and eigenvalues from myPCA() function
[U,S] = myPCA(Xmu);
% get the line plots with mu
line([U(1,1)+mu(1); mu(1)],[U(2,1)+mu(2); mu(2)],'Color','r');
line([U(1,2)+mu(1); mu(1)],[U(2,2)+mu(2); mu(2)],'Color','g');
% set title
title('Datapoints and their 2 principal components');
% print the eigenvector coordinate to command line
fprintf('The coordinate of top eigenvector is: (%f,%f), (%f,%f)\n',U(1,1)+mu(1),mu(1),U(2,1)+mu(2),mu(2));

% get the projected data
Z = projectData(Xmu,U,1);
% print the first three points of projected data to command line
fprintf("The projection of first 3 points is: %f %f %f\n",Z(1:3,:));

% recover data
Xrec = recoverData(Z,U,1,mu);

% create figure2
figure;
scatter(X(:,1),X(:,2))
xlim([0 7]);
ylim([2 8]);
hold on;
scatter(Xrec(:,1),Xrec(:,2),'*');
title('Datapoints and their reconstruction');



% PART 2

% load the bigger data file
X=load('pcafaces.mat');
X=X.X;
% create figure 3
figure;
% plot the images
displayData(X(1:100,:));
% get the mean subtracted mat and mean 
[Xmu,mu] = subtractMean(X);
% get the mean Eigenvectors and eigenvalues from myPCA() function
[U,S] = myPCA(Xmu);
% get the projected data
Z = projectData(Xmu,U,200);
% recover data
Xrec = recoverData(Z,U,200,mu);
% create figure 4
figure;
% subplot for original image
subplot(1,2,1);
displayData(X(1:100,:));
title('Original faces');
% subplot for recovered image
subplot(1,2,2);
displayData(Xrec(1:100,:));
title('Recovered faces');


