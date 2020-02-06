% THIS FILE IS OBSELETE AND REPLACED BY Gmm_logp_xn_given_zn(...)
% SUMMARY:  p(xn|zn) of GMM, size: N*p
% AUTHOR:   QIUQIANG KONG
% Created:  17-11-2015
% Modified: 25-11-2015 THIS FILE IS OBSELETE AND REPLACED BY Gmm_logp_xn_given_zn(...)
% -----------------------------------------------------------
% input:
%   X       data, size: N*p
%   phi:    para struct
%      B      size: Q*M
%      mu     size: p*Q*M
%      Sigma  size: p*p*Q*M
% output:
%   p(xn|zn)
% ===========================================================
function p_xn_given_zn = Gmm_p_xn_given_zn(X, phi)
[N,p] = size(X);
[M,Q] = size(phi.B);
p_xn_given_zn = zeros(N,Q);
for q = 1:Q
    p_xn_given_zn(:,q) = Gmmpdf(X, phi.B(:,q)', phi.mu(:,:,q), phi.Sigma(:,:,:,q));
end
end 
