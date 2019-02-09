% WRITE YOU CODE HERE!!! 

% Read all the files using fileread()
% strsplit() for spliting, use space (' ') as delimiter
% lower() to convert all CAPS into small
RRH=lower(strsplit(fileread('RedRidingHood.txt'),{' '}));
PPea=lower(strsplit(fileread('PrincessPea.txt'),{' '}));
Cinde=lower(strsplit(fileread('Cinderella.txt'),{' '}));
CAFA1=lower(strsplit(fileread('CAFA1.txt'),{' '}));
CAFA2=lower(strsplit(fileread('CAFA2.txt'),{' '}));
CAFA3=lower(strsplit(fileread('CAFA3.txt'),{' '}));

% get all the unique words from all the files
unique_words = unique([RRH, PPea, Cinde, CAFA1, CAFA2, CAFA3]);

% get the # of unique words from all the files
n = length(unique_words);
tf = zeros(n,6);
idf = zeros(n,1);

for i = 1:n
	% loop in all words, strcmp() returns an array of 0 and 1 for all the words present in doc. 
	% nnz (number of non zero elements in array) returns the number of occurances of a word in doc
    tf(i,1) = nnz(strcmp(unique_words(i),RRH));
    tf(i,2) = nnz(strcmp(unique_words(i),PPea));
    tf(i,3) = nnz(strcmp(unique_words(i),Cinde));
    tf(i,4) = nnz(strcmp(unique_words(i),CAFA1));
    tf(i,5) = nnz(strcmp(unique_words(i),CAFA2));
    tf(i,6) = nnz(strcmp(unique_words(i),CAFA3));
    idf(i) = log10(6/nnz(tf(i,:)));
end
% calc tf-idf
tfidf = idf.*tf;
cosdist=zeros(6);
for i = 1:6
    for j = 1:6
	% cosine distance is calculated by calculating the dot(A,B)/sqrt(dot(A,A)*dot(B,B))
	costdist(i,j) = 1 - dot(tfidf(:,i),tfidf(:,j))/(dot(tfidf(:,i),tfidf(:,i))^0.5*dot(tfidf(:,j),tfidf(:,j))^0.5);
    end
end
% Image scale color 
imagesc(costdist);
% set the color map to gray
colormap gray;
% set X and Y ticks
set(gca, 'XTickLabel',{'RRH';'PPea';'Cinde';'CAFA1';'CAFA2';'CAFA3'});
set(gca, 'YTickLabel',{'RRH';'PPea';'Cinde';'CAFA1';'CAFA2';'CAFA3'});
% set title
title('Cosine Distance')
% show colorbar
colorbar;
