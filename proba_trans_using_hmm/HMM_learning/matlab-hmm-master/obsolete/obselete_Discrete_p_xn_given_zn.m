% THIS FILE IS OBSELETE AND REPLACED BY Discrete_logp_xn_given_zn(...)
% SUMMARY:  Calculate p(xn|zn) of multinominal distribution
% AUTHOR:   QIUQIANG KONG
% Created:  12-11-2015
% Modified: 17-11-2015 Add annotations
%           25-11-2015 THIS FILE IS OBSELETE AND REPLACED BY Discrete_logp_xn_given_zn(...)
% -----------------------------------------------------------
% input:
%   X       input data. size: N*p
%   phi     parameters of emission distribution
% output:
%   p(xn|zn)  size: N*Q
% ===========================================================
function p_xn_given_zn = Discrete_p_xn_given_zn(X, phi)
[N,p] = size(X);    % for discrete, p should be 1
[M,Q] = size(phi.B);
p_xn_given_zn = zeros(N,Q);                 % p(xn|zn), dim 1: N, dim 2: Q

for i2 = 1:Q
    p_xn_given_zn(:,i2) = phi.B(X,i2);
end
end
