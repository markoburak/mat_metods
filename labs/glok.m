format rat;
c = [-1 -1 0 0 0 0]'; b = [-1 0 0 6]';
A = [
-1 -1 1 0 0 0;
-5 1 0 1 0 0;
1 -5 0 0 1 0;
1 1 0 0 0 1];
basis = 3:6;
B = A(:,basis); cB = c(basis);
T = [B\A B\b; cB'*(B\A)-c' cB'*(B\b)]

col = glpk(c,A,b);
col(1)
col(2)
max = col(1)+col(2)
