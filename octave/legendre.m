n = 5;
beta = .5./sqrt(1-(2*(1:n-1)).^(-2));
T = diag(beta,1) + diag(beta,-1);
[V,D] = eig(T);
x = diag(D);
[x,i] = sort(x);
w = 2*V(1,i).^2;
