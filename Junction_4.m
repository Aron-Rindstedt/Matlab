function [polDL polUL] = Junction_4(NL)
    NH = 2;
    NW = 3;
    midDL = [[-3/59 10/59 48/59 4/59 0 0 0;...
              2/17 -5/17 2/17 20/17 -2/17 0 0]];
    midUL = [[0 0 -2/17 20/17 2/17 -5/17 2/17;...
              0 0 0 4/59 48/59 10/59 -3/59]];
    
    ND = NL;
    NU = NL;
    
    polDL = eye(ND+1);
    polUL = eye(NU+1);
    
    polDL = [polDL  zeros(ND+1, NL)];
    polUL = [zeros(NU+1, NL)  polUL];
    
    temp = polUL;
    
    polDL((ND-NH+2):(ND+1),(ND-NW+1):(ND+NW+1)) = midDL;
    polUL(1:NH,(NU-NW+1):(NU+NW+1)) = midUL;
    
end