F = [67   148   159  19 ;
     37   140    89  61 ;
     35    37   131  31 ;
     22   218   102  47];
 
[m,n] = size(F);

if mod(m,2)==1
    F = [F ; zeros(1,n)];
    m = size(F,1);
end
if mod(n,2)==1
    F = [F , zeros(m,1)];
    n = size(F,2);
end

HL = reshape([eye(m/2); eye(m/2)],m/2,[]); HL = HL/norm(HL);
GL = reshape([eye(m/2);-eye(m/2)],m/2,[]); GL = GL/norm(GL);
HR = reshape([eye(n/2); eye(n/2)],n/2,[]); HR = HR'/norm(HR);
GR = reshape([eye(n/2);-eye(n/2)],n/2,[]); GR = GR'/norm(GR);

