f = [203 79 135 42 154 67 167 176]';

n = length(f);

H = reshape([eye(n/2);eye(n/2)],n/2,[]);
G = reshape([eye(n/2);-eye(n/2)],n/2,[]);

H = H/norm(H);
G = G/norm(G);

ad = [H ; G] * f;

ff = [H' G']*ad