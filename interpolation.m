[D] = function interpolation (A,s)
%
%% interpolation code. A is a periodic vector, s is sampling rate (default = 1000Hz).
%
ex = 1/s;
%
%% sampling rate (uniform)
%
for i = 1:length(A) - 1;
	B(:,i) = A(:,i+1) - A(:,i);
end
%
%
for i = 1:length(A) - 1;
	C(i,:) = [B(:,i):ex:B(:,i+1)];
end
%
%% new resampled matrix
%
D = reshape(C,1,s*i);
