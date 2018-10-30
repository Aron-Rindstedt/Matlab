function [HI, D1, D2, DS] = HOM2_D_VAR_NARROW(m, h, c)
    H=diag(ones(m,1),0);
    H(1,1)=1/2;
    H(m,m)=1/2;

    D1=NaN;

    DS=zeros(m,m);
    DS(1,1:3)=-[-3/2 2 -1/2];
    DS(m,m-2:m)=fliplr([DS(1,1:3)]);
    DS=diag(c)*DS/h;

    H=h*H;
    HI=inv(H);

    R=zeros(m,m);

    for i=4:m-3
        c1 = c(i-1);
        c2 = c(i);
        c3 = c(i+1);
        R(i,i-1:i+1)=[-1/2*c1-1/2*c2 ...
                       1/2*c1+c2+1/2*c3 ...
                      -1/2*c2-1/2*c3];
    end
    c1 = c(1);
    c2 = c(2);
    c3 = c(3);
    c4 = c(4);
    R(1:3,1:3)=1/2*[ c1+c2   -c1-c2            0;...
                     -c1-c2   c1+2*c2+c3  -c2-c3;...
                     0            -c2-c3   c2+2*c3+c4];
    R(m-2:m,m-2:m)=flipud(fliplr(R(1:3,1:3)));
    R=R/h;
    D2=HI*(-R+DS);
end