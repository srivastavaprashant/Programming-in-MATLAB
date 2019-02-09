% WRITE YOU CODE HERE!!!
function [V,D] = myPCA(data)
	% get covariance
    data_cov = cov(data);
	% get the eigenvector and eigenvalues
    [a,b] = eig(data_cov);
	% get the sorted indicies from eigenvalue matrix
	% diag(a) -> givers the diagonal elements of mat
    [~,bsort] = sort(diag(b),'descend');
	% use the indicies to sort eigenvectors
    V=a(:,bsort);
	% sort the eigenvalues
    D=sort(diag(b),'descend');
end