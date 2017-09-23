--
-- Created by IntelliJ IDEA.
-- User: mynawang
-- Date: 2017/9/23
-- Time: 10:03
-- To change this template use File | Settings | File Templates.
-- 变量
a = 5               -- 全局变量
local b = 5         -- 局部变量

function joke()
    c = 5           -- 全局变量
    local d = 6     -- 局部变量
end

joke()
print(c,d)          --> 5 nil

do
    local a = 6     -- 局部变量
    b = 6           -- 全局变量
    print(a,b);     --> 6 6
end

print(a,b)      --> 5 6



-- 单个变量赋值
a = "hello" .. "world"

-- 多个变量赋值
z, w = 10, 2*3


-- 交换变量的值
-- x,y=y,x

-- 变量个数 > 值的个数             按变量个数补足nil
a, b, c = 0, 1
print(a,b,c)
-- 变量个数 < 值的个数             多余的值会被忽略
a, b = a+1, b+1, b+2
print(a,b)



-- 索引
tableTest1 = {}
tableTest1["key"] = "www.w3cschool.cc"
print(tableTest1["key"])
print(tableTest1.key)