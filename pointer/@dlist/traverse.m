function traverse(a, func, varargin)

% traverse(a, func, varargin) traverses the singly linked list a,
%     while calling the supplied func on every node data, together
%     with any optional parameters supplied to traverse

p = a.head.next;

while(p ~= a.tail)
    if nargin>2
        feval(func, p.data, varargin{:});
    else
        feval(func, p.data);
    end
    p = p.next;
end

