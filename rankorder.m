[h] = function rankorder(MEASURES,LABELS)
%
%
n = length(MEASURES(1,:));
M = MEASURES';
m = length(M(1,:));
%
%% associate labels with measures
%
for i=1:n;
	A_i = horzcat(LABELS,MEASURES(:,i));
end
% 
%% sort by values (descending)
%
for i=1:n;
	A_i = sortrows(A_i,-2);
end
%
%% create matrix of only sorted labels
%
for i=1:n;
	B(:,i) = A_i;
end
%
%% 
%
for i=1:m;
	C(i,:) = sum(B(1,:) == i);
	D(i,:) = sum(B(1,:);
end
%
%% calculate frequencies and define number of bins
%
E = C/D;
b = length(E);
%
%% build histogram
%
h = hist(E(:,1),b);

