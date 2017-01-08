function ewd(varargin)
% Explore working directory

% OS-specific application for opening directory
if ispc
    app = 'explorer';
elseif ismac
    app = 'open';
else
    error('Unknown OS!');
end

% Identify directory to open
if nargin > 0
    path = varargin{1};
else
    path = '.';
end

% Issue system call
eval(sprintf('!%s %s',app,path))