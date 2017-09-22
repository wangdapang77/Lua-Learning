--
-- Created by IntelliJ IDEA.
-- User: mynawang
-- Date: 2017/9/22 0022
-- Time: 14:21
-- To change this template use File | Settings | File Templates.
-- 数据类型

--[[Lua中有8个基本类型分别为：nil、boolean、number、string、userdata、function、thread和table]]
--[[
nil         这个最简单，只有值nil属于该类，表示一个无效值
boolean     包含两个值：false和true
number      表示双精度类型的实浮点数
string      字符串由一对双引号或单引号来表示
function    由C或Lua编写的函数
userdata    表示任意存储在变量中的C数据结构
thread      表示执行的独立线路，用于执行协同程序
table       Lua 中的表（table）其实是一个"关联数组"（associative arrays），数组的索引可以是数字或者是字符串。在 Lua 里，table 的创建是通过"构造表达式"来完成，最简单构造表达式是{}，用来创建一个空表。
-- ]]

print(type(a))


-- nil
print("##################### nil #######################")
tab1 = {key1 = "val1", key2 = "val2", "val3"}
for k, v in pairs(tab1) do
    print(k.."-"..v)
end
print("----------------------------after assign nil for key1")
tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k.."-"..v)
end

-- boolean
print("##################### boolean #######################")
print(type(true))
print(type(false))
print(type(nil))
if false or nil then
    print("至少有一个是true")
else
    print("false和nil都为false")
end

-- number
--[[Lua 默认只有一种 number 类型 -- double（双精度）类型（默认类型可以修改 luaconf.h 里的定义）]]
print("##################### number #######################")
print(type(2))
print(type(2.2))
print(type(0.2))
print(type(2e+1))
print(type(0.2e-1))
print(type(7.8263692594256e-06))

--string
--[[字符串由一对双引号或单引号来表示，也可以用2个方括号"\[\[\]\]"来表示]]
print("##################### string #######################")
string1 = "this is string1"
string2 = 'this is string2'
html = [[
<html>
<head></head>
<body>
    <a href="http://www.baidu.com/">Lua语法学习</a>
</body>
</html>
]]
print(html)

--[[在对一个数字字符串上进行算术操作，Lua会尝试将这个数字字符串转成一个数字]]
print("2" + 6)
print("2" + "6")
print("-2e2" * "6")
-- 会报错 print("error" + 1)

--[[字符串连接使用的是 .. ]]
print("Hello" .. "World!")
print(123 .. 456) -- 数字加..留空格


--[[使用 # 来计算字符串的长度，放在字符串前面]]
print(#"HelloWorld")


--[[在 Lua 里，table 的创建是通过"构造表达式"来完成，最简单构造表达式是{}，用来创建一个空表。]]
print("##################### table #######################")
-- 创建一个空的 table
local tbl1 = {}
-- 直接初始表
local tbl2 = {"apple", "pear", "orange", "grape"}

-- 初始化table为a
a = {}
-- key为"key",value为value赋值给a["key"]
a["key"] = "value"
-- 声明变量key为10
key = 10
-- a[10] = 22
a[key] = 22
-- a[10] == 22 + 11
a[key] = a[key] + 11
-- for循环，获取key和value
for k, v in pairs(a) do
    -- 打印key拼接value
    print(k .. " : " .. v)
end

--[[Lua 里表的默认初始索引一般以 1 开始]]
for key, val in pairs(tbl2) do
    print("Key", key)
end

--[[table 不会固定长度大小，有新数据添加时 table 长度会自动增长，没初始的 table 都是 nil]]
a3 = {}
for i = 1, 10 do
    a3[i] = i
end
a3["key"] = "val"
print(a3["key"])
print(a3["none"])



--[[
在 Lua 中，函数是被看作是"第一类值（First-Class Value）"，函数可以存在变量里]]
print("##################### function #######################")
function factorial1(n)
    if n == 0 then
        return 1
    else
        return n * factorial1(n - 1)
    end
end
print(factorial1(5))
factorial2 = factorial1
print(factorial2(5))


function testFun(tab,fun)
    for k ,v in pairs(tab) do
        print(fun(k,v));
    end
end
tab={key1="val1",key2="val2"};
testFun(tab,
    function(key,val)--匿名函数
    return key.."="..val;
    end
);