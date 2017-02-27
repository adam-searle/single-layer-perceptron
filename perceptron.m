
w = rand(1,3);
b = 1;
x = data;
lr = .001;

scatter(x(:,1),x(:,2),[],x(:,3),'x')
hold on

for j=1:20
for i = 1 : 100
    a = dot(w(1:2),x(i,1:2))+b*w(3);
    y = g(a);       
    if y ~= x(i,3)        
        w = w + lr * [x(i,1:2),1] * (x(i,3)-y);
    end
    %x1 = -(b/w(1));
    x2 = -(b*w(3)+w(1)*x(:,1))/w(2);
    %plot(x(:,1),x2);    
end
end

plot(x(:,1),x2);
