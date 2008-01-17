function itraverse(a, func, varargin)

% itraverse(a, func, varargin) traverses the singly linked list a
%     in the direction from the tail to the head,
%     while calling the supplied func on every node data, together
%     with any optional parameters supplied to traverse

p = a.tail.prev;

while(p ~= a.head)
    if nargin>2
        feval(func, p.data, varargin{:});
    else
        feval(func, p.data);
    end
    p = p.prev;
end

