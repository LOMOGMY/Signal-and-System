function b = Heaviside( a )

num = numel(a);
b = [zeros(1,num)]

for i = 1:num
    if a(i) >= 0
        b(i) = 1
    end
    
end

