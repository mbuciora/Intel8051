<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RST" />
        <signal name="PCOut(15:0)" />
        <signal name="XLXN_44" />
        <signal name="StateOut(0)" />
        <signal name="DataOut(7:0)" />
        <signal name="StateOut(2:0)" />
        <signal name="PhaseOut" />
        <signal name="OP2(7:0)" />
        <signal name="OP1(7:0)" />
        <signal name="XLXN_95(7:0)" />
        <signal name="XLXN_97" />
        <signal name="XLXN_98(2:0)" />
        <signal name="XLXN_104" />
        <signal name="AcumulatorOut(7:0)" />
        <signal name="RegisterOut(7:0)" />
        <signal name="CLK" />
        <signal name="XLXN_125" />
        <signal name="Dec_AOut(7:0)" />
        <signal name="Dec_BOut(7:0)" />
        <signal name="dec_select(3:0)" />
        <signal name="ALUOut(7:0)" />
        <port polarity="Input" name="RST" />
        <port polarity="Output" name="PCOut(15:0)" />
        <port polarity="Output" name="DataOut(7:0)" />
        <port polarity="Output" name="StateOut(2:0)" />
        <port polarity="Output" name="PhaseOut" />
        <port polarity="Output" name="OP2(7:0)" />
        <port polarity="Output" name="OP1(7:0)" />
        <port polarity="Output" name="AcumulatorOut(7:0)" />
        <port polarity="Output" name="RegisterOut(7:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="Dec_AOut(7:0)" />
        <port polarity="Output" name="Dec_BOut(7:0)" />
        <port polarity="Output" name="dec_select(3:0)" />
        <port polarity="Output" name="ALUOut(7:0)" />
        <blockdef name="ProgramCounter">
            <timestamp>2016-5-16T23:1:39</timestamp>
            <rect width="336" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="CycleCounter">
            <timestamp>2016-5-16T22:35:59</timestamp>
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <rect width="288" x="64" y="-192" height="208" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="416" y1="-16" y2="-16" x1="352" />
        </blockdef>
        <blockdef name="Operation_Register">
            <timestamp>2016-5-17T8:18:30</timestamp>
            <rect width="352" x="64" y="-256" height="192" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-176" y2="-176" x1="64" />
            <rect width="64" x="416" y="-236" height="24" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <rect width="24" x="340" y="-64" height="48" />
            <rect width="24" x="116" y="-64" height="48" />
            <line x2="128" y1="-64" y2="-16" x1="128" />
            <line x2="352" y1="-64" y2="-12" x1="352" />
        </blockdef>
        <blockdef name="RegisterBank8bit8">
            <timestamp>2016-5-14T14:40:57</timestamp>
            <rect width="352" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-300" height="24" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
        </blockdef>
        <blockdef name="fd8re">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="64" x="0" y="-268" height="24" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="Decoder8051">
            <timestamp>2016-5-29T12:38:33</timestamp>
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-380" height="24" />
            <line x2="0" y1="-368" y2="-368" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-296" height="24" />
            <rect width="64" x="704" y="-396" height="24" />
            <line x2="704" y1="-384" y2="-384" x1="768" />
            <rect width="64" x="704" y="-348" height="24" />
            <line x2="704" y1="-336" y2="-336" x1="768" />
            <line x2="64" y1="-224" y2="-224" x1="0" />
            <rect width="64" x="0" y="-188" height="24" />
            <line x2="64" y1="-176" y2="-176" x1="0" />
            <rect width="640" x="64" y="-448" height="580" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="4" height="24" />
            <line x2="0" y1="16" y2="16" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="64" x="704" y="-124" height="24" />
            <line x2="768" y1="-112" y2="-112" x1="704" />
            <rect width="64" x="704" y="-60" height="24" />
            <line x2="768" y1="-48" y2="-48" x1="704" />
            <rect width="64" x="704" y="4" height="24" />
            <line x2="768" y1="16" y2="16" x1="704" />
        </blockdef>
        <blockdef name="ALU_unit">
            <timestamp>2016-5-29T17:16:13</timestamp>
            <rect width="384" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="512" y1="-224" y2="-224" x1="448" />
            <rect width="64" x="448" y="-44" height="24" />
            <line x2="512" y1="-32" y2="-32" x1="448" />
        </blockdef>
        <blockdef name="memoryROM">
            <timestamp>2016-5-29T18:14:4</timestamp>
            <rect width="512" x="32" y="32" height="1344" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="240" y2="240" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <block symbolname="CycleCounter" name="XLXI_20">
            <blockpin signalname="CLK" name="CC_XTAL2" />
            <blockpin signalname="RST" name="CC_Reset" />
            <blockpin signalname="PhaseOut" name="CC_Phase" />
            <blockpin signalname="XLXN_44" name="CC_ALE" />
            <blockpin signalname="StateOut(2:0)" name="CC_State(2:0)" />
        </block>
        <block symbolname="ProgramCounter" name="XLXI_17">
            <blockpin signalname="PhaseOut" name="PC_Phase" />
            <blockpin signalname="StateOut(2:0)" name="PC_State(2:0)" />
            <blockpin signalname="XLXN_95(7:0)" name="PC_Offset(7:0)" />
            <blockpin signalname="RST" name="PC_Reset" />
            <blockpin signalname="PCOut(15:0)" name="PC_Addr(15:0)" />
        </block>
        <block symbolname="Operation_Register" name="XLXI_29">
            <blockpin signalname="StateOut(0)" name="OP_State0" />
            <blockpin signalname="XLXN_44" name="OP_ALE" />
            <blockpin signalname="DataOut(7:0)" name="OP_DataIn(7:0)" />
            <blockpin signalname="OP1(7:0)" name="OP_OpCode(7:0)" />
            <blockpin signalname="OP2(7:0)" name="OP_Arg(7:0)" />
        </block>
        <block symbolname="RegisterBank8bit8" name="XLXI_44">
            <blockpin signalname="RST" name="CLR" />
            <blockpin signalname="XLXN_97" name="CE" />
            <blockpin signalname="XLXN_98(2:0)" name="RegNo(2:0)" />
            <blockpin signalname="PhaseOut" name="C" />
            <blockpin signalname="ALUOut(7:0)" name="RegBankIn(7:0)" />
            <blockpin signalname="RegisterOut(7:0)" name="RegBankOut(7:0)" />
        </block>
        <block symbolname="fd8re" name="XLXI_50">
            <blockpin signalname="PhaseOut" name="C" />
            <blockpin signalname="XLXN_104" name="CE" />
            <blockpin signalname="ALUOut(7:0)" name="D(7:0)" />
            <blockpin signalname="RST" name="R" />
            <blockpin signalname="AcumulatorOut(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="Decoder8051" name="XLXI_57">
            <blockpin signalname="PhaseOut" name="DEC_Phase" />
            <blockpin signalname="XLXN_125" name="DEC_CarryIn" />
            <blockpin signalname="StateOut(2:0)" name="DEC_State(2:0)" />
            <blockpin signalname="RegisterOut(7:0)" name="DEC_RegBankIn(7:0)" />
            <blockpin signalname="AcumulatorOut(7:0)" name="DEC_AccIn(7:0)" />
            <blockpin signalname="OP1(7:0)" name="DEC_OpCode(7:0)" />
            <blockpin signalname="OP2(7:0)" name="DEC_Arg(7:0)" />
            <blockpin signalname="XLXN_97" name="DEC_Reg_CE" />
            <blockpin signalname="XLXN_104" name="DEC_Acc_CE" />
            <blockpin signalname="XLXN_95(7:0)" name="DEC_Offset(7:0)" />
            <blockpin signalname="XLXN_98(2:0)" name="DEC_RegNo(2:0)" />
            <blockpin signalname="Dec_AOut(7:0)" name="DEC_A(7:0)" />
            <blockpin signalname="Dec_BOut(7:0)" name="DEC_B(7:0)" />
            <blockpin signalname="dec_select(3:0)" name="DEC_Sel(3:0)" />
        </block>
        <block symbolname="ALU_unit" name="XLXI_68">
            <blockpin signalname="XLXN_125" name="ALU_CarryIn" />
            <blockpin signalname="Dec_AOut(7:0)" name="ALU_IN1(7:0)" />
            <blockpin signalname="Dec_BOut(7:0)" name="ALU_IN2(7:0)" />
            <blockpin signalname="dec_select(3:0)" name="ALU_Control(3:0)" />
            <blockpin signalname="XLXN_125" name="ALU_CarryOut" />
            <blockpin signalname="ALUOut(7:0)" name="ALU_OUTPUT(7:0)" />
        </block>
        <block symbolname="memoryROM" name="XLXI_72">
            <blockpin signalname="PCOut(15:0)" name="addra(15:0)" />
            <blockpin name="rsta" />
            <blockpin name="clka" />
            <blockpin name="douta(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="RST">
            <wire x2="400" y1="320" y2="320" x1="128" />
            <wire x2="416" y1="320" y2="320" x1="400" />
            <wire x2="128" y1="320" y2="2000" x1="128" />
            <wire x2="128" y1="2000" y2="2432" x1="128" />
            <wire x2="1296" y1="2432" y2="2432" x1="128" />
            <wire x2="464" y1="2000" y2="2000" x1="128" />
            <wire x2="400" y1="160" y2="160" x1="288" />
            <wire x2="400" y1="160" y2="320" x1="400" />
            <wire x2="1552" y1="160" y2="160" x1="400" />
            <wire x2="1552" y1="160" y2="320" x1="1552" />
            <wire x2="1552" y1="320" y2="480" x1="1552" />
            <wire x2="1728" y1="480" y2="480" x1="1552" />
            <wire x2="1552" y1="320" y2="320" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="272" y="432" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="288" y="160" name="RST" orien="R180" />
        <bustap x2="960" y1="384" y2="480" x1="960" />
        <instance x="416" y="480" name="XLXI_20" orien="R0">
        </instance>
        <instance x="1072" y="480" name="XLXI_17" orien="R0">
        </instance>
        <branch name="PCOut(15:0)">
            <wire x2="1568" y1="448" y2="448" x1="1536" />
            <wire x2="1728" y1="448" y2="448" x1="1568" />
            <wire x2="1680" y1="272" y2="272" x1="1568" />
            <wire x2="1568" y1="272" y2="448" x1="1568" />
        </branch>
        <branch name="StateOut(2:0)">
            <wire x2="880" y1="384" y2="384" x1="832" />
            <wire x2="960" y1="384" y2="384" x1="880" />
            <wire x2="1072" y1="384" y2="384" x1="960" />
            <wire x2="880" y1="384" y2="944" x1="880" />
            <wire x2="880" y1="944" y2="1248" x1="880" />
            <wire x2="944" y1="1248" y2="1248" x1="880" />
            <wire x2="1136" y1="944" y2="944" x1="880" />
        </branch>
        <branch name="OP2(7:0)">
            <wire x2="1888" y1="1280" y2="1280" x1="1712" />
            <wire x2="1888" y1="960" y2="1008" x1="1888" />
            <wire x2="1952" y1="1008" y2="1008" x1="1888" />
            <wire x2="1888" y1="1008" y2="1280" x1="1888" />
        </branch>
        <branch name="OP1(7:0)">
            <wire x2="1664" y1="960" y2="1008" x1="1664" />
            <wire x2="1696" y1="1008" y2="1008" x1="1664" />
            <wire x2="1664" y1="1008" y2="1136" x1="1664" />
            <wire x2="1728" y1="1136" y2="1136" x1="1664" />
            <wire x2="1728" y1="1136" y2="1232" x1="1728" />
            <wire x2="1728" y1="1232" y2="1232" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1952" y="1008" name="OP2(7:0)" orien="R0" />
        <iomarker fontsize="28" x="1696" y="1008" name="OP1(7:0)" orien="R0" />
        <branch name="XLXN_95(7:0)">
            <wire x2="1040" y1="1024" y2="1024" x1="912" />
            <wire x2="912" y1="1024" y2="1328" x1="912" />
            <wire x2="944" y1="1328" y2="1328" x1="912" />
            <wire x2="1072" y1="448" y2="448" x1="1040" />
            <wire x2="1040" y1="448" y2="1024" x1="1040" />
        </branch>
        <instance x="464" y="2288" name="XLXI_44" orien="R0">
        </instance>
        <branch name="XLXN_97">
            <wire x2="384" y1="1392" y2="2064" x1="384" />
            <wire x2="464" y1="2064" y2="2064" x1="384" />
            <wire x2="944" y1="1392" y2="1392" x1="384" />
        </branch>
        <branch name="XLXN_98(2:0)">
            <wire x2="400" y1="1440" y2="2128" x1="400" />
            <wire x2="464" y1="2128" y2="2128" x1="400" />
            <wire x2="944" y1="1440" y2="1440" x1="400" />
        </branch>
        <branch name="XLXN_104">
            <wire x2="944" y1="1584" y2="1584" x1="832" />
            <wire x2="832" y1="1584" y2="1824" x1="832" />
            <wire x2="1008" y1="1824" y2="1824" x1="832" />
            <wire x2="1008" y1="1824" y2="2272" x1="1008" />
            <wire x2="1296" y1="2272" y2="2272" x1="1008" />
        </branch>
        <branch name="AcumulatorOut(7:0)">
            <wire x2="944" y1="1632" y2="1632" x1="864" />
            <wire x2="864" y1="1632" y2="1808" x1="864" />
            <wire x2="1760" y1="1808" y2="1808" x1="864" />
            <wire x2="1760" y1="1808" y2="2208" x1="1760" />
            <wire x2="1760" y1="2208" y2="2320" x1="1760" />
            <wire x2="1792" y1="2320" y2="2320" x1="1760" />
            <wire x2="1760" y1="2208" y2="2208" x1="1680" />
        </branch>
        <branch name="RegisterOut(7:0)">
            <wire x2="944" y1="1488" y2="1488" x1="768" />
            <wire x2="768" y1="1488" y2="1872" x1="768" />
            <wire x2="992" y1="1872" y2="1872" x1="768" />
            <wire x2="992" y1="1872" y2="2000" x1="992" />
            <wire x2="1056" y1="2000" y2="2000" x1="992" />
            <wire x2="992" y1="2000" y2="2000" x1="944" />
        </branch>
        <branch name="CLK">
            <wire x2="368" y1="432" y2="432" x1="272" />
            <wire x2="416" y1="432" y2="432" x1="368" />
            <wire x2="368" y1="432" y2="512" x1="368" />
            <wire x2="1728" y1="512" y2="512" x1="368" />
        </branch>
        <iomarker fontsize="28" x="1056" y="2000" name="RegisterOut(7:0)" orien="R0" />
        <branch name="PhaseOut">
            <wire x2="928" y1="848" y2="848" x1="256" />
            <wire x2="928" y1="848" y2="880" x1="928" />
            <wire x2="928" y1="880" y2="1200" x1="928" />
            <wire x2="944" y1="1200" y2="1200" x1="928" />
            <wire x2="1136" y1="880" y2="880" x1="928" />
            <wire x2="256" y1="848" y2="2192" x1="256" />
            <wire x2="256" y1="2192" y2="2336" x1="256" />
            <wire x2="1296" y1="2336" y2="2336" x1="256" />
            <wire x2="464" y1="2192" y2="2192" x1="256" />
            <wire x2="928" y1="320" y2="320" x1="832" />
            <wire x2="1072" y1="320" y2="320" x1="928" />
            <wire x2="928" y1="320" y2="848" x1="928" />
        </branch>
        <iomarker fontsize="28" x="1136" y="880" name="PhaseOut" orien="R0" />
        <iomarker fontsize="28" x="1136" y="944" name="StateOut(2:0)" orien="R0" />
        <instance x="1296" y="2464" name="XLXI_50" orien="R0" />
        <branch name="XLXN_125">
            <wire x2="944" y1="1712" y2="1792" x1="944" />
            <wire x2="1840" y1="1792" y2="1792" x1="944" />
            <wire x2="1840" y1="1792" y2="2032" x1="1840" />
            <wire x2="1872" y1="2032" y2="2032" x1="1840" />
            <wire x2="2400" y1="1792" y2="1792" x1="1840" />
            <wire x2="2400" y1="1792" y2="2032" x1="2400" />
            <wire x2="2400" y1="2032" y2="2032" x1="2384" />
        </branch>
        <branch name="Dec_AOut(7:0)">
            <wire x2="1824" y1="1504" y2="1504" x1="1712" />
            <wire x2="1824" y1="1504" y2="2096" x1="1824" />
            <wire x2="1872" y1="2096" y2="2096" x1="1824" />
            <wire x2="1984" y1="1504" y2="1504" x1="1824" />
        </branch>
        <branch name="Dec_BOut(7:0)">
            <wire x2="1808" y1="1568" y2="1568" x1="1712" />
            <wire x2="1952" y1="1568" y2="1568" x1="1808" />
            <wire x2="1808" y1="1568" y2="2160" x1="1808" />
            <wire x2="1872" y1="2160" y2="2160" x1="1808" />
        </branch>
        <branch name="dec_select(3:0)">
            <wire x2="1792" y1="1632" y2="1632" x1="1712" />
            <wire x2="1936" y1="1632" y2="1632" x1="1792" />
            <wire x2="1792" y1="1632" y2="2224" x1="1792" />
            <wire x2="1872" y1="2224" y2="2224" x1="1792" />
        </branch>
        <branch name="ALUOut(7:0)">
            <wire x2="432" y1="2256" y2="2560" x1="432" />
            <wire x2="1216" y1="2560" y2="2560" x1="432" />
            <wire x2="2416" y1="2560" y2="2560" x1="1216" />
            <wire x2="2544" y1="2560" y2="2560" x1="2416" />
            <wire x2="464" y1="2256" y2="2256" x1="432" />
            <wire x2="1216" y1="2208" y2="2560" x1="1216" />
            <wire x2="1296" y1="2208" y2="2208" x1="1216" />
            <wire x2="2416" y1="2224" y2="2224" x1="2384" />
            <wire x2="2416" y1="2224" y2="2496" x1="2416" />
            <wire x2="2416" y1="2496" y2="2560" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="1952" y="1568" name="Dec_BOut(7:0)" orien="R0" />
        <iomarker fontsize="28" x="1984" y="1504" name="Dec_AOut(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2304" y="752" name="DataOut(7:0)" orien="R0" />
        <instance x="944" y="1616" name="XLXI_57" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1680" y="272" name="PCOut(15:0)" orien="R0" />
        <iomarker fontsize="28" x="1792" y="2320" name="AcumulatorOut(7:0)" orien="R0" />
        <iomarker fontsize="28" x="1936" y="1632" name="dec_select(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2544" y="2560" name="ALUOut(7:0)" orien="R0" />
        <instance x="1872" y="2256" name="XLXI_68" orien="R0">
        </instance>
        <branch name="DataOut(7:0)">
            <wire x2="2176" y1="752" y2="752" x1="2016" />
            <wire x2="2304" y1="752" y2="752" x1="2176" />
            <wire x2="2176" y1="448" y2="448" x1="2064" />
            <wire x2="2176" y1="448" y2="752" x1="2176" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="848" y1="464" y2="464" x1="832" />
            <wire x2="848" y1="464" y2="800" x1="848" />
            <wire x2="1536" y1="800" y2="800" x1="848" />
        </branch>
        <branch name="StateOut(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="616" type="branch" />
            <wire x2="960" y1="480" y2="496" x1="960" />
            <wire x2="960" y1="496" y2="752" x1="960" />
            <wire x2="1536" y1="752" y2="752" x1="960" />
        </branch>
        <instance x="1536" y="976" name="XLXI_29" orien="R0">
        </instance>
        <instance x="1728" y="368" name="XLXI_72" orien="R0">
        </instance>
    </sheet>
</drawing>