function I = simpsons(fn,a,b,n)
%SIMPSONS composite Simpson's rule
%   fn  - function handle
%   a,b - endpoints
%   n   - number of nodes (even)
nodes = linspace(a,b,n+1);          % get nodes
Fi = arrayfun(fn,nodes);            % eval function at nodes
Fi(2:2:end-1) = 4*Fi(2:2:end-1);    % scale by 4
Fi(3:2:end-1) = 2*Fi(3:2:end-1);    % scale by 2
h = (b-a)/n;                        % compute step size
I = h*sum(Fi)/3;                    % compute Simps rule
end

