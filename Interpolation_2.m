% Interpolation operator, 2nd order accuracy
function [IntC2F,IntF2C] = Interpolation_2(n)
%n = 25;
n2m = 2*n - 1;
hL = 1/(n-1);
hR = 1/(n2m-1);
IntF2C = zeros(n,n2m);
IntF2C(1,1:3) = [11/20,1/2,-1/20];
IntF2C(end,end-2:end) = IntF2C(1,3:-1:1);
for i = 2:n-1
    IntF2C(i,2*i-3:2*i+1) = [-1/40,1/4,11/20,1/4,-1/40];
end
HL = SBP2(n,hL);
HR = SBP2(n2m,hR);
IntC2F = inv(HR)*transpose(IntF2C)*HL;
% xc = linspace(0,1,n)';
% xf = linspace(0,1,n2m)';
% 
% IntC2F*xc.^0-xf.^0
% IntF2C*xf.^0-xc.^0
% 
% IntC2F*xc.^1-xf.^1
% IntF2C*xf.^1-xc.^1