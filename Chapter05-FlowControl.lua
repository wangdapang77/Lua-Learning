--
-- Created by IntelliJ IDEA.
-- User: mynawang
-- Date: 2017/9/25 0025
-- Time: 15:37
-- To change this template use File | Settings | File Templates.
-- 流程控制

--[[false和nil为假，true和非nil为真]]
--[[Lua中0为true]]
if(0)
then
    print("0为true")
end


a = 100;
if(a < 20)
then
    print("a 小于 20" )
else
    print("a 大于 20" )
end
print("a 的值为 :", a)



a = 100
if(a == 10)
then
    print("a 的值为 10" )
elseif(a == 20)
then
    print("a 的值为 20" )
elseif(a == 30)
then
    print("a 的值为 30" )
else
    print("没有匹配 a 的值" )
end
print("a 的真实值为: ", a )