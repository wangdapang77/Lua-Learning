--
-- Created by IntelliJ IDEA.
-- User: mynawang
-- Date: 2017/9/23
-- Time: 10:15
-- To change this template use File | Settings | File Templates.
-- 循环

-- while循环
a = 0
while(a < 10)
do
    print("a 的值为:", a)
    a = a+1
end

-- for循环

-- 数值for循环
--[[
for var=exp1,exp2,exp3 do
    <执行体>
end
var从exp1变化到exp2，每次变化以exp3为步长递增var，并执行一次"执行体"。exp3是可选的，如果不指定，默认为1。
]]

-- for的三个表达式在循环开始前一次性求值，以后不再进行求值。比如上面的f(x)只会在循环开始前执行一次，其结果用在后面的循环中。
function f(x)
    print("function")
    return x*2
end
for i=1,f(5) do
    print(i)
end

-- 从10到1进行-1递减
for i=10,1,-1 do
    print(i)
end



-- 泛型for循环

--打印数组a的所有值
--[[for i,v in ipairs(a)
    do print(v)
end
i是数组索引值，v是对应索引的数组元素值。ipairs是Lua提供的一个迭代器函数，用来迭代数组。
]]

days = {"Suanday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"}
for i,v in ipairs(days) do
    print(i, v)
end



-- repeat...until 循环
a = 10
repeat
    print("a的值为:", a)
    a = a + 1
until(a > 15)




-- 嵌套循环
j =2
for i=2,10 do
    for j=2, (i/j), 2 do
        if(not(i%j))
        then
            break
        end
        if(j > (i/j))then
            print("i 的值为：",i)
        end
    end
end