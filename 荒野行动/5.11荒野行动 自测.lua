--荒野行动GG脚本 每天更新 开源 
--作者QQ:1039227140
--禁止任何非法销售 仅用于开源学习研究
--我本意不是破坏游戏平衡  希望官方尽快修复，创造一个绿色良好的游戏环境
--github:https://github.com/jia110/
mima = 1039227140
v_value = gg.prompt({"首发github https://github.com/jia110/Stimulate-the-battlefield此脚本密码:   1039227140"}, {[1] = 0}, {[1] = "number"})
function m()
    gg.toast("密码正确")
    print("密码正确")
end
function end_c()
    print("密码错误")
    os.exit()
end
v_v = tonumber(v_value[1])
if v_v == mima then
    m()
else
    end_c()
end
function checkTime()
    local listen = "\n" .. "您所使用的脚本已过期，因此出现此状况！"
    date = os.date("*t", os.time())
    date_ = 10000 * date.year + 100 * date.month + date.day
    if date_ > 20180515 then
        print("\n提示：" .. listen)
        os.exit()
    end
end
checkTime()
function Fan_searchNumber(n, type, ft, sign, r, s)
    local waring = "\n" .. "已检测到窥码行为，因此出现此状况！"
    gg.setVisible(false)
    gg.searchNumber(n, type, ft, sign, r, s)
    if gg.isVisible(true) then
        gg.setVisible(false)
        gg.processKill()
        print(waring)
        toast(waring)
        while true do
            gg.setVisible(false)
        end
    end
end
function Main()
    meun = gg.choice({"一键大厅功能（秒嗑药.雷达.人物加速）", "一键落地功能（爬墙爬树.防摔）", "退出沫颜的脚本"}, nil, "欢迎使用脚本，首发github https://github.com/jia110/Stimulate-the-battlefield")
    if meun == 1 then
        T1()
    end
    if meun == 2 then
        T2()
    end
    if meun == 3 then
        T3()
    end
    WUMING = -1
end
function T1()
    gg.clearResults()
    Fan_searchNumber("8;6;10;3:100", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
    Fan_searchNumber("8;6;10;3", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("0", gg.TYPE_DOUBLE)
    gg.toast("秒磕药开启成功")
    gg.clearResults()
    Fan_searchNumber("100;1,079,574,528D;20::50 ", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
    Fan_searchNumber("20", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("800", gg.TYPE_DOUBLE)
    gg.toast("雷达开启成功")
    gg.clearResults()
    Fan_searchNumber("0.25;22.5;1.0::150", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
    Fan_searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(5)
    gg.editAll("1.15", gg.TYPE_DOUBLE)
    gg.toast("人物加速开启成功")
    gg.clearResults()
    Fan_searchNumber("1;3;3.5::512", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
    Fan_searchNumber("3.5", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(5)
    gg.editAll("4", gg.TYPE_DOUBLE)
    gg.toast("倒跑加速开启成功")
    gg.clearResults()
    Fan_searchNumber("1.25;3;6.25", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
    Fan_searchNumber("1.25;3;6.25", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1.35;3.3;6.35", gg.TYPE_DOUBLE)
    gg.toast("趴下加速+蹲下加速+持枪加速开启成功")
end
function T2()
    gg.clearResults()
    Fan_searchNumber("0.03;0.6;1;0.5:: ", gg.TYPE_DOUBLE, false, gg.SIGN_DOUBLE, 0, -1)
    Fan_searchNumber("1", gg.TYPE_DOUBLE, false, gg.SIGN_DOUBLE, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.TYPE_DOUBLE)
    gg.toast("防摔开启成功")
    gg.clearResults()
    Fan_searchNumber("0.2;65536D;1.5F::400", gg.TYPE_FLOAT, false, gg.SIGN_FLOAT, 0, -1)
    Fan_searchNumber("0.2", gg.TYPE_FLOAT, false, gg.SIGN_FLOAT, 0, -1)
    gg.getResults(100)
    gg.editAll("50", gg.TYPE_FLOAT)
    gg.toast("爬墙爬树开启成功")
end
function T3()
    print("首发github https://github.com/jia110/Stimulate-the-battlefield")
    os.exit()
    os.exit()
end
while true do
    if gg.isVisible(true) then
        WUMING = 1
        gg.setVisible(false)
    end
    if WUMING == 1 then
        Main()
    end
end
