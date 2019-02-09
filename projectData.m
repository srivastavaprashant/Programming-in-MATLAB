% WRITE YOU CODE HERE!!! 
function dots = projectData(mat,eig_vec,k)
    % get the length of matrix
	n=length(mat);
    dots = zeros(n,k);
    for i = 1:n
		% loop in matrix and find dot product of all the points and store it in dots
        for j = 1:k
        dots(i,j) =dot(mat(i,:),eig_vec(:,j));
    end
end
