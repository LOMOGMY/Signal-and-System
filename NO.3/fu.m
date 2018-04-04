function [ b ] = fu( a )
b = [zeros(1,length(a))];
for i=1:length(a)  %i = -3:5
    b(i) = u(a(i));
end
end

