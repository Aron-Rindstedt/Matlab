function [polDL polUL] = Junction_2(NL,~)
    NH = 1;
    NW = 0;
    midDL = 1;
    midUL = 1;
    
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