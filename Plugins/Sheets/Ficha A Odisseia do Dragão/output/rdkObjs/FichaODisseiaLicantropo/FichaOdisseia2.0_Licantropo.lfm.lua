require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmFichaOdisseia2_0_Licantropo()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setName("frmFichaOdisseia2_0_Licantropo");
    obj:setFormType("sheetTemplate");
    obj:setDataType("br.com.RRPG.AODDL_S3");
    obj:setTitle("A Odisseia do Dragão - Ficha de Licantropo");
    obj:setAlign("client");
    obj:setTheme("light");

    obj.tabControl1 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setAlign("client");
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Atributos");
    obj.tab1:setName("tab1");

    obj.frmFichaOdisseia2_01_L_svg = GUI.fromHandle(_obj_newObject("form"));
    obj.frmFichaOdisseia2_01_L_svg:setParent(obj.tab1);
    obj.frmFichaOdisseia2_01_L_svg:setName("frmFichaOdisseia2_01_L_svg");
    obj.frmFichaOdisseia2_01_L_svg:setAlign("client");
    obj.frmFichaOdisseia2_01_L_svg:setTheme("light");
    obj.frmFichaOdisseia2_01_L_svg:setMargins({top=1});

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.frmFichaOdisseia2_01_L_svg);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(952);
    obj.rectangle1:setHeight(1347);
    obj.rectangle1:setColor("white");
    obj.rectangle1:setName("rectangle1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.rectangle1);
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(952);
    obj.image1:setHeight(1347);
    obj.image1:setSRC("FichaOdisseia2.0/images/1.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(172);
    obj.layout1:setTop(492);
    obj.layout1:setWidth(232);
    obj.layout1:setHeight(40);
    obj.layout1:setName("layout1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setTransparent(true);
    obj.edit1:setFontSize(22);
    obj.edit1:setFontColor("#8B0000");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setLeft(0);
    obj.edit1:setTop(0);
    obj.edit1:setWidth(232);
    obj.edit1:setHeight(41);
    obj.edit1:setField("NomedoPersonagem");
    obj.edit1:setName("edit1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setLeft(463);
    obj.layout2:setTop(492);
    obj.layout2:setWidth(223);
    obj.layout2:setHeight(41);
    obj.layout2:setName("layout2");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setTransparent(true);
    obj.edit2:setFontSize(22);
    obj.edit2:setFontColor("#8B0000");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setLeft(0);
    obj.edit2:setTop(0);
    obj.edit2:setWidth(223);
    obj.edit2:setHeight(42);
    obj.edit2:setField("RaçadoPersonagem");
    obj.edit2:setName("edit2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(173);
    obj.layout3:setTop(573);
    obj.layout3:setWidth(226);
    obj.layout3:setHeight(40);
    obj.layout3:setName("layout3");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout3);
    obj.edit3:setTransparent(true);
    obj.edit3:setFontSize(22);
    obj.edit3:setFontColor("#8B0000");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setLeft(0);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(226);
    obj.edit3:setHeight(41);
    obj.edit3:setField("NomedoJogador");
    obj.edit3:setName("edit3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(461);
    obj.layout4:setTop(573);
    obj.layout4:setWidth(224);
    obj.layout4:setHeight(41);
    obj.layout4:setName("layout4");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout4);
    obj.edit4:setTransparent(true);
    obj.edit4:setFontSize(22);
    obj.edit4:setFontColor("#8B0000");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setLeft(0);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(224);
    obj.edit4:setHeight(42);
    obj.edit4:setField("ClassedoPersonagem");
    obj.edit4:setName("edit4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setLeft(739);
    obj.layout5:setTop(516);
    obj.layout5:setWidth(66);
    obj.layout5:setHeight(47);
    obj.layout5:setName("layout5");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout5);
    obj.edit5:setTransparent(true);
    obj.edit5:setFontSize(30.8);
    obj.edit5:setFontColor("#8B0000");
    lfm_setPropAsString(obj.edit5, "fontStyle",  "bold");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setLeft(0);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(66);
    obj.edit5:setHeight(48);
    obj.edit5:setField("NíveldoPersonagem");
    obj.edit5:setName("edit5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setLeft(246);
    obj.layout6:setTop(828);
    obj.layout6:setWidth(46);
    obj.layout6:setHeight(37);
    obj.layout6:setName("layout6");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout6);
    obj.edit6:setTransparent(true);
    obj.edit6:setFontSize(20.8);
    obj.edit6:setFontColor("#8B0000");
    lfm_setPropAsString(obj.edit6, "fontStyle",  "bold");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setLeft(0);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(44);
    obj.edit6:setHeight(38);
    obj.edit6:setField("Const");
    obj.edit6:setName("edit6");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle1);
    obj.layout7:setLeft(349);
    obj.layout7:setTop(870);
    obj.layout7:setWidth(46);
    obj.layout7:setHeight(37);
    obj.layout7:setName("layout7");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout7);
    obj.edit7:setTransparent(true);
    obj.edit7:setFontSize(20.8);
    obj.edit7:setFontColor("#8B0000");
    lfm_setPropAsString(obj.edit7, "fontStyle",  "bold");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setLeft(0);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(44);
    obj.edit7:setHeight(38);
    obj.edit7:setField("Int");
    obj.edit7:setName("edit7");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setLeft(356);
    obj.layout8:setTop(999);
    obj.layout8:setWidth(46);
    obj.layout8:setHeight(37);
    obj.layout8:setName("layout8");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout8);
    obj.edit8:setTransparent(true);
    obj.edit8:setFontSize(20.8);
    obj.edit8:setFontColor("#8B0000");
    lfm_setPropAsString(obj.edit8, "fontStyle",  "bold");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setLeft(0);
    obj.edit8:setTop(0);
    obj.edit8:setWidth(44);
    obj.edit8:setHeight(38);
    obj.edit8:setField("Mist");
    obj.edit8:setName("edit8");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle1);
    obj.layout9:setLeft(244);
    obj.layout9:setTop(1049);
    obj.layout9:setWidth(46);
    obj.layout9:setHeight(37);
    obj.layout9:setName("layout9");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout9);
    obj.edit9:setTransparent(true);
    obj.edit9:setFontSize(20.8);
    obj.edit9:setFontColor("#8B0000");
    lfm_setPropAsString(obj.edit9, "fontStyle",  "bold");
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setVertTextAlign("center");
    obj.edit9:setLeft(0);
    obj.edit9:setTop(0);
    obj.edit9:setWidth(44);
    obj.edit9:setHeight(38);
    obj.edit9:setField("Car");
    obj.edit9:setName("edit9");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle1);
    obj.layout10:setLeft(143);
    obj.layout10:setTop(999);
    obj.layout10:setWidth(46);
    obj.layout10:setHeight(37);
    obj.layout10:setName("layout10");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout10);
    obj.edit10:setTransparent(true);
    obj.edit10:setFontSize(20.8);
    obj.edit10:setFontColor("#8B0000");
    lfm_setPropAsString(obj.edit10, "fontStyle",  "bold");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setVertTextAlign("center");
    obj.edit10:setLeft(0);
    obj.edit10:setTop(0);
    obj.edit10:setWidth(44);
    obj.edit10:setHeight(38);
    obj.edit10:setField("Dest");
    obj.edit10:setName("edit10");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.rectangle1);
    obj.layout11:setLeft(136);
    obj.layout11:setTop(861);
    obj.layout11:setWidth(46);
    obj.layout11:setHeight(37);
    obj.layout11:setName("layout11");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout11);
    obj.edit11:setTransparent(true);
    obj.edit11:setFontSize(20.8);
    obj.edit11:setFontColor("#8B0000");
    lfm_setPropAsString(obj.edit11, "fontStyle",  "bold");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setVertTextAlign("center");
    obj.edit11:setLeft(0);
    obj.edit11:setTop(0);
    obj.edit11:setWidth(44);
    obj.edit11:setHeight(38);
    obj.edit11:setField("For");
    obj.edit11:setName("edit11");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle1);
    obj.layout12:setLeft(640);
    obj.layout12:setTop(789);
    obj.layout12:setWidth(60);
    obj.layout12:setHeight(28);
    obj.layout12:setName("layout12");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout12);
    obj.edit12:setTransparent(true);
    obj.edit12:setFontSize(22);
    obj.edit12:setFontColor("#8B0000");
    lfm_setPropAsString(obj.edit12, "fontStyle",  "bold");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setVertTextAlign("center");
    obj.edit12:setLeft(0);
    obj.edit12:setTop(0);
    obj.edit12:setWidth(60);
    obj.edit12:setHeight(29);
    obj.edit12:setField("EXP_Atual");
    obj.edit12:setName("edit12");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.rectangle1);
    obj.layout13:setLeft(798);
    obj.layout13:setTop(789);
    obj.layout13:setWidth(60);
    obj.layout13:setHeight(28);
    obj.layout13:setName("layout13");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout13);
    obj.edit13:setTransparent(true);
    obj.edit13:setFontSize(22);
    obj.edit13:setFontColor("#8B0000");
    lfm_setPropAsString(obj.edit13, "fontStyle",  "bold");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setVertTextAlign("center");
    obj.edit13:setLeft(0);
    obj.edit13:setTop(0);
    obj.edit13:setWidth(60);
    obj.edit13:setHeight(29);
    obj.edit13:setField("EXPTotal");
    obj.edit13:setName("edit13");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.rectangle1);
    obj.layout14:setLeft(640);
    obj.layout14:setTop(890);
    obj.layout14:setWidth(60);
    obj.layout14:setHeight(28);
    obj.layout14:setName("layout14");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout14);
    obj.edit14:setTransparent(true);
    obj.edit14:setFontSize(22);
    obj.edit14:setFontColor("#8B0000");
    lfm_setPropAsString(obj.edit14, "fontStyle",  "bold");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setVertTextAlign("center");
    obj.edit14:setLeft(0);
    obj.edit14:setTop(0);
    obj.edit14:setWidth(60);
    obj.edit14:setHeight(29);
    obj.edit14:setField("PHATual");
    obj.edit14:setName("edit14");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle1);
    obj.layout15:setLeft(790);
    obj.layout15:setTop(892);
    obj.layout15:setWidth(60);
    obj.layout15:setHeight(28);
    obj.layout15:setName("layout15");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout15);
    obj.edit15:setTransparent(true);
    obj.edit15:setFontSize(22);
    obj.edit15:setFontColor("#8B0000");
    lfm_setPropAsString(obj.edit15, "fontStyle",  "bold");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setVertTextAlign("center");
    obj.edit15:setLeft(0);
    obj.edit15:setTop(0);
    obj.edit15:setWidth(60);
    obj.edit15:setHeight(29);
    obj.edit15:setField("PHTotal");
    obj.edit15:setName("edit15");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.rectangle1);
    obj.layout16:setLeft(503);
    obj.layout16:setTop(1020);
    obj.layout16:setWidth(165);
    obj.layout16:setHeight(120.6);
    obj.layout16:setName("layout16");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout16);
    obj.textEditor1:setLeft(0);
    obj.textEditor1:setTop(0);
    obj.textEditor1:setWidth(165);
    obj.textEditor1:setHeight(120.6);
    obj.textEditor1:setFontSize(16.8);
    obj.textEditor1:setFontColor("#8B0000");
    obj.textEditor1:setField("CarInterpPositivas");
    obj.textEditor1:setTransparent(true);
    obj.textEditor1:setName("textEditor1");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.rectangle1);
    obj.layout17:setLeft(721);
    obj.layout17:setTop(1020);
    obj.layout17:setWidth(165);
    obj.layout17:setHeight(120.6);
    obj.layout17:setName("layout17");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout17);
    obj.textEditor2:setLeft(0);
    obj.textEditor2:setTop(0);
    obj.textEditor2:setWidth(165);
    obj.textEditor2:setHeight(120.6);
    obj.textEditor2:setFontSize(16.8);
    obj.textEditor2:setFontColor("#8B0000");
    obj.textEditor2:setField("CarInterpNegativas");
    obj.textEditor2:setTransparent(true);
    obj.textEditor2:setName("textEditor2");

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Combate");
    obj.tab2:setName("tab2");

    obj.frmFichaOdisseia2_02_L_svg = GUI.fromHandle(_obj_newObject("form"));
    obj.frmFichaOdisseia2_02_L_svg:setParent(obj.tab2);
    obj.frmFichaOdisseia2_02_L_svg:setName("frmFichaOdisseia2_02_L_svg");
    obj.frmFichaOdisseia2_02_L_svg:setAlign("client");
    obj.frmFichaOdisseia2_02_L_svg:setTheme("light");
    obj.frmFichaOdisseia2_02_L_svg:setMargins({top=1});

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.frmFichaOdisseia2_02_L_svg);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.scrollBox2);
    obj.rectangle2:setWidth(952);
    obj.rectangle2:setHeight(1347);
    obj.rectangle2:setColor("white");
    obj.rectangle2:setName("rectangle2");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.rectangle2);
    obj.image2:setLeft(0);
    obj.image2:setTop(0);
    obj.image2:setWidth(952);
    obj.image2:setHeight(1347);
    obj.image2:setSRC("images/2.png");
    obj.image2:setStyle("stretch");
    obj.image2:setOptimize(true);
    obj.image2:setName("image2");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.rectangle2);
    obj.layout18:setLeft(352);
    obj.layout18:setTop(275);
    obj.layout18:setWidth(118);
    obj.layout18:setHeight(40);
    obj.layout18:setName("layout18");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout18);
    obj.edit16:setTransparent(true);
    obj.edit16:setReadOnly(true);
    obj.edit16:setHitTest(false);
    obj.edit16:setCanFocus(false);
    obj.edit16:setFontSize(22);
    obj.edit16:setFontColor("#8B0000");
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setVertTextAlign("center");
    obj.edit16:setLeft(0);
    obj.edit16:setTop(0);
    obj.edit16:setWidth(118);
    obj.edit16:setHeight(41);
    obj.edit16:setField("ValorAtaqueFisico");
    obj.edit16:setName("edit16");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.rectangle2);
    obj.layout19:setLeft(475);
    obj.layout19:setTop(273);
    obj.layout19:setWidth(98);
    obj.layout19:setHeight(36);
    obj.layout19:setName("layout19");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout19);
    obj.edit17:setTransparent(true);
    obj.edit17:setFontSize(22);
    obj.edit17:setFontColor("#8B0000");
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setVertTextAlign("center");
    obj.edit17:setLeft(0);
    obj.edit17:setTop(0);
    obj.edit17:setWidth(98);
    obj.edit17:setHeight(37);
    obj.edit17:setField("ModAtaqueFisico");
    obj.edit17:setName("edit17");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.rectangle2);
    obj.layout20:setLeft(575);
    obj.layout20:setTop(276);
    obj.layout20:setWidth(106);
    obj.layout20:setHeight(36);
    obj.layout20:setName("layout20");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout20);
    obj.edit18:setTransparent(true);
    obj.edit18:setFontSize(22);
    obj.edit18:setFontColor("#8B0000");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setVertTextAlign("center");
    obj.edit18:setLeft(0);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(106);
    obj.edit18:setHeight(37);
    obj.edit18:setField("MultAtaqueFisico");
    obj.edit18:setName("edit18");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.rectangle2);
    obj.layout21:setLeft(689);
    obj.layout21:setTop(276);
    obj.layout21:setWidth(114);
    obj.layout21:setHeight(36);
    obj.layout21:setName("layout21");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout21);
    obj.edit19:setTransparent(true);
    obj.edit19:setFontSize(22);
    obj.edit19:setFontColor("#8B0000");
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setVertTextAlign("center");
    obj.edit19:setLeft(0);
    obj.edit19:setTop(0);
    obj.edit19:setWidth(114);
    obj.edit19:setHeight(37);
    obj.edit19:setField("BonusAtaqueFisico");
    obj.edit19:setName("edit19");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.rectangle2);
    obj.layout22:setLeft(352);
    obj.layout22:setTop(316);
    obj.layout22:setWidth(118);
    obj.layout22:setHeight(40);
    obj.layout22:setName("layout22");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout22);
    obj.edit20:setTransparent(true);
    obj.edit20:setFontSize(22);
    obj.edit20:setFontColor("#8B0000");
    obj.edit20:setReadOnly(true);
    obj.edit20:setHitTest(false);
    obj.edit20:setCanFocus(false);
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setVertTextAlign("center");
    obj.edit20:setLeft(0);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(115);
    obj.edit20:setHeight(34);
    obj.edit20:setField("ValorAtaqueMagico");
    obj.edit20:setName("edit20");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.rectangle2);
    obj.layout23:setLeft(474);
    obj.layout23:setTop(319);
    obj.layout23:setWidth(95);
    obj.layout23:setHeight(30);
    obj.layout23:setName("layout23");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout23);
    obj.edit21:setTransparent(true);
    obj.edit21:setFontSize(22);
    obj.edit21:setFontColor("#8B0000");
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setVertTextAlign("center");
    obj.edit21:setLeft(0);
    obj.edit21:setTop(0);
    obj.edit21:setWidth(95);
    obj.edit21:setHeight(31);
    obj.edit21:setField("ModAtaque_Mágico");
    obj.edit21:setName("edit21");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.rectangle2);
    obj.layout24:setLeft(575);
    obj.layout24:setTop(319);
    obj.layout24:setWidth(106);
    obj.layout24:setHeight(30);
    obj.layout24:setName("layout24");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout24);
    obj.edit22:setTransparent(true);
    obj.edit22:setFontSize(22);
    obj.edit22:setFontColor("#8B0000");
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setVertTextAlign("center");
    obj.edit22:setLeft(0);
    obj.edit22:setTop(0);
    obj.edit22:setWidth(106);
    obj.edit22:setHeight(31);
    obj.edit22:setField("MultAtaque_Mágico");
    obj.edit22:setName("edit22");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.rectangle2);
    obj.layout25:setLeft(690);
    obj.layout25:setTop(319);
    obj.layout25:setWidth(118);
    obj.layout25:setHeight(31);
    obj.layout25:setName("layout25");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout25);
    obj.edit23:setTransparent(true);
    obj.edit23:setFontSize(22);
    obj.edit23:setFontColor("#8B0000");
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setVertTextAlign("center");
    obj.edit23:setLeft(0);
    obj.edit23:setTop(0);
    obj.edit23:setWidth(118);
    obj.edit23:setHeight(32);
    obj.edit23:setField("BonusAtaqueMagico__0");
    obj.edit23:setName("edit23");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.rectangle2);
    obj.layout26:setLeft(352);
    obj.layout26:setTop(350);
    obj.layout26:setWidth(118);
    obj.layout26:setHeight(40);
    obj.layout26:setName("layout26");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout26);
    obj.edit24:setTransparent(true);
    obj.edit24:setFontSize(22);
    obj.edit24:setFontColor("#8B0000");
    obj.edit24:setReadOnly(true);
    obj.edit24:setHitTest(false);
    obj.edit24:setCanFocus(false);
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setVertTextAlign("center");
    obj.edit24:setLeft(0);
    obj.edit24:setTop(0);
    obj.edit24:setWidth(115);
    obj.edit24:setHeight(34);
    obj.edit24:setField("ValorPrecisao");
    obj.edit24:setName("edit24");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.rectangle2);
    obj.layout27:setLeft(474);
    obj.layout27:setTop(354);
    obj.layout27:setWidth(95);
    obj.layout27:setHeight(30);
    obj.layout27:setName("layout27");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout27);
    obj.edit25:setTransparent(true);
    obj.edit25:setFontSize(22);
    obj.edit25:setFontColor("#8B0000");
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setVertTextAlign("center");
    obj.edit25:setLeft(0);
    obj.edit25:setTop(0);
    obj.edit25:setWidth(95);
    obj.edit25:setHeight(31);
    obj.edit25:setField("ModPrecisão");
    obj.edit25:setName("edit25");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.rectangle2);
    obj.layout28:setLeft(575);
    obj.layout28:setTop(354);
    obj.layout28:setWidth(108);
    obj.layout28:setHeight(31);
    obj.layout28:setName("layout28");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout28);
    obj.edit26:setTransparent(true);
    obj.edit26:setFontSize(22);
    obj.edit26:setFontColor("#8B0000");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setVertTextAlign("center");
    obj.edit26:setLeft(0);
    obj.edit26:setTop(0);
    obj.edit26:setWidth(108);
    obj.edit26:setHeight(32);
    obj.edit26:setField("MultPrecisão");
    obj.edit26:setName("edit26");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.rectangle2);
    obj.layout29:setLeft(690);
    obj.layout29:setTop(354);
    obj.layout29:setWidth(118);
    obj.layout29:setHeight(29);
    obj.layout29:setName("layout29");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout29);
    obj.edit27:setTransparent(true);
    obj.edit27:setFontSize(22);
    obj.edit27:setFontColor("#8B0000");
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setVertTextAlign("center");
    obj.edit27:setLeft(0);
    obj.edit27:setTop(0);
    obj.edit27:setWidth(118);
    obj.edit27:setHeight(30);
    obj.edit27:setField("BonusPrecisão");
    obj.edit27:setName("edit27");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.rectangle2);
    obj.layout30:setLeft(352);
    obj.layout30:setTop(386);
    obj.layout30:setWidth(118);
    obj.layout30:setHeight(40);
    obj.layout30:setName("layout30");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout30);
    obj.edit28:setTransparent(true);
    obj.edit28:setFontSize(22);
    obj.edit28:setFontColor("#8B0000");
    obj.edit28:setReadOnly(true);
    obj.edit28:setHitTest(false);
    obj.edit28:setCanFocus(false);
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setVertTextAlign("center");
    obj.edit28:setLeft(0);
    obj.edit28:setTop(0);
    obj.edit28:setWidth(115);
    obj.edit28:setHeight(34);
    obj.edit28:setField("ValorDefFisica");
    obj.edit28:setName("edit28");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.rectangle2);
    obj.layout31:setLeft(474);
    obj.layout31:setTop(390);
    obj.layout31:setWidth(95);
    obj.layout31:setHeight(28);
    obj.layout31:setName("layout31");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout31);
    obj.edit29:setTransparent(true);
    obj.edit29:setFontSize(22);
    obj.edit29:setFontColor("#8B0000");
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setVertTextAlign("center");
    obj.edit29:setLeft(0);
    obj.edit29:setTop(0);
    obj.edit29:setWidth(95);
    obj.edit29:setHeight(29);
    obj.edit29:setField("ModDefesa_Física");
    obj.edit29:setName("edit29");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.rectangle2);
    obj.layout32:setLeft(575);
    obj.layout32:setTop(390);
    obj.layout32:setWidth(110);
    obj.layout32:setHeight(28);
    obj.layout32:setName("layout32");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout32);
    obj.edit30:setTransparent(true);
    obj.edit30:setFontSize(22);
    obj.edit30:setFontColor("#8B0000");
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setVertTextAlign("center");
    obj.edit30:setLeft(0);
    obj.edit30:setTop(0);
    obj.edit30:setWidth(110);
    obj.edit30:setHeight(29);
    obj.edit30:setField("MultDefesa_Física");
    obj.edit30:setName("edit30");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.rectangle2);
    obj.layout33:setLeft(689);
    obj.layout33:setTop(389);
    obj.layout33:setWidth(120);
    obj.layout33:setHeight(29);
    obj.layout33:setName("layout33");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout33);
    obj.edit31:setTransparent(true);
    obj.edit31:setFontSize(22);
    obj.edit31:setFontColor("#8B0000");
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setVertTextAlign("center");
    obj.edit31:setLeft(0);
    obj.edit31:setTop(0);
    obj.edit31:setWidth(120);
    obj.edit31:setHeight(30);
    obj.edit31:setField("BonusDefFisica");
    obj.edit31:setName("edit31");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.rectangle2);
    obj.layout34:setLeft(352);
    obj.layout34:setTop(421);
    obj.layout34:setWidth(118);
    obj.layout34:setHeight(40);
    obj.layout34:setName("layout34");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout34);
    obj.edit32:setTransparent(true);
    obj.edit32:setFontSize(22);
    obj.edit32:setFontColor("#8B0000");
    obj.edit32:setReadOnly(true);
    obj.edit32:setHitTest(false);
    obj.edit32:setCanFocus(false);
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setVertTextAlign("center");
    obj.edit32:setLeft(0);
    obj.edit32:setTop(0);
    obj.edit32:setWidth(115);
    obj.edit32:setHeight(34);
    obj.edit32:setField("ValorDefesaMagica");
    obj.edit32:setName("edit32");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.rectangle2);
    obj.layout35:setLeft(474);
    obj.layout35:setTop(425);
    obj.layout35:setWidth(95);
    obj.layout35:setHeight(29);
    obj.layout35:setName("layout35");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout35);
    obj.edit33:setTransparent(true);
    obj.edit33:setFontSize(22);
    obj.edit33:setFontColor("#8B0000");
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setVertTextAlign("center");
    obj.edit33:setLeft(0);
    obj.edit33:setTop(0);
    obj.edit33:setWidth(95);
    obj.edit33:setHeight(30);
    obj.edit33:setField("ModDefesaMágica");
    obj.edit33:setName("edit33");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.rectangle2);
    obj.layout36:setLeft(575);
    obj.layout36:setTop(423);
    obj.layout36:setWidth(110);
    obj.layout36:setHeight(31);
    obj.layout36:setName("layout36");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout36);
    obj.edit34:setTransparent(true);
    obj.edit34:setFontSize(22);
    obj.edit34:setFontColor("#8B0000");
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setVertTextAlign("center");
    obj.edit34:setLeft(0);
    obj.edit34:setTop(0);
    obj.edit34:setWidth(110);
    obj.edit34:setHeight(32);
    obj.edit34:setField("MultDefesaMagica");
    obj.edit34:setName("edit34");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.rectangle2);
    obj.layout37:setLeft(688);
    obj.layout37:setTop(423);
    obj.layout37:setWidth(121);
    obj.layout37:setHeight(35);
    obj.layout37:setName("layout37");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout37);
    obj.edit35:setTransparent(true);
    obj.edit35:setFontSize(22);
    obj.edit35:setFontColor("#8B0000");
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setVertTextAlign("center");
    obj.edit35:setLeft(0);
    obj.edit35:setTop(0);
    obj.edit35:setWidth(121);
    obj.edit35:setHeight(36);
    obj.edit35:setField("BonusDefesaMagica1");
    obj.edit35:setName("edit35");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.rectangle2);
    obj.layout38:setLeft(352);
    obj.layout38:setTop(454);
    obj.layout38:setWidth(118);
    obj.layout38:setHeight(40);
    obj.layout38:setName("layout38");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout38);
    obj.edit36:setTransparent(true);
    obj.edit36:setFontSize(22);
    obj.edit36:setFontColor("#8B0000");
    obj.edit36:setReadOnly(true);
    obj.edit36:setHitTest(false);
    obj.edit36:setCanFocus(false);
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setVertTextAlign("center");
    obj.edit36:setLeft(0);
    obj.edit36:setTop(0);
    obj.edit36:setWidth(115);
    obj.edit36:setHeight(34);
    obj.edit36:setField("ValorEsquiva");
    obj.edit36:setName("edit36");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.rectangle2);
    obj.layout39:setLeft(473);
    obj.layout39:setTop(459);
    obj.layout39:setWidth(96);
    obj.layout39:setHeight(27);
    obj.layout39:setName("layout39");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout39);
    obj.edit37:setTransparent(true);
    obj.edit37:setFontSize(22);
    obj.edit37:setFontColor("#8B0000");
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setVertTextAlign("center");
    obj.edit37:setLeft(0);
    obj.edit37:setTop(0);
    obj.edit37:setWidth(96);
    obj.edit37:setHeight(28);
    obj.edit37:setField("ModEsquiva");
    obj.edit37:setName("edit37");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.rectangle2);
    obj.layout40:setLeft(575);
    obj.layout40:setTop(459);
    obj.layout40:setWidth(110);
    obj.layout40:setHeight(27);
    obj.layout40:setName("layout40");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.layout40);
    obj.edit38:setTransparent(true);
    obj.edit38:setFontSize(22);
    obj.edit38:setFontColor("#8B0000");
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setVertTextAlign("center");
    obj.edit38:setLeft(0);
    obj.edit38:setTop(0);
    obj.edit38:setWidth(110);
    obj.edit38:setHeight(28);
    obj.edit38:setField("MultEsquiva");
    obj.edit38:setName("edit38");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.rectangle2);
    obj.layout41:setLeft(688);
    obj.layout41:setTop(455);
    obj.layout41:setWidth(123);
    obj.layout41:setHeight(35);
    obj.layout41:setName("layout41");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.layout41);
    obj.edit39:setTransparent(true);
    obj.edit39:setFontSize(22);
    obj.edit39:setFontColor("#8B0000");
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setVertTextAlign("center");
    obj.edit39:setLeft(0);
    obj.edit39:setTop(0);
    obj.edit39:setWidth(123);
    obj.edit39:setHeight(36);
    obj.edit39:setField("BonusEsquiva");
    obj.edit39:setName("edit39");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.rectangle2);
    obj.layout42:setLeft(352);
    obj.layout42:setTop(489);
    obj.layout42:setWidth(118);
    obj.layout42:setHeight(40);
    obj.layout42:setName("layout42");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.layout42);
    obj.edit40:setTransparent(true);
    obj.edit40:setFontSize(22);
    obj.edit40:setFontColor("#8B0000");
    obj.edit40:setReadOnly(true);
    obj.edit40:setHitTest(false);
    obj.edit40:setCanFocus(false);
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setVertTextAlign("center");
    obj.edit40:setLeft(0);
    obj.edit40:setTop(0);
    obj.edit40:setWidth(115);
    obj.edit40:setHeight(34);
    obj.edit40:setField("ValorIniciativa");
    obj.edit40:setName("edit40");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.rectangle2);
    obj.layout43:setLeft(474);
    obj.layout43:setTop(492);
    obj.layout43:setWidth(99);
    obj.layout43:setHeight(30);
    obj.layout43:setName("layout43");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.layout43);
    obj.edit41:setTransparent(true);
    obj.edit41:setFontSize(22);
    obj.edit41:setFontColor("#8B0000");
    obj.edit41:setHorzTextAlign("center");
    obj.edit41:setVertTextAlign("center");
    obj.edit41:setLeft(0);
    obj.edit41:setTop(0);
    obj.edit41:setWidth(99);
    obj.edit41:setHeight(31);
    obj.edit41:setField("ModIniciativa");
    obj.edit41:setName("edit41");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.rectangle2);
    obj.layout44:setLeft(575);
    obj.layout44:setTop(491);
    obj.layout44:setWidth(113);
    obj.layout44:setHeight(31);
    obj.layout44:setName("layout44");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.layout44);
    obj.edit42:setTransparent(true);
    obj.edit42:setFontSize(22);
    obj.edit42:setFontColor("#8B0000");
    obj.edit42:setHorzTextAlign("center");
    obj.edit42:setVertTextAlign("center");
    obj.edit42:setLeft(0);
    obj.edit42:setTop(0);
    obj.edit42:setWidth(113);
    obj.edit42:setHeight(32);
    obj.edit42:setField("MultIniciativa");
    obj.edit42:setName("edit42");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.rectangle2);
    obj.layout45:setLeft(690);
    obj.layout45:setTop(488);
    obj.layout45:setWidth(119);
    obj.layout45:setHeight(37);
    obj.layout45:setName("layout45");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.layout45);
    obj.edit43:setTransparent(true);
    obj.edit43:setFontSize(22);
    obj.edit43:setFontColor("#8B0000");
    obj.edit43:setHorzTextAlign("center");
    obj.edit43:setVertTextAlign("center");
    obj.edit43:setLeft(0);
    obj.edit43:setTop(0);
    obj.edit43:setWidth(119);
    obj.edit43:setHeight(38);
    obj.edit43:setField("BonusIniciativa");
    obj.edit43:setName("edit43");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.rectangle2);
    obj.layout46:setLeft(352);
    obj.layout46:setTop(528);
    obj.layout46:setWidth(118);
    obj.layout46:setHeight(40);
    obj.layout46:setName("layout46");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.layout46);
    obj.edit44:setTransparent(true);
    obj.edit44:setFontSize(22);
    obj.edit44:setFontColor("#8B0000");
    obj.edit44:setHorzTextAlign("center");
    obj.edit44:setVertTextAlign("center");
    obj.edit44:setLeft(0);
    obj.edit44:setTop(0);
    obj.edit44:setWidth(115);
    obj.edit44:setHeight(34);
    obj.edit44:setField("ValorBonusIniciativa");
    obj.edit44:setName("edit44");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.rectangle2);
    obj.layout47:setLeft(473);
    obj.layout47:setTop(526);
    obj.layout47:setWidth(100);
    obj.layout47:setHeight(36);
    obj.layout47:setName("layout47");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.layout47);
    obj.edit45:setTransparent(true);
    obj.edit45:setFontSize(22);
    obj.edit45:setFontColor("#8B0000");
    obj.edit45:setHorzTextAlign("center");
    obj.edit45:setVertTextAlign("center");
    obj.edit45:setLeft(0);
    obj.edit45:setTop(0);
    obj.edit45:setWidth(100);
    obj.edit45:setHeight(37);
    obj.edit45:setField("ModBonusInciativa");
    obj.edit45:setName("edit45");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.rectangle2);
    obj.layout48:setLeft(575);
    obj.layout48:setTop(527);
    obj.layout48:setWidth(110);
    obj.layout48:setHeight(34);
    obj.layout48:setName("layout48");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.layout48);
    obj.edit46:setTransparent(true);
    obj.edit46:setFontSize(22);
    obj.edit46:setFontColor("#8B0000");
    obj.edit46:setHorzTextAlign("center");
    obj.edit46:setVertTextAlign("center");
    obj.edit46:setLeft(0);
    obj.edit46:setTop(0);
    obj.edit46:setWidth(110);
    obj.edit46:setHeight(35);
    obj.edit46:setField("MultBonusIniciativa");
    obj.edit46:setName("edit46");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.rectangle2);
    obj.layout49:setLeft(693);
    obj.layout49:setTop(528);
    obj.layout49:setWidth(114);
    obj.layout49:setHeight(33);
    obj.layout49:setName("layout49");

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.layout49);
    obj.edit47:setTransparent(true);
    obj.edit47:setFontSize(22);
    obj.edit47:setFontColor("#8B0000");
    obj.edit47:setHorzTextAlign("center");
    obj.edit47:setVertTextAlign("center");
    obj.edit47:setLeft(0);
    obj.edit47:setTop(0);
    obj.edit47:setWidth(114);
    obj.edit47:setHeight(34);
    obj.edit47:setField("BonusBonusIniciativa");
    obj.edit47:setName("edit47");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.rectangle2);
    obj.layout50:setLeft(186);
    obj.layout50:setTop(603);
    obj.layout50:setWidth(38);
    obj.layout50:setHeight(31);
    obj.layout50:setName("layout50");

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.layout50);
    obj.edit48:setTransparent(true);
    obj.edit48:setFontSize(18.8);
    obj.edit48:setFontColor("#FF0000");
    obj.edit48:setHorzTextAlign("center");
    obj.edit48:setVertTextAlign("center");
    obj.edit48:setLeft(0);
    obj.edit48:setTop(0);
    obj.edit48:setWidth(38);
    obj.edit48:setHeight(32);
    obj.edit48:setField("PVAtual");
    obj.edit48:setName("edit48");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.rectangle2);
    obj.layout51:setLeft(244);
    obj.layout51:setTop(603);
    obj.layout51:setWidth(39);
    obj.layout51:setHeight(30);
    obj.layout51:setName("layout51");

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.layout51);
    obj.edit49:setTransparent(true);
    obj.edit49:setReadOnly(true);
    obj.edit49:setHitTest(false);
    obj.edit49:setCanFocus(false);
    obj.edit49:setFontSize(20.3);
    obj.edit49:setFontColor("#FF0000");
    obj.edit49:setHorzTextAlign("center");
    obj.edit49:setVertTextAlign("center");
    obj.edit49:setLeft(0);
    obj.edit49:setTop(0);
    obj.edit49:setWidth(39);
    obj.edit49:setHeight(31);
    obj.edit49:setField("PVTotal");
    obj.edit49:setName("edit49");

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.rectangle2);
    obj.layout52:setLeft(427);
    obj.layout52:setTop(603);
    obj.layout52:setWidth(39);
    obj.layout52:setHeight(36);
    obj.layout52:setName("layout52");

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.layout52);
    obj.edit50:setTransparent(true);
    obj.edit50:setFontSize(20.8);
    obj.edit50:setFontColor("#0000FF");
    obj.edit50:setHorzTextAlign("center");
    obj.edit50:setVertTextAlign("center");
    obj.edit50:setLeft(0);
    obj.edit50:setTop(0);
    obj.edit50:setWidth(39);
    obj.edit50:setHeight(37);
    obj.edit50:setField("PMAtual");
    obj.edit50:setName("edit50");

    obj.layout53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.rectangle2);
    obj.layout53:setLeft(483);
    obj.layout53:setTop(603);
    obj.layout53:setWidth(40);
    obj.layout53:setHeight(33);
    obj.layout53:setName("layout53");

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.layout53);
    obj.edit51:setTransparent(true);
    obj.edit51:setReadOnly(true);
    obj.edit51:setHitTest(false);
    obj.edit51:setCanFocus(false);
    obj.edit51:setFontSize(20.8);
    obj.edit51:setFontColor("#0000FF");
    obj.edit51:setWidth(40);
    obj.edit51:setHeight(33);
    obj.edit51:setHorzTextAlign("center");
    obj.edit51:setVertTextAlign("center");
    obj.edit51:setField("PMTotal");
    obj.edit51:setName("edit51");

    obj.layout54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.rectangle2);
    obj.layout54:setLeft(670);
    obj.layout54:setTop(603);
    obj.layout54:setWidth(40);
    obj.layout54:setHeight(33);
    obj.layout54:setName("layout54");

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.layout54);
    obj.edit52:setTransparent(true);
    obj.edit52:setFontSize(20.8);
    obj.edit52:setFontColor("#008000");
    obj.edit52:setHorzTextAlign("center");
    obj.edit52:setVertTextAlign("center");
    obj.edit52:setLeft(0);
    obj.edit52:setTop(0);
    obj.edit52:setWidth(40);
    obj.edit52:setHeight(34);
    obj.edit52:setField("EnergiaAtual");
    obj.edit52:setName("edit52");

    obj.layout55 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.rectangle2);
    obj.layout55:setLeft(728);
    obj.layout55:setTop(603);
    obj.layout55:setWidth(43);
    obj.layout55:setHeight(31);
    obj.layout55:setName("layout55");

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.layout55);
    obj.edit53:setTransparent(true);
    obj.edit53:setReadOnly(true);
    obj.edit53:setHitTest(false);
    obj.edit53:setCanFocus(false);
    obj.edit53:setFontSize(20.8);
    obj.edit53:setFontColor("#008000");
    obj.edit53:setHorzTextAlign("center");
    obj.edit53:setVertTextAlign("center");
    obj.edit53:setLeft(0);
    obj.edit53:setTop(0);
    obj.edit53:setWidth(43);
    obj.edit53:setHeight(32);
    obj.edit53:setField("EnergiaTotal");
    obj.edit53:setName("edit53");

    obj.layout56 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.rectangle2);
    obj.layout56:setLeft(363);
    obj.layout56:setTop(737);
    obj.layout56:setWidth(183);
    obj.layout56:setHeight(33);
    obj.layout56:setName("layout56");

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.layout56);
    obj.edit54:setTransparent(true);
    obj.edit54:setFontSize(20.8);
    obj.edit54:setFontColor("#8B0000");
    obj.edit54:setHorzTextAlign("leading");
    obj.edit54:setVertTextAlign("center");
    obj.edit54:setLeft(0);
    obj.edit54:setTop(0);
    obj.edit54:setWidth(183);
    obj.edit54:setHeight(34);
    obj.edit54:setField("ItemCabeça");
    obj.edit54:setName("edit54");

    obj.layout57 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.rectangle2);
    obj.layout57:setLeft(553);
    obj.layout57:setTop(737);
    obj.layout57:setWidth(90);
    obj.layout57:setHeight(33);
    obj.layout57:setName("layout57");

    obj.edit55 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.layout57);
    obj.edit55:setTransparent(true);
    obj.edit55:setFontSize(20.8);
    obj.edit55:setFontColor("#8B0000");
    obj.edit55:setHorzTextAlign("leading");
    obj.edit55:setVertTextAlign("center");
    obj.edit55:setLeft(0);
    obj.edit55:setTop(0);
    obj.edit55:setWidth(90);
    obj.edit55:setHeight(34);
    obj.edit55:setField("BonusCabeça");
    obj.edit55:setName("edit55");

    obj.layout58 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.rectangle2);
    obj.layout58:setLeft(649);
    obj.layout58:setTop(739);
    obj.layout58:setWidth(52);
    obj.layout58:setHeight(33);
    obj.layout58:setName("layout58");

    obj.edit56 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.layout58);
    obj.edit56:setTransparent(true);
    obj.edit56:setFontSize(20.8);
    obj.edit56:setFontColor("#8B0000");
    obj.edit56:setHorzTextAlign("leading");
    obj.edit56:setVertTextAlign("center");
    obj.edit56:setLeft(0);
    obj.edit56:setTop(0);
    obj.edit56:setWidth(52);
    obj.edit56:setHeight(34);
    obj.edit56:setHitTest(true);
    obj.edit56:setHint("Em caso de numero quebrado, use . ao invés de ,");
    obj.edit56:setField("PesoCabeca");
    obj.edit56:setName("edit56");

    obj.layout59 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.rectangle2);
    obj.layout59:setLeft(710);
    obj.layout59:setTop(740);
    obj.layout59:setWidth(135);
    obj.layout59:setHeight(33);
    obj.layout59:setName("layout59");

    obj.edit57 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.layout59);
    obj.edit57:setTransparent(true);
    obj.edit57:setFontSize(20.8);
    obj.edit57:setFontColor("#8B0000");
    obj.edit57:setHorzTextAlign("leading");
    obj.edit57:setVertTextAlign("center");
    obj.edit57:setLeft(0);
    obj.edit57:setTop(0);
    obj.edit57:setWidth(135);
    obj.edit57:setHeight(34);
    obj.edit57:setField("DurabilidadeCabeça");
    obj.edit57:setName("edit57");

    obj.layout60 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.rectangle2);
    obj.layout60:setLeft(362);
    obj.layout60:setTop(787);
    obj.layout60:setWidth(183);
    obj.layout60:setHeight(33);
    obj.layout60:setName("layout60");

    obj.edit58 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.layout60);
    obj.edit58:setTransparent(true);
    obj.edit58:setFontSize(20.8);
    obj.edit58:setFontColor("#8B0000");
    obj.edit58:setHorzTextAlign("leading");
    obj.edit58:setVertTextAlign("center");
    obj.edit58:setLeft(0);
    obj.edit58:setTop(0);
    obj.edit58:setWidth(183);
    obj.edit58:setHeight(34);
    obj.edit58:setField("ItemTronco");
    obj.edit58:setName("edit58");

    obj.layout61 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.rectangle2);
    obj.layout61:setLeft(551);
    obj.layout61:setTop(789);
    obj.layout61:setWidth(90);
    obj.layout61:setHeight(33);
    obj.layout61:setName("layout61");

    obj.edit59 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.layout61);
    obj.edit59:setTransparent(true);
    obj.edit59:setFontSize(20.8);
    obj.edit59:setFontColor("#8B0000");
    obj.edit59:setHorzTextAlign("leading");
    obj.edit59:setVertTextAlign("center");
    obj.edit59:setLeft(0);
    obj.edit59:setTop(0);
    obj.edit59:setWidth(90);
    obj.edit59:setHeight(34);
    obj.edit59:setField("BonusTronco");
    obj.edit59:setName("edit59");

    obj.layout62 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout62:setParent(obj.rectangle2);
    obj.layout62:setLeft(648);
    obj.layout62:setTop(788);
    obj.layout62:setWidth(52);
    obj.layout62:setHeight(33);
    obj.layout62:setName("layout62");

    obj.edit60 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.layout62);
    obj.edit60:setTransparent(true);
    obj.edit60:setFontSize(20.8);
    obj.edit60:setFontColor("#8B0000");
    obj.edit60:setHorzTextAlign("leading");
    obj.edit60:setVertTextAlign("center");
    obj.edit60:setLeft(0);
    obj.edit60:setTop(0);
    obj.edit60:setWidth(52);
    obj.edit60:setHeight(34);
    obj.edit60:setHitTest(true);
    obj.edit60:setHint("Em caso de numero quebrado, use . ao invés de ,");
    obj.edit60:setField("PesoTronco");
    obj.edit60:setName("edit60");

    obj.layout63 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout63:setParent(obj.rectangle2);
    obj.layout63:setLeft(709);
    obj.layout63:setTop(787);
    obj.layout63:setWidth(135);
    obj.layout63:setHeight(33);
    obj.layout63:setName("layout63");

    obj.edit61 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.layout63);
    obj.edit61:setTransparent(true);
    obj.edit61:setFontSize(20.8);
    obj.edit61:setFontColor("#8B0000");
    obj.edit61:setHorzTextAlign("leading");
    obj.edit61:setVertTextAlign("center");
    obj.edit61:setLeft(0);
    obj.edit61:setTop(0);
    obj.edit61:setWidth(135);
    obj.edit61:setHeight(34);
    obj.edit61:setField("DurabilidadeTronco");
    obj.edit61:setName("edit61");

    obj.layout64 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout64:setParent(obj.rectangle2);
    obj.layout64:setLeft(362);
    obj.layout64:setTop(834);
    obj.layout64:setWidth(183);
    obj.layout64:setHeight(33);
    obj.layout64:setName("layout64");

    obj.edit62 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.layout64);
    obj.edit62:setTransparent(true);
    obj.edit62:setFontSize(20.8);
    obj.edit62:setFontColor("#8B0000");
    obj.edit62:setHorzTextAlign("leading");
    obj.edit62:setVertTextAlign("center");
    obj.edit62:setLeft(0);
    obj.edit62:setTop(0);
    obj.edit62:setWidth(183);
    obj.edit62:setHeight(34);
    obj.edit62:setField("ItemBraços");
    obj.edit62:setName("edit62");

    obj.layout65 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout65:setParent(obj.rectangle2);
    obj.layout65:setLeft(552);
    obj.layout65:setTop(836);
    obj.layout65:setWidth(90);
    obj.layout65:setHeight(33);
    obj.layout65:setName("layout65");

    obj.edit63 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit63:setParent(obj.layout65);
    obj.edit63:setTransparent(true);
    obj.edit63:setFontSize(20.8);
    obj.edit63:setFontColor("#8B0000");
    obj.edit63:setHorzTextAlign("leading");
    obj.edit63:setVertTextAlign("center");
    obj.edit63:setLeft(0);
    obj.edit63:setTop(0);
    obj.edit63:setWidth(90);
    obj.edit63:setHeight(34);
    obj.edit63:setField("BonusBraços");
    obj.edit63:setName("edit63");

    obj.layout66 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout66:setParent(obj.rectangle2);
    obj.layout66:setLeft(648);
    obj.layout66:setTop(835);
    obj.layout66:setWidth(52);
    obj.layout66:setHeight(33);
    obj.layout66:setName("layout66");

    obj.edit64 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit64:setParent(obj.layout66);
    obj.edit64:setTransparent(true);
    obj.edit64:setFontSize(20.8);
    obj.edit64:setFontColor("#8B0000");
    obj.edit64:setHorzTextAlign("leading");
    obj.edit64:setVertTextAlign("center");
    obj.edit64:setLeft(0);
    obj.edit64:setTop(0);
    obj.edit64:setWidth(52);
    obj.edit64:setHeight(34);
    obj.edit64:setHitTest(true);
    obj.edit64:setHint("Em caso de numero quebrado, use . ao invés de ,");
    obj.edit64:setField("PesoBracos");
    obj.edit64:setName("edit64");

    obj.layout67 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout67:setParent(obj.rectangle2);
    obj.layout67:setLeft(707);
    obj.layout67:setTop(835);
    obj.layout67:setWidth(135);
    obj.layout67:setHeight(33);
    obj.layout67:setName("layout67");

    obj.edit65 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit65:setParent(obj.layout67);
    obj.edit65:setTransparent(true);
    obj.edit65:setFontSize(20.8);
    obj.edit65:setFontColor("#8B0000");
    obj.edit65:setHorzTextAlign("leading");
    obj.edit65:setVertTextAlign("center");
    obj.edit65:setLeft(0);
    obj.edit65:setTop(0);
    obj.edit65:setWidth(135);
    obj.edit65:setHeight(34);
    obj.edit65:setField("DurabilidadeBraços");
    obj.edit65:setName("edit65");

    obj.layout68 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout68:setParent(obj.rectangle2);
    obj.layout68:setLeft(361);
    obj.layout68:setTop(882);
    obj.layout68:setWidth(183);
    obj.layout68:setHeight(33);
    obj.layout68:setName("layout68");

    obj.edit66 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit66:setParent(obj.layout68);
    obj.edit66:setTransparent(true);
    obj.edit66:setFontSize(20.8);
    obj.edit66:setFontColor("#8B0000");
    obj.edit66:setHorzTextAlign("leading");
    obj.edit66:setVertTextAlign("center");
    obj.edit66:setLeft(0);
    obj.edit66:setTop(0);
    obj.edit66:setWidth(183);
    obj.edit66:setHeight(34);
    obj.edit66:setField("ItemMãoDIR");
    obj.edit66:setName("edit66");

    obj.layout69 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout69:setParent(obj.rectangle2);
    obj.layout69:setLeft(550);
    obj.layout69:setTop(882);
    obj.layout69:setWidth(90);
    obj.layout69:setHeight(33);
    obj.layout69:setName("layout69");

    obj.edit67 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit67:setParent(obj.layout69);
    obj.edit67:setTransparent(true);
    obj.edit67:setFontSize(20.8);
    obj.edit67:setFontColor("#8B0000");
    obj.edit67:setHorzTextAlign("leading");
    obj.edit67:setVertTextAlign("center");
    obj.edit67:setLeft(0);
    obj.edit67:setTop(0);
    obj.edit67:setWidth(90);
    obj.edit67:setHeight(34);
    obj.edit67:setField("BonusMãoDir");
    obj.edit67:setName("edit67");

    obj.layout70 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout70:setParent(obj.rectangle2);
    obj.layout70:setLeft(649);
    obj.layout70:setTop(881);
    obj.layout70:setWidth(52);
    obj.layout70:setHeight(33);
    obj.layout70:setName("layout70");

    obj.edit68 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit68:setParent(obj.layout70);
    obj.edit68:setTransparent(true);
    obj.edit68:setFontSize(20.8);
    obj.edit68:setFontColor("#8B0000");
    obj.edit68:setHorzTextAlign("leading");
    obj.edit68:setVertTextAlign("center");
    obj.edit68:setLeft(0);
    obj.edit68:setTop(0);
    obj.edit68:setWidth(52);
    obj.edit68:setHeight(34);
    obj.edit68:setHitTest(true);
    obj.edit68:setHint("Em caso de numero quebrado, use . ao invés de ,");
    obj.edit68:setField("PesoMaoDir");
    obj.edit68:setName("edit68");

    obj.layout71 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout71:setParent(obj.rectangle2);
    obj.layout71:setLeft(708);
    obj.layout71:setTop(882);
    obj.layout71:setWidth(135);
    obj.layout71:setHeight(33);
    obj.layout71:setName("layout71");

    obj.edit69 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit69:setParent(obj.layout71);
    obj.edit69:setTransparent(true);
    obj.edit69:setFontSize(20.8);
    obj.edit69:setFontColor("#8B0000");
    obj.edit69:setHorzTextAlign("leading");
    obj.edit69:setVertTextAlign("center");
    obj.edit69:setLeft(0);
    obj.edit69:setTop(0);
    obj.edit69:setWidth(135);
    obj.edit69:setHeight(34);
    obj.edit69:setField("DurabilidadeMãoDir");
    obj.edit69:setName("edit69");

    obj.layout72 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout72:setParent(obj.rectangle2);
    obj.layout72:setLeft(361);
    obj.layout72:setTop(936);
    obj.layout72:setWidth(183);
    obj.layout72:setHeight(33);
    obj.layout72:setName("layout72");

    obj.edit70 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit70:setParent(obj.layout72);
    obj.edit70:setTransparent(true);
    obj.edit70:setFontSize(20.8);
    obj.edit70:setFontColor("#8B0000");
    obj.edit70:setHorzTextAlign("leading");
    obj.edit70:setVertTextAlign("center");
    obj.edit70:setLeft(0);
    obj.edit70:setTop(0);
    obj.edit70:setWidth(183);
    obj.edit70:setHeight(34);
    obj.edit70:setField("BonusMãoESQ");
    obj.edit70:setName("edit70");

    obj.layout73 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout73:setParent(obj.rectangle2);
    obj.layout73:setLeft(551);
    obj.layout73:setTop(935);
    obj.layout73:setWidth(90);
    obj.layout73:setHeight(33);
    obj.layout73:setName("layout73");

    obj.edit71 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit71:setParent(obj.layout73);
    obj.edit71:setTransparent(true);
    obj.edit71:setFontSize(20.8);
    obj.edit71:setFontColor("#8B0000");
    obj.edit71:setHorzTextAlign("leading");
    obj.edit71:setVertTextAlign("center");
    obj.edit71:setLeft(0);
    obj.edit71:setTop(0);
    obj.edit71:setWidth(90);
    obj.edit71:setHeight(34);
    obj.edit71:setField("ItemMãoESQ");
    obj.edit71:setName("edit71");

    obj.layout74 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout74:setParent(obj.rectangle2);
    obj.layout74:setLeft(648);
    obj.layout74:setTop(935);
    obj.layout74:setWidth(52);
    obj.layout74:setHeight(33);
    obj.layout74:setName("layout74");

    obj.edit72 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit72:setParent(obj.layout74);
    obj.edit72:setTransparent(true);
    obj.edit72:setFontSize(20.8);
    obj.edit72:setFontColor("#8B0000");
    obj.edit72:setHorzTextAlign("leading");
    obj.edit72:setVertTextAlign("center");
    obj.edit72:setLeft(0);
    obj.edit72:setTop(0);
    obj.edit72:setWidth(52);
    obj.edit72:setHeight(34);
    obj.edit72:setHitTest(true);
    obj.edit72:setHint("Em caso de numero quebrado, use . ao invés de ,");
    obj.edit72:setField("PesoMaoESQ");
    obj.edit72:setName("edit72");

    obj.layout75 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout75:setParent(obj.rectangle2);
    obj.layout75:setLeft(708);
    obj.layout75:setTop(935);
    obj.layout75:setWidth(135);
    obj.layout75:setHeight(33);
    obj.layout75:setName("layout75");

    obj.edit73 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit73:setParent(obj.layout75);
    obj.edit73:setTransparent(true);
    obj.edit73:setFontSize(20.8);
    obj.edit73:setFontColor("#8B0000");
    obj.edit73:setHorzTextAlign("leading");
    obj.edit73:setVertTextAlign("center");
    obj.edit73:setLeft(0);
    obj.edit73:setTop(0);
    obj.edit73:setWidth(135);
    obj.edit73:setHeight(34);
    obj.edit73:setField("DurabilidadeMãoESQ");
    obj.edit73:setName("edit73");

    obj.layout76 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout76:setParent(obj.rectangle2);
    obj.layout76:setLeft(363);
    obj.layout76:setTop(1001);
    obj.layout76:setWidth(183);
    obj.layout76:setHeight(33);
    obj.layout76:setName("layout76");

    obj.edit74 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit74:setParent(obj.layout76);
    obj.edit74:setTransparent(true);
    obj.edit74:setFontSize(20.8);
    obj.edit74:setFontColor("#8B0000");
    obj.edit74:setHorzTextAlign("leading");
    obj.edit74:setVertTextAlign("center");
    obj.edit74:setLeft(0);
    obj.edit74:setTop(0);
    obj.edit74:setWidth(183);
    obj.edit74:setHeight(34);
    obj.edit74:setField("ItemPernas");
    obj.edit74:setName("edit74");

    obj.layout77 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout77:setParent(obj.rectangle2);
    obj.layout77:setLeft(550);
    obj.layout77:setTop(1000);
    obj.layout77:setWidth(90);
    obj.layout77:setHeight(33);
    obj.layout77:setName("layout77");

    obj.edit75 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit75:setParent(obj.layout77);
    obj.edit75:setTransparent(true);
    obj.edit75:setFontSize(20.8);
    obj.edit75:setFontColor("#8B0000");
    obj.edit75:setHorzTextAlign("leading");
    obj.edit75:setVertTextAlign("center");
    obj.edit75:setLeft(0);
    obj.edit75:setTop(0);
    obj.edit75:setWidth(90);
    obj.edit75:setHeight(34);
    obj.edit75:setField("BonusPernas");
    obj.edit75:setName("edit75");

    obj.layout78 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout78:setParent(obj.rectangle2);
    obj.layout78:setLeft(649);
    obj.layout78:setTop(1001);
    obj.layout78:setWidth(52);
    obj.layout78:setHeight(33);
    obj.layout78:setName("layout78");

    obj.edit76 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit76:setParent(obj.layout78);
    obj.edit76:setTransparent(true);
    obj.edit76:setFontSize(20.8);
    obj.edit76:setFontColor("#8B0000");
    obj.edit76:setHorzTextAlign("leading");
    obj.edit76:setVertTextAlign("center");
    obj.edit76:setLeft(0);
    obj.edit76:setTop(0);
    obj.edit76:setWidth(52);
    obj.edit76:setHeight(34);
    obj.edit76:setHitTest(true);
    obj.edit76:setHint("Em caso de numero quebrado, use . ao invés de ,");
    obj.edit76:setField("PesoPernas");
    obj.edit76:setName("edit76");

    obj.layout79 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout79:setParent(obj.rectangle2);
    obj.layout79:setLeft(709);
    obj.layout79:setTop(1000);
    obj.layout79:setWidth(135);
    obj.layout79:setHeight(33);
    obj.layout79:setName("layout79");

    obj.edit77 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit77:setParent(obj.layout79);
    obj.edit77:setTransparent(true);
    obj.edit77:setFontSize(20.8);
    obj.edit77:setFontColor("#8B0000");
    obj.edit77:setHorzTextAlign("leading");
    obj.edit77:setVertTextAlign("center");
    obj.edit77:setLeft(0);
    obj.edit77:setTop(0);
    obj.edit77:setWidth(135);
    obj.edit77:setHeight(34);
    obj.edit77:setField("DurabilidadePernas");
    obj.edit77:setName("edit77");

    obj.layout80 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout80:setParent(obj.rectangle2);
    obj.layout80:setLeft(362);
    obj.layout80:setTop(1048);
    obj.layout80:setWidth(183);
    obj.layout80:setHeight(33);
    obj.layout80:setName("layout80");

    obj.edit78 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit78:setParent(obj.layout80);
    obj.edit78:setTransparent(true);
    obj.edit78:setFontSize(20.8);
    obj.edit78:setFontColor("#8B0000");
    obj.edit78:setHorzTextAlign("leading");
    obj.edit78:setVertTextAlign("center");
    obj.edit78:setLeft(0);
    obj.edit78:setTop(0);
    obj.edit78:setWidth(183);
    obj.edit78:setHeight(34);
    obj.edit78:setField("ItemPés");
    obj.edit78:setName("edit78");

    obj.layout81 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout81:setParent(obj.rectangle2);
    obj.layout81:setLeft(551);
    obj.layout81:setTop(1048);
    obj.layout81:setWidth(90);
    obj.layout81:setHeight(33);
    obj.layout81:setName("layout81");

    obj.edit79 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit79:setParent(obj.layout81);
    obj.edit79:setTransparent(true);
    obj.edit79:setFontSize(20.8);
    obj.edit79:setFontColor("#8B0000");
    obj.edit79:setHorzTextAlign("leading");
    obj.edit79:setVertTextAlign("center");
    obj.edit79:setLeft(0);
    obj.edit79:setTop(0);
    obj.edit79:setWidth(90);
    obj.edit79:setHeight(34);
    obj.edit79:setField("BonusPés");
    obj.edit79:setName("edit79");

    obj.layout82 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout82:setParent(obj.rectangle2);
    obj.layout82:setLeft(648);
    obj.layout82:setTop(1049);
    obj.layout82:setWidth(52);
    obj.layout82:setHeight(33);
    obj.layout82:setName("layout82");

    obj.edit80 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit80:setParent(obj.layout82);
    obj.edit80:setTransparent(true);
    obj.edit80:setFontSize(20.8);
    obj.edit80:setFontColor("#8B0000");
    obj.edit80:setHorzTextAlign("leading");
    obj.edit80:setVertTextAlign("center");
    obj.edit80:setLeft(0);
    obj.edit80:setTop(0);
    obj.edit80:setWidth(52);
    obj.edit80:setHeight(34);
    obj.edit80:setHitTest(true);
    obj.edit80:setHint("Em caso de numero quebrado, use . ao invés de ,");
    obj.edit80:setField("PesoPes");
    obj.edit80:setName("edit80");

    obj.layout83 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout83:setParent(obj.rectangle2);
    obj.layout83:setLeft(710);
    obj.layout83:setTop(1048);
    obj.layout83:setWidth(135);
    obj.layout83:setHeight(33);
    obj.layout83:setName("layout83");

    obj.edit81 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit81:setParent(obj.layout83);
    obj.edit81:setTransparent(true);
    obj.edit81:setFontSize(20.8);
    obj.edit81:setFontColor("#8B0000");
    obj.edit81:setHorzTextAlign("leading");
    obj.edit81:setVertTextAlign("center");
    obj.edit81:setLeft(0);
    obj.edit81:setTop(0);
    obj.edit81:setWidth(135);
    obj.edit81:setHeight(34);
    obj.edit81:setField("DurabilidadePés");
    obj.edit81:setName("edit81");

    obj.layout84 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout84:setParent(obj.rectangle2);
    obj.layout84:setLeft(361);
    obj.layout84:setTop(1095);
    obj.layout84:setWidth(183);
    obj.layout84:setHeight(33);
    obj.layout84:setName("layout84");

    obj.edit82 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit82:setParent(obj.layout84);
    obj.edit82:setTransparent(true);
    obj.edit82:setFontSize(20.8);
    obj.edit82:setFontColor("#8B0000");
    obj.edit82:setHorzTextAlign("leading");
    obj.edit82:setVertTextAlign("center");
    obj.edit82:setLeft(0);
    obj.edit82:setTop(0);
    obj.edit82:setWidth(183);
    obj.edit82:setHeight(34);
    obj.edit82:setField("ItemOutros");
    obj.edit82:setName("edit82");

    obj.layout85 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout85:setParent(obj.rectangle2);
    obj.layout85:setLeft(551);
    obj.layout85:setTop(1095);
    obj.layout85:setWidth(90);
    obj.layout85:setHeight(33);
    obj.layout85:setName("layout85");

    obj.edit83 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit83:setParent(obj.layout85);
    obj.edit83:setTransparent(true);
    obj.edit83:setFontSize(20.8);
    obj.edit83:setFontColor("#8B0000");
    obj.edit83:setHorzTextAlign("leading");
    obj.edit83:setVertTextAlign("center");
    obj.edit83:setLeft(0);
    obj.edit83:setTop(0);
    obj.edit83:setWidth(90);
    obj.edit83:setHeight(34);
    obj.edit83:setField("BonusOutros");
    obj.edit83:setName("edit83");

    obj.layout86 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout86:setParent(obj.rectangle2);
    obj.layout86:setLeft(648);
    obj.layout86:setTop(1096);
    obj.layout86:setWidth(52);
    obj.layout86:setHeight(33);
    obj.layout86:setName("layout86");

    obj.edit84 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit84:setParent(obj.layout86);
    obj.edit84:setTransparent(true);
    obj.edit84:setFontSize(20.8);
    obj.edit84:setFontColor("#8B0000");
    obj.edit84:setHorzTextAlign("leading");
    obj.edit84:setVertTextAlign("center");
    obj.edit84:setLeft(0);
    obj.edit84:setTop(0);
    obj.edit84:setWidth(52);
    obj.edit84:setHeight(34);
    obj.edit84:setHitTest(true);
    obj.edit84:setHint("Em caso de numero quebrado, use . ao invés de ,");
    obj.edit84:setField("PesoOutros");
    obj.edit84:setName("edit84");

    obj.layout87 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout87:setParent(obj.rectangle2);
    obj.layout87:setLeft(708);
    obj.layout87:setTop(1095);
    obj.layout87:setWidth(135);
    obj.layout87:setHeight(33);
    obj.layout87:setName("layout87");

    obj.edit85 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit85:setParent(obj.layout87);
    obj.edit85:setTransparent(true);
    obj.edit85:setFontSize(20.8);
    obj.edit85:setFontColor("#8B0000");
    obj.edit85:setHorzTextAlign("leading");
    obj.edit85:setVertTextAlign("center");
    obj.edit85:setLeft(0);
    obj.edit85:setTop(0);
    obj.edit85:setWidth(135);
    obj.edit85:setHeight(34);
    obj.edit85:setField("DurabilidadeOutros");
    obj.edit85:setName("edit85");

    obj.layout88 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout88:setParent(obj.rectangle2);
    obj.layout88:setLeft(633);
    obj.layout88:setTop(1166);
    obj.layout88:setWidth(53);
    obj.layout88:setHeight(30);
    obj.layout88:setName("layout88");

    obj.edit86 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit86:setParent(obj.layout88);
    obj.edit86:setTransparent(true);
    obj.edit86:setFontSize(20.3);
    obj.edit86:setFontColor("#8B0000");
    obj.edit86:setHorzTextAlign("center");
    obj.edit86:setVertTextAlign("center");
    obj.edit86:setLeft(0);
    obj.edit86:setTop(0);
    obj.edit86:setWidth(53);
    obj.edit86:setHeight(31);
    obj.edit86:setHitTest(true);
    obj.edit86:setHint("Em caso de numero quebrado, use . ao invés de ,");
    obj.edit86:setField("PesoAtual");
    obj.edit86:setName("edit86");

    obj.layout89 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout89:setParent(obj.rectangle2);
    obj.layout89:setLeft(709);
    obj.layout89:setTop(1165);
    obj.layout89:setWidth(53);
    obj.layout89:setHeight(33);
    obj.layout89:setName("layout89");

    obj.edit87 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit87:setParent(obj.layout89);
    obj.edit87:setTransparent(true);
    obj.edit87:setFontSize(20.8);
    obj.edit87:setFontColor("#8B0000");
    obj.edit87:setReadOnly(true);
    obj.edit87:setHitTest(false);
    obj.edit87:setCanFocus(false);
    obj.edit87:setHorzTextAlign("center");
    obj.edit87:setVertTextAlign("center");
    obj.edit87:setLeft(0);
    obj.edit87:setTop(0);
    obj.edit87:setWidth(53);
    obj.edit87:setHeight(34);
    obj.edit87:setField("PesoLimite");
    obj.edit87:setName("edit87");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.frmFichaOdisseia2_02_L_svg);
    obj.dataLink1:setFields({'Const', 'For'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.frmFichaOdisseia2_02_L_svg);
    obj.dataLink2:setFields({'Mist', 'Int'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.frmFichaOdisseia2_02_L_svg);
    obj.dataLink3:setFields({'Const', 'For'});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.frmFichaOdisseia2_02_L_svg);
    obj.dataLink4:setFields({'Dest', 'For'});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.frmFichaOdisseia2_02_L_svg);
    obj.dataLink5:setFields({'Mist', 'Int'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.frmFichaOdisseia2_02_L_svg);
    obj.dataLink6:setFields({'Dest', 'Int'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.frmFichaOdisseia2_02_L_svg);
    obj.dataLink7:setFields({'Const', 'For'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.frmFichaOdisseia2_02_L_svg);
    obj.dataLink8:setFields({'Mist', 'Const'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.frmFichaOdisseia2_02_L_svg);
    obj.dataLink9:setFields({'Dest', 'Const'});
    obj.dataLink9:setName("dataLink9");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.frmFichaOdisseia2_02_L_svg);
    obj.dataLink10:setFields({'Dest', 'Int'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.frmFichaOdisseia2_02_L_svg);
    obj.dataLink11:setFields({'PesoAtual', 'PesoCabeca', 'PesoTronco', 'PesoBracos', 'PesoMaoDir', 'PesoMaoESQ', 'PesoPernas', 'PesoPes', 'PesoOutros'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.frmFichaOdisseia2_02_L_svg);
    obj.dataLink12:setFields({'For', 'Const'});
    obj.dataLink12:setName("dataLink12");

    obj.tab3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("Habilidades");
    obj.tab3:setName("tab3");

    obj.frmFichaOdisseia2_03_L_svg = GUI.fromHandle(_obj_newObject("form"));
    obj.frmFichaOdisseia2_03_L_svg:setParent(obj.tab3);
    obj.frmFichaOdisseia2_03_L_svg:setName("frmFichaOdisseia2_03_L_svg");
    obj.frmFichaOdisseia2_03_L_svg:setAlign("client");
    obj.frmFichaOdisseia2_03_L_svg:setTheme("light");
    obj.frmFichaOdisseia2_03_L_svg:setMargins({top=1});

    obj.scrollBox3 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.frmFichaOdisseia2_03_L_svg);
    obj.scrollBox3:setAlign("client");
    obj.scrollBox3:setName("scrollBox3");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.scrollBox3);
    obj.rectangle3:setWidth(952);
    obj.rectangle3:setHeight(1347);
    obj.rectangle3:setColor("white");
    obj.rectangle3:setName("rectangle3");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.rectangle3);
    obj.image3:setLeft(0);
    obj.image3:setTop(0);
    obj.image3:setWidth(952);
    obj.image3:setHeight(1347);
    obj.image3:setSRC("images/4.png");
    obj.image3:setStyle("stretch");
    obj.image3:setOptimize(true);
    obj.image3:setName("image3");

    obj.layout90 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout90:setParent(obj.rectangle3);
    obj.layout90:setLeft(82);
    obj.layout90:setTop(241);
    obj.layout90:setWidth(77);
    obj.layout90:setHeight(35);
    obj.layout90:setName("layout90");

    obj.edit88 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit88:setParent(obj.layout90);
    obj.edit88:setTransparent(true);
    obj.edit88:setFontSize(20.8);
    obj.edit88:setFontColor("#000000");
    lfm_setPropAsString(obj.edit88, "fontStyle",  "bold");
    obj.edit88:setHorzTextAlign("center");
    obj.edit88:setVertTextAlign("center");
    obj.edit88:setLeft(0);
    obj.edit88:setTop(0);
    obj.edit88:setWidth(77);
    obj.edit88:setHeight(36);
    obj.edit88:setField("Grau1");
    obj.edit88:setName("edit88");

    obj.layout91 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout91:setParent(obj.rectangle3);
    obj.layout91:setLeft(166);
    obj.layout91:setTop(242);
    obj.layout91:setWidth(172);
    obj.layout91:setHeight(33);
    obj.layout91:setName("layout91");

    obj.edit89 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit89:setParent(obj.layout91);
    obj.edit89:setTransparent(true);
    obj.edit89:setFontSize(20.8);
    obj.edit89:setFontColor("#000000");
    lfm_setPropAsString(obj.edit89, "fontStyle",  "bold");
    obj.edit89:setHorzTextAlign("leading");
    obj.edit89:setVertTextAlign("center");
    obj.edit89:setLeft(0);
    obj.edit89:setTop(0);
    obj.edit89:setWidth(172);
    obj.edit89:setHeight(34);
    obj.edit89:setField("Habilidade1");
    obj.edit89:setName("edit89");

    obj.layout92 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout92:setParent(obj.rectangle3);
    obj.layout92:setLeft(346);
    obj.layout92:setTop(242);
    obj.layout92:setWidth(172);
    obj.layout92:setHeight(33);
    obj.layout92:setName("layout92");

    obj.edit90 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit90:setParent(obj.layout92);
    obj.edit90:setTransparent(true);
    obj.edit90:setFontSize(20.8);
    obj.edit90:setFontColor("#000000");
    lfm_setPropAsString(obj.edit90, "fontStyle",  "bold");
    obj.edit90:setHorzTextAlign("leading");
    obj.edit90:setVertTextAlign("center");
    obj.edit90:setLeft(0);
    obj.edit90:setTop(0);
    obj.edit90:setWidth(172);
    obj.edit90:setHeight(34);
    obj.edit90:setField("Efeito1");
    obj.edit90:setName("edit90");

    obj.layout93 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout93:setParent(obj.rectangle3);
    obj.layout93:setLeft(527);
    obj.layout93:setTop(239);
    obj.layout93:setWidth(77);
    obj.layout93:setHeight(35);
    obj.layout93:setName("layout93");

    obj.edit91 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit91:setParent(obj.layout93);
    obj.edit91:setTransparent(true);
    obj.edit91:setFontSize(20.8);
    obj.edit91:setFontColor("#000000");
    lfm_setPropAsString(obj.edit91, "fontStyle",  "bold");
    obj.edit91:setHorzTextAlign("leading");
    obj.edit91:setVertTextAlign("center");
    obj.edit91:setLeft(0);
    obj.edit91:setTop(0);
    obj.edit91:setWidth(77);
    obj.edit91:setHeight(36);
    obj.edit91:setField("Dur1");
    obj.edit91:setName("edit91");

    obj.layout94 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout94:setParent(obj.rectangle3);
    obj.layout94:setLeft(614);
    obj.layout94:setTop(240);
    obj.layout94:setWidth(77);
    obj.layout94:setHeight(35);
    obj.layout94:setName("layout94");

    obj.edit92 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit92:setParent(obj.layout94);
    obj.edit92:setTransparent(true);
    obj.edit92:setFontSize(20.8);
    obj.edit92:setFontColor("#000000");
    lfm_setPropAsString(obj.edit92, "fontStyle",  "bold");
    obj.edit92:setHorzTextAlign("leading");
    obj.edit92:setVertTextAlign("center");
    obj.edit92:setLeft(0);
    obj.edit92:setTop(0);
    obj.edit92:setWidth(77);
    obj.edit92:setHeight(36);
    obj.edit92:setField("Custo1");
    obj.edit92:setName("edit92");

    obj.layout95 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout95:setParent(obj.rectangle3);
    obj.layout95:setLeft(698);
    obj.layout95:setTop(240);
    obj.layout95:setWidth(77);
    obj.layout95:setHeight(35);
    obj.layout95:setName("layout95");

    obj.edit93 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit93:setParent(obj.layout95);
    obj.edit93:setTransparent(true);
    obj.edit93:setFontSize(20.8);
    obj.edit93:setFontColor("#000000");
    lfm_setPropAsString(obj.edit93, "fontStyle",  "bold");
    obj.edit93:setHorzTextAlign("leading");
    obj.edit93:setVertTextAlign("center");
    obj.edit93:setLeft(0);
    obj.edit93:setTop(0);
    obj.edit93:setWidth(77);
    obj.edit93:setHeight(36);
    obj.edit93:setField("Rol1");
    obj.edit93:setName("edit93");

    obj.layout96 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout96:setParent(obj.rectangle3);
    obj.layout96:setLeft(784);
    obj.layout96:setTop(241);
    obj.layout96:setWidth(77);
    obj.layout96:setHeight(35);
    obj.layout96:setName("layout96");

    obj.edit94 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit94:setParent(obj.layout96);
    obj.edit94:setTransparent(true);
    obj.edit94:setFontSize(20.8);
    obj.edit94:setFontColor("#000000");
    lfm_setPropAsString(obj.edit94, "fontStyle",  "bold");
    obj.edit94:setHorzTextAlign("leading");
    obj.edit94:setVertTextAlign("center");
    obj.edit94:setLeft(0);
    obj.edit94:setTop(0);
    obj.edit94:setWidth(77);
    obj.edit94:setHeight(36);
    obj.edit94:setField("Dif1");
    obj.edit94:setName("edit94");

    obj.layout97 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout97:setParent(obj.rectangle3);
    obj.layout97:setLeft(80);
    obj.layout97:setTop(281);
    obj.layout97:setWidth(77);
    obj.layout97:setHeight(35);
    obj.layout97:setName("layout97");

    obj.edit95 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit95:setParent(obj.layout97);
    obj.edit95:setTransparent(true);
    obj.edit95:setFontSize(20.8);
    obj.edit95:setFontColor("#000000");
    lfm_setPropAsString(obj.edit95, "fontStyle",  "bold");
    obj.edit95:setHorzTextAlign("center");
    obj.edit95:setVertTextAlign("center");
    obj.edit95:setLeft(0);
    obj.edit95:setTop(0);
    obj.edit95:setWidth(77);
    obj.edit95:setHeight(36);
    obj.edit95:setField("Grau2");
    obj.edit95:setName("edit95");

    obj.layout98 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout98:setParent(obj.rectangle3);
    obj.layout98:setLeft(167);
    obj.layout98:setTop(280);
    obj.layout98:setWidth(172);
    obj.layout98:setHeight(33);
    obj.layout98:setName("layout98");

    obj.edit96 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit96:setParent(obj.layout98);
    obj.edit96:setTransparent(true);
    obj.edit96:setFontSize(20.8);
    obj.edit96:setFontColor("#000000");
    lfm_setPropAsString(obj.edit96, "fontStyle",  "bold");
    obj.edit96:setHorzTextAlign("leading");
    obj.edit96:setVertTextAlign("center");
    obj.edit96:setLeft(0);
    obj.edit96:setTop(0);
    obj.edit96:setWidth(172);
    obj.edit96:setHeight(34);
    obj.edit96:setField("Habilidade2");
    obj.edit96:setName("edit96");

    obj.layout99 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout99:setParent(obj.rectangle3);
    obj.layout99:setLeft(347);
    obj.layout99:setTop(280);
    obj.layout99:setWidth(172);
    obj.layout99:setHeight(33);
    obj.layout99:setName("layout99");

    obj.edit97 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit97:setParent(obj.layout99);
    obj.edit97:setTransparent(true);
    obj.edit97:setFontSize(20.8);
    obj.edit97:setFontColor("#000000");
    lfm_setPropAsString(obj.edit97, "fontStyle",  "bold");
    obj.edit97:setHorzTextAlign("leading");
    obj.edit97:setVertTextAlign("center");
    obj.edit97:setLeft(0);
    obj.edit97:setTop(0);
    obj.edit97:setWidth(172);
    obj.edit97:setHeight(34);
    obj.edit97:setField("Efeito2");
    obj.edit97:setName("edit97");

    obj.layout100 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout100:setParent(obj.rectangle3);
    obj.layout100:setLeft(528);
    obj.layout100:setTop(281);
    obj.layout100:setWidth(77);
    obj.layout100:setHeight(35);
    obj.layout100:setName("layout100");

    obj.edit98 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit98:setParent(obj.layout100);
    obj.edit98:setTransparent(true);
    obj.edit98:setFontSize(20.8);
    obj.edit98:setFontColor("#000000");
    lfm_setPropAsString(obj.edit98, "fontStyle",  "bold");
    obj.edit98:setHorzTextAlign("leading");
    obj.edit98:setVertTextAlign("center");
    obj.edit98:setLeft(0);
    obj.edit98:setTop(0);
    obj.edit98:setWidth(77);
    obj.edit98:setHeight(36);
    obj.edit98:setField("Dur2");
    obj.edit98:setName("edit98");

    obj.layout101 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout101:setParent(obj.rectangle3);
    obj.layout101:setLeft(613);
    obj.layout101:setTop(280);
    obj.layout101:setWidth(77);
    obj.layout101:setHeight(35);
    obj.layout101:setName("layout101");

    obj.edit99 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit99:setParent(obj.layout101);
    obj.edit99:setTransparent(true);
    obj.edit99:setFontSize(20.8);
    obj.edit99:setFontColor("#000000");
    lfm_setPropAsString(obj.edit99, "fontStyle",  "bold");
    obj.edit99:setHorzTextAlign("leading");
    obj.edit99:setVertTextAlign("center");
    obj.edit99:setLeft(0);
    obj.edit99:setTop(0);
    obj.edit99:setWidth(77);
    obj.edit99:setHeight(36);
    obj.edit99:setField("Custo2");
    obj.edit99:setName("edit99");

    obj.layout102 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout102:setParent(obj.rectangle3);
    obj.layout102:setLeft(698);
    obj.layout102:setTop(279);
    obj.layout102:setWidth(77);
    obj.layout102:setHeight(35);
    obj.layout102:setName("layout102");

    obj.edit100 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit100:setParent(obj.layout102);
    obj.edit100:setTransparent(true);
    obj.edit100:setFontSize(20.8);
    obj.edit100:setFontColor("#000000");
    lfm_setPropAsString(obj.edit100, "fontStyle",  "bold");
    obj.edit100:setHorzTextAlign("leading");
    obj.edit100:setVertTextAlign("center");
    obj.edit100:setLeft(0);
    obj.edit100:setTop(0);
    obj.edit100:setWidth(77);
    obj.edit100:setHeight(36);
    obj.edit100:setField("Rol2");
    obj.edit100:setName("edit100");

    obj.layout103 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout103:setParent(obj.rectangle3);
    obj.layout103:setLeft(783);
    obj.layout103:setTop(280);
    obj.layout103:setWidth(77);
    obj.layout103:setHeight(35);
    obj.layout103:setName("layout103");

    obj.edit101 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit101:setParent(obj.layout103);
    obj.edit101:setTransparent(true);
    obj.edit101:setFontSize(20.8);
    obj.edit101:setFontColor("#000000");
    lfm_setPropAsString(obj.edit101, "fontStyle",  "bold");
    obj.edit101:setHorzTextAlign("leading");
    obj.edit101:setVertTextAlign("center");
    obj.edit101:setLeft(0);
    obj.edit101:setTop(0);
    obj.edit101:setWidth(77);
    obj.edit101:setHeight(36);
    obj.edit101:setField("Dif2");
    obj.edit101:setName("edit101");

    obj.layout104 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout104:setParent(obj.rectangle3);
    obj.layout104:setLeft(81);
    obj.layout104:setTop(319);
    obj.layout104:setWidth(77);
    obj.layout104:setHeight(35);
    obj.layout104:setName("layout104");

    obj.edit102 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit102:setParent(obj.layout104);
    obj.edit102:setTransparent(true);
    obj.edit102:setFontSize(20.8);
    obj.edit102:setFontColor("#000000");
    lfm_setPropAsString(obj.edit102, "fontStyle",  "bold");
    obj.edit102:setHorzTextAlign("center");
    obj.edit102:setVertTextAlign("center");
    obj.edit102:setLeft(0);
    obj.edit102:setTop(0);
    obj.edit102:setWidth(77);
    obj.edit102:setHeight(36);
    obj.edit102:setField("Grau3");
    obj.edit102:setName("edit102");

    obj.layout105 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout105:setParent(obj.rectangle3);
    obj.layout105:setLeft(164);
    obj.layout105:setTop(320);
    obj.layout105:setWidth(172);
    obj.layout105:setHeight(33);
    obj.layout105:setName("layout105");

    obj.edit103 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit103:setParent(obj.layout105);
    obj.edit103:setTransparent(true);
    obj.edit103:setFontSize(20.8);
    obj.edit103:setFontColor("#000000");
    lfm_setPropAsString(obj.edit103, "fontStyle",  "bold");
    obj.edit103:setHorzTextAlign("leading");
    obj.edit103:setVertTextAlign("center");
    obj.edit103:setLeft(0);
    obj.edit103:setTop(0);
    obj.edit103:setWidth(172);
    obj.edit103:setHeight(34);
    obj.edit103:setField("Habilidade3");
    obj.edit103:setName("edit103");

    obj.layout106 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout106:setParent(obj.rectangle3);
    obj.layout106:setLeft(344);
    obj.layout106:setTop(320);
    obj.layout106:setWidth(172);
    obj.layout106:setHeight(33);
    obj.layout106:setName("layout106");

    obj.edit104 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit104:setParent(obj.layout106);
    obj.edit104:setTransparent(true);
    obj.edit104:setFontSize(20.8);
    obj.edit104:setFontColor("#000000");
    lfm_setPropAsString(obj.edit104, "fontStyle",  "bold");
    obj.edit104:setHorzTextAlign("leading");
    obj.edit104:setVertTextAlign("center");
    obj.edit104:setLeft(0);
    obj.edit104:setTop(0);
    obj.edit104:setWidth(172);
    obj.edit104:setHeight(34);
    obj.edit104:setField("Efeito3");
    obj.edit104:setName("edit104");

    obj.layout107 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout107:setParent(obj.rectangle3);
    obj.layout107:setLeft(530);
    obj.layout107:setTop(320);
    obj.layout107:setWidth(77);
    obj.layout107:setHeight(35);
    obj.layout107:setName("layout107");

    obj.edit105 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit105:setParent(obj.layout107);
    obj.edit105:setTransparent(true);
    obj.edit105:setFontSize(20.8);
    obj.edit105:setFontColor("#000000");
    lfm_setPropAsString(obj.edit105, "fontStyle",  "bold");
    obj.edit105:setHorzTextAlign("leading");
    obj.edit105:setVertTextAlign("center");
    obj.edit105:setLeft(0);
    obj.edit105:setTop(0);
    obj.edit105:setWidth(77);
    obj.edit105:setHeight(36);
    obj.edit105:setField("Dur3");
    obj.edit105:setName("edit105");

    obj.layout108 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout108:setParent(obj.rectangle3);
    obj.layout108:setLeft(613);
    obj.layout108:setTop(321);
    obj.layout108:setWidth(77);
    obj.layout108:setHeight(35);
    obj.layout108:setName("layout108");

    obj.edit106 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit106:setParent(obj.layout108);
    obj.edit106:setTransparent(true);
    obj.edit106:setFontSize(20.8);
    obj.edit106:setFontColor("#000000");
    lfm_setPropAsString(obj.edit106, "fontStyle",  "bold");
    obj.edit106:setHorzTextAlign("leading");
    obj.edit106:setVertTextAlign("center");
    obj.edit106:setLeft(0);
    obj.edit106:setTop(0);
    obj.edit106:setWidth(77);
    obj.edit106:setHeight(36);
    obj.edit106:setField("Custo3");
    obj.edit106:setName("edit106");

    obj.layout109 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout109:setParent(obj.rectangle3);
    obj.layout109:setLeft(698);
    obj.layout109:setTop(320);
    obj.layout109:setWidth(77);
    obj.layout109:setHeight(35);
    obj.layout109:setName("layout109");

    obj.edit107 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit107:setParent(obj.layout109);
    obj.edit107:setTransparent(true);
    obj.edit107:setFontSize(20.8);
    obj.edit107:setFontColor("#000000");
    lfm_setPropAsString(obj.edit107, "fontStyle",  "bold");
    obj.edit107:setHorzTextAlign("leading");
    obj.edit107:setVertTextAlign("center");
    obj.edit107:setLeft(0);
    obj.edit107:setTop(0);
    obj.edit107:setWidth(77);
    obj.edit107:setHeight(36);
    obj.edit107:setField("Rol3");
    obj.edit107:setName("edit107");

    obj.layout110 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout110:setParent(obj.rectangle3);
    obj.layout110:setLeft(784);
    obj.layout110:setTop(319);
    obj.layout110:setWidth(77);
    obj.layout110:setHeight(35);
    obj.layout110:setName("layout110");

    obj.edit108 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit108:setParent(obj.layout110);
    obj.edit108:setTransparent(true);
    obj.edit108:setFontSize(20.8);
    obj.edit108:setFontColor("#000000");
    lfm_setPropAsString(obj.edit108, "fontStyle",  "bold");
    obj.edit108:setHorzTextAlign("leading");
    obj.edit108:setVertTextAlign("center");
    obj.edit108:setLeft(0);
    obj.edit108:setTop(0);
    obj.edit108:setWidth(77);
    obj.edit108:setHeight(36);
    obj.edit108:setField("Dif3");
    obj.edit108:setName("edit108");

    obj.layout111 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout111:setParent(obj.rectangle3);
    obj.layout111:setLeft(80);
    obj.layout111:setTop(359);
    obj.layout111:setWidth(77);
    obj.layout111:setHeight(35);
    obj.layout111:setName("layout111");

    obj.edit109 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit109:setParent(obj.layout111);
    obj.edit109:setTransparent(true);
    obj.edit109:setFontSize(20.8);
    obj.edit109:setFontColor("#000000");
    lfm_setPropAsString(obj.edit109, "fontStyle",  "bold");
    obj.edit109:setHorzTextAlign("center");
    obj.edit109:setVertTextAlign("center");
    obj.edit109:setLeft(0);
    obj.edit109:setTop(0);
    obj.edit109:setWidth(77);
    obj.edit109:setHeight(36);
    obj.edit109:setField("Grau4");
    obj.edit109:setName("edit109");

    obj.layout112 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout112:setParent(obj.rectangle3);
    obj.layout112:setLeft(167);
    obj.layout112:setTop(359);
    obj.layout112:setWidth(172);
    obj.layout112:setHeight(33);
    obj.layout112:setName("layout112");

    obj.edit110 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit110:setParent(obj.layout112);
    obj.edit110:setTransparent(true);
    obj.edit110:setFontSize(20.8);
    obj.edit110:setFontColor("#000000");
    lfm_setPropAsString(obj.edit110, "fontStyle",  "bold");
    obj.edit110:setHorzTextAlign("leading");
    obj.edit110:setVertTextAlign("center");
    obj.edit110:setLeft(0);
    obj.edit110:setTop(0);
    obj.edit110:setWidth(172);
    obj.edit110:setHeight(34);
    obj.edit110:setField("Habilidade4");
    obj.edit110:setName("edit110");

    obj.layout113 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout113:setParent(obj.rectangle3);
    obj.layout113:setLeft(347);
    obj.layout113:setTop(358);
    obj.layout113:setWidth(172);
    obj.layout113:setHeight(33);
    obj.layout113:setName("layout113");

    obj.edit111 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit111:setParent(obj.layout113);
    obj.edit111:setTransparent(true);
    obj.edit111:setFontSize(20.8);
    obj.edit111:setFontColor("#000000");
    lfm_setPropAsString(obj.edit111, "fontStyle",  "bold");
    obj.edit111:setHorzTextAlign("leading");
    obj.edit111:setVertTextAlign("center");
    obj.edit111:setLeft(0);
    obj.edit111:setTop(0);
    obj.edit111:setWidth(172);
    obj.edit111:setHeight(34);
    obj.edit111:setField("Efeito4");
    obj.edit111:setName("edit111");

    obj.layout114 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout114:setParent(obj.rectangle3);
    obj.layout114:setLeft(529);
    obj.layout114:setTop(359);
    obj.layout114:setWidth(77);
    obj.layout114:setHeight(35);
    obj.layout114:setName("layout114");

    obj.edit112 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit112:setParent(obj.layout114);
    obj.edit112:setTransparent(true);
    obj.edit112:setFontSize(20.8);
    obj.edit112:setFontColor("#000000");
    lfm_setPropAsString(obj.edit112, "fontStyle",  "bold");
    obj.edit112:setHorzTextAlign("leading");
    obj.edit112:setVertTextAlign("center");
    obj.edit112:setLeft(0);
    obj.edit112:setTop(0);
    obj.edit112:setWidth(77);
    obj.edit112:setHeight(36);
    obj.edit112:setField("Dur4");
    obj.edit112:setName("edit112");

    obj.layout115 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout115:setParent(obj.rectangle3);
    obj.layout115:setLeft(613);
    obj.layout115:setTop(359);
    obj.layout115:setWidth(77);
    obj.layout115:setHeight(35);
    obj.layout115:setName("layout115");

    obj.edit113 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit113:setParent(obj.layout115);
    obj.edit113:setTransparent(true);
    obj.edit113:setFontSize(20.8);
    obj.edit113:setFontColor("#000000");
    lfm_setPropAsString(obj.edit113, "fontStyle",  "bold");
    obj.edit113:setHorzTextAlign("leading");
    obj.edit113:setVertTextAlign("center");
    obj.edit113:setLeft(0);
    obj.edit113:setTop(0);
    obj.edit113:setWidth(77);
    obj.edit113:setHeight(36);
    obj.edit113:setField("Custo4");
    obj.edit113:setName("edit113");

    obj.layout116 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout116:setParent(obj.rectangle3);
    obj.layout116:setLeft(698);
    obj.layout116:setTop(359);
    obj.layout116:setWidth(77);
    obj.layout116:setHeight(35);
    obj.layout116:setName("layout116");

    obj.edit114 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit114:setParent(obj.layout116);
    obj.edit114:setTransparent(true);
    obj.edit114:setFontSize(20.8);
    obj.edit114:setFontColor("#000000");
    lfm_setPropAsString(obj.edit114, "fontStyle",  "bold");
    obj.edit114:setHorzTextAlign("leading");
    obj.edit114:setVertTextAlign("center");
    obj.edit114:setLeft(0);
    obj.edit114:setTop(0);
    obj.edit114:setWidth(77);
    obj.edit114:setHeight(36);
    obj.edit114:setField("Rol4");
    obj.edit114:setName("edit114");

    obj.layout117 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout117:setParent(obj.rectangle3);
    obj.layout117:setLeft(784);
    obj.layout117:setTop(358);
    obj.layout117:setWidth(77);
    obj.layout117:setHeight(35);
    obj.layout117:setName("layout117");

    obj.edit115 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit115:setParent(obj.layout117);
    obj.edit115:setTransparent(true);
    obj.edit115:setFontSize(20.8);
    obj.edit115:setFontColor("#000000");
    lfm_setPropAsString(obj.edit115, "fontStyle",  "bold");
    obj.edit115:setHorzTextAlign("leading");
    obj.edit115:setVertTextAlign("center");
    obj.edit115:setLeft(0);
    obj.edit115:setTop(0);
    obj.edit115:setWidth(77);
    obj.edit115:setHeight(36);
    obj.edit115:setField("Dif4");
    obj.edit115:setName("edit115");

    obj.layout118 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout118:setParent(obj.rectangle3);
    obj.layout118:setLeft(81);
    obj.layout118:setTop(400);
    obj.layout118:setWidth(77);
    obj.layout118:setHeight(35);
    obj.layout118:setName("layout118");

    obj.edit116 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit116:setParent(obj.layout118);
    obj.edit116:setTransparent(true);
    obj.edit116:setFontSize(20.8);
    obj.edit116:setFontColor("#000000");
    lfm_setPropAsString(obj.edit116, "fontStyle",  "bold");
    obj.edit116:setHorzTextAlign("center");
    obj.edit116:setVertTextAlign("center");
    obj.edit116:setLeft(0);
    obj.edit116:setTop(0);
    obj.edit116:setWidth(77);
    obj.edit116:setHeight(36);
    obj.edit116:setField("Grau5");
    obj.edit116:setName("edit116");

    obj.layout119 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout119:setParent(obj.rectangle3);
    obj.layout119:setLeft(167);
    obj.layout119:setTop(399);
    obj.layout119:setWidth(172);
    obj.layout119:setHeight(33);
    obj.layout119:setName("layout119");

    obj.edit117 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit117:setParent(obj.layout119);
    obj.edit117:setTransparent(true);
    obj.edit117:setFontSize(20.8);
    obj.edit117:setFontColor("#000000");
    lfm_setPropAsString(obj.edit117, "fontStyle",  "bold");
    obj.edit117:setHorzTextAlign("leading");
    obj.edit117:setVertTextAlign("center");
    obj.edit117:setLeft(0);
    obj.edit117:setTop(0);
    obj.edit117:setWidth(172);
    obj.edit117:setHeight(34);
    obj.edit117:setField("Habilidade5");
    obj.edit117:setName("edit117");

    obj.layout120 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout120:setParent(obj.rectangle3);
    obj.layout120:setLeft(347);
    obj.layout120:setTop(399);
    obj.layout120:setWidth(172);
    obj.layout120:setHeight(33);
    obj.layout120:setName("layout120");

    obj.edit118 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit118:setParent(obj.layout120);
    obj.edit118:setTransparent(true);
    obj.edit118:setFontSize(20.8);
    obj.edit118:setFontColor("#000000");
    lfm_setPropAsString(obj.edit118, "fontStyle",  "bold");
    obj.edit118:setHorzTextAlign("leading");
    obj.edit118:setVertTextAlign("center");
    obj.edit118:setLeft(0);
    obj.edit118:setTop(0);
    obj.edit118:setWidth(172);
    obj.edit118:setHeight(34);
    obj.edit118:setField("Efeito5");
    obj.edit118:setName("edit118");

    obj.layout121 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout121:setParent(obj.rectangle3);
    obj.layout121:setLeft(528);
    obj.layout121:setTop(399);
    obj.layout121:setWidth(77);
    obj.layout121:setHeight(35);
    obj.layout121:setName("layout121");

    obj.edit119 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit119:setParent(obj.layout121);
    obj.edit119:setTransparent(true);
    obj.edit119:setFontSize(20.8);
    obj.edit119:setFontColor("#000000");
    lfm_setPropAsString(obj.edit119, "fontStyle",  "bold");
    obj.edit119:setHorzTextAlign("leading");
    obj.edit119:setVertTextAlign("center");
    obj.edit119:setLeft(0);
    obj.edit119:setTop(0);
    obj.edit119:setWidth(77);
    obj.edit119:setHeight(36);
    obj.edit119:setField("Dur5");
    obj.edit119:setName("edit119");

    obj.layout122 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout122:setParent(obj.rectangle3);
    obj.layout122:setLeft(612);
    obj.layout122:setTop(399);
    obj.layout122:setWidth(77);
    obj.layout122:setHeight(35);
    obj.layout122:setName("layout122");

    obj.edit120 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit120:setParent(obj.layout122);
    obj.edit120:setTransparent(true);
    obj.edit120:setFontSize(20.8);
    obj.edit120:setFontColor("#000000");
    lfm_setPropAsString(obj.edit120, "fontStyle",  "bold");
    obj.edit120:setHorzTextAlign("leading");
    obj.edit120:setVertTextAlign("center");
    obj.edit120:setLeft(0);
    obj.edit120:setTop(0);
    obj.edit120:setWidth(77);
    obj.edit120:setHeight(36);
    obj.edit120:setField("Custo5");
    obj.edit120:setName("edit120");

    obj.layout123 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout123:setParent(obj.rectangle3);
    obj.layout123:setLeft(697);
    obj.layout123:setTop(399);
    obj.layout123:setWidth(77);
    obj.layout123:setHeight(35);
    obj.layout123:setName("layout123");

    obj.edit121 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit121:setParent(obj.layout123);
    obj.edit121:setTransparent(true);
    obj.edit121:setFontSize(20.8);
    obj.edit121:setFontColor("#000000");
    lfm_setPropAsString(obj.edit121, "fontStyle",  "bold");
    obj.edit121:setHorzTextAlign("leading");
    obj.edit121:setVertTextAlign("center");
    obj.edit121:setLeft(0);
    obj.edit121:setTop(0);
    obj.edit121:setWidth(77);
    obj.edit121:setHeight(36);
    obj.edit121:setField("Rol5");
    obj.edit121:setName("edit121");

    obj.layout124 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout124:setParent(obj.rectangle3);
    obj.layout124:setLeft(783);
    obj.layout124:setTop(398);
    obj.layout124:setWidth(77);
    obj.layout124:setHeight(35);
    obj.layout124:setName("layout124");

    obj.edit122 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit122:setParent(obj.layout124);
    obj.edit122:setTransparent(true);
    obj.edit122:setFontSize(20.8);
    obj.edit122:setFontColor("#000000");
    lfm_setPropAsString(obj.edit122, "fontStyle",  "bold");
    obj.edit122:setHorzTextAlign("leading");
    obj.edit122:setVertTextAlign("center");
    obj.edit122:setLeft(0);
    obj.edit122:setTop(0);
    obj.edit122:setWidth(77);
    obj.edit122:setHeight(36);
    obj.edit122:setField("Dif5");
    obj.edit122:setName("edit122");

    obj.layout125 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout125:setParent(obj.rectangle3);
    obj.layout125:setLeft(80);
    obj.layout125:setTop(440);
    obj.layout125:setWidth(77);
    obj.layout125:setHeight(35);
    obj.layout125:setName("layout125");

    obj.edit123 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit123:setParent(obj.layout125);
    obj.edit123:setTransparent(true);
    obj.edit123:setFontSize(20.8);
    obj.edit123:setFontColor("#000000");
    lfm_setPropAsString(obj.edit123, "fontStyle",  "bold");
    obj.edit123:setHorzTextAlign("center");
    obj.edit123:setVertTextAlign("center");
    obj.edit123:setLeft(0);
    obj.edit123:setTop(0);
    obj.edit123:setWidth(77);
    obj.edit123:setHeight(36);
    obj.edit123:setField("Grau6");
    obj.edit123:setName("edit123");

    obj.layout126 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout126:setParent(obj.rectangle3);
    obj.layout126:setLeft(165);
    obj.layout126:setTop(439);
    obj.layout126:setWidth(172);
    obj.layout126:setHeight(33);
    obj.layout126:setName("layout126");

    obj.edit124 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit124:setParent(obj.layout126);
    obj.edit124:setTransparent(true);
    obj.edit124:setFontSize(20.8);
    obj.edit124:setFontColor("#000000");
    lfm_setPropAsString(obj.edit124, "fontStyle",  "bold");
    obj.edit124:setHorzTextAlign("leading");
    obj.edit124:setVertTextAlign("center");
    obj.edit124:setLeft(0);
    obj.edit124:setTop(0);
    obj.edit124:setWidth(172);
    obj.edit124:setHeight(34);
    obj.edit124:setField("Habilidade6");
    obj.edit124:setName("edit124");

    obj.layout127 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout127:setParent(obj.rectangle3);
    obj.layout127:setLeft(345);
    obj.layout127:setTop(439);
    obj.layout127:setWidth(172);
    obj.layout127:setHeight(33);
    obj.layout127:setName("layout127");

    obj.edit125 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit125:setParent(obj.layout127);
    obj.edit125:setTransparent(true);
    obj.edit125:setFontSize(20.8);
    obj.edit125:setFontColor("#000000");
    lfm_setPropAsString(obj.edit125, "fontStyle",  "bold");
    obj.edit125:setHorzTextAlign("leading");
    obj.edit125:setVertTextAlign("center");
    obj.edit125:setLeft(0);
    obj.edit125:setTop(0);
    obj.edit125:setWidth(172);
    obj.edit125:setHeight(34);
    obj.edit125:setField("Efeito6");
    obj.edit125:setName("edit125");

    obj.layout128 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout128:setParent(obj.rectangle3);
    obj.layout128:setLeft(529);
    obj.layout128:setTop(441);
    obj.layout128:setWidth(77);
    obj.layout128:setHeight(35);
    obj.layout128:setName("layout128");

    obj.edit126 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit126:setParent(obj.layout128);
    obj.edit126:setTransparent(true);
    obj.edit126:setFontSize(20.8);
    obj.edit126:setFontColor("#000000");
    lfm_setPropAsString(obj.edit126, "fontStyle",  "bold");
    obj.edit126:setHorzTextAlign("leading");
    obj.edit126:setVertTextAlign("center");
    obj.edit126:setLeft(0);
    obj.edit126:setTop(0);
    obj.edit126:setWidth(77);
    obj.edit126:setHeight(36);
    obj.edit126:setField("Dur6");
    obj.edit126:setName("edit126");

    obj.layout129 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout129:setParent(obj.rectangle3);
    obj.layout129:setLeft(612);
    obj.layout129:setTop(441);
    obj.layout129:setWidth(77);
    obj.layout129:setHeight(35);
    obj.layout129:setName("layout129");

    obj.edit127 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit127:setParent(obj.layout129);
    obj.edit127:setTransparent(true);
    obj.edit127:setFontSize(20.8);
    obj.edit127:setFontColor("#000000");
    lfm_setPropAsString(obj.edit127, "fontStyle",  "bold");
    obj.edit127:setHorzTextAlign("leading");
    obj.edit127:setVertTextAlign("center");
    obj.edit127:setLeft(0);
    obj.edit127:setTop(0);
    obj.edit127:setWidth(77);
    obj.edit127:setHeight(36);
    obj.edit127:setField("Custo6");
    obj.edit127:setName("edit127");

    obj.layout130 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout130:setParent(obj.rectangle3);
    obj.layout130:setLeft(697);
    obj.layout130:setTop(441);
    obj.layout130:setWidth(77);
    obj.layout130:setHeight(35);
    obj.layout130:setName("layout130");

    obj.edit128 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit128:setParent(obj.layout130);
    obj.edit128:setTransparent(true);
    obj.edit128:setFontSize(20.8);
    obj.edit128:setFontColor("#000000");
    lfm_setPropAsString(obj.edit128, "fontStyle",  "bold");
    obj.edit128:setHorzTextAlign("leading");
    obj.edit128:setVertTextAlign("center");
    obj.edit128:setLeft(0);
    obj.edit128:setTop(0);
    obj.edit128:setWidth(77);
    obj.edit128:setHeight(36);
    obj.edit128:setField("Rol6");
    obj.edit128:setName("edit128");

    obj.layout131 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout131:setParent(obj.rectangle3);
    obj.layout131:setLeft(783);
    obj.layout131:setTop(440);
    obj.layout131:setWidth(77);
    obj.layout131:setHeight(35);
    obj.layout131:setName("layout131");

    obj.edit129 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit129:setParent(obj.layout131);
    obj.edit129:setTransparent(true);
    obj.edit129:setFontSize(20.8);
    obj.edit129:setFontColor("#000000");
    lfm_setPropAsString(obj.edit129, "fontStyle",  "bold");
    obj.edit129:setHorzTextAlign("leading");
    obj.edit129:setVertTextAlign("center");
    obj.edit129:setLeft(0);
    obj.edit129:setTop(0);
    obj.edit129:setWidth(77);
    obj.edit129:setHeight(36);
    obj.edit129:setField("Dif6");
    obj.edit129:setName("edit129");

    obj.layout132 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout132:setParent(obj.rectangle3);
    obj.layout132:setLeft(81);
    obj.layout132:setTop(479);
    obj.layout132:setWidth(77);
    obj.layout132:setHeight(35);
    obj.layout132:setName("layout132");

    obj.edit130 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit130:setParent(obj.layout132);
    obj.edit130:setTransparent(true);
    obj.edit130:setFontSize(20.8);
    obj.edit130:setFontColor("#000000");
    lfm_setPropAsString(obj.edit130, "fontStyle",  "bold");
    obj.edit130:setHorzTextAlign("center");
    obj.edit130:setVertTextAlign("center");
    obj.edit130:setLeft(0);
    obj.edit130:setTop(0);
    obj.edit130:setWidth(77);
    obj.edit130:setHeight(36);
    obj.edit130:setField("Grau7");
    obj.edit130:setName("edit130");

    obj.layout133 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout133:setParent(obj.rectangle3);
    obj.layout133:setLeft(165);
    obj.layout133:setTop(479);
    obj.layout133:setWidth(172);
    obj.layout133:setHeight(33);
    obj.layout133:setName("layout133");

    obj.edit131 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit131:setParent(obj.layout133);
    obj.edit131:setTransparent(true);
    obj.edit131:setFontSize(20.8);
    obj.edit131:setFontColor("#000000");
    lfm_setPropAsString(obj.edit131, "fontStyle",  "bold");
    obj.edit131:setHorzTextAlign("leading");
    obj.edit131:setVertTextAlign("center");
    obj.edit131:setLeft(0);
    obj.edit131:setTop(0);
    obj.edit131:setWidth(172);
    obj.edit131:setHeight(34);
    obj.edit131:setField("Habilidade7");
    obj.edit131:setName("edit131");

    obj.layout134 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout134:setParent(obj.rectangle3);
    obj.layout134:setLeft(345);
    obj.layout134:setTop(479);
    obj.layout134:setWidth(172);
    obj.layout134:setHeight(33);
    obj.layout134:setName("layout134");

    obj.edit132 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit132:setParent(obj.layout134);
    obj.edit132:setTransparent(true);
    obj.edit132:setFontSize(20.8);
    obj.edit132:setFontColor("#000000");
    lfm_setPropAsString(obj.edit132, "fontStyle",  "bold");
    obj.edit132:setHorzTextAlign("leading");
    obj.edit132:setVertTextAlign("center");
    obj.edit132:setLeft(0);
    obj.edit132:setTop(0);
    obj.edit132:setWidth(172);
    obj.edit132:setHeight(34);
    obj.edit132:setField("Efeito7");
    obj.edit132:setName("edit132");

    obj.layout135 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout135:setParent(obj.rectangle3);
    obj.layout135:setLeft(529);
    obj.layout135:setTop(480);
    obj.layout135:setWidth(77);
    obj.layout135:setHeight(35);
    obj.layout135:setName("layout135");

    obj.edit133 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit133:setParent(obj.layout135);
    obj.edit133:setTransparent(true);
    obj.edit133:setFontSize(20.8);
    obj.edit133:setFontColor("#000000");
    lfm_setPropAsString(obj.edit133, "fontStyle",  "bold");
    obj.edit133:setHorzTextAlign("leading");
    obj.edit133:setVertTextAlign("center");
    obj.edit133:setLeft(0);
    obj.edit133:setTop(0);
    obj.edit133:setWidth(77);
    obj.edit133:setHeight(36);
    obj.edit133:setField("Dur7");
    obj.edit133:setName("edit133");

    obj.layout136 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout136:setParent(obj.rectangle3);
    obj.layout136:setLeft(613);
    obj.layout136:setTop(481);
    obj.layout136:setWidth(77);
    obj.layout136:setHeight(35);
    obj.layout136:setName("layout136");

    obj.edit134 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit134:setParent(obj.layout136);
    obj.edit134:setTransparent(true);
    obj.edit134:setFontSize(20.8);
    obj.edit134:setFontColor("#000000");
    lfm_setPropAsString(obj.edit134, "fontStyle",  "bold");
    obj.edit134:setHorzTextAlign("leading");
    obj.edit134:setVertTextAlign("center");
    obj.edit134:setLeft(0);
    obj.edit134:setTop(0);
    obj.edit134:setWidth(77);
    obj.edit134:setHeight(36);
    obj.edit134:setField("Custo7");
    obj.edit134:setName("edit134");

    obj.layout137 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout137:setParent(obj.rectangle3);
    obj.layout137:setLeft(697);
    obj.layout137:setTop(480);
    obj.layout137:setWidth(77);
    obj.layout137:setHeight(35);
    obj.layout137:setName("layout137");

    obj.edit135 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit135:setParent(obj.layout137);
    obj.edit135:setTransparent(true);
    obj.edit135:setFontSize(20.8);
    obj.edit135:setFontColor("#000000");
    lfm_setPropAsString(obj.edit135, "fontStyle",  "bold");
    obj.edit135:setHorzTextAlign("leading");
    obj.edit135:setVertTextAlign("center");
    obj.edit135:setLeft(0);
    obj.edit135:setTop(0);
    obj.edit135:setWidth(77);
    obj.edit135:setHeight(36);
    obj.edit135:setField("Rol7");
    obj.edit135:setName("edit135");

    obj.layout138 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout138:setParent(obj.rectangle3);
    obj.layout138:setLeft(784);
    obj.layout138:setTop(479);
    obj.layout138:setWidth(77);
    obj.layout138:setHeight(35);
    obj.layout138:setName("layout138");

    obj.edit136 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit136:setParent(obj.layout138);
    obj.edit136:setTransparent(true);
    obj.edit136:setFontSize(20.8);
    obj.edit136:setFontColor("#000000");
    lfm_setPropAsString(obj.edit136, "fontStyle",  "bold");
    obj.edit136:setHorzTextAlign("leading");
    obj.edit136:setVertTextAlign("center");
    obj.edit136:setLeft(0);
    obj.edit136:setTop(0);
    obj.edit136:setWidth(77);
    obj.edit136:setHeight(36);
    obj.edit136:setField("Dif7");
    obj.edit136:setName("edit136");

    obj.layout139 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout139:setParent(obj.rectangle3);
    obj.layout139:setLeft(80);
    obj.layout139:setTop(518);
    obj.layout139:setWidth(77);
    obj.layout139:setHeight(35);
    obj.layout139:setName("layout139");

    obj.edit137 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit137:setParent(obj.layout139);
    obj.edit137:setTransparent(true);
    obj.edit137:setFontSize(20.8);
    obj.edit137:setFontColor("#000000");
    lfm_setPropAsString(obj.edit137, "fontStyle",  "bold");
    obj.edit137:setHorzTextAlign("center");
    obj.edit137:setVertTextAlign("center");
    obj.edit137:setLeft(0);
    obj.edit137:setTop(0);
    obj.edit137:setWidth(77);
    obj.edit137:setHeight(36);
    obj.edit137:setField("Grau8");
    obj.edit137:setName("edit137");

    obj.layout140 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout140:setParent(obj.rectangle3);
    obj.layout140:setLeft(166);
    obj.layout140:setTop(522);
    obj.layout140:setWidth(172);
    obj.layout140:setHeight(33);
    obj.layout140:setName("layout140");

    obj.edit138 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit138:setParent(obj.layout140);
    obj.edit138:setTransparent(true);
    obj.edit138:setFontSize(20.8);
    obj.edit138:setFontColor("#000000");
    lfm_setPropAsString(obj.edit138, "fontStyle",  "bold");
    obj.edit138:setHorzTextAlign("leading");
    obj.edit138:setVertTextAlign("center");
    obj.edit138:setLeft(0);
    obj.edit138:setTop(0);
    obj.edit138:setWidth(172);
    obj.edit138:setHeight(34);
    obj.edit138:setField("Habilidade8");
    obj.edit138:setName("edit138");

    obj.layout141 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout141:setParent(obj.rectangle3);
    obj.layout141:setLeft(346);
    obj.layout141:setTop(522);
    obj.layout141:setWidth(172);
    obj.layout141:setHeight(33);
    obj.layout141:setName("layout141");

    obj.edit139 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit139:setParent(obj.layout141);
    obj.edit139:setTransparent(true);
    obj.edit139:setFontSize(20.8);
    obj.edit139:setFontColor("#000000");
    lfm_setPropAsString(obj.edit139, "fontStyle",  "bold");
    obj.edit139:setHorzTextAlign("leading");
    obj.edit139:setVertTextAlign("center");
    obj.edit139:setLeft(0);
    obj.edit139:setTop(0);
    obj.edit139:setWidth(172);
    obj.edit139:setHeight(34);
    obj.edit139:setField("Efeito8");
    obj.edit139:setName("edit139");

    obj.layout142 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout142:setParent(obj.rectangle3);
    obj.layout142:setLeft(528);
    obj.layout142:setTop(518);
    obj.layout142:setWidth(77);
    obj.layout142:setHeight(35);
    obj.layout142:setName("layout142");

    obj.edit140 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit140:setParent(obj.layout142);
    obj.edit140:setTransparent(true);
    obj.edit140:setFontSize(20.8);
    obj.edit140:setFontColor("#000000");
    lfm_setPropAsString(obj.edit140, "fontStyle",  "bold");
    obj.edit140:setHorzTextAlign("leading");
    obj.edit140:setVertTextAlign("center");
    obj.edit140:setLeft(0);
    obj.edit140:setTop(0);
    obj.edit140:setWidth(77);
    obj.edit140:setHeight(36);
    obj.edit140:setField("Dur8");
    obj.edit140:setName("edit140");

    obj.layout143 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout143:setParent(obj.rectangle3);
    obj.layout143:setLeft(611);
    obj.layout143:setTop(519);
    obj.layout143:setWidth(77);
    obj.layout143:setHeight(35);
    obj.layout143:setName("layout143");

    obj.edit141 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit141:setParent(obj.layout143);
    obj.edit141:setTransparent(true);
    obj.edit141:setFontSize(20.8);
    obj.edit141:setFontColor("#000000");
    lfm_setPropAsString(obj.edit141, "fontStyle",  "bold");
    obj.edit141:setHorzTextAlign("leading");
    obj.edit141:setVertTextAlign("center");
    obj.edit141:setLeft(0);
    obj.edit141:setTop(0);
    obj.edit141:setWidth(77);
    obj.edit141:setHeight(36);
    obj.edit141:setField("Custo8");
    obj.edit141:setName("edit141");

    obj.layout144 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout144:setParent(obj.rectangle3);
    obj.layout144:setLeft(696);
    obj.layout144:setTop(519);
    obj.layout144:setWidth(77);
    obj.layout144:setHeight(35);
    obj.layout144:setName("layout144");

    obj.edit142 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit142:setParent(obj.layout144);
    obj.edit142:setTransparent(true);
    obj.edit142:setFontSize(20.8);
    obj.edit142:setFontColor("#000000");
    lfm_setPropAsString(obj.edit142, "fontStyle",  "bold");
    obj.edit142:setHorzTextAlign("leading");
    obj.edit142:setVertTextAlign("center");
    obj.edit142:setLeft(0);
    obj.edit142:setTop(0);
    obj.edit142:setWidth(77);
    obj.edit142:setHeight(36);
    obj.edit142:setField("Rol8");
    obj.edit142:setName("edit142");

    obj.layout145 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout145:setParent(obj.rectangle3);
    obj.layout145:setLeft(783);
    obj.layout145:setTop(517);
    obj.layout145:setWidth(77);
    obj.layout145:setHeight(35);
    obj.layout145:setName("layout145");

    obj.edit143 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit143:setParent(obj.layout145);
    obj.edit143:setTransparent(true);
    obj.edit143:setFontSize(20.8);
    obj.edit143:setFontColor("#000000");
    lfm_setPropAsString(obj.edit143, "fontStyle",  "bold");
    obj.edit143:setHorzTextAlign("leading");
    obj.edit143:setVertTextAlign("center");
    obj.edit143:setLeft(0);
    obj.edit143:setTop(0);
    obj.edit143:setWidth(77);
    obj.edit143:setHeight(36);
    obj.edit143:setField("Dif8");
    obj.edit143:setName("edit143");

    obj.layout146 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout146:setParent(obj.rectangle3);
    obj.layout146:setLeft(81);
    obj.layout146:setTop(560);
    obj.layout146:setWidth(77);
    obj.layout146:setHeight(35);
    obj.layout146:setName("layout146");

    obj.edit144 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit144:setParent(obj.layout146);
    obj.edit144:setTransparent(true);
    obj.edit144:setFontSize(20.8);
    obj.edit144:setFontColor("#000000");
    lfm_setPropAsString(obj.edit144, "fontStyle",  "bold");
    obj.edit144:setHorzTextAlign("center");
    obj.edit144:setVertTextAlign("center");
    obj.edit144:setLeft(0);
    obj.edit144:setTop(0);
    obj.edit144:setWidth(77);
    obj.edit144:setHeight(36);
    obj.edit144:setField("Grau9");
    obj.edit144:setName("edit144");

    obj.layout147 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout147:setParent(obj.rectangle3);
    obj.layout147:setLeft(166);
    obj.layout147:setTop(560);
    obj.layout147:setWidth(172);
    obj.layout147:setHeight(33);
    obj.layout147:setName("layout147");

    obj.edit145 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit145:setParent(obj.layout147);
    obj.edit145:setTransparent(true);
    obj.edit145:setFontSize(20.8);
    obj.edit145:setFontColor("#000000");
    lfm_setPropAsString(obj.edit145, "fontStyle",  "bold");
    obj.edit145:setHorzTextAlign("leading");
    obj.edit145:setVertTextAlign("center");
    obj.edit145:setLeft(0);
    obj.edit145:setTop(0);
    obj.edit145:setWidth(172);
    obj.edit145:setHeight(34);
    obj.edit145:setField("Habilidade9");
    obj.edit145:setName("edit145");

    obj.layout148 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout148:setParent(obj.rectangle3);
    obj.layout148:setLeft(346);
    obj.layout148:setTop(560);
    obj.layout148:setWidth(172);
    obj.layout148:setHeight(33);
    obj.layout148:setName("layout148");

    obj.edit146 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit146:setParent(obj.layout148);
    obj.edit146:setTransparent(true);
    obj.edit146:setFontSize(20.8);
    obj.edit146:setFontColor("#000000");
    lfm_setPropAsString(obj.edit146, "fontStyle",  "bold");
    obj.edit146:setHorzTextAlign("leading");
    obj.edit146:setVertTextAlign("center");
    obj.edit146:setLeft(0);
    obj.edit146:setTop(0);
    obj.edit146:setWidth(172);
    obj.edit146:setHeight(34);
    obj.edit146:setField("Efeito9");
    obj.edit146:setName("edit146");

    obj.layout149 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout149:setParent(obj.rectangle3);
    obj.layout149:setLeft(528);
    obj.layout149:setTop(560);
    obj.layout149:setWidth(77);
    obj.layout149:setHeight(35);
    obj.layout149:setName("layout149");

    obj.edit147 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit147:setParent(obj.layout149);
    obj.edit147:setTransparent(true);
    obj.edit147:setFontSize(20.8);
    obj.edit147:setFontColor("#000000");
    lfm_setPropAsString(obj.edit147, "fontStyle",  "bold");
    obj.edit147:setHorzTextAlign("leading");
    obj.edit147:setVertTextAlign("center");
    obj.edit147:setLeft(0);
    obj.edit147:setTop(0);
    obj.edit147:setWidth(77);
    obj.edit147:setHeight(36);
    obj.edit147:setField("Dur9");
    obj.edit147:setName("edit147");

    obj.layout150 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout150:setParent(obj.rectangle3);
    obj.layout150:setLeft(612);
    obj.layout150:setTop(561);
    obj.layout150:setWidth(77);
    obj.layout150:setHeight(35);
    obj.layout150:setName("layout150");

    obj.edit148 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit148:setParent(obj.layout150);
    obj.edit148:setTransparent(true);
    obj.edit148:setFontSize(20.8);
    obj.edit148:setFontColor("#000000");
    lfm_setPropAsString(obj.edit148, "fontStyle",  "bold");
    obj.edit148:setHorzTextAlign("leading");
    obj.edit148:setVertTextAlign("center");
    obj.edit148:setLeft(0);
    obj.edit148:setTop(0);
    obj.edit148:setWidth(77);
    obj.edit148:setHeight(36);
    obj.edit148:setField("Custo9");
    obj.edit148:setName("edit148");

    obj.layout151 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout151:setParent(obj.rectangle3);
    obj.layout151:setLeft(697);
    obj.layout151:setTop(560);
    obj.layout151:setWidth(77);
    obj.layout151:setHeight(35);
    obj.layout151:setName("layout151");

    obj.edit149 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit149:setParent(obj.layout151);
    obj.edit149:setTransparent(true);
    obj.edit149:setFontSize(20.8);
    obj.edit149:setFontColor("#000000");
    lfm_setPropAsString(obj.edit149, "fontStyle",  "bold");
    obj.edit149:setHorzTextAlign("leading");
    obj.edit149:setVertTextAlign("center");
    obj.edit149:setLeft(0);
    obj.edit149:setTop(0);
    obj.edit149:setWidth(77);
    obj.edit149:setHeight(36);
    obj.edit149:setField("Rol9");
    obj.edit149:setName("edit149");

    obj.layout152 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout152:setParent(obj.rectangle3);
    obj.layout152:setLeft(783);
    obj.layout152:setTop(559);
    obj.layout152:setWidth(77);
    obj.layout152:setHeight(35);
    obj.layout152:setName("layout152");

    obj.edit150 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit150:setParent(obj.layout152);
    obj.edit150:setTransparent(true);
    obj.edit150:setFontSize(20.8);
    obj.edit150:setFontColor("#000000");
    lfm_setPropAsString(obj.edit150, "fontStyle",  "bold");
    obj.edit150:setHorzTextAlign("leading");
    obj.edit150:setVertTextAlign("center");
    obj.edit150:setLeft(0);
    obj.edit150:setTop(0);
    obj.edit150:setWidth(77);
    obj.edit150:setHeight(36);
    obj.edit150:setField("Dif9");
    obj.edit150:setName("edit150");

    obj.layout153 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout153:setParent(obj.rectangle3);
    obj.layout153:setLeft(80);
    obj.layout153:setTop(600);
    obj.layout153:setWidth(77);
    obj.layout153:setHeight(35);
    obj.layout153:setName("layout153");

    obj.edit151 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit151:setParent(obj.layout153);
    obj.edit151:setTransparent(true);
    obj.edit151:setFontSize(20.8);
    obj.edit151:setFontColor("#000000");
    lfm_setPropAsString(obj.edit151, "fontStyle",  "bold");
    obj.edit151:setHorzTextAlign("center");
    obj.edit151:setVertTextAlign("center");
    obj.edit151:setLeft(0);
    obj.edit151:setTop(0);
    obj.edit151:setWidth(77);
    obj.edit151:setHeight(36);
    obj.edit151:setField("Grau10");
    obj.edit151:setName("edit151");

    obj.layout154 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout154:setParent(obj.rectangle3);
    obj.layout154:setLeft(165);
    obj.layout154:setTop(602);
    obj.layout154:setWidth(172);
    obj.layout154:setHeight(33);
    obj.layout154:setName("layout154");

    obj.edit152 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit152:setParent(obj.layout154);
    obj.edit152:setTransparent(true);
    obj.edit152:setFontSize(20.8);
    obj.edit152:setFontColor("#000000");
    lfm_setPropAsString(obj.edit152, "fontStyle",  "bold");
    obj.edit152:setHorzTextAlign("leading");
    obj.edit152:setVertTextAlign("center");
    obj.edit152:setLeft(0);
    obj.edit152:setTop(0);
    obj.edit152:setWidth(172);
    obj.edit152:setHeight(34);
    obj.edit152:setField("Habilidade10");
    obj.edit152:setName("edit152");

    obj.layout155 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout155:setParent(obj.rectangle3);
    obj.layout155:setLeft(345);
    obj.layout155:setTop(602);
    obj.layout155:setWidth(172);
    obj.layout155:setHeight(33);
    obj.layout155:setName("layout155");

    obj.edit153 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit153:setParent(obj.layout155);
    obj.edit153:setTransparent(true);
    obj.edit153:setFontSize(20.8);
    obj.edit153:setFontColor("#000000");
    lfm_setPropAsString(obj.edit153, "fontStyle",  "bold");
    obj.edit153:setHorzTextAlign("leading");
    obj.edit153:setVertTextAlign("center");
    obj.edit153:setLeft(0);
    obj.edit153:setTop(0);
    obj.edit153:setWidth(172);
    obj.edit153:setHeight(34);
    obj.edit153:setField("Efeito10");
    obj.edit153:setName("edit153");

    obj.layout156 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout156:setParent(obj.rectangle3);
    obj.layout156:setLeft(527);
    obj.layout156:setTop(601);
    obj.layout156:setWidth(77);
    obj.layout156:setHeight(35);
    obj.layout156:setName("layout156");

    obj.edit154 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit154:setParent(obj.layout156);
    obj.edit154:setTransparent(true);
    obj.edit154:setFontSize(20.8);
    obj.edit154:setFontColor("#000000");
    lfm_setPropAsString(obj.edit154, "fontStyle",  "bold");
    obj.edit154:setHorzTextAlign("leading");
    obj.edit154:setVertTextAlign("center");
    obj.edit154:setLeft(0);
    obj.edit154:setTop(0);
    obj.edit154:setWidth(77);
    obj.edit154:setHeight(36);
    obj.edit154:setField("Dur10");
    obj.edit154:setName("edit154");

    obj.layout157 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout157:setParent(obj.rectangle3);
    obj.layout157:setLeft(611);
    obj.layout157:setTop(601);
    obj.layout157:setWidth(77);
    obj.layout157:setHeight(35);
    obj.layout157:setName("layout157");

    obj.edit155 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit155:setParent(obj.layout157);
    obj.edit155:setTransparent(true);
    obj.edit155:setFontSize(20.8);
    obj.edit155:setFontColor("#000000");
    lfm_setPropAsString(obj.edit155, "fontStyle",  "bold");
    obj.edit155:setHorzTextAlign("leading");
    obj.edit155:setVertTextAlign("center");
    obj.edit155:setLeft(0);
    obj.edit155:setTop(0);
    obj.edit155:setWidth(77);
    obj.edit155:setHeight(36);
    obj.edit155:setField("Custo10");
    obj.edit155:setName("edit155");

    obj.layout158 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout158:setParent(obj.rectangle3);
    obj.layout158:setLeft(696);
    obj.layout158:setTop(601);
    obj.layout158:setWidth(77);
    obj.layout158:setHeight(35);
    obj.layout158:setName("layout158");

    obj.edit156 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit156:setParent(obj.layout158);
    obj.edit156:setTransparent(true);
    obj.edit156:setFontSize(20.8);
    obj.edit156:setFontColor("#000000");
    lfm_setPropAsString(obj.edit156, "fontStyle",  "bold");
    obj.edit156:setHorzTextAlign("leading");
    obj.edit156:setVertTextAlign("center");
    obj.edit156:setLeft(0);
    obj.edit156:setTop(0);
    obj.edit156:setWidth(77);
    obj.edit156:setHeight(36);
    obj.edit156:setField("Rol10");
    obj.edit156:setName("edit156");

    obj.layout159 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout159:setParent(obj.rectangle3);
    obj.layout159:setLeft(782);
    obj.layout159:setTop(600);
    obj.layout159:setWidth(77);
    obj.layout159:setHeight(35);
    obj.layout159:setName("layout159");

    obj.edit157 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit157:setParent(obj.layout159);
    obj.edit157:setTransparent(true);
    obj.edit157:setFontSize(20.8);
    obj.edit157:setFontColor("#000000");
    lfm_setPropAsString(obj.edit157, "fontStyle",  "bold");
    obj.edit157:setHorzTextAlign("leading");
    obj.edit157:setVertTextAlign("center");
    obj.edit157:setLeft(0);
    obj.edit157:setTop(0);
    obj.edit157:setWidth(77);
    obj.edit157:setHeight(36);
    obj.edit157:setField("Dif10");
    obj.edit157:setName("edit157");

    obj.layout160 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout160:setParent(obj.rectangle3);
    obj.layout160:setLeft(80);
    obj.layout160:setTop(639);
    obj.layout160:setWidth(77);
    obj.layout160:setHeight(35);
    obj.layout160:setName("layout160");

    obj.edit158 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit158:setParent(obj.layout160);
    obj.edit158:setTransparent(true);
    obj.edit158:setFontSize(20.8);
    obj.edit158:setFontColor("#000000");
    lfm_setPropAsString(obj.edit158, "fontStyle",  "bold");
    obj.edit158:setHorzTextAlign("center");
    obj.edit158:setVertTextAlign("center");
    obj.edit158:setLeft(0);
    obj.edit158:setTop(0);
    obj.edit158:setWidth(77);
    obj.edit158:setHeight(36);
    obj.edit158:setField("Grau11");
    obj.edit158:setName("edit158");

    obj.layout161 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout161:setParent(obj.rectangle3);
    obj.layout161:setLeft(166);
    obj.layout161:setTop(640);
    obj.layout161:setWidth(172);
    obj.layout161:setHeight(33);
    obj.layout161:setName("layout161");

    obj.edit159 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit159:setParent(obj.layout161);
    obj.edit159:setTransparent(true);
    obj.edit159:setFontSize(20.8);
    obj.edit159:setFontColor("#000000");
    lfm_setPropAsString(obj.edit159, "fontStyle",  "bold");
    obj.edit159:setHorzTextAlign("leading");
    obj.edit159:setVertTextAlign("center");
    obj.edit159:setLeft(0);
    obj.edit159:setTop(0);
    obj.edit159:setWidth(172);
    obj.edit159:setHeight(34);
    obj.edit159:setField("Habilidade11");
    obj.edit159:setName("edit159");

    obj.layout162 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout162:setParent(obj.rectangle3);
    obj.layout162:setLeft(346);
    obj.layout162:setTop(640);
    obj.layout162:setWidth(172);
    obj.layout162:setHeight(33);
    obj.layout162:setName("layout162");

    obj.edit160 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit160:setParent(obj.layout162);
    obj.edit160:setTransparent(true);
    obj.edit160:setFontSize(20.8);
    obj.edit160:setFontColor("#000000");
    lfm_setPropAsString(obj.edit160, "fontStyle",  "bold");
    obj.edit160:setHorzTextAlign("leading");
    obj.edit160:setVertTextAlign("center");
    obj.edit160:setLeft(0);
    obj.edit160:setTop(0);
    obj.edit160:setWidth(172);
    obj.edit160:setHeight(34);
    obj.edit160:setField("Efeito11");
    obj.edit160:setName("edit160");

    obj.layout163 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout163:setParent(obj.rectangle3);
    obj.layout163:setLeft(527);
    obj.layout163:setTop(640);
    obj.layout163:setWidth(77);
    obj.layout163:setHeight(35);
    obj.layout163:setName("layout163");

    obj.edit161 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit161:setParent(obj.layout163);
    obj.edit161:setTransparent(true);
    obj.edit161:setFontSize(20.8);
    obj.edit161:setFontColor("#000000");
    lfm_setPropAsString(obj.edit161, "fontStyle",  "bold");
    obj.edit161:setHorzTextAlign("leading");
    obj.edit161:setVertTextAlign("center");
    obj.edit161:setLeft(0);
    obj.edit161:setTop(0);
    obj.edit161:setWidth(77);
    obj.edit161:setHeight(36);
    obj.edit161:setField("Dur11");
    obj.edit161:setName("edit161");

    obj.layout164 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout164:setParent(obj.rectangle3);
    obj.layout164:setLeft(611);
    obj.layout164:setTop(641);
    obj.layout164:setWidth(77);
    obj.layout164:setHeight(35);
    obj.layout164:setName("layout164");

    obj.edit162 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit162:setParent(obj.layout164);
    obj.edit162:setTransparent(true);
    obj.edit162:setFontSize(20.8);
    obj.edit162:setFontColor("#000000");
    lfm_setPropAsString(obj.edit162, "fontStyle",  "bold");
    obj.edit162:setHorzTextAlign("leading");
    obj.edit162:setVertTextAlign("center");
    obj.edit162:setLeft(0);
    obj.edit162:setTop(0);
    obj.edit162:setWidth(77);
    obj.edit162:setHeight(36);
    obj.edit162:setField("Custo11");
    obj.edit162:setName("edit162");

    obj.layout165 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout165:setParent(obj.rectangle3);
    obj.layout165:setLeft(696);
    obj.layout165:setTop(641);
    obj.layout165:setWidth(77);
    obj.layout165:setHeight(35);
    obj.layout165:setName("layout165");

    obj.edit163 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit163:setParent(obj.layout165);
    obj.edit163:setTransparent(true);
    obj.edit163:setFontSize(20.8);
    obj.edit163:setFontColor("#000000");
    lfm_setPropAsString(obj.edit163, "fontStyle",  "bold");
    obj.edit163:setHorzTextAlign("leading");
    obj.edit163:setVertTextAlign("center");
    obj.edit163:setLeft(0);
    obj.edit163:setTop(0);
    obj.edit163:setWidth(77);
    obj.edit163:setHeight(36);
    obj.edit163:setField("Rol11");
    obj.edit163:setName("edit163");

    obj.layout166 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout166:setParent(obj.rectangle3);
    obj.layout166:setLeft(782);
    obj.layout166:setTop(639);
    obj.layout166:setWidth(77);
    obj.layout166:setHeight(35);
    obj.layout166:setName("layout166");

    obj.edit164 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit164:setParent(obj.layout166);
    obj.edit164:setTransparent(true);
    obj.edit164:setFontSize(20.8);
    obj.edit164:setFontColor("#000000");
    lfm_setPropAsString(obj.edit164, "fontStyle",  "bold");
    obj.edit164:setHorzTextAlign("leading");
    obj.edit164:setVertTextAlign("center");
    obj.edit164:setLeft(0);
    obj.edit164:setTop(0);
    obj.edit164:setWidth(77);
    obj.edit164:setHeight(36);
    obj.edit164:setField("Dif11");
    obj.edit164:setName("edit164");

    obj.layout167 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout167:setParent(obj.rectangle3);
    obj.layout167:setLeft(82);
    obj.layout167:setTop(678);
    obj.layout167:setWidth(77);
    obj.layout167:setHeight(35);
    obj.layout167:setName("layout167");

    obj.edit165 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit165:setParent(obj.layout167);
    obj.edit165:setTransparent(true);
    obj.edit165:setFontSize(20.8);
    obj.edit165:setFontColor("#000000");
    lfm_setPropAsString(obj.edit165, "fontStyle",  "bold");
    obj.edit165:setHorzTextAlign("center");
    obj.edit165:setVertTextAlign("center");
    obj.edit165:setLeft(0);
    obj.edit165:setTop(0);
    obj.edit165:setWidth(77);
    obj.edit165:setHeight(36);
    obj.edit165:setField("Grau12");
    obj.edit165:setName("edit165");

    obj.layout168 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout168:setParent(obj.rectangle3);
    obj.layout168:setLeft(167);
    obj.layout168:setTop(678);
    obj.layout168:setWidth(172);
    obj.layout168:setHeight(33);
    obj.layout168:setName("layout168");

    obj.edit166 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit166:setParent(obj.layout168);
    obj.edit166:setTransparent(true);
    obj.edit166:setFontSize(20.8);
    obj.edit166:setFontColor("#000000");
    lfm_setPropAsString(obj.edit166, "fontStyle",  "bold");
    obj.edit166:setHorzTextAlign("leading");
    obj.edit166:setVertTextAlign("center");
    obj.edit166:setLeft(0);
    obj.edit166:setTop(0);
    obj.edit166:setWidth(172);
    obj.edit166:setHeight(34);
    obj.edit166:setField("Habilidade12");
    obj.edit166:setName("edit166");

    obj.layout169 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout169:setParent(obj.rectangle3);
    obj.layout169:setLeft(347);
    obj.layout169:setTop(677);
    obj.layout169:setWidth(172);
    obj.layout169:setHeight(33);
    obj.layout169:setName("layout169");

    obj.edit167 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit167:setParent(obj.layout169);
    obj.edit167:setTransparent(true);
    obj.edit167:setFontSize(20.8);
    obj.edit167:setFontColor("#000000");
    lfm_setPropAsString(obj.edit167, "fontStyle",  "bold");
    obj.edit167:setHorzTextAlign("leading");
    obj.edit167:setVertTextAlign("center");
    obj.edit167:setLeft(0);
    obj.edit167:setTop(0);
    obj.edit167:setWidth(172);
    obj.edit167:setHeight(34);
    obj.edit167:setField("Efeito12");
    obj.edit167:setName("edit167");

    obj.layout170 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout170:setParent(obj.rectangle3);
    obj.layout170:setLeft(528);
    obj.layout170:setTop(681);
    obj.layout170:setWidth(77);
    obj.layout170:setHeight(35);
    obj.layout170:setName("layout170");

    obj.edit168 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit168:setParent(obj.layout170);
    obj.edit168:setTransparent(true);
    obj.edit168:setFontSize(20.8);
    obj.edit168:setFontColor("#000000");
    lfm_setPropAsString(obj.edit168, "fontStyle",  "bold");
    obj.edit168:setHorzTextAlign("leading");
    obj.edit168:setVertTextAlign("center");
    obj.edit168:setLeft(0);
    obj.edit168:setTop(0);
    obj.edit168:setWidth(77);
    obj.edit168:setHeight(36);
    obj.edit168:setField("Dur12");
    obj.edit168:setName("edit168");

    obj.layout171 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout171:setParent(obj.rectangle3);
    obj.layout171:setLeft(612);
    obj.layout171:setTop(681);
    obj.layout171:setWidth(77);
    obj.layout171:setHeight(35);
    obj.layout171:setName("layout171");

    obj.edit169 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit169:setParent(obj.layout171);
    obj.edit169:setTransparent(true);
    obj.edit169:setFontSize(20.8);
    obj.edit169:setFontColor("#000000");
    lfm_setPropAsString(obj.edit169, "fontStyle",  "bold");
    obj.edit169:setHorzTextAlign("leading");
    obj.edit169:setVertTextAlign("center");
    obj.edit169:setLeft(0);
    obj.edit169:setTop(0);
    obj.edit169:setWidth(77);
    obj.edit169:setHeight(36);
    obj.edit169:setField("Custo12");
    obj.edit169:setName("edit169");

    obj.layout172 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout172:setParent(obj.rectangle3);
    obj.layout172:setLeft(697);
    obj.layout172:setTop(681);
    obj.layout172:setWidth(77);
    obj.layout172:setHeight(35);
    obj.layout172:setName("layout172");

    obj.edit170 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit170:setParent(obj.layout172);
    obj.edit170:setTransparent(true);
    obj.edit170:setFontSize(20.8);
    obj.edit170:setFontColor("#000000");
    lfm_setPropAsString(obj.edit170, "fontStyle",  "bold");
    obj.edit170:setHorzTextAlign("leading");
    obj.edit170:setVertTextAlign("center");
    obj.edit170:setLeft(0);
    obj.edit170:setTop(0);
    obj.edit170:setWidth(77);
    obj.edit170:setHeight(36);
    obj.edit170:setField("Rol12");
    obj.edit170:setName("edit170");

    obj.layout173 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout173:setParent(obj.rectangle3);
    obj.layout173:setLeft(783);
    obj.layout173:setTop(680);
    obj.layout173:setWidth(77);
    obj.layout173:setHeight(35);
    obj.layout173:setName("layout173");

    obj.edit171 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit171:setParent(obj.layout173);
    obj.edit171:setTransparent(true);
    obj.edit171:setFontSize(20.8);
    obj.edit171:setFontColor("#000000");
    lfm_setPropAsString(obj.edit171, "fontStyle",  "bold");
    obj.edit171:setHorzTextAlign("leading");
    obj.edit171:setVertTextAlign("center");
    obj.edit171:setLeft(0);
    obj.edit171:setTop(0);
    obj.edit171:setWidth(77);
    obj.edit171:setHeight(36);
    obj.edit171:setField("Dif12");
    obj.edit171:setName("edit171");

    obj.layout174 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout174:setParent(obj.rectangle3);
    obj.layout174:setLeft(81);
    obj.layout174:setTop(719);
    obj.layout174:setWidth(77);
    obj.layout174:setHeight(35);
    obj.layout174:setName("layout174");

    obj.edit172 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit172:setParent(obj.layout174);
    obj.edit172:setTransparent(true);
    obj.edit172:setFontSize(20.8);
    obj.edit172:setFontColor("#000000");
    lfm_setPropAsString(obj.edit172, "fontStyle",  "bold");
    obj.edit172:setHorzTextAlign("center");
    obj.edit172:setVertTextAlign("center");
    obj.edit172:setLeft(0);
    obj.edit172:setTop(0);
    obj.edit172:setWidth(77);
    obj.edit172:setHeight(36);
    obj.edit172:setField("Grau13");
    obj.edit172:setName("edit172");

    obj.layout175 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout175:setParent(obj.rectangle3);
    obj.layout175:setLeft(166);
    obj.layout175:setTop(718);
    obj.layout175:setWidth(172);
    obj.layout175:setHeight(33);
    obj.layout175:setName("layout175");

    obj.edit173 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit173:setParent(obj.layout175);
    obj.edit173:setTransparent(true);
    obj.edit173:setFontSize(20.8);
    obj.edit173:setFontColor("#000000");
    lfm_setPropAsString(obj.edit173, "fontStyle",  "bold");
    obj.edit173:setHorzTextAlign("leading");
    obj.edit173:setVertTextAlign("center");
    obj.edit173:setLeft(0);
    obj.edit173:setTop(0);
    obj.edit173:setWidth(172);
    obj.edit173:setHeight(34);
    obj.edit173:setField("Habilidade13");
    obj.edit173:setName("edit173");

    obj.layout176 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout176:setParent(obj.rectangle3);
    obj.layout176:setLeft(346);
    obj.layout176:setTop(717);
    obj.layout176:setWidth(172);
    obj.layout176:setHeight(33);
    obj.layout176:setName("layout176");

    obj.edit174 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit174:setParent(obj.layout176);
    obj.edit174:setTransparent(true);
    obj.edit174:setFontSize(20.8);
    obj.edit174:setFontColor("#000000");
    lfm_setPropAsString(obj.edit174, "fontStyle",  "bold");
    obj.edit174:setHorzTextAlign("leading");
    obj.edit174:setVertTextAlign("center");
    obj.edit174:setLeft(0);
    obj.edit174:setTop(0);
    obj.edit174:setWidth(172);
    obj.edit174:setHeight(34);
    obj.edit174:setField("Efeito13");
    obj.edit174:setName("edit174");

    obj.layout177 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout177:setParent(obj.rectangle3);
    obj.layout177:setLeft(528);
    obj.layout177:setTop(719);
    obj.layout177:setWidth(77);
    obj.layout177:setHeight(35);
    obj.layout177:setName("layout177");

    obj.edit175 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit175:setParent(obj.layout177);
    obj.edit175:setTransparent(true);
    obj.edit175:setFontSize(20.8);
    obj.edit175:setFontColor("#000000");
    lfm_setPropAsString(obj.edit175, "fontStyle",  "bold");
    obj.edit175:setHorzTextAlign("leading");
    obj.edit175:setVertTextAlign("center");
    obj.edit175:setLeft(0);
    obj.edit175:setTop(0);
    obj.edit175:setWidth(77);
    obj.edit175:setHeight(36);
    obj.edit175:setField("Dur13");
    obj.edit175:setName("edit175");

    obj.layout178 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout178:setParent(obj.rectangle3);
    obj.layout178:setLeft(611);
    obj.layout178:setTop(719);
    obj.layout178:setWidth(77);
    obj.layout178:setHeight(35);
    obj.layout178:setName("layout178");

    obj.edit176 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit176:setParent(obj.layout178);
    obj.edit176:setTransparent(true);
    obj.edit176:setFontSize(20.8);
    obj.edit176:setFontColor("#000000");
    lfm_setPropAsString(obj.edit176, "fontStyle",  "bold");
    obj.edit176:setHorzTextAlign("leading");
    obj.edit176:setVertTextAlign("center");
    obj.edit176:setLeft(0);
    obj.edit176:setTop(0);
    obj.edit176:setWidth(77);
    obj.edit176:setHeight(36);
    obj.edit176:setField("Custo13");
    obj.edit176:setName("edit176");

    obj.layout179 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout179:setParent(obj.rectangle3);
    obj.layout179:setLeft(696);
    obj.layout179:setTop(719);
    obj.layout179:setWidth(77);
    obj.layout179:setHeight(35);
    obj.layout179:setName("layout179");

    obj.edit177 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit177:setParent(obj.layout179);
    obj.edit177:setTransparent(true);
    obj.edit177:setFontSize(20.8);
    obj.edit177:setFontColor("#000000");
    lfm_setPropAsString(obj.edit177, "fontStyle",  "bold");
    obj.edit177:setHorzTextAlign("leading");
    obj.edit177:setVertTextAlign("center");
    obj.edit177:setLeft(0);
    obj.edit177:setTop(0);
    obj.edit177:setWidth(77);
    obj.edit177:setHeight(36);
    obj.edit177:setField("Rol13");
    obj.edit177:setName("edit177");

    obj.layout180 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout180:setParent(obj.rectangle3);
    obj.layout180:setLeft(783);
    obj.layout180:setTop(718);
    obj.layout180:setWidth(77);
    obj.layout180:setHeight(35);
    obj.layout180:setName("layout180");

    obj.edit178 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit178:setParent(obj.layout180);
    obj.edit178:setTransparent(true);
    obj.edit178:setFontSize(20.8);
    obj.edit178:setFontColor("#000000");
    lfm_setPropAsString(obj.edit178, "fontStyle",  "bold");
    obj.edit178:setHorzTextAlign("leading");
    obj.edit178:setVertTextAlign("center");
    obj.edit178:setLeft(0);
    obj.edit178:setTop(0);
    obj.edit178:setWidth(77);
    obj.edit178:setHeight(36);
    obj.edit178:setField("Dif13");
    obj.edit178:setName("edit178");

    obj.layout181 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout181:setParent(obj.rectangle3);
    obj.layout181:setLeft(81);
    obj.layout181:setTop(759);
    obj.layout181:setWidth(77);
    obj.layout181:setHeight(35);
    obj.layout181:setName("layout181");

    obj.edit179 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit179:setParent(obj.layout181);
    obj.edit179:setTransparent(true);
    obj.edit179:setFontSize(20.8);
    obj.edit179:setFontColor("#000000");
    lfm_setPropAsString(obj.edit179, "fontStyle",  "bold");
    obj.edit179:setHorzTextAlign("center");
    obj.edit179:setVertTextAlign("center");
    obj.edit179:setLeft(0);
    obj.edit179:setTop(0);
    obj.edit179:setWidth(77);
    obj.edit179:setHeight(36);
    obj.edit179:setField("Grau14");
    obj.edit179:setName("edit179");

    obj.layout182 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout182:setParent(obj.rectangle3);
    obj.layout182:setLeft(167);
    obj.layout182:setTop(759);
    obj.layout182:setWidth(172);
    obj.layout182:setHeight(33);
    obj.layout182:setName("layout182");

    obj.edit180 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit180:setParent(obj.layout182);
    obj.edit180:setTransparent(true);
    obj.edit180:setFontSize(20.8);
    obj.edit180:setFontColor("#000000");
    lfm_setPropAsString(obj.edit180, "fontStyle",  "bold");
    obj.edit180:setHorzTextAlign("leading");
    obj.edit180:setVertTextAlign("center");
    obj.edit180:setLeft(0);
    obj.edit180:setTop(0);
    obj.edit180:setWidth(172);
    obj.edit180:setHeight(34);
    obj.edit180:setField("Habilidade14");
    obj.edit180:setName("edit180");

    obj.layout183 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout183:setParent(obj.rectangle3);
    obj.layout183:setLeft(347);
    obj.layout183:setTop(759);
    obj.layout183:setWidth(172);
    obj.layout183:setHeight(33);
    obj.layout183:setName("layout183");

    obj.edit181 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit181:setParent(obj.layout183);
    obj.edit181:setTransparent(true);
    obj.edit181:setFontSize(20.8);
    obj.edit181:setFontColor("#000000");
    lfm_setPropAsString(obj.edit181, "fontStyle",  "bold");
    obj.edit181:setHorzTextAlign("leading");
    obj.edit181:setVertTextAlign("center");
    obj.edit181:setLeft(0);
    obj.edit181:setTop(0);
    obj.edit181:setWidth(172);
    obj.edit181:setHeight(34);
    obj.edit181:setField("Efeito14");
    obj.edit181:setName("edit181");

    obj.layout184 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout184:setParent(obj.rectangle3);
    obj.layout184:setLeft(529);
    obj.layout184:setTop(759);
    obj.layout184:setWidth(77);
    obj.layout184:setHeight(35);
    obj.layout184:setName("layout184");

    obj.edit182 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit182:setParent(obj.layout184);
    obj.edit182:setTransparent(true);
    obj.edit182:setFontSize(20.8);
    obj.edit182:setFontColor("#000000");
    lfm_setPropAsString(obj.edit182, "fontStyle",  "bold");
    obj.edit182:setHorzTextAlign("leading");
    obj.edit182:setVertTextAlign("center");
    obj.edit182:setLeft(0);
    obj.edit182:setTop(0);
    obj.edit182:setWidth(77);
    obj.edit182:setHeight(36);
    obj.edit182:setField("Dur14");
    obj.edit182:setName("edit182");

    obj.layout185 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout185:setParent(obj.rectangle3);
    obj.layout185:setLeft(612);
    obj.layout185:setTop(760);
    obj.layout185:setWidth(77);
    obj.layout185:setHeight(35);
    obj.layout185:setName("layout185");

    obj.edit183 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit183:setParent(obj.layout185);
    obj.edit183:setTransparent(true);
    obj.edit183:setFontSize(20.8);
    obj.edit183:setFontColor("#000000");
    lfm_setPropAsString(obj.edit183, "fontStyle",  "bold");
    obj.edit183:setHorzTextAlign("leading");
    obj.edit183:setVertTextAlign("center");
    obj.edit183:setLeft(0);
    obj.edit183:setTop(0);
    obj.edit183:setWidth(77);
    obj.edit183:setHeight(36);
    obj.edit183:setField("Custo14");
    obj.edit183:setName("edit183");

    obj.layout186 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout186:setParent(obj.rectangle3);
    obj.layout186:setLeft(697);
    obj.layout186:setTop(760);
    obj.layout186:setWidth(77);
    obj.layout186:setHeight(35);
    obj.layout186:setName("layout186");

    obj.edit184 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit184:setParent(obj.layout186);
    obj.edit184:setTransparent(true);
    obj.edit184:setFontSize(20.8);
    obj.edit184:setFontColor("#000000");
    lfm_setPropAsString(obj.edit184, "fontStyle",  "bold");
    obj.edit184:setHorzTextAlign("leading");
    obj.edit184:setVertTextAlign("center");
    obj.edit184:setLeft(0);
    obj.edit184:setTop(0);
    obj.edit184:setWidth(77);
    obj.edit184:setHeight(36);
    obj.edit184:setField("Rol14");
    obj.edit184:setName("edit184");

    obj.layout187 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout187:setParent(obj.rectangle3);
    obj.layout187:setLeft(783);
    obj.layout187:setTop(758);
    obj.layout187:setWidth(77);
    obj.layout187:setHeight(35);
    obj.layout187:setName("layout187");

    obj.edit185 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit185:setParent(obj.layout187);
    obj.edit185:setTransparent(true);
    obj.edit185:setFontSize(20.8);
    obj.edit185:setFontColor("#000000");
    lfm_setPropAsString(obj.edit185, "fontStyle",  "bold");
    obj.edit185:setHorzTextAlign("leading");
    obj.edit185:setVertTextAlign("center");
    obj.edit185:setLeft(0);
    obj.edit185:setTop(0);
    obj.edit185:setWidth(77);
    obj.edit185:setHeight(36);
    obj.edit185:setField("Dif14");
    obj.edit185:setName("edit185");

    obj.layout188 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout188:setParent(obj.rectangle3);
    obj.layout188:setLeft(81);
    obj.layout188:setTop(800);
    obj.layout188:setWidth(77);
    obj.layout188:setHeight(35);
    obj.layout188:setName("layout188");

    obj.edit186 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit186:setParent(obj.layout188);
    obj.edit186:setTransparent(true);
    obj.edit186:setFontSize(20.8);
    obj.edit186:setFontColor("#000000");
    lfm_setPropAsString(obj.edit186, "fontStyle",  "bold");
    obj.edit186:setHorzTextAlign("center");
    obj.edit186:setVertTextAlign("center");
    obj.edit186:setLeft(0);
    obj.edit186:setTop(0);
    obj.edit186:setWidth(77);
    obj.edit186:setHeight(36);
    obj.edit186:setField("Grau15");
    obj.edit186:setName("edit186");

    obj.layout189 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout189:setParent(obj.rectangle3);
    obj.layout189:setLeft(166);
    obj.layout189:setTop(799);
    obj.layout189:setWidth(172);
    obj.layout189:setHeight(33);
    obj.layout189:setName("layout189");

    obj.edit187 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit187:setParent(obj.layout189);
    obj.edit187:setTransparent(true);
    obj.edit187:setFontSize(20.8);
    obj.edit187:setFontColor("#000000");
    lfm_setPropAsString(obj.edit187, "fontStyle",  "bold");
    obj.edit187:setHorzTextAlign("leading");
    obj.edit187:setVertTextAlign("center");
    obj.edit187:setLeft(0);
    obj.edit187:setTop(0);
    obj.edit187:setWidth(172);
    obj.edit187:setHeight(34);
    obj.edit187:setField("Habilidade15");
    obj.edit187:setName("edit187");

    obj.layout190 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout190:setParent(obj.rectangle3);
    obj.layout190:setLeft(346);
    obj.layout190:setTop(799);
    obj.layout190:setWidth(172);
    obj.layout190:setHeight(33);
    obj.layout190:setName("layout190");

    obj.edit188 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit188:setParent(obj.layout190);
    obj.edit188:setTransparent(true);
    obj.edit188:setFontSize(20.8);
    obj.edit188:setFontColor("#000000");
    lfm_setPropAsString(obj.edit188, "fontStyle",  "bold");
    obj.edit188:setHorzTextAlign("leading");
    obj.edit188:setVertTextAlign("center");
    obj.edit188:setLeft(0);
    obj.edit188:setTop(0);
    obj.edit188:setWidth(172);
    obj.edit188:setHeight(34);
    obj.edit188:setField("Efeito15");
    obj.edit188:setName("edit188");

    obj.layout191 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout191:setParent(obj.rectangle3);
    obj.layout191:setLeft(527);
    obj.layout191:setTop(800);
    obj.layout191:setWidth(77);
    obj.layout191:setHeight(35);
    obj.layout191:setName("layout191");

    obj.edit189 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit189:setParent(obj.layout191);
    obj.edit189:setTransparent(true);
    obj.edit189:setFontSize(20.8);
    obj.edit189:setFontColor("#000000");
    lfm_setPropAsString(obj.edit189, "fontStyle",  "bold");
    obj.edit189:setHorzTextAlign("leading");
    obj.edit189:setVertTextAlign("center");
    obj.edit189:setLeft(0);
    obj.edit189:setTop(0);
    obj.edit189:setWidth(77);
    obj.edit189:setHeight(36);
    obj.edit189:setField("Dur15");
    obj.edit189:setName("edit189");

    obj.layout192 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout192:setParent(obj.rectangle3);
    obj.layout192:setLeft(611);
    obj.layout192:setTop(800);
    obj.layout192:setWidth(77);
    obj.layout192:setHeight(35);
    obj.layout192:setName("layout192");

    obj.edit190 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit190:setParent(obj.layout192);
    obj.edit190:setTransparent(true);
    obj.edit190:setFontSize(20.8);
    obj.edit190:setFontColor("#000000");
    lfm_setPropAsString(obj.edit190, "fontStyle",  "bold");
    obj.edit190:setHorzTextAlign("leading");
    obj.edit190:setVertTextAlign("center");
    obj.edit190:setLeft(0);
    obj.edit190:setTop(0);
    obj.edit190:setWidth(77);
    obj.edit190:setHeight(36);
    obj.edit190:setField("Custo15");
    obj.edit190:setName("edit190");

    obj.layout193 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout193:setParent(obj.rectangle3);
    obj.layout193:setLeft(696);
    obj.layout193:setTop(800);
    obj.layout193:setWidth(77);
    obj.layout193:setHeight(35);
    obj.layout193:setName("layout193");

    obj.edit191 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit191:setParent(obj.layout193);
    obj.edit191:setTransparent(true);
    obj.edit191:setFontSize(20.8);
    obj.edit191:setFontColor("#000000");
    lfm_setPropAsString(obj.edit191, "fontStyle",  "bold");
    obj.edit191:setHorzTextAlign("leading");
    obj.edit191:setVertTextAlign("center");
    obj.edit191:setLeft(0);
    obj.edit191:setTop(0);
    obj.edit191:setWidth(77);
    obj.edit191:setHeight(36);
    obj.edit191:setField("Rol15");
    obj.edit191:setName("edit191");

    obj.layout194 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout194:setParent(obj.rectangle3);
    obj.layout194:setLeft(782);
    obj.layout194:setTop(799);
    obj.layout194:setWidth(77);
    obj.layout194:setHeight(35);
    obj.layout194:setName("layout194");

    obj.edit192 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit192:setParent(obj.layout194);
    obj.edit192:setTransparent(true);
    obj.edit192:setFontSize(20.8);
    obj.edit192:setFontColor("#000000");
    lfm_setPropAsString(obj.edit192, "fontStyle",  "bold");
    obj.edit192:setHorzTextAlign("leading");
    obj.edit192:setVertTextAlign("center");
    obj.edit192:setLeft(0);
    obj.edit192:setTop(0);
    obj.edit192:setWidth(77);
    obj.edit192:setHeight(36);
    obj.edit192:setField("Dif15");
    obj.edit192:setName("edit192");

    obj.layout195 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout195:setParent(obj.rectangle3);
    obj.layout195:setLeft(80);
    obj.layout195:setTop(838);
    obj.layout195:setWidth(77);
    obj.layout195:setHeight(35);
    obj.layout195:setName("layout195");

    obj.edit193 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit193:setParent(obj.layout195);
    obj.edit193:setTransparent(true);
    obj.edit193:setFontSize(20.8);
    obj.edit193:setFontColor("#000000");
    lfm_setPropAsString(obj.edit193, "fontStyle",  "bold");
    obj.edit193:setHorzTextAlign("center");
    obj.edit193:setVertTextAlign("center");
    obj.edit193:setLeft(0);
    obj.edit193:setTop(0);
    obj.edit193:setWidth(77);
    obj.edit193:setHeight(36);
    obj.edit193:setField("Grau16");
    obj.edit193:setName("edit193");

    obj.layout196 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout196:setParent(obj.rectangle3);
    obj.layout196:setLeft(165);
    obj.layout196:setTop(839);
    obj.layout196:setWidth(172);
    obj.layout196:setHeight(33);
    obj.layout196:setName("layout196");

    obj.edit194 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit194:setParent(obj.layout196);
    obj.edit194:setTransparent(true);
    obj.edit194:setFontSize(20.8);
    obj.edit194:setFontColor("#000000");
    lfm_setPropAsString(obj.edit194, "fontStyle",  "bold");
    obj.edit194:setHorzTextAlign("leading");
    obj.edit194:setVertTextAlign("center");
    obj.edit194:setLeft(0);
    obj.edit194:setTop(0);
    obj.edit194:setWidth(172);
    obj.edit194:setHeight(34);
    obj.edit194:setField("Habilidade16");
    obj.edit194:setName("edit194");

    obj.layout197 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout197:setParent(obj.rectangle3);
    obj.layout197:setLeft(345);
    obj.layout197:setTop(838);
    obj.layout197:setWidth(172);
    obj.layout197:setHeight(33);
    obj.layout197:setName("layout197");

    obj.edit195 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit195:setParent(obj.layout197);
    obj.edit195:setTransparent(true);
    obj.edit195:setFontSize(20.8);
    obj.edit195:setFontColor("#000000");
    lfm_setPropAsString(obj.edit195, "fontStyle",  "bold");
    obj.edit195:setHorzTextAlign("leading");
    obj.edit195:setVertTextAlign("center");
    obj.edit195:setLeft(0);
    obj.edit195:setTop(0);
    obj.edit195:setWidth(172);
    obj.edit195:setHeight(34);
    obj.edit195:setField("Efeito16");
    obj.edit195:setName("edit195");

    obj.layout198 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout198:setParent(obj.rectangle3);
    obj.layout198:setLeft(529);
    obj.layout198:setTop(837);
    obj.layout198:setWidth(77);
    obj.layout198:setHeight(35);
    obj.layout198:setName("layout198");

    obj.edit196 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit196:setParent(obj.layout198);
    obj.edit196:setTransparent(true);
    obj.edit196:setFontSize(20.8);
    obj.edit196:setFontColor("#000000");
    lfm_setPropAsString(obj.edit196, "fontStyle",  "bold");
    obj.edit196:setHorzTextAlign("leading");
    obj.edit196:setVertTextAlign("center");
    obj.edit196:setLeft(0);
    obj.edit196:setTop(0);
    obj.edit196:setWidth(77);
    obj.edit196:setHeight(36);
    obj.edit196:setField("Dur16");
    obj.edit196:setName("edit196");

    obj.layout199 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout199:setParent(obj.rectangle3);
    obj.layout199:setLeft(612);
    obj.layout199:setTop(838);
    obj.layout199:setWidth(77);
    obj.layout199:setHeight(35);
    obj.layout199:setName("layout199");

    obj.edit197 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit197:setParent(obj.layout199);
    obj.edit197:setTransparent(true);
    obj.edit197:setFontSize(20.8);
    obj.edit197:setFontColor("#000000");
    lfm_setPropAsString(obj.edit197, "fontStyle",  "bold");
    obj.edit197:setHorzTextAlign("leading");
    obj.edit197:setVertTextAlign("center");
    obj.edit197:setLeft(0);
    obj.edit197:setTop(0);
    obj.edit197:setWidth(77);
    obj.edit197:setHeight(36);
    obj.edit197:setField("Custo16");
    obj.edit197:setName("edit197");

    obj.layout200 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout200:setParent(obj.rectangle3);
    obj.layout200:setLeft(697);
    obj.layout200:setTop(837);
    obj.layout200:setWidth(77);
    obj.layout200:setHeight(35);
    obj.layout200:setName("layout200");

    obj.edit198 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit198:setParent(obj.layout200);
    obj.edit198:setTransparent(true);
    obj.edit198:setFontSize(20.8);
    obj.edit198:setFontColor("#000000");
    lfm_setPropAsString(obj.edit198, "fontStyle",  "bold");
    obj.edit198:setHorzTextAlign("leading");
    obj.edit198:setVertTextAlign("center");
    obj.edit198:setLeft(0);
    obj.edit198:setTop(0);
    obj.edit198:setWidth(77);
    obj.edit198:setHeight(36);
    obj.edit198:setField("Rol16");
    obj.edit198:setName("edit198");

    obj.layout201 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout201:setParent(obj.rectangle3);
    obj.layout201:setLeft(783);
    obj.layout201:setTop(836);
    obj.layout201:setWidth(77);
    obj.layout201:setHeight(35);
    obj.layout201:setName("layout201");

    obj.edit199 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit199:setParent(obj.layout201);
    obj.edit199:setTransparent(true);
    obj.edit199:setFontSize(20.8);
    obj.edit199:setFontColor("#000000");
    lfm_setPropAsString(obj.edit199, "fontStyle",  "bold");
    obj.edit199:setHorzTextAlign("leading");
    obj.edit199:setVertTextAlign("center");
    obj.edit199:setLeft(0);
    obj.edit199:setTop(0);
    obj.edit199:setWidth(77);
    obj.edit199:setHeight(36);
    obj.edit199:setField("Dif16");
    obj.edit199:setName("edit199");

    obj.layout202 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout202:setParent(obj.rectangle3);
    obj.layout202:setLeft(79);
    obj.layout202:setTop(877);
    obj.layout202:setWidth(77);
    obj.layout202:setHeight(35);
    obj.layout202:setName("layout202");

    obj.edit200 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit200:setParent(obj.layout202);
    obj.edit200:setTransparent(true);
    obj.edit200:setFontSize(20.8);
    obj.edit200:setFontColor("#000000");
    lfm_setPropAsString(obj.edit200, "fontStyle",  "bold");
    obj.edit200:setHorzTextAlign("center");
    obj.edit200:setVertTextAlign("center");
    obj.edit200:setLeft(0);
    obj.edit200:setTop(0);
    obj.edit200:setWidth(77);
    obj.edit200:setHeight(36);
    obj.edit200:setField("Grau17");
    obj.edit200:setName("edit200");

    obj.layout203 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout203:setParent(obj.rectangle3);
    obj.layout203:setLeft(166);
    obj.layout203:setTop(881);
    obj.layout203:setWidth(172);
    obj.layout203:setHeight(33);
    obj.layout203:setName("layout203");

    obj.edit201 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit201:setParent(obj.layout203);
    obj.edit201:setTransparent(true);
    obj.edit201:setFontSize(20.8);
    obj.edit201:setFontColor("#000000");
    lfm_setPropAsString(obj.edit201, "fontStyle",  "bold");
    obj.edit201:setHorzTextAlign("leading");
    obj.edit201:setVertTextAlign("center");
    obj.edit201:setLeft(0);
    obj.edit201:setTop(0);
    obj.edit201:setWidth(172);
    obj.edit201:setHeight(34);
    obj.edit201:setField("Habilidade17");
    obj.edit201:setName("edit201");

    obj.layout204 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout204:setParent(obj.rectangle3);
    obj.layout204:setLeft(346);
    obj.layout204:setTop(880);
    obj.layout204:setWidth(172);
    obj.layout204:setHeight(33);
    obj.layout204:setName("layout204");

    obj.edit202 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit202:setParent(obj.layout204);
    obj.edit202:setTransparent(true);
    obj.edit202:setFontSize(20.8);
    obj.edit202:setFontColor("#000000");
    lfm_setPropAsString(obj.edit202, "fontStyle",  "bold");
    obj.edit202:setHorzTextAlign("leading");
    obj.edit202:setVertTextAlign("center");
    obj.edit202:setLeft(0);
    obj.edit202:setTop(0);
    obj.edit202:setWidth(172);
    obj.edit202:setHeight(34);
    obj.edit202:setField("Efeito17");
    obj.edit202:setName("edit202");

    obj.layout205 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout205:setParent(obj.rectangle3);
    obj.layout205:setLeft(528);
    obj.layout205:setTop(880);
    obj.layout205:setWidth(77);
    obj.layout205:setHeight(35);
    obj.layout205:setName("layout205");

    obj.edit203 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit203:setParent(obj.layout205);
    obj.edit203:setTransparent(true);
    obj.edit203:setFontSize(20.8);
    obj.edit203:setFontColor("#000000");
    lfm_setPropAsString(obj.edit203, "fontStyle",  "bold");
    obj.edit203:setHorzTextAlign("leading");
    obj.edit203:setVertTextAlign("center");
    obj.edit203:setLeft(0);
    obj.edit203:setTop(0);
    obj.edit203:setWidth(77);
    obj.edit203:setHeight(36);
    obj.edit203:setField("Dur17");
    obj.edit203:setName("edit203");

    obj.layout206 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout206:setParent(obj.rectangle3);
    obj.layout206:setLeft(612);
    obj.layout206:setTop(880);
    obj.layout206:setWidth(77);
    obj.layout206:setHeight(35);
    obj.layout206:setName("layout206");

    obj.edit204 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit204:setParent(obj.layout206);
    obj.edit204:setTransparent(true);
    obj.edit204:setFontSize(20.8);
    obj.edit204:setFontColor("#000000");
    lfm_setPropAsString(obj.edit204, "fontStyle",  "bold");
    obj.edit204:setHorzTextAlign("leading");
    obj.edit204:setVertTextAlign("center");
    obj.edit204:setLeft(0);
    obj.edit204:setTop(0);
    obj.edit204:setWidth(77);
    obj.edit204:setHeight(36);
    obj.edit204:setField("Custo17");
    obj.edit204:setName("edit204");

    obj.layout207 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout207:setParent(obj.rectangle3);
    obj.layout207:setLeft(697);
    obj.layout207:setTop(880);
    obj.layout207:setWidth(77);
    obj.layout207:setHeight(35);
    obj.layout207:setName("layout207");

    obj.edit205 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit205:setParent(obj.layout207);
    obj.edit205:setTransparent(true);
    obj.edit205:setFontSize(20.8);
    obj.edit205:setFontColor("#000000");
    lfm_setPropAsString(obj.edit205, "fontStyle",  "bold");
    obj.edit205:setHorzTextAlign("leading");
    obj.edit205:setVertTextAlign("center");
    obj.edit205:setLeft(0);
    obj.edit205:setTop(0);
    obj.edit205:setWidth(77);
    obj.edit205:setHeight(36);
    obj.edit205:setField("Rol17");
    obj.edit205:setName("edit205");

    obj.layout208 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout208:setParent(obj.rectangle3);
    obj.layout208:setLeft(783);
    obj.layout208:setTop(879);
    obj.layout208:setWidth(77);
    obj.layout208:setHeight(35);
    obj.layout208:setName("layout208");

    obj.edit206 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit206:setParent(obj.layout208);
    obj.edit206:setTransparent(true);
    obj.edit206:setFontSize(20.8);
    obj.edit206:setFontColor("#000000");
    lfm_setPropAsString(obj.edit206, "fontStyle",  "bold");
    obj.edit206:setHorzTextAlign("leading");
    obj.edit206:setVertTextAlign("center");
    obj.edit206:setLeft(0);
    obj.edit206:setTop(0);
    obj.edit206:setWidth(77);
    obj.edit206:setHeight(36);
    obj.edit206:setField("Dif17");
    obj.edit206:setName("edit206");

    obj.layout209 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout209:setParent(obj.rectangle3);
    obj.layout209:setLeft(81);
    obj.layout209:setTop(919);
    obj.layout209:setWidth(77);
    obj.layout209:setHeight(35);
    obj.layout209:setName("layout209");

    obj.edit207 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit207:setParent(obj.layout209);
    obj.edit207:setTransparent(true);
    obj.edit207:setFontSize(20.8);
    obj.edit207:setFontColor("#000000");
    lfm_setPropAsString(obj.edit207, "fontStyle",  "bold");
    obj.edit207:setHorzTextAlign("center");
    obj.edit207:setVertTextAlign("center");
    obj.edit207:setLeft(0);
    obj.edit207:setTop(0);
    obj.edit207:setWidth(77);
    obj.edit207:setHeight(36);
    obj.edit207:setField("Grau18");
    obj.edit207:setName("edit207");

    obj.layout210 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout210:setParent(obj.rectangle3);
    obj.layout210:setLeft(166);
    obj.layout210:setTop(921);
    obj.layout210:setWidth(172);
    obj.layout210:setHeight(33);
    obj.layout210:setName("layout210");

    obj.edit208 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit208:setParent(obj.layout210);
    obj.edit208:setTransparent(true);
    obj.edit208:setFontSize(20.8);
    obj.edit208:setFontColor("#000000");
    lfm_setPropAsString(obj.edit208, "fontStyle",  "bold");
    obj.edit208:setHorzTextAlign("leading");
    obj.edit208:setVertTextAlign("center");
    obj.edit208:setLeft(0);
    obj.edit208:setTop(0);
    obj.edit208:setWidth(172);
    obj.edit208:setHeight(34);
    obj.edit208:setField("Habilidade18");
    obj.edit208:setName("edit208");

    obj.layout211 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout211:setParent(obj.rectangle3);
    obj.layout211:setLeft(346);
    obj.layout211:setTop(921);
    obj.layout211:setWidth(172);
    obj.layout211:setHeight(33);
    obj.layout211:setName("layout211");

    obj.edit209 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit209:setParent(obj.layout211);
    obj.edit209:setTransparent(true);
    obj.edit209:setFontSize(20.8);
    obj.edit209:setFontColor("#000000");
    lfm_setPropAsString(obj.edit209, "fontStyle",  "bold");
    obj.edit209:setHorzTextAlign("leading");
    obj.edit209:setVertTextAlign("center");
    obj.edit209:setLeft(0);
    obj.edit209:setTop(0);
    obj.edit209:setWidth(172);
    obj.edit209:setHeight(34);
    obj.edit209:setField("Efeito18");
    obj.edit209:setName("edit209");

    obj.layout212 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout212:setParent(obj.rectangle3);
    obj.layout212:setLeft(529);
    obj.layout212:setTop(919);
    obj.layout212:setWidth(77);
    obj.layout212:setHeight(35);
    obj.layout212:setName("layout212");

    obj.edit210 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit210:setParent(obj.layout212);
    obj.edit210:setTransparent(true);
    obj.edit210:setFontSize(20.8);
    obj.edit210:setFontColor("#000000");
    lfm_setPropAsString(obj.edit210, "fontStyle",  "bold");
    obj.edit210:setHorzTextAlign("leading");
    obj.edit210:setVertTextAlign("center");
    obj.edit210:setLeft(0);
    obj.edit210:setTop(0);
    obj.edit210:setWidth(77);
    obj.edit210:setHeight(36);
    obj.edit210:setField("Dur18");
    obj.edit210:setName("edit210");

    obj.layout213 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout213:setParent(obj.rectangle3);
    obj.layout213:setLeft(612);
    obj.layout213:setTop(919);
    obj.layout213:setWidth(77);
    obj.layout213:setHeight(35);
    obj.layout213:setName("layout213");

    obj.edit211 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit211:setParent(obj.layout213);
    obj.edit211:setTransparent(true);
    obj.edit211:setFontSize(20.8);
    obj.edit211:setFontColor("#000000");
    lfm_setPropAsString(obj.edit211, "fontStyle",  "bold");
    obj.edit211:setHorzTextAlign("leading");
    obj.edit211:setVertTextAlign("center");
    obj.edit211:setLeft(0);
    obj.edit211:setTop(0);
    obj.edit211:setWidth(77);
    obj.edit211:setHeight(36);
    obj.edit211:setField("Custo18");
    obj.edit211:setName("edit211");

    obj.layout214 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout214:setParent(obj.rectangle3);
    obj.layout214:setLeft(697);
    obj.layout214:setTop(919);
    obj.layout214:setWidth(77);
    obj.layout214:setHeight(35);
    obj.layout214:setName("layout214");

    obj.edit212 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit212:setParent(obj.layout214);
    obj.edit212:setTransparent(true);
    obj.edit212:setFontSize(20.8);
    obj.edit212:setFontColor("#000000");
    lfm_setPropAsString(obj.edit212, "fontStyle",  "bold");
    obj.edit212:setHorzTextAlign("leading");
    obj.edit212:setVertTextAlign("center");
    obj.edit212:setLeft(0);
    obj.edit212:setTop(0);
    obj.edit212:setWidth(77);
    obj.edit212:setHeight(36);
    obj.edit212:setField("Rol18");
    obj.edit212:setName("edit212");

    obj.layout215 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout215:setParent(obj.rectangle3);
    obj.layout215:setLeft(784);
    obj.layout215:setTop(918);
    obj.layout215:setWidth(77);
    obj.layout215:setHeight(35);
    obj.layout215:setName("layout215");

    obj.edit213 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit213:setParent(obj.layout215);
    obj.edit213:setTransparent(true);
    obj.edit213:setFontSize(20.8);
    obj.edit213:setFontColor("#000000");
    lfm_setPropAsString(obj.edit213, "fontStyle",  "bold");
    obj.edit213:setHorzTextAlign("leading");
    obj.edit213:setVertTextAlign("center");
    obj.edit213:setLeft(0);
    obj.edit213:setTop(0);
    obj.edit213:setWidth(77);
    obj.edit213:setHeight(36);
    obj.edit213:setField("Dif18");
    obj.edit213:setName("edit213");

    obj.layout216 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout216:setParent(obj.rectangle3);
    obj.layout216:setLeft(81);
    obj.layout216:setTop(959);
    obj.layout216:setWidth(77);
    obj.layout216:setHeight(35);
    obj.layout216:setName("layout216");

    obj.edit214 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit214:setParent(obj.layout216);
    obj.edit214:setTransparent(true);
    obj.edit214:setFontSize(20.8);
    obj.edit214:setFontColor("#000000");
    lfm_setPropAsString(obj.edit214, "fontStyle",  "bold");
    obj.edit214:setHorzTextAlign("center");
    obj.edit214:setVertTextAlign("center");
    obj.edit214:setLeft(0);
    obj.edit214:setTop(0);
    obj.edit214:setWidth(77);
    obj.edit214:setHeight(36);
    obj.edit214:setField("Grau19");
    obj.edit214:setName("edit214");

    obj.layout217 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout217:setParent(obj.rectangle3);
    obj.layout217:setLeft(166);
    obj.layout217:setTop(960);
    obj.layout217:setWidth(172);
    obj.layout217:setHeight(33);
    obj.layout217:setName("layout217");

    obj.edit215 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit215:setParent(obj.layout217);
    obj.edit215:setTransparent(true);
    obj.edit215:setFontSize(20.8);
    obj.edit215:setFontColor("#000000");
    lfm_setPropAsString(obj.edit215, "fontStyle",  "bold");
    obj.edit215:setHorzTextAlign("leading");
    obj.edit215:setVertTextAlign("center");
    obj.edit215:setLeft(0);
    obj.edit215:setTop(0);
    obj.edit215:setWidth(172);
    obj.edit215:setHeight(34);
    obj.edit215:setField("Habilidade19");
    obj.edit215:setName("edit215");

    obj.layout218 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout218:setParent(obj.rectangle3);
    obj.layout218:setLeft(346);
    obj.layout218:setTop(960);
    obj.layout218:setWidth(172);
    obj.layout218:setHeight(33);
    obj.layout218:setName("layout218");

    obj.edit216 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit216:setParent(obj.layout218);
    obj.edit216:setTransparent(true);
    obj.edit216:setFontSize(20.8);
    obj.edit216:setFontColor("#000000");
    lfm_setPropAsString(obj.edit216, "fontStyle",  "bold");
    obj.edit216:setHorzTextAlign("leading");
    obj.edit216:setVertTextAlign("center");
    obj.edit216:setLeft(0);
    obj.edit216:setTop(0);
    obj.edit216:setWidth(172);
    obj.edit216:setHeight(34);
    obj.edit216:setField("Efeito19");
    obj.edit216:setName("edit216");

    obj.layout219 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout219:setParent(obj.rectangle3);
    obj.layout219:setLeft(527);
    obj.layout219:setTop(958);
    obj.layout219:setWidth(77);
    obj.layout219:setHeight(35);
    obj.layout219:setName("layout219");

    obj.edit217 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit217:setParent(obj.layout219);
    obj.edit217:setTransparent(true);
    obj.edit217:setFontSize(20.8);
    obj.edit217:setFontColor("#000000");
    lfm_setPropAsString(obj.edit217, "fontStyle",  "bold");
    obj.edit217:setHorzTextAlign("leading");
    obj.edit217:setVertTextAlign("center");
    obj.edit217:setLeft(0);
    obj.edit217:setTop(0);
    obj.edit217:setWidth(77);
    obj.edit217:setHeight(36);
    obj.edit217:setField("Dur19");
    obj.edit217:setName("edit217");

    obj.layout220 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout220:setParent(obj.rectangle3);
    obj.layout220:setLeft(610);
    obj.layout220:setTop(958);
    obj.layout220:setWidth(77);
    obj.layout220:setHeight(35);
    obj.layout220:setName("layout220");

    obj.edit218 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit218:setParent(obj.layout220);
    obj.edit218:setTransparent(true);
    obj.edit218:setFontSize(20.8);
    obj.edit218:setFontColor("#000000");
    lfm_setPropAsString(obj.edit218, "fontStyle",  "bold");
    obj.edit218:setHorzTextAlign("leading");
    obj.edit218:setVertTextAlign("center");
    obj.edit218:setLeft(0);
    obj.edit218:setTop(0);
    obj.edit218:setWidth(77);
    obj.edit218:setHeight(36);
    obj.edit218:setField("Custo19");
    obj.edit218:setName("edit218");

    obj.layout221 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout221:setParent(obj.rectangle3);
    obj.layout221:setLeft(695);
    obj.layout221:setTop(958);
    obj.layout221:setWidth(77);
    obj.layout221:setHeight(35);
    obj.layout221:setName("layout221");

    obj.edit219 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit219:setParent(obj.layout221);
    obj.edit219:setTransparent(true);
    obj.edit219:setFontSize(20.8);
    obj.edit219:setFontColor("#000000");
    lfm_setPropAsString(obj.edit219, "fontStyle",  "bold");
    obj.edit219:setHorzTextAlign("leading");
    obj.edit219:setVertTextAlign("center");
    obj.edit219:setLeft(0);
    obj.edit219:setTop(0);
    obj.edit219:setWidth(77);
    obj.edit219:setHeight(36);
    obj.edit219:setField("Rol19");
    obj.edit219:setName("edit219");

    obj.layout222 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout222:setParent(obj.rectangle3);
    obj.layout222:setLeft(782);
    obj.layout222:setTop(957);
    obj.layout222:setWidth(77);
    obj.layout222:setHeight(35);
    obj.layout222:setName("layout222");

    obj.edit220 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit220:setParent(obj.layout222);
    obj.edit220:setTransparent(true);
    obj.edit220:setFontSize(20.8);
    obj.edit220:setFontColor("#000000");
    lfm_setPropAsString(obj.edit220, "fontStyle",  "bold");
    obj.edit220:setHorzTextAlign("leading");
    obj.edit220:setVertTextAlign("center");
    obj.edit220:setLeft(0);
    obj.edit220:setTop(0);
    obj.edit220:setWidth(77);
    obj.edit220:setHeight(36);
    obj.edit220:setField("Dif19");
    obj.edit220:setName("edit220");

    obj.layout223 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout223:setParent(obj.rectangle3);
    obj.layout223:setLeft(81);
    obj.layout223:setTop(999);
    obj.layout223:setWidth(77);
    obj.layout223:setHeight(35);
    obj.layout223:setName("layout223");

    obj.edit221 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit221:setParent(obj.layout223);
    obj.edit221:setTransparent(true);
    obj.edit221:setFontSize(20.8);
    obj.edit221:setFontColor("#000000");
    lfm_setPropAsString(obj.edit221, "fontStyle",  "bold");
    obj.edit221:setHorzTextAlign("center");
    obj.edit221:setVertTextAlign("center");
    obj.edit221:setLeft(0);
    obj.edit221:setTop(0);
    obj.edit221:setWidth(77);
    obj.edit221:setHeight(36);
    obj.edit221:setField("Grau20");
    obj.edit221:setName("edit221");

    obj.layout224 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout224:setParent(obj.rectangle3);
    obj.layout224:setLeft(166);
    obj.layout224:setTop(998);
    obj.layout224:setWidth(172);
    obj.layout224:setHeight(33);
    obj.layout224:setName("layout224");

    obj.edit222 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit222:setParent(obj.layout224);
    obj.edit222:setTransparent(true);
    obj.edit222:setFontSize(20.8);
    obj.edit222:setFontColor("#000000");
    lfm_setPropAsString(obj.edit222, "fontStyle",  "bold");
    obj.edit222:setHorzTextAlign("leading");
    obj.edit222:setVertTextAlign("center");
    obj.edit222:setLeft(0);
    obj.edit222:setTop(0);
    obj.edit222:setWidth(172);
    obj.edit222:setHeight(34);
    obj.edit222:setField("Habilidade20");
    obj.edit222:setName("edit222");

    obj.layout225 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout225:setParent(obj.rectangle3);
    obj.layout225:setLeft(346);
    obj.layout225:setTop(998);
    obj.layout225:setWidth(172);
    obj.layout225:setHeight(33);
    obj.layout225:setName("layout225");

    obj.edit223 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit223:setParent(obj.layout225);
    obj.edit223:setTransparent(true);
    obj.edit223:setFontSize(20.8);
    obj.edit223:setFontColor("#000000");
    lfm_setPropAsString(obj.edit223, "fontStyle",  "bold");
    obj.edit223:setHorzTextAlign("leading");
    obj.edit223:setVertTextAlign("center");
    obj.edit223:setLeft(0);
    obj.edit223:setTop(0);
    obj.edit223:setWidth(172);
    obj.edit223:setHeight(34);
    obj.edit223:setField("Efeito20");
    obj.edit223:setName("edit223");

    obj.layout226 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout226:setParent(obj.rectangle3);
    obj.layout226:setLeft(529);
    obj.layout226:setTop(1000);
    obj.layout226:setWidth(77);
    obj.layout226:setHeight(35);
    obj.layout226:setName("layout226");

    obj.edit224 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit224:setParent(obj.layout226);
    obj.edit224:setTransparent(true);
    obj.edit224:setFontSize(20.8);
    obj.edit224:setFontColor("#000000");
    lfm_setPropAsString(obj.edit224, "fontStyle",  "bold");
    obj.edit224:setHorzTextAlign("leading");
    obj.edit224:setVertTextAlign("center");
    obj.edit224:setLeft(0);
    obj.edit224:setTop(0);
    obj.edit224:setWidth(77);
    obj.edit224:setHeight(36);
    obj.edit224:setField("Dur20");
    obj.edit224:setName("edit224");

    obj.layout227 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout227:setParent(obj.rectangle3);
    obj.layout227:setLeft(612);
    obj.layout227:setTop(1001);
    obj.layout227:setWidth(77);
    obj.layout227:setHeight(35);
    obj.layout227:setName("layout227");

    obj.edit225 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit225:setParent(obj.layout227);
    obj.edit225:setTransparent(true);
    obj.edit225:setFontSize(20.8);
    obj.edit225:setFontColor("#000000");
    lfm_setPropAsString(obj.edit225, "fontStyle",  "bold");
    obj.edit225:setHorzTextAlign("leading");
    obj.edit225:setVertTextAlign("center");
    obj.edit225:setLeft(0);
    obj.edit225:setTop(0);
    obj.edit225:setWidth(77);
    obj.edit225:setHeight(36);
    obj.edit225:setField("Custo20");
    obj.edit225:setName("edit225");

    obj.layout228 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout228:setParent(obj.rectangle3);
    obj.layout228:setLeft(697);
    obj.layout228:setTop(1001);
    obj.layout228:setWidth(77);
    obj.layout228:setHeight(35);
    obj.layout228:setName("layout228");

    obj.edit226 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit226:setParent(obj.layout228);
    obj.edit226:setTransparent(true);
    obj.edit226:setFontSize(20.8);
    obj.edit226:setFontColor("#000000");
    lfm_setPropAsString(obj.edit226, "fontStyle",  "bold");
    obj.edit226:setHorzTextAlign("leading");
    obj.edit226:setVertTextAlign("center");
    obj.edit226:setLeft(0);
    obj.edit226:setTop(0);
    obj.edit226:setWidth(77);
    obj.edit226:setHeight(36);
    obj.edit226:setField("Rol20");
    obj.edit226:setName("edit226");

    obj.layout229 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout229:setParent(obj.rectangle3);
    obj.layout229:setLeft(784);
    obj.layout229:setTop(999);
    obj.layout229:setWidth(77);
    obj.layout229:setHeight(35);
    obj.layout229:setName("layout229");

    obj.edit227 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit227:setParent(obj.layout229);
    obj.edit227:setTransparent(true);
    obj.edit227:setFontSize(20.8);
    obj.edit227:setFontColor("#000000");
    lfm_setPropAsString(obj.edit227, "fontStyle",  "bold");
    obj.edit227:setHorzTextAlign("leading");
    obj.edit227:setVertTextAlign("center");
    obj.edit227:setLeft(0);
    obj.edit227:setTop(0);
    obj.edit227:setWidth(77);
    obj.edit227:setHeight(36);
    obj.edit227:setField("Dif20");
    obj.edit227:setName("edit227");

    obj.layout230 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout230:setParent(obj.rectangle3);
    obj.layout230:setLeft(80);
    obj.layout230:setTop(1038);
    obj.layout230:setWidth(77);
    obj.layout230:setHeight(35);
    obj.layout230:setName("layout230");

    obj.edit228 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit228:setParent(obj.layout230);
    obj.edit228:setTransparent(true);
    obj.edit228:setFontSize(20.8);
    obj.edit228:setFontColor("#000000");
    lfm_setPropAsString(obj.edit228, "fontStyle",  "bold");
    obj.edit228:setHorzTextAlign("center");
    obj.edit228:setVertTextAlign("center");
    obj.edit228:setLeft(0);
    obj.edit228:setTop(0);
    obj.edit228:setWidth(77);
    obj.edit228:setHeight(36);
    obj.edit228:setField("Grau21");
    obj.edit228:setName("edit228");

    obj.layout231 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout231:setParent(obj.rectangle3);
    obj.layout231:setLeft(165);
    obj.layout231:setTop(1039);
    obj.layout231:setWidth(172);
    obj.layout231:setHeight(33);
    obj.layout231:setName("layout231");

    obj.edit229 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit229:setParent(obj.layout231);
    obj.edit229:setTransparent(true);
    obj.edit229:setFontSize(20.8);
    obj.edit229:setFontColor("#000000");
    lfm_setPropAsString(obj.edit229, "fontStyle",  "bold");
    obj.edit229:setHorzTextAlign("leading");
    obj.edit229:setVertTextAlign("center");
    obj.edit229:setLeft(0);
    obj.edit229:setTop(0);
    obj.edit229:setWidth(172);
    obj.edit229:setHeight(34);
    obj.edit229:setField("Habilidade21");
    obj.edit229:setName("edit229");

    obj.layout232 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout232:setParent(obj.rectangle3);
    obj.layout232:setLeft(345);
    obj.layout232:setTop(1039);
    obj.layout232:setWidth(172);
    obj.layout232:setHeight(33);
    obj.layout232:setName("layout232");

    obj.edit230 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit230:setParent(obj.layout232);
    obj.edit230:setTransparent(true);
    obj.edit230:setFontSize(20.8);
    obj.edit230:setFontColor("#000000");
    lfm_setPropAsString(obj.edit230, "fontStyle",  "bold");
    obj.edit230:setHorzTextAlign("leading");
    obj.edit230:setVertTextAlign("center");
    obj.edit230:setLeft(0);
    obj.edit230:setTop(0);
    obj.edit230:setWidth(172);
    obj.edit230:setHeight(34);
    obj.edit230:setField("Efeito21");
    obj.edit230:setName("edit230");

    obj.layout233 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout233:setParent(obj.rectangle3);
    obj.layout233:setLeft(526);
    obj.layout233:setTop(1039);
    obj.layout233:setWidth(77);
    obj.layout233:setHeight(35);
    obj.layout233:setName("layout233");

    obj.edit231 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit231:setParent(obj.layout233);
    obj.edit231:setTransparent(true);
    obj.edit231:setFontSize(20.8);
    obj.edit231:setFontColor("#000000");
    lfm_setPropAsString(obj.edit231, "fontStyle",  "bold");
    obj.edit231:setHorzTextAlign("leading");
    obj.edit231:setVertTextAlign("center");
    obj.edit231:setLeft(0);
    obj.edit231:setTop(0);
    obj.edit231:setWidth(77);
    obj.edit231:setHeight(36);
    obj.edit231:setField("Dur21");
    obj.edit231:setName("edit231");

    obj.layout234 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout234:setParent(obj.rectangle3);
    obj.layout234:setLeft(610);
    obj.layout234:setTop(1039);
    obj.layout234:setWidth(77);
    obj.layout234:setHeight(35);
    obj.layout234:setName("layout234");

    obj.edit232 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit232:setParent(obj.layout234);
    obj.edit232:setTransparent(true);
    obj.edit232:setFontSize(20.8);
    obj.edit232:setFontColor("#000000");
    lfm_setPropAsString(obj.edit232, "fontStyle",  "bold");
    obj.edit232:setHorzTextAlign("leading");
    obj.edit232:setVertTextAlign("center");
    obj.edit232:setLeft(0);
    obj.edit232:setTop(0);
    obj.edit232:setWidth(77);
    obj.edit232:setHeight(36);
    obj.edit232:setField("Custo21");
    obj.edit232:setName("edit232");

    obj.layout235 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout235:setParent(obj.rectangle3);
    obj.layout235:setLeft(695);
    obj.layout235:setTop(1039);
    obj.layout235:setWidth(77);
    obj.layout235:setHeight(35);
    obj.layout235:setName("layout235");

    obj.edit233 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit233:setParent(obj.layout235);
    obj.edit233:setTransparent(true);
    obj.edit233:setFontSize(20.8);
    obj.edit233:setFontColor("#000000");
    lfm_setPropAsString(obj.edit233, "fontStyle",  "bold");
    obj.edit233:setHorzTextAlign("leading");
    obj.edit233:setVertTextAlign("center");
    obj.edit233:setLeft(0);
    obj.edit233:setTop(0);
    obj.edit233:setWidth(77);
    obj.edit233:setHeight(36);
    obj.edit233:setField("Rol21");
    obj.edit233:setName("edit233");

    obj.layout236 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout236:setParent(obj.rectangle3);
    obj.layout236:setLeft(781);
    obj.layout236:setTop(1038);
    obj.layout236:setWidth(77);
    obj.layout236:setHeight(35);
    obj.layout236:setName("layout236");

    obj.edit234 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit234:setParent(obj.layout236);
    obj.edit234:setTransparent(true);
    obj.edit234:setFontSize(20.8);
    obj.edit234:setFontColor("#000000");
    lfm_setPropAsString(obj.edit234, "fontStyle",  "bold");
    obj.edit234:setHorzTextAlign("leading");
    obj.edit234:setVertTextAlign("center");
    obj.edit234:setLeft(0);
    obj.edit234:setTop(0);
    obj.edit234:setWidth(77);
    obj.edit234:setHeight(36);
    obj.edit234:setField("Dif21");
    obj.edit234:setName("edit234");

    obj.layout237 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout237:setParent(obj.rectangle3);
    obj.layout237:setLeft(80);
    obj.layout237:setTop(1079);
    obj.layout237:setWidth(77);
    obj.layout237:setHeight(35);
    obj.layout237:setName("layout237");

    obj.edit235 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit235:setParent(obj.layout237);
    obj.edit235:setTransparent(true);
    obj.edit235:setFontSize(20.8);
    obj.edit235:setFontColor("#000000");
    lfm_setPropAsString(obj.edit235, "fontStyle",  "bold");
    obj.edit235:setHorzTextAlign("center");
    obj.edit235:setVertTextAlign("center");
    obj.edit235:setLeft(0);
    obj.edit235:setTop(0);
    obj.edit235:setWidth(77);
    obj.edit235:setHeight(36);
    obj.edit235:setField("Grau22");
    obj.edit235:setName("edit235");

    obj.layout238 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout238:setParent(obj.rectangle3);
    obj.layout238:setLeft(166);
    obj.layout238:setTop(1080);
    obj.layout238:setWidth(172);
    obj.layout238:setHeight(33);
    obj.layout238:setName("layout238");

    obj.edit236 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit236:setParent(obj.layout238);
    obj.edit236:setTransparent(true);
    obj.edit236:setFontSize(20.8);
    obj.edit236:setFontColor("#000000");
    lfm_setPropAsString(obj.edit236, "fontStyle",  "bold");
    obj.edit236:setHorzTextAlign("leading");
    obj.edit236:setVertTextAlign("center");
    obj.edit236:setLeft(0);
    obj.edit236:setTop(0);
    obj.edit236:setWidth(172);
    obj.edit236:setHeight(34);
    obj.edit236:setField("Habilidade22");
    obj.edit236:setName("edit236");

    obj.layout239 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout239:setParent(obj.rectangle3);
    obj.layout239:setLeft(346);
    obj.layout239:setTop(1079);
    obj.layout239:setWidth(172);
    obj.layout239:setHeight(33);
    obj.layout239:setName("layout239");

    obj.edit237 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit237:setParent(obj.layout239);
    obj.edit237:setTransparent(true);
    obj.edit237:setFontSize(20.8);
    obj.edit237:setFontColor("#000000");
    lfm_setPropAsString(obj.edit237, "fontStyle",  "bold");
    obj.edit237:setHorzTextAlign("leading");
    obj.edit237:setVertTextAlign("center");
    obj.edit237:setLeft(0);
    obj.edit237:setTop(0);
    obj.edit237:setWidth(172);
    obj.edit237:setHeight(34);
    obj.edit237:setField("Efeito22");
    obj.edit237:setName("edit237");

    obj.layout240 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout240:setParent(obj.rectangle3);
    obj.layout240:setLeft(528);
    obj.layout240:setTop(1077);
    obj.layout240:setWidth(77);
    obj.layout240:setHeight(35);
    obj.layout240:setName("layout240");

    obj.edit238 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit238:setParent(obj.layout240);
    obj.edit238:setTransparent(true);
    obj.edit238:setFontSize(20.8);
    obj.edit238:setFontColor("#000000");
    lfm_setPropAsString(obj.edit238, "fontStyle",  "bold");
    obj.edit238:setHorzTextAlign("leading");
    obj.edit238:setVertTextAlign("center");
    obj.edit238:setLeft(0);
    obj.edit238:setTop(0);
    obj.edit238:setWidth(77);
    obj.edit238:setHeight(36);
    obj.edit238:setField("Dur22");
    obj.edit238:setName("edit238");

    obj.layout241 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout241:setParent(obj.rectangle3);
    obj.layout241:setLeft(612);
    obj.layout241:setTop(1078);
    obj.layout241:setWidth(77);
    obj.layout241:setHeight(35);
    obj.layout241:setName("layout241");

    obj.edit239 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit239:setParent(obj.layout241);
    obj.edit239:setTransparent(true);
    obj.edit239:setFontSize(20.8);
    obj.edit239:setFontColor("#000000");
    lfm_setPropAsString(obj.edit239, "fontStyle",  "bold");
    obj.edit239:setHorzTextAlign("leading");
    obj.edit239:setVertTextAlign("center");
    obj.edit239:setLeft(0);
    obj.edit239:setTop(0);
    obj.edit239:setWidth(77);
    obj.edit239:setHeight(36);
    obj.edit239:setField("Custo22");
    obj.edit239:setName("edit239");

    obj.layout242 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout242:setParent(obj.rectangle3);
    obj.layout242:setLeft(697);
    obj.layout242:setTop(1078);
    obj.layout242:setWidth(77);
    obj.layout242:setHeight(35);
    obj.layout242:setName("layout242");

    obj.edit240 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit240:setParent(obj.layout242);
    obj.edit240:setTransparent(true);
    obj.edit240:setFontSize(20.8);
    obj.edit240:setFontColor("#000000");
    lfm_setPropAsString(obj.edit240, "fontStyle",  "bold");
    obj.edit240:setHorzTextAlign("leading");
    obj.edit240:setVertTextAlign("center");
    obj.edit240:setLeft(0);
    obj.edit240:setTop(0);
    obj.edit240:setWidth(77);
    obj.edit240:setHeight(36);
    obj.edit240:setField("Rol22");
    obj.edit240:setName("edit240");

    obj.layout243 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout243:setParent(obj.rectangle3);
    obj.layout243:setLeft(783);
    obj.layout243:setTop(1077);
    obj.layout243:setWidth(77);
    obj.layout243:setHeight(35);
    obj.layout243:setName("layout243");

    obj.edit241 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit241:setParent(obj.layout243);
    obj.edit241:setTransparent(true);
    obj.edit241:setFontSize(20.8);
    obj.edit241:setFontColor("#000000");
    lfm_setPropAsString(obj.edit241, "fontStyle",  "bold");
    obj.edit241:setHorzTextAlign("leading");
    obj.edit241:setVertTextAlign("center");
    obj.edit241:setLeft(0);
    obj.edit241:setTop(0);
    obj.edit241:setWidth(77);
    obj.edit241:setHeight(36);
    obj.edit241:setField("Dif22");
    obj.edit241:setName("edit241");

    obj.layout244 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout244:setParent(obj.rectangle3);
    obj.layout244:setLeft(81);
    obj.layout244:setTop(1118);
    obj.layout244:setWidth(77);
    obj.layout244:setHeight(35);
    obj.layout244:setName("layout244");

    obj.edit242 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit242:setParent(obj.layout244);
    obj.edit242:setTransparent(true);
    obj.edit242:setFontSize(20.8);
    obj.edit242:setFontColor("#000000");
    lfm_setPropAsString(obj.edit242, "fontStyle",  "bold");
    obj.edit242:setHorzTextAlign("center");
    obj.edit242:setVertTextAlign("center");
    obj.edit242:setLeft(0);
    obj.edit242:setTop(0);
    obj.edit242:setWidth(77);
    obj.edit242:setHeight(36);
    obj.edit242:setField("Grau23");
    obj.edit242:setName("edit242");

    obj.layout245 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout245:setParent(obj.rectangle3);
    obj.layout245:setLeft(168);
    obj.layout245:setTop(1119);
    obj.layout245:setWidth(172);
    obj.layout245:setHeight(33);
    obj.layout245:setName("layout245");

    obj.edit243 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit243:setParent(obj.layout245);
    obj.edit243:setTransparent(true);
    obj.edit243:setFontSize(20.8);
    obj.edit243:setFontColor("#000000");
    lfm_setPropAsString(obj.edit243, "fontStyle",  "bold");
    obj.edit243:setHorzTextAlign("leading");
    obj.edit243:setVertTextAlign("center");
    obj.edit243:setLeft(0);
    obj.edit243:setTop(0);
    obj.edit243:setWidth(172);
    obj.edit243:setHeight(34);
    obj.edit243:setField("Habilidade23");
    obj.edit243:setName("edit243");

    obj.layout246 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout246:setParent(obj.rectangle3);
    obj.layout246:setLeft(348);
    obj.layout246:setTop(1118);
    obj.layout246:setWidth(172);
    obj.layout246:setHeight(33);
    obj.layout246:setName("layout246");

    obj.edit244 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit244:setParent(obj.layout246);
    obj.edit244:setTransparent(true);
    obj.edit244:setFontSize(20.8);
    obj.edit244:setFontColor("#000000");
    lfm_setPropAsString(obj.edit244, "fontStyle",  "bold");
    obj.edit244:setHorzTextAlign("leading");
    obj.edit244:setVertTextAlign("center");
    obj.edit244:setLeft(0);
    obj.edit244:setTop(0);
    obj.edit244:setWidth(172);
    obj.edit244:setHeight(34);
    obj.edit244:setField("Efeito23");
    obj.edit244:setName("edit244");

    obj.layout247 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout247:setParent(obj.rectangle3);
    obj.layout247:setLeft(528);
    obj.layout247:setTop(1117);
    obj.layout247:setWidth(77);
    obj.layout247:setHeight(35);
    obj.layout247:setName("layout247");

    obj.edit245 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit245:setParent(obj.layout247);
    obj.edit245:setTransparent(true);
    obj.edit245:setFontSize(20.8);
    obj.edit245:setFontColor("#000000");
    lfm_setPropAsString(obj.edit245, "fontStyle",  "bold");
    obj.edit245:setHorzTextAlign("leading");
    obj.edit245:setVertTextAlign("center");
    obj.edit245:setLeft(0);
    obj.edit245:setTop(0);
    obj.edit245:setWidth(77);
    obj.edit245:setHeight(36);
    obj.edit245:setField("Dur23");
    obj.edit245:setName("edit245");

    obj.layout248 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout248:setParent(obj.rectangle3);
    obj.layout248:setLeft(612);
    obj.layout248:setTop(1118);
    obj.layout248:setWidth(77);
    obj.layout248:setHeight(35);
    obj.layout248:setName("layout248");

    obj.edit246 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit246:setParent(obj.layout248);
    obj.edit246:setTransparent(true);
    obj.edit246:setFontSize(20.8);
    obj.edit246:setFontColor("#000000");
    lfm_setPropAsString(obj.edit246, "fontStyle",  "bold");
    obj.edit246:setHorzTextAlign("leading");
    obj.edit246:setVertTextAlign("center");
    obj.edit246:setLeft(0);
    obj.edit246:setTop(0);
    obj.edit246:setWidth(77);
    obj.edit246:setHeight(36);
    obj.edit246:setField("Custo23");
    obj.edit246:setName("edit246");

    obj.layout249 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout249:setParent(obj.rectangle3);
    obj.layout249:setLeft(696);
    obj.layout249:setTop(1117);
    obj.layout249:setWidth(77);
    obj.layout249:setHeight(35);
    obj.layout249:setName("layout249");

    obj.edit247 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit247:setParent(obj.layout249);
    obj.edit247:setTransparent(true);
    obj.edit247:setFontSize(20.8);
    obj.edit247:setFontColor("#000000");
    lfm_setPropAsString(obj.edit247, "fontStyle",  "bold");
    obj.edit247:setHorzTextAlign("leading");
    obj.edit247:setVertTextAlign("center");
    obj.edit247:setLeft(0);
    obj.edit247:setTop(0);
    obj.edit247:setWidth(77);
    obj.edit247:setHeight(36);
    obj.edit247:setField("Rol23");
    obj.edit247:setName("edit247");

    obj.layout250 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout250:setParent(obj.rectangle3);
    obj.layout250:setLeft(783);
    obj.layout250:setTop(1116);
    obj.layout250:setWidth(77);
    obj.layout250:setHeight(35);
    obj.layout250:setName("layout250");

    obj.edit248 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit248:setParent(obj.layout250);
    obj.edit248:setTransparent(true);
    obj.edit248:setFontSize(20.8);
    obj.edit248:setFontColor("#000000");
    lfm_setPropAsString(obj.edit248, "fontStyle",  "bold");
    obj.edit248:setHorzTextAlign("leading");
    obj.edit248:setVertTextAlign("center");
    obj.edit248:setLeft(0);
    obj.edit248:setTop(0);
    obj.edit248:setWidth(77);
    obj.edit248:setHeight(36);
    obj.edit248:setField("Dif23");
    obj.edit248:setName("edit248");

    obj.layout251 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout251:setParent(obj.rectangle3);
    obj.layout251:setLeft(80);
    obj.layout251:setTop(1157);
    obj.layout251:setWidth(77);
    obj.layout251:setHeight(35);
    obj.layout251:setName("layout251");

    obj.edit249 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit249:setParent(obj.layout251);
    obj.edit249:setTransparent(true);
    obj.edit249:setFontSize(20.8);
    obj.edit249:setFontColor("#000000");
    lfm_setPropAsString(obj.edit249, "fontStyle",  "bold");
    obj.edit249:setHorzTextAlign("center");
    obj.edit249:setVertTextAlign("center");
    obj.edit249:setLeft(0);
    obj.edit249:setTop(0);
    obj.edit249:setWidth(77);
    obj.edit249:setHeight(36);
    obj.edit249:setField("Grau24");
    obj.edit249:setName("edit249");

    obj.layout252 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout252:setParent(obj.rectangle3);
    obj.layout252:setLeft(165);
    obj.layout252:setTop(1158);
    obj.layout252:setWidth(172);
    obj.layout252:setHeight(36);
    obj.layout252:setName("layout252");

    obj.edit250 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit250:setParent(obj.layout252);
    obj.edit250:setTransparent(true);
    obj.edit250:setFontSize(20.8);
    obj.edit250:setFontColor("#000000");
    lfm_setPropAsString(obj.edit250, "fontStyle",  "bold");
    obj.edit250:setHorzTextAlign("leading");
    obj.edit250:setVertTextAlign("center");
    obj.edit250:setLeft(0);
    obj.edit250:setTop(0);
    obj.edit250:setWidth(172);
    obj.edit250:setHeight(37);
    obj.edit250:setField("Habilidade24");
    obj.edit250:setName("edit250");

    obj.layout253 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout253:setParent(obj.rectangle3);
    obj.layout253:setLeft(345);
    obj.layout253:setTop(1159);
    obj.layout253:setWidth(175);
    obj.layout253:setHeight(35);
    obj.layout253:setName("layout253");

    obj.edit251 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit251:setParent(obj.layout253);
    obj.edit251:setTransparent(true);
    obj.edit251:setFontSize(20.8);
    obj.edit251:setFontColor("#000000");
    lfm_setPropAsString(obj.edit251, "fontStyle",  "bold");
    obj.edit251:setHorzTextAlign("leading");
    obj.edit251:setVertTextAlign("center");
    obj.edit251:setLeft(0);
    obj.edit251:setTop(0);
    obj.edit251:setWidth(175);
    obj.edit251:setHeight(36);
    obj.edit251:setField("Efeito24");
    obj.edit251:setName("edit251");

    obj.layout254 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout254:setParent(obj.rectangle3);
    obj.layout254:setLeft(527);
    obj.layout254:setTop(1158);
    obj.layout254:setWidth(77);
    obj.layout254:setHeight(35);
    obj.layout254:setName("layout254");

    obj.edit252 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit252:setParent(obj.layout254);
    obj.edit252:setTransparent(true);
    obj.edit252:setFontSize(20.8);
    obj.edit252:setFontColor("#000000");
    lfm_setPropAsString(obj.edit252, "fontStyle",  "bold");
    obj.edit252:setHorzTextAlign("leading");
    obj.edit252:setVertTextAlign("center");
    obj.edit252:setLeft(0);
    obj.edit252:setTop(0);
    obj.edit252:setWidth(77);
    obj.edit252:setHeight(36);
    obj.edit252:setField("Dur24");
    obj.edit252:setName("edit252");

    obj.layout255 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout255:setParent(obj.rectangle3);
    obj.layout255:setLeft(610);
    obj.layout255:setTop(1158);
    obj.layout255:setWidth(77);
    obj.layout255:setHeight(35);
    obj.layout255:setName("layout255");

    obj.edit253 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit253:setParent(obj.layout255);
    obj.edit253:setTransparent(true);
    obj.edit253:setFontSize(20.8);
    obj.edit253:setFontColor("#000000");
    lfm_setPropAsString(obj.edit253, "fontStyle",  "bold");
    obj.edit253:setHorzTextAlign("leading");
    obj.edit253:setVertTextAlign("center");
    obj.edit253:setLeft(0);
    obj.edit253:setTop(0);
    obj.edit253:setWidth(77);
    obj.edit253:setHeight(36);
    obj.edit253:setField("Custo24");
    obj.edit253:setName("edit253");

    obj.layout256 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout256:setParent(obj.rectangle3);
    obj.layout256:setLeft(695);
    obj.layout256:setTop(1158);
    obj.layout256:setWidth(77);
    obj.layout256:setHeight(35);
    obj.layout256:setName("layout256");

    obj.edit254 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit254:setParent(obj.layout256);
    obj.edit254:setTransparent(true);
    obj.edit254:setFontSize(20.8);
    obj.edit254:setFontColor("#000000");
    lfm_setPropAsString(obj.edit254, "fontStyle",  "bold");
    obj.edit254:setHorzTextAlign("leading");
    obj.edit254:setVertTextAlign("center");
    obj.edit254:setLeft(0);
    obj.edit254:setTop(0);
    obj.edit254:setWidth(77);
    obj.edit254:setHeight(36);
    obj.edit254:setField("Rol24");
    obj.edit254:setName("edit254");

    obj.layout257 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout257:setParent(obj.rectangle3);
    obj.layout257:setLeft(782);
    obj.layout257:setTop(1157);
    obj.layout257:setWidth(77);
    obj.layout257:setHeight(35);
    obj.layout257:setName("layout257");

    obj.edit255 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit255:setParent(obj.layout257);
    obj.edit255:setTransparent(true);
    obj.edit255:setFontSize(20.8);
    obj.edit255:setFontColor("#000000");
    lfm_setPropAsString(obj.edit255, "fontStyle",  "bold");
    obj.edit255:setHorzTextAlign("leading");
    obj.edit255:setVertTextAlign("center");
    obj.edit255:setLeft(0);
    obj.edit255:setTop(0);
    obj.edit255:setWidth(77);
    obj.edit255:setHeight(36);
    obj.edit255:setField("Dif24");
    obj.edit255:setName("edit255");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.rectangle3);
    obj.button1:setHitTest(true);
    obj.button1:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button1:setLeft(861);
    obj.button1:setTop(242);
    obj.button1:setWidth(32);
    obj.button1:setText("R");
    obj.button1:setName("button1");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.rectangle3);
    obj.button2:setHitTest(true);
    obj.button2:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button2:setLeft(861);
    obj.button2:setTop(281);
    obj.button2:setWidth(32);
    obj.button2:setText("R");
    obj.button2:setName("button2");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.rectangle3);
    obj.button3:setHitTest(true);
    obj.button3:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button3:setLeft(861);
    obj.button3:setTop(320);
    obj.button3:setWidth(32);
    obj.button3:setText("R");
    obj.button3:setName("button3");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.rectangle3);
    obj.button4:setHitTest(true);
    obj.button4:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button4:setLeft(861);
    obj.button4:setTop(359);
    obj.button4:setWidth(32);
    obj.button4:setText("R");
    obj.button4:setName("button4");

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.rectangle3);
    obj.button5:setHitTest(true);
    obj.button5:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button5:setLeft(861);
    obj.button5:setTop(399);
    obj.button5:setWidth(32);
    obj.button5:setText("R");
    obj.button5:setName("button5");

    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.rectangle3);
    obj.button6:setHitTest(true);
    obj.button6:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button6:setLeft(861);
    obj.button6:setTop(440);
    obj.button6:setWidth(32);
    obj.button6:setText("R");
    obj.button6:setName("button6");

    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.rectangle3);
    obj.button7:setHitTest(true);
    obj.button7:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button7:setLeft(861);
    obj.button7:setTop(481);
    obj.button7:setWidth(32);
    obj.button7:setText("R");
    obj.button7:setName("button7");

    obj.button8 = GUI.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.rectangle3);
    obj.button8:setHitTest(true);
    obj.button8:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button8:setLeft(861);
    obj.button8:setTop(521);
    obj.button8:setWidth(32);
    obj.button8:setText("R");
    obj.button8:setName("button8");

    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.rectangle3);
    obj.button9:setHitTest(true);
    obj.button9:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button9:setLeft(861);
    obj.button9:setTop(561);
    obj.button9:setWidth(32);
    obj.button9:setText("R");
    obj.button9:setName("button9");

    obj.button10 = GUI.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.rectangle3);
    obj.button10:setHitTest(true);
    obj.button10:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button10:setLeft(861);
    obj.button10:setTop(602);
    obj.button10:setWidth(32);
    obj.button10:setText("R");
    obj.button10:setName("button10");

    obj.button11 = GUI.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.rectangle3);
    obj.button11:setHitTest(true);
    obj.button11:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button11:setLeft(861);
    obj.button11:setTop(641);
    obj.button11:setWidth(32);
    obj.button11:setText("R");
    obj.button11:setName("button11");

    obj.button12 = GUI.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.rectangle3);
    obj.button12:setHitTest(true);
    obj.button12:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button12:setLeft(861);
    obj.button12:setTop(681);
    obj.button12:setWidth(32);
    obj.button12:setText("R");
    obj.button12:setName("button12");

    obj.button13 = GUI.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.rectangle3);
    obj.button13:setHitTest(true);
    obj.button13:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button13:setLeft(861);
    obj.button13:setTop(719);
    obj.button13:setWidth(32);
    obj.button13:setText("R");
    obj.button13:setName("button13");

    obj.button14 = GUI.fromHandle(_obj_newObject("button"));
    obj.button14:setParent(obj.rectangle3);
    obj.button14:setHitTest(true);
    obj.button14:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button14:setLeft(861);
    obj.button14:setTop(760);
    obj.button14:setWidth(32);
    obj.button14:setText("R");
    obj.button14:setName("button14");

    obj.button15 = GUI.fromHandle(_obj_newObject("button"));
    obj.button15:setParent(obj.rectangle3);
    obj.button15:setHitTest(true);
    obj.button15:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button15:setLeft(861);
    obj.button15:setTop(800);
    obj.button15:setWidth(32);
    obj.button15:setText("R");
    obj.button15:setName("button15");

    obj.button16 = GUI.fromHandle(_obj_newObject("button"));
    obj.button16:setParent(obj.rectangle3);
    obj.button16:setHitTest(true);
    obj.button16:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button16:setLeft(861);
    obj.button16:setTop(838);
    obj.button16:setWidth(32);
    obj.button16:setText("R");
    obj.button16:setName("button16");

    obj.button17 = GUI.fromHandle(_obj_newObject("button"));
    obj.button17:setParent(obj.rectangle3);
    obj.button17:setHitTest(true);
    obj.button17:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button17:setLeft(861);
    obj.button17:setTop(880);
    obj.button17:setWidth(32);
    obj.button17:setText("R");
    obj.button17:setName("button17");

    obj.button18 = GUI.fromHandle(_obj_newObject("button"));
    obj.button18:setParent(obj.rectangle3);
    obj.button18:setHitTest(true);
    obj.button18:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button18:setLeft(861);
    obj.button18:setTop(919);
    obj.button18:setWidth(32);
    obj.button18:setText("R");
    obj.button18:setName("button18");

    obj.button19 = GUI.fromHandle(_obj_newObject("button"));
    obj.button19:setParent(obj.rectangle3);
    obj.button19:setHitTest(true);
    obj.button19:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button19:setLeft(861);
    obj.button19:setTop(960);
    obj.button19:setWidth(32);
    obj.button19:setText("R");
    obj.button19:setName("button19");

    obj.button20 = GUI.fromHandle(_obj_newObject("button"));
    obj.button20:setParent(obj.rectangle3);
    obj.button20:setHitTest(true);
    obj.button20:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button20:setLeft(861);
    obj.button20:setTop(999);
    obj.button20:setWidth(32);
    obj.button20:setText("R");
    obj.button20:setName("button20");

    obj.button21 = GUI.fromHandle(_obj_newObject("button"));
    obj.button21:setParent(obj.rectangle3);
    obj.button21:setHitTest(true);
    obj.button21:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button21:setLeft(861);
    obj.button21:setTop(1039);
    obj.button21:setWidth(32);
    obj.button21:setText("R");
    obj.button21:setName("button21");

    obj.button22 = GUI.fromHandle(_obj_newObject("button"));
    obj.button22:setParent(obj.rectangle3);
    obj.button22:setHitTest(true);
    obj.button22:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button22:setLeft(861);
    obj.button22:setTop(1079);
    obj.button22:setWidth(32);
    obj.button22:setText("R");
    obj.button22:setName("button22");

    obj.button23 = GUI.fromHandle(_obj_newObject("button"));
    obj.button23:setParent(obj.rectangle3);
    obj.button23:setHitTest(true);
    obj.button23:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button23:setLeft(861);
    obj.button23:setTop(1118);
    obj.button23:setWidth(32);
    obj.button23:setText("R");
    obj.button23:setName("button23");

    obj.button24 = GUI.fromHandle(_obj_newObject("button"));
    obj.button24:setParent(obj.rectangle3);
    obj.button24:setHitTest(true);
    obj.button24:setHint("Clique apenas de Rol e Dif estiverem preenchidos");
    obj.button24:setLeft(861);
    obj.button24:setTop(1158);
    obj.button24:setWidth(32);
    obj.button24:setText("R");
    obj.button24:setName("button24");

    obj.tab4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl1);
    obj.tab4:setTitle("Rolagens");
    obj.tab4:setName("tab4");

    obj.frmFichaOdisseia2_04_L_svg = GUI.fromHandle(_obj_newObject("form"));
    obj.frmFichaOdisseia2_04_L_svg:setParent(obj.tab4);
    obj.frmFichaOdisseia2_04_L_svg:setName("frmFichaOdisseia2_04_L_svg");
    obj.frmFichaOdisseia2_04_L_svg:setAlign("client");
    obj.frmFichaOdisseia2_04_L_svg:setTheme("light");
    obj.frmFichaOdisseia2_04_L_svg:setMargins({top=1});

    obj.scrollBox4 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.frmFichaOdisseia2_04_L_svg);
    obj.scrollBox4:setAlign("client");
    obj.scrollBox4:setName("scrollBox4");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.scrollBox4);
    obj.rectangle4:setWidth(952);
    obj.rectangle4:setHeight(1347);
    obj.rectangle4:setColor("white");
    obj.rectangle4:setName("rectangle4");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.rectangle4);
    obj.image4:setLeft(0);
    obj.image4:setTop(0);
    obj.image4:setWidth(952);
    obj.image4:setHeight(1347);
    obj.image4:setSRC("FichaOdisseia2.0/images/7.png");
    obj.image4:setStyle("stretch");
    obj.image4:setOptimize(true);
    obj.image4:setName("image4");

    obj.scrollBox5 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox5:setParent(obj.rectangle4);
    obj.scrollBox5:setLeft(5);
    obj.scrollBox5:setTop(115);
    obj.scrollBox5:setWidth(952);
    obj.scrollBox5:setHeight(505);
    obj.scrollBox5:setName("scrollBox5");

    obj.layout258 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout258:setParent(obj.scrollBox5);
    obj.layout258:setAlign("top");
    obj.layout258:setHeight(30);
    obj.layout258:setMargins({bottom=4});
    obj.layout258:setName("layout258");

    obj.button25 = GUI.fromHandle(_obj_newObject("button"));
    obj.button25:setParent(obj.layout258);
    obj.button25:setText("Rolagem Habilidade");
    obj.button25:setWidth(190);
    obj.button25:setAlign("left");
    obj.button25:setName("button25");

    obj.rclListaDosItens = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDosItens:setParent(obj.scrollBox5);
    obj.rclListaDosItens:setName("rclListaDosItens");
    obj.rclListaDosItens:setField("campoDosItens");
    obj.rclListaDosItens:setTemplateForm("frmLRL");
    obj.rclListaDosItens:setLeft(1);
    obj.rclListaDosItens:setTop(40);
    obj.rclListaDosItens:setHeight(40);
    obj.rclListaDosItens:setWidth(950);
    obj.rclListaDosItens:setAutoHeight(true);

    obj.scrollBox6 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox6:setParent(obj.rectangle4);
    obj.scrollBox6:setLeft(5);
    obj.scrollBox6:setTop(625);
    obj.scrollBox6:setWidth(952);
    obj.scrollBox6:setHeight(600);
    obj.scrollBox6:setName("scrollBox6");

    obj.layout259 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout259:setParent(obj.scrollBox6);
    obj.layout259:setAlign("top");
    obj.layout259:setHeight(30);
    obj.layout259:setMargins({bottom=4});
    obj.layout259:setName("layout259");

    obj.button26 = GUI.fromHandle(_obj_newObject("button"));
    obj.button26:setParent(obj.layout259);
    obj.button26:setText("Rolagem Dano");
    obj.button26:setWidth(150);
    obj.button26:setAlign("left");
    obj.button26:setName("button26");

    obj.rclDano = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclDano:setParent(obj.scrollBox6);
    obj.rclDano:setName("rclDano");
    obj.rclDano:setField("campoDano");
    obj.rclDano:setTemplateForm("frmLDL");
    obj.rclDano:setLeft(1);
    obj.rclDano:setTop(40);
    obj.rclDano:setHeight(40);
    obj.rclDano:setWidth(950);
    obj.rclDano:setAutoHeight(true);

    obj.boxDano = GUI.fromHandle(_obj_newObject("dataScopeBox"));
    obj.boxDano:setParent(obj.scrollBox6);
    obj.boxDano:setName("boxDano");
    obj.boxDano:setVisible(false);
    obj.boxDano:setAlign("right");
    obj.boxDano:setWidth(400);
    obj.boxDano:setMargins({left=4, right=4});

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.boxDano);
    obj.rectangle5:setAlign("top");
    obj.rectangle5:setColor("black");
    obj.rectangle5:setXradius(10);
    obj.rectangle5:setYradius(10);
    obj.rectangle5:setHeight(80);
    obj.rectangle5:setPadding({top=3, left=3, right=3, bottom=3});
    obj.rectangle5:setName("rectangle5");

    obj.layout260 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout260:setParent(obj.rectangle5);
    obj.layout260:setAlign("top");
    obj.layout260:setHeight(30);
    obj.layout260:setMargins({bottom=4});
    obj.layout260:setName("layout260");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout260);
    obj.label1:setAlign("left");
    obj.label1:setText("Nome do Dano:");
    obj.label1:setFontColor("white");
    obj.label1:setAutoSize(true);
    obj.label1:setName("label1");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout260);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setMargins({left=5, right=5});
    obj.rectangle6:setName("rectangle6");

    obj.edit256 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit256:setParent(obj.rectangle6);
    obj.edit256:setFontSize(18);
    obj.edit256:setHorzTextAlign("center");
    lfm_setPropAsString(obj.edit256, "fontStyle",  "bold");
    obj.edit256:setFontColor("Black");
    obj.edit256:setAlign("client");
    obj.edit256:setField("campoDano");
    obj.edit256:setHitTest(true);
    obj.edit256:setHint("Título da Rolagem");
    obj.edit256:setName("edit256");

    obj.layout261 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout261:setParent(obj.rectangle5);
    obj.layout261:setAlign("top");
    obj.layout261:setHeight(100);
    obj.layout261:setName("layout261");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout261);
    obj.rectangle7:setLeft(60);
    obj.rectangle7:setHeight(30);
    obj.rectangle7:setWidth(180);
    obj.rectangle7:setTop(3);
    obj.rectangle7:setMargins({left=2});
    obj.rectangle7:setName("rectangle7");

    obj.edit257 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit257:setParent(obj.rectangle7);
    obj.edit257:setFontSize(16);
    lfm_setPropAsString(obj.edit257, "fontStyle",  "bold");
    obj.edit257:setFontColor("Black");
    obj.edit257:setAlign("client");
    obj.edit257:setField("RolD");
    obj.edit257:setHitTest(true);
    obj.edit257:setHint("Dados de Dano");
    obj.edit257:setName("edit257");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout261);
    obj.rectangle8:setLeft(250);
    obj.rectangle8:setTop(3);
    obj.rectangle8:setHeight(30);
    obj.rectangle8:setWidth(100);
    obj.rectangle8:setMargins({left=2});
    obj.rectangle8:setName("rectangle8");

    obj.edit258 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit258:setParent(obj.rectangle8);
    obj.edit258:setFontSize(16);
    lfm_setPropAsString(obj.edit258, "fontStyle",  "bold");
    obj.edit258:setFontColor("Black");
    obj.edit258:setAlign("client");
    obj.edit258:setField("Mult");
    obj.edit258:setHorzTextAlign("center");
    obj.edit258:setHitTest(true);
    obj.edit258:setHint("Multiplicador (Apenas em rolagens de Dano)");
    obj.edit258:setName("edit258");

    obj.tab5 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab5:setParent(obj.tabControl1);
    obj.tab5:setTitle("Créditos");
    obj.tab5:setName("tab5");

    obj.frmFichaOdisseia2_05_L_svg = GUI.fromHandle(_obj_newObject("form"));
    obj.frmFichaOdisseia2_05_L_svg:setParent(obj.tab5);
    obj.frmFichaOdisseia2_05_L_svg:setName("frmFichaOdisseia2_05_L_svg");
    obj.frmFichaOdisseia2_05_L_svg:setAlign("client");
    obj.frmFichaOdisseia2_05_L_svg:setTheme("light");
    obj.frmFichaOdisseia2_05_L_svg:setMargins({top=1});

    obj.scrollBox7 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox7:setParent(obj.frmFichaOdisseia2_05_L_svg);
    obj.scrollBox7:setAlign("client");
    obj.scrollBox7:setName("scrollBox7");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.scrollBox7);
    obj.rectangle9:setWidth(952);
    obj.rectangle9:setHeight(1347);
    obj.rectangle9:setColor("white");
    obj.rectangle9:setName("rectangle9");

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.rectangle9);
    obj.image5:setLeft(0);
    obj.image5:setTop(0);
    obj.image5:setWidth(952);
    obj.image5:setHeight(1347);
    obj.image5:setSRC("FichaOdisseia2.0/images/8.png");
    obj.image5:setStyle("stretch");
    obj.image5:setOptimize(true);
    obj.image5:setName("image5");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.PVTotal= math.floor((tonumber(sheet.Const) or 0) * 5) +
                                          math.floor(tonumber(sheet.For) or 0);                  
            
                           if sheet.PVTotal >= 0 then
                                   sheet.PVTotal = "" .. sheet.PVTotal;
                           end;
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.PMTotal = math.floor(tonumber(sheet.Mist) or 0) * 5 +
                                          math.floor(tonumber(sheet.Int) or 0);                  
            
                           if sheet.PMTotal >= 0 then
                                   sheet.PMTotal = "" .. sheet.PMTotal;
                           end;
        end, obj);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.EnergiaTotal = math.floor(tonumber(sheet.Const) or 0) +
                                          math.floor((tonumber(sheet.For) or 0) / 2);                  
            
                           if sheet.EnergiaTotal >= 0 then
                                   sheet.EnergiaTotal = "" .. sheet.EnergiaTotal;
                           end;
        end, obj);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.ValorAtaqueFisico = math.floor((tonumber(sheet.Dest) or 0) / 2) +
                                          math.floor((tonumber(sheet.For) or 0) / 2);                  
            
                           if sheet.ValorAtaqueFisico >= 0 then
                                   sheet.ValorAtaqueFisico = sheet.ValorAtaqueFisico;
                           end;
        end, obj);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.ValorAtaqueMagico = math.floor((sheet.Mist or 0) / 2) +
                                     math.floor((sheet.Int or 0) / 2);				
            
                            if sheet.ValorAtaqueMagico >= 0 then
                                    sheet.ValorAtaqueMagico = sheet.ValorAtaqueMagico;
                            end;
        end, obj);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.ValorPrecisao = math.floor((tonumber(sheet.Dest) or 0) / 2) +
                                          math.floor((tonumber(sheet.Int) or 0) / 2);                  
            
                           if sheet.ValorPrecisao >= 0 then
                                   sheet.ValorPrecisao = sheet.ValorPrecisao;
                           end;
        end, obj);

    obj._e_event6 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.ValorDefFisica = math.floor(tonumber(sheet.Const or 0) / 2) +
                                          math.floor(tonumber(sheet.For or 0) / 2) ;                  
            
                           if sheet.ValorDefFisica >= 0 then
                                   sheet.ValorDefFisica = sheet.ValorDefFisica;
                           end;
        end, obj);

    obj._e_event7 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.ValorDefesaMagica = math.floor(tonumber(sheet.Mist) or 0) +
                                          math.floor(tonumber(sheet.Const) or 0);                  
            
                           if sheet.ValorDefesaMagica >= 0 then
                                   sheet.ValorDefesaMagica = math.floor(tonumber(sheet.ValorDefesaMagica) / 2);
                           end;
        end, obj);

    obj._e_event8 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.ValorEsquiva = math.floor(((sheet.Dest) or 0) / 2) +
            				         math.floor(((sheet.Const) or 0) / 2);               
            
                            if sheet.ValorEsquiva >= 0 then
                                    sheet.ValorEsquiva = sheet.ValorEsquiva;
            				end;
        end, obj);

    obj._e_event9 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.ValorIniciativa = math.floor(tonumber(sheet.Dest or 0) / 2) +
                                          math.floor(tonumber(sheet.Int or 0) / 2);                  
            
                           if sheet.ValorIniciativa >= 0 then
                                   sheet.ValorIniciativa = sheet.ValorIniciativa;
                           end;
        end, obj);

    obj._e_event10 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.PesoAtual = tonumber(sheet.PesoCabeca or 0) +
            								tonumber(sheet.PesoTronco or 0) +
            								tonumber(sheet.PesoBracos or 0) +
            								tonumber(sheet.PesoMaoDir or 0) +
            								tonumber(sheet.PesoMaoESQ or 0) +
            								tonumber(sheet.PesoPernas or 0) +
            								tonumber(sheet.PesoPes or 0) +
            								tonumber(sheet.PesoOutros or 0);                  
            
                           if sheet.PesoAtual >= 0 then
                                   sheet.PesoAtual = sheet.PesoAtual;
                           end;
        end, obj);

    obj._e_event11 = obj.dataLink12:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.PesoLimite = math.floor(tonumber(sheet.For or 0) * 2) +
                                          math.floor(tonumber(sheet.Const or 0));                  
            
                           if sheet.PesoLimite >= 0 then
                                   sheet.PesoLimite = sheet.PesoLimite;
                           end;
        end, obj);

    obj._e_event12 = obj.button1:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol1
            						local dificuldade = sheet.Dif1
            						local nome = sheet.Habilidade1
            						local dur = sheet.Dur1
            						local custo = sheet.Custo1
            						local efeito = sheet.Efeito1
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event13 = obj.button2:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol2
            						local dificuldade = sheet.Dif2
            						local nome = sheet.Habilidade2
            						local dur = sheet.Dur2
            						local custo = sheet.Custo2
            						local efeito = sheet.Efeito2
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event14 = obj.button3:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol3
            						local dificuldade = sheet.Dif3
            						local nome = sheet.Habilidade3
            						local dur = sheet.Dur3
            						local custo = sheet.Custo3
            						local efeito = sheet.Efeito3
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event15 = obj.button4:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol4
            						local dificuldade = sheet.Dif4
            						local nome = sheet.Habilidade4
            						local dur = sheet.Dur4
            						local custo = sheet.Custo4
            						local efeito = sheet.Efeito4
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event16 = obj.button5:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol5
            						local dificuldade = sheet.Dif5
            						local nome = sheet.Habilidade5
            						local dur = sheet.Dur5
            						local custo = sheet.Custo5
            						local efeito = sheet.Efeito5
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event17 = obj.button6:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol6
            						local dificuldade = sheet.Dif6
            						local nome = sheet.Habilidade6
            						local dur = sheet.Dur6
            						local custo = sheet.Custo6
            						local efeito = sheet.Efeito6
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event18 = obj.button7:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol7
            						local dificuldade = sheet.Dif7
            						local nome = sheet.Habilidade7
            						local dur = sheet.Dur7
            						local custo = sheet.Custo7
            						local efeito = sheet.Efeito7
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event19 = obj.button8:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol8
            						local dificuldade = sheet.Dif8
            						local nome = sheet.Habilidade8
            						local dur = sheet.Dur8
            						local custo = sheet.Custo8
            						local efeito = sheet.Efeito8
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event20 = obj.button9:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol9
            						local dificuldade = sheet.Dif9
            						local nome = sheet.Habilidade9
            						local dur = sheet.Dur9
            						local custo = sheet.Custo9
            						local efeito = sheet.Efeito9
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event21 = obj.button10:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol10
            						local dificuldade = sheet.Dif10
            						local nome = sheet.Habilidade10
            						local dur = sheet.Dur10
            						local custo = sheet.Custo10
            						local efeito = sheet.Efeito10
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event22 = obj.button11:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol11
            						local dificuldade = sheet.Dif11
            						local nome = sheet.Habilidade11
            						local dur = sheet.Dur11
            						local custo = sheet.Custo11
            						local efeito = sheet.Efeito11
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event23 = obj.button12:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol12
            						local dificuldade = sheet.Dif12
            						local nome = sheet.Habilidade12
            						local dur = sheet.Dur12
            						local custo = sheet.Custo12
            						local efeito = sheet.Efeito12
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event24 = obj.button13:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol13
            						local dificuldade = sheet.Dif13
            						local nome = sheet.Habilidade13
            						local dur = sheet.Dur13
            						local custo = sheet.Custo13
            						local efeito = sheet.Efeito13
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event25 = obj.button14:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol14
            						local dificuldade = sheet.Dif14
            						local nome = sheet.Habilidade14
            						local dur = sheet.Dur14
            						local custo = sheet.Custo14
            						local efeito = sheet.Efeito14
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event26 = obj.button15:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol15
            						local dificuldade = sheet.Dif15
            						local nome = sheet.Habilidade15
            						local dur = sheet.Dur15
            						local custo = sheet.Custo15
            						local efeito = sheet.Efeito15
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event27 = obj.button16:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol16
            						local dificuldade = sheet.Dif16
            						local nome = sheet.Habilidade16
            						local dur = sheet.Dur16
            						local custo = sheet.Custo16
            						local efeito = sheet.Efeito16
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event28 = obj.button17:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol17
            						local dificuldade = sheet.Dif17
            						local nome = sheet.Habilidade17
            						local dur = sheet.Dur17
            						local custo = sheet.Custo17
            						local efeito = sheet.Efeito17
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event29 = obj.button18:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol18
            						local dificuldade = sheet.Dif18
            						local nome = sheet.Habilidade18
            						local dur = sheet.Dur18
            						local custo = sheet.Custo18
            						local efeito = sheet.Efeito18
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event30 = obj.button19:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol19
            						local dificuldade = sheet.Dif19
            						local nome = sheet.Habilidade19
            						local dur = sheet.Dur19
            						local custo = sheet.Custo19
            						local efeito = sheet.Efeito19
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event31 = obj.button20:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol20
            						local dificuldade = sheet.Dif20
            						local nome = sheet.Habilidade20
            						local dur = sheet.Dur20
            						local custo = sheet.Custo20
            						local efeito = sheet.Efeito20
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event32 = obj.button21:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol21
            						local dificuldade = sheet.Dif21
            						local nome = sheet.Habilidade21
            						local dur = sheet.Dur21
            						local custo = sheet.Custo21
            						local efeito = sheet.Efeito21
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event33 = obj.button22:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol22
            						local dificuldade = sheet.Dif22
            						local nome = sheet.Habilidade22
            						local dur = sheet.Dur22
            						local custo = sheet.Custo22
            						local efeito = sheet.Efeito22
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event34 = obj.button23:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol23
            						local dificuldade = sheet.Dif23
            						local nome = sheet.Habilidade23
            						local dur = sheet.Dur23
            						local custo = sheet.Custo23
            						local efeito = sheet.Efeito23
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event35 = obj.button24:addEventListener("onClick",
        function (_)
            local dado = sheet.Rol24
            						local dificuldade = sheet.Dif24
            						local nome = sheet.Habilidade24
            						local dur = sheet.Dur24
            						local custo = sheet.Custo24
            						local efeito = sheet.Efeito24
            
            			            local str = dado .. ">" .. dificuldade; 
            						
                                   local mesaDoPersonagem = Firecast.getMesaDe(sheet);
            
                                   if mesaDoPersonagem ~= nil then
                                           mesaDoPersonagem.chat:enviarMensagem("/r " .. str .. " : " .. nome .. " - Custo: " .. custo .. " - Duração: " .. dur .. " - Efeito: " .. efeito);
                                   end;
        end, obj);

    obj._e_event36 = obj.button25:addEventListener("onClick",
        function (_)
            -- Usuário clicou no botão de criar novo item.
                                            -- Vamos inserir um novo item no nosso recordList                              
                                            self.rclListaDosItens:append();
        end, obj);

    obj._e_event37 = obj.button26:addEventListener("onClick",
        function (_)
            -- Usuário clicou no botão de criar novo item.
                                            -- Vamos inserir um novo item no nosso recordList                              
                                            self.rclDano:append();
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event37);
        __o_rrpgObjs.removeEventListenerById(self._e_event36);
        __o_rrpgObjs.removeEventListenerById(self._e_event35);
        __o_rrpgObjs.removeEventListenerById(self._e_event34);
        __o_rrpgObjs.removeEventListenerById(self._e_event33);
        __o_rrpgObjs.removeEventListenerById(self._e_event32);
        __o_rrpgObjs.removeEventListenerById(self._e_event31);
        __o_rrpgObjs.removeEventListenerById(self._e_event30);
        __o_rrpgObjs.removeEventListenerById(self._e_event29);
        __o_rrpgObjs.removeEventListenerById(self._e_event28);
        __o_rrpgObjs.removeEventListenerById(self._e_event27);
        __o_rrpgObjs.removeEventListenerById(self._e_event26);
        __o_rrpgObjs.removeEventListenerById(self._e_event25);
        __o_rrpgObjs.removeEventListenerById(self._e_event24);
        __o_rrpgObjs.removeEventListenerById(self._e_event23);
        __o_rrpgObjs.removeEventListenerById(self._e_event22);
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.edit213 ~= nil then self.edit213:destroy(); self.edit213 = nil; end;
        if self.edit150 ~= nil then self.edit150:destroy(); self.edit150 = nil; end;
        if self.layout83 ~= nil then self.layout83:destroy(); self.layout83 = nil; end;
        if self.edit64 ~= nil then self.edit64:destroy(); self.edit64 = nil; end;
        if self.edit233 ~= nil then self.edit233:destroy(); self.edit233 = nil; end;
        if self.edit226 ~= nil then self.edit226:destroy(); self.edit226 = nil; end;
        if self.button15 ~= nil then self.button15:destroy(); self.button15 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.edit172 ~= nil then self.edit172:destroy(); self.edit172 = nil; end;
        if self.edit195 ~= nil then self.edit195:destroy(); self.edit195 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.layout64 ~= nil then self.layout64:destroy(); self.layout64 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.layout94 ~= nil then self.layout94:destroy(); self.layout94 = nil; end;
        if self.frmFichaOdisseia2_01_L_svg ~= nil then self.frmFichaOdisseia2_01_L_svg:destroy(); self.frmFichaOdisseia2_01_L_svg = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.layout189 ~= nil then self.layout189:destroy(); self.layout189 = nil; end;
        if self.button16 ~= nil then self.button16:destroy(); self.button16 = nil; end;
        if self.layout195 ~= nil then self.layout195:destroy(); self.layout195 = nil; end;
        if self.layout257 ~= nil then self.layout257:destroy(); self.layout257 = nil; end;
        if self.edit76 ~= nil then self.edit76:destroy(); self.edit76 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.layout123 ~= nil then self.layout123:destroy(); self.layout123 = nil; end;
        if self.edit236 ~= nil then self.edit236:destroy(); self.edit236 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.edit82 ~= nil then self.edit82:destroy(); self.edit82 = nil; end;
        if self.layout187 ~= nil then self.layout187:destroy(); self.layout187 = nil; end;
        if self.layout62 ~= nil then self.layout62:destroy(); self.layout62 = nil; end;
        if self.layout89 ~= nil then self.layout89:destroy(); self.layout89 = nil; end;
        if self.layout247 ~= nil then self.layout247:destroy(); self.layout247 = nil; end;
        if self.layout196 ~= nil then self.layout196:destroy(); self.layout196 = nil; end;
        if self.layout125 ~= nil then self.layout125:destroy(); self.layout125 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.layout88 ~= nil then self.layout88:destroy(); self.layout88 = nil; end;
        if self.layout140 ~= nil then self.layout140:destroy(); self.layout140 = nil; end;
        if self.layout249 ~= nil then self.layout249:destroy(); self.layout249 = nil; end;
        if self.layout71 ~= nil then self.layout71:destroy(); self.layout71 = nil; end;
        if self.edit183 ~= nil then self.edit183:destroy(); self.edit183 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.layout223 ~= nil then self.layout223:destroy(); self.layout223 = nil; end;
        if self.layout236 ~= nil then self.layout236:destroy(); self.layout236 = nil; end;
        if self.edit156 ~= nil then self.edit156:destroy(); self.edit156 = nil; end;
        if self.edit245 ~= nil then self.edit245:destroy(); self.edit245 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.layout194 ~= nil then self.layout194:destroy(); self.layout194 = nil; end;
        if self.layout251 ~= nil then self.layout251:destroy(); self.layout251 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.edit69 ~= nil then self.edit69:destroy(); self.edit69 = nil; end;
        if self.layout212 ~= nil then self.layout212:destroy(); self.layout212 = nil; end;
        if self.layout119 ~= nil then self.layout119:destroy(); self.layout119 = nil; end;
        if self.edit255 ~= nil then self.edit255:destroy(); self.edit255 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.layout141 ~= nil then self.layout141:destroy(); self.layout141 = nil; end;
        if self.edit228 ~= nil then self.edit228:destroy(); self.edit228 = nil; end;
        if self.layout158 ~= nil then self.layout158:destroy(); self.layout158 = nil; end;
        if self.button21 ~= nil then self.button21:destroy(); self.button21 = nil; end;
        if self.edit115 ~= nil then self.edit115:destroy(); self.edit115 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.layout174 ~= nil then self.layout174:destroy(); self.layout174 = nil; end;
        if self.edit205 ~= nil then self.edit205:destroy(); self.edit205 = nil; end;
        if self.button26 ~= nil then self.button26:destroy(); self.button26 = nil; end;
        if self.edit116 ~= nil then self.edit116:destroy(); self.edit116 = nil; end;
        if self.edit214 ~= nil then self.edit214:destroy(); self.edit214 = nil; end;
        if self.edit77 ~= nil then self.edit77:destroy(); self.edit77 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.edit196 ~= nil then self.edit196:destroy(); self.edit196 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.edit159 ~= nil then self.edit159:destroy(); self.edit159 = nil; end;
        if self.layout210 ~= nil then self.layout210:destroy(); self.layout210 = nil; end;
        if self.layout106 ~= nil then self.layout106:destroy(); self.layout106 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.edit220 ~= nil then self.edit220:destroy(); self.edit220 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.layout166 ~= nil then self.layout166:destroy(); self.layout166 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.layout61 ~= nil then self.layout61:destroy(); self.layout61 = nil; end;
        if self.edit235 ~= nil then self.edit235:destroy(); self.edit235 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.layout205 ~= nil then self.layout205:destroy(); self.layout205 = nil; end;
        if self.layout232 ~= nil then self.layout232:destroy(); self.layout232 = nil; end;
        if self.edit66 ~= nil then self.edit66:destroy(); self.edit66 = nil; end;
        if self.boxDano ~= nil then self.boxDano:destroy(); self.boxDano = nil; end;
        if self.layout126 ~= nil then self.layout126:destroy(); self.layout126 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout203 ~= nil then self.layout203:destroy(); self.layout203 = nil; end;
        if self.layout176 ~= nil then self.layout176:destroy(); self.layout176 = nil; end;
        if self.layout252 ~= nil then self.layout252:destroy(); self.layout252 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.edit129 ~= nil then self.edit129:destroy(); self.edit129 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.edit142 ~= nil then self.edit142:destroy(); self.edit142 = nil; end;
        if self.layout137 ~= nil then self.layout137:destroy(); self.layout137 = nil; end;
        if self.layout185 ~= nil then self.layout185:destroy(); self.layout185 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.rclDano ~= nil then self.rclDano:destroy(); self.rclDano = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.layout78 ~= nil then self.layout78:destroy(); self.layout78 = nil; end;
        if self.edit251 ~= nil then self.edit251:destroy(); self.edit251 = nil; end;
        if self.layout248 ~= nil then self.layout248:destroy(); self.layout248 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.layout235 ~= nil then self.layout235:destroy(); self.layout235 = nil; end;
        if self.layout259 ~= nil then self.layout259:destroy(); self.layout259 = nil; end;
        if self.edit99 ~= nil then self.edit99:destroy(); self.edit99 = nil; end;
        if self.edit182 ~= nil then self.edit182:destroy(); self.edit182 = nil; end;
        if self.layout103 ~= nil then self.layout103:destroy(); self.layout103 = nil; end;
        if self.edit67 ~= nil then self.edit67:destroy(); self.edit67 = nil; end;
        if self.edit176 ~= nil then self.edit176:destroy(); self.edit176 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout246 ~= nil then self.layout246:destroy(); self.layout246 = nil; end;
        if self.layout256 ~= nil then self.layout256:destroy(); self.layout256 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.layout191 ~= nil then self.layout191:destroy(); self.layout191 = nil; end;
        if self.edit221 ~= nil then self.edit221:destroy(); self.edit221 = nil; end;
        if self.edit258 ~= nil then self.edit258:destroy(); self.edit258 = nil; end;
        if self.layout108 ~= nil then self.layout108:destroy(); self.layout108 = nil; end;
        if self.layout183 ~= nil then self.layout183:destroy(); self.layout183 = nil; end;
        if self.layout186 ~= nil then self.layout186:destroy(); self.layout186 = nil; end;
        if self.layout229 ~= nil then self.layout229:destroy(); self.layout229 = nil; end;
        if self.edit124 ~= nil then self.edit124:destroy(); self.edit124 = nil; end;
        if self.edit157 ~= nil then self.edit157:destroy(); self.edit157 = nil; end;
        if self.edit83 ~= nil then self.edit83:destroy(); self.edit83 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.edit223 ~= nil then self.edit223:destroy(); self.edit223 = nil; end;
        if self.scrollBox5 ~= nil then self.scrollBox5:destroy(); self.scrollBox5 = nil; end;
        if self.edit161 ~= nil then self.edit161:destroy(); self.edit161 = nil; end;
        if self.edit241 ~= nil then self.edit241:destroy(); self.edit241 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.edit74 ~= nil then self.edit74:destroy(); self.edit74 = nil; end;
        if self.layout100 ~= nil then self.layout100:destroy(); self.layout100 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.layout132 ~= nil then self.layout132:destroy(); self.layout132 = nil; end;
        if self.layout145 ~= nil then self.layout145:destroy(); self.layout145 = nil; end;
        if self.edit134 ~= nil then self.edit134:destroy(); self.edit134 = nil; end;
        if self.layout225 ~= nil then self.layout225:destroy(); self.layout225 = nil; end;
        if self.layout146 ~= nil then self.layout146:destroy(); self.layout146 = nil; end;
        if self.edit247 ~= nil then self.edit247:destroy(); self.edit247 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.layout136 ~= nil then self.layout136:destroy(); self.layout136 = nil; end;
        if self.layout154 ~= nil then self.layout154:destroy(); self.layout154 = nil; end;
        if self.layout162 ~= nil then self.layout162:destroy(); self.layout162 = nil; end;
        if self.layout260 ~= nil then self.layout260:destroy(); self.layout260 = nil; end;
        if self.layout261 ~= nil then self.layout261:destroy(); self.layout261 = nil; end;
        if self.layout69 ~= nil then self.layout69:destroy(); self.layout69 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.edit121 ~= nil then self.edit121:destroy(); self.edit121 = nil; end;
        if self.edit163 ~= nil then self.edit163:destroy(); self.edit163 = nil; end;
        if self.edit199 ~= nil then self.edit199:destroy(); self.edit199 = nil; end;
        if self.layout241 ~= nil then self.layout241:destroy(); self.layout241 = nil; end;
        if self.scrollBox7 ~= nil then self.scrollBox7:destroy(); self.scrollBox7 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.layout254 ~= nil then self.layout254:destroy(); self.layout254 = nil; end;
        if self.layout135 ~= nil then self.layout135:destroy(); self.layout135 = nil; end;
        if self.layout152 ~= nil then self.layout152:destroy(); self.layout152 = nil; end;
        if self.layout60 ~= nil then self.layout60:destroy(); self.layout60 = nil; end;
        if self.layout206 ~= nil then self.layout206:destroy(); self.layout206 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.layout207 ~= nil then self.layout207:destroy(); self.layout207 = nil; end;
        if self.edit92 ~= nil then self.edit92:destroy(); self.edit92 = nil; end;
        if self.layout72 ~= nil then self.layout72:destroy(); self.layout72 = nil; end;
        if self.layout244 ~= nil then self.layout244:destroy(); self.layout244 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.layout118 ~= nil then self.layout118:destroy(); self.layout118 = nil; end;
        if self.layout90 ~= nil then self.layout90:destroy(); self.layout90 = nil; end;
        if self.frmFichaOdisseia2_04_L_svg ~= nil then self.frmFichaOdisseia2_04_L_svg:destroy(); self.frmFichaOdisseia2_04_L_svg = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.edit100 ~= nil then self.edit100:destroy(); self.edit100 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.edit84 ~= nil then self.edit84:destroy(); self.edit84 = nil; end;
        if self.edit224 ~= nil then self.edit224:destroy(); self.edit224 = nil; end;
        if self.layout111 ~= nil then self.layout111:destroy(); self.layout111 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.layout242 ~= nil then self.layout242:destroy(); self.layout242 = nil; end;
        if self.edit249 ~= nil then self.edit249:destroy(); self.edit249 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.layout193 ~= nil then self.layout193:destroy(); self.layout193 = nil; end;
        if self.edit198 ~= nil then self.edit198:destroy(); self.edit198 = nil; end;
        if self.edit252 ~= nil then self.edit252:destroy(); self.edit252 = nil; end;
        if self.edit128 ~= nil then self.edit128:destroy(); self.edit128 = nil; end;
        if self.edit200 ~= nil then self.edit200:destroy(); self.edit200 = nil; end;
        if self.layout200 ~= nil then self.layout200:destroy(); self.layout200 = nil; end;
        if self.layout228 ~= nil then self.layout228:destroy(); self.layout228 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.layout107 ~= nil then self.layout107:destroy(); self.layout107 = nil; end;
        if self.edit103 ~= nil then self.edit103:destroy(); self.edit103 = nil; end;
        if self.layout116 ~= nil then self.layout116:destroy(); self.layout116 = nil; end;
        if self.edit187 ~= nil then self.edit187:destroy(); self.edit187 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.edit127 ~= nil then self.edit127:destroy(); self.edit127 = nil; end;
        if self.edit218 ~= nil then self.edit218:destroy(); self.edit218 = nil; end;
        if self.edit165 ~= nil then self.edit165:destroy(); self.edit165 = nil; end;
        if self.edit208 ~= nil then self.edit208:destroy(); self.edit208 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.layout101 ~= nil then self.layout101:destroy(); self.layout101 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit145 ~= nil then self.edit145:destroy(); self.edit145 = nil; end;
        if self.layout168 ~= nil then self.layout168:destroy(); self.layout168 = nil; end;
        if self.edit181 ~= nil then self.edit181:destroy(); self.edit181 = nil; end;
        if self.edit96 ~= nil then self.edit96:destroy(); self.edit96 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.edit109 ~= nil then self.edit109:destroy(); self.edit109 = nil; end;
        if self.layout148 ~= nil then self.layout148:destroy(); self.layout148 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.button24 ~= nil then self.button24:destroy(); self.button24 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.layout76 ~= nil then self.layout76:destroy(); self.layout76 = nil; end;
        if self.edit174 ~= nil then self.edit174:destroy(); self.edit174 = nil; end;
        if self.edit250 ~= nil then self.edit250:destroy(); self.edit250 = nil; end;
        if self.edit152 ~= nil then self.edit152:destroy(); self.edit152 = nil; end;
        if self.edit133 ~= nil then self.edit133:destroy(); self.edit133 = nil; end;
        if self.edit93 ~= nil then self.edit93:destroy(); self.edit93 = nil; end;
        if self.edit126 ~= nil then self.edit126:destroy(); self.edit126 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edit225 ~= nil then self.edit225:destroy(); self.edit225 = nil; end;
        if self.layout211 ~= nil then self.layout211:destroy(); self.layout211 = nil; end;
        if self.edit81 ~= nil then self.edit81:destroy(); self.edit81 = nil; end;
        if self.layout128 ~= nil then self.layout128:destroy(); self.layout128 = nil; end;
        if self.edit177 ~= nil then self.edit177:destroy(); self.edit177 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.layout97 ~= nil then self.layout97:destroy(); self.layout97 = nil; end;
        if self.layout130 ~= nil then self.layout130:destroy(); self.layout130 = nil; end;
        if self.edit166 ~= nil then self.edit166:destroy(); self.edit166 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.layout230 ~= nil then self.layout230:destroy(); self.layout230 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.layout165 ~= nil then self.layout165:destroy(); self.layout165 = nil; end;
        if self.edit184 ~= nil then self.edit184:destroy(); self.edit184 = nil; end;
        if self.layout198 ~= nil then self.layout198:destroy(); self.layout198 = nil; end;
        if self.layout216 ~= nil then self.layout216:destroy(); self.layout216 = nil; end;
        if self.layout70 ~= nil then self.layout70:destroy(); self.layout70 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.layout226 ~= nil then self.layout226:destroy(); self.layout226 = nil; end;
        if self.layout222 ~= nil then self.layout222:destroy(); self.layout222 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.layout120 ~= nil then self.layout120:destroy(); self.layout120 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.edit170 ~= nil then self.edit170:destroy(); self.edit170 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.edit155 ~= nil then self.edit155:destroy(); self.edit155 = nil; end;
        if self.layout67 ~= nil then self.layout67:destroy(); self.layout67 = nil; end;
        if self.edit162 ~= nil then self.edit162:destroy(); self.edit162 = nil; end;
        if self.layout181 ~= nil then self.layout181:destroy(); self.layout181 = nil; end;
        if self.edit87 ~= nil then self.edit87:destroy(); self.edit87 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.edit194 ~= nil then self.edit194:destroy(); self.edit194 = nil; end;
        if self.layout164 ~= nil then self.layout164:destroy(); self.layout164 = nil; end;
        if self.layout224 ~= nil then self.layout224:destroy(); self.layout224 = nil; end;
        if self.edit113 ~= nil then self.edit113:destroy(); self.edit113 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.layout202 ~= nil then self.layout202:destroy(); self.layout202 = nil; end;
        if self.layout220 ~= nil then self.layout220:destroy(); self.layout220 = nil; end;
        if self.layout113 ~= nil then self.layout113:destroy(); self.layout113 = nil; end;
        if self.edit211 ~= nil then self.edit211:destroy(); self.edit211 = nil; end;
        if self.edit240 ~= nil then self.edit240:destroy(); self.edit240 = nil; end;
        if self.frmFichaOdisseia2_03_L_svg ~= nil then self.frmFichaOdisseia2_03_L_svg:destroy(); self.frmFichaOdisseia2_03_L_svg = nil; end;
        if self.edit138 ~= nil then self.edit138:destroy(); self.edit138 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.button18 ~= nil then self.button18:destroy(); self.button18 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.edit209 ~= nil then self.edit209:destroy(); self.edit209 = nil; end;
        if self.edit118 ~= nil then self.edit118:destroy(); self.edit118 = nil; end;
        if self.layout109 ~= nil then self.layout109:destroy(); self.layout109 = nil; end;
        if self.edit154 ~= nil then self.edit154:destroy(); self.edit154 = nil; end;
        if self.layout170 ~= nil then self.layout170:destroy(); self.layout170 = nil; end;
        if self.edit254 ~= nil then self.edit254:destroy(); self.edit254 = nil; end;
        if self.layout98 ~= nil then self.layout98:destroy(); self.layout98 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.layout73 ~= nil then self.layout73:destroy(); self.layout73 = nil; end;
        if self.layout227 ~= nil then self.layout227:destroy(); self.layout227 = nil; end;
        if self.edit135 ~= nil then self.edit135:destroy(); self.edit135 = nil; end;
        if self.edit191 ~= nil then self.edit191:destroy(); self.edit191 = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.edit102 ~= nil then self.edit102:destroy(); self.edit102 = nil; end;
        if self.edit178 ~= nil then self.edit178:destroy(); self.edit178 = nil; end;
        if self.layout115 ~= nil then self.layout115:destroy(); self.layout115 = nil; end;
        if self.edit117 ~= nil then self.edit117:destroy(); self.edit117 = nil; end;
        if self.layout75 ~= nil then self.layout75:destroy(); self.layout75 = nil; end;
        if self.edit215 ~= nil then self.edit215:destroy(); self.edit215 = nil; end;
        if self.edit216 ~= nil then self.edit216:destroy(); self.edit216 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.layout134 ~= nil then self.layout134:destroy(); self.layout134 = nil; end;
        if self.edit73 ~= nil then self.edit73:destroy(); self.edit73 = nil; end;
        if self.edit222 ~= nil then self.edit222:destroy(); self.edit222 = nil; end;
        if self.edit98 ~= nil then self.edit98:destroy(); self.edit98 = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.layout240 ~= nil then self.layout240:destroy(); self.layout240 = nil; end;
        if self.layout209 ~= nil then self.layout209:destroy(); self.layout209 = nil; end;
        if self.layout110 ~= nil then self.layout110:destroy(); self.layout110 = nil; end;
        if self.edit185 ~= nil then self.edit185:destroy(); self.edit185 = nil; end;
        if self.layout201 ~= nil then self.layout201:destroy(); self.layout201 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.layout63 ~= nil then self.layout63:destroy(); self.layout63 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.edit111 ~= nil then self.edit111:destroy(); self.edit111 = nil; end;
        if self.layout114 ~= nil then self.layout114:destroy(); self.layout114 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.layout188 ~= nil then self.layout188:destroy(); self.layout188 = nil; end;
        if self.layout190 ~= nil then self.layout190:destroy(); self.layout190 = nil; end;
        if self.edit71 ~= nil then self.edit71:destroy(); self.edit71 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.edit85 ~= nil then self.edit85:destroy(); self.edit85 = nil; end;
        if self.edit201 ~= nil then self.edit201:destroy(); self.edit201 = nil; end;
        if self.layout219 ~= nil then self.layout219:destroy(); self.layout219 = nil; end;
        if self.layout245 ~= nil then self.layout245:destroy(); self.layout245 = nil; end;
        if self.edit243 ~= nil then self.edit243:destroy(); self.edit243 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.layout218 ~= nil then self.layout218:destroy(); self.layout218 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout156 ~= nil then self.layout156:destroy(); self.layout156 = nil; end;
        if self.edit192 ~= nil then self.edit192:destroy(); self.edit192 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.edit153 ~= nil then self.edit153:destroy(); self.edit153 = nil; end;
        if self.edit246 ~= nil then self.edit246:destroy(); self.edit246 = nil; end;
        if self.layout160 ~= nil then self.layout160:destroy(); self.layout160 = nil; end;
        if self.edit131 ~= nil then self.edit131:destroy(); self.edit131 = nil; end;
        if self.button20 ~= nil then self.button20:destroy(); self.button20 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.layout68 ~= nil then self.layout68:destroy(); self.layout68 = nil; end;
        if self.edit169 ~= nil then self.edit169:destroy(); self.edit169 = nil; end;
        if self.edit149 ~= nil then self.edit149:destroy(); self.edit149 = nil; end;
        if self.layout105 ~= nil then self.layout105:destroy(); self.layout105 = nil; end;
        if self.edit244 ~= nil then self.edit244:destroy(); self.edit244 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.edit160 ~= nil then self.edit160:destroy(); self.edit160 = nil; end;
        if self.edit120 ~= nil then self.edit120:destroy(); self.edit120 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.edit112 ~= nil then self.edit112:destroy(); self.edit112 = nil; end;
        if self.layout250 ~= nil then self.layout250:destroy(); self.layout250 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.layout171 ~= nil then self.layout171:destroy(); self.layout171 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.edit114 ~= nil then self.edit114:destroy(); self.edit114 = nil; end;
        if self.layout177 ~= nil then self.layout177:destroy(); self.layout177 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.edit204 ~= nil then self.edit204:destroy(); self.edit204 = nil; end;
        if self.edit210 ~= nil then self.edit210:destroy(); self.edit210 = nil; end;
        if self.layout127 ~= nil then self.layout127:destroy(); self.layout127 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.layout169 ~= nil then self.layout169:destroy(); self.layout169 = nil; end;
        if self.layout199 ~= nil then self.layout199:destroy(); self.layout199 = nil; end;
        if self.layout217 ~= nil then self.layout217:destroy(); self.layout217 = nil; end;
        if self.tab5 ~= nil then self.tab5:destroy(); self.tab5 = nil; end;
        if self.edit68 ~= nil then self.edit68:destroy(); self.edit68 = nil; end;
        if self.edit72 ~= nil then self.edit72:destroy(); self.edit72 = nil; end;
        if self.edit179 ~= nil then self.edit179:destroy(); self.edit179 = nil; end;
        if self.layout243 ~= nil then self.layout243:destroy(); self.layout243 = nil; end;
        if self.layout192 ~= nil then self.layout192:destroy(); self.layout192 = nil; end;
        if self.layout92 ~= nil then self.layout92:destroy(); self.layout92 = nil; end;
        if self.layout143 ~= nil then self.layout143:destroy(); self.layout143 = nil; end;
        if self.edit158 ~= nil then self.edit158:destroy(); self.edit158 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit106 ~= nil then self.edit106:destroy(); self.edit106 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit125 ~= nil then self.edit125:destroy(); self.edit125 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout178 ~= nil then self.layout178:destroy(); self.layout178 = nil; end;
        if self.frmFichaOdisseia2_02_L_svg ~= nil then self.frmFichaOdisseia2_02_L_svg:destroy(); self.frmFichaOdisseia2_02_L_svg = nil; end;
        if self.edit79 ~= nil then self.edit79:destroy(); self.edit79 = nil; end;
        if self.layout172 ~= nil then self.layout172:destroy(); self.layout172 = nil; end;
        if self.layout180 ~= nil then self.layout180:destroy(); self.layout180 = nil; end;
        if self.layout204 ~= nil then self.layout204:destroy(); self.layout204 = nil; end;
        if self.edit256 ~= nil then self.edit256:destroy(); self.edit256 = nil; end;
        if self.layout253 ~= nil then self.layout253:destroy(); self.layout253 = nil; end;
        if self.edit175 ~= nil then self.edit175:destroy(); self.edit175 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.edit101 ~= nil then self.edit101:destroy(); self.edit101 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.edit242 ~= nil then self.edit242:destroy(); self.edit242 = nil; end;
        if self.edit231 ~= nil then self.edit231:destroy(); self.edit231 = nil; end;
        if self.edit164 ~= nil then self.edit164:destroy(); self.edit164 = nil; end;
        if self.layout215 ~= nil then self.layout215:destroy(); self.layout215 = nil; end;
        if self.layout221 ~= nil then self.layout221:destroy(); self.layout221 = nil; end;
        if self.layout167 ~= nil then self.layout167:destroy(); self.layout167 = nil; end;
        if self.layout147 ~= nil then self.layout147:destroy(); self.layout147 = nil; end;
        if self.edit253 ~= nil then self.edit253:destroy(); self.edit253 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.layout133 ~= nil then self.layout133:destroy(); self.layout133 = nil; end;
        if self.layout173 ~= nil then self.layout173:destroy(); self.layout173 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.layout112 ~= nil then self.layout112:destroy(); self.layout112 = nil; end;
        if self.edit139 ~= nil then self.edit139:destroy(); self.edit139 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.edit122 ~= nil then self.edit122:destroy(); self.edit122 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.edit110 ~= nil then self.edit110:destroy(); self.edit110 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.layout138 ~= nil then self.layout138:destroy(); self.layout138 = nil; end;
        if self.layout151 ~= nil then self.layout151:destroy(); self.layout151 = nil; end;
        if self.edit86 ~= nil then self.edit86:destroy(); self.edit86 = nil; end;
        if self.layout234 ~= nil then self.layout234:destroy(); self.layout234 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.edit123 ~= nil then self.edit123:destroy(); self.edit123 = nil; end;
        if self.edit143 ~= nil then self.edit143:destroy(); self.edit143 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.layout129 ~= nil then self.layout129:destroy(); self.layout129 = nil; end;
        if self.edit206 ~= nil then self.edit206:destroy(); self.edit206 = nil; end;
        if self.edit105 ~= nil then self.edit105:destroy(); self.edit105 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.layout238 ~= nil then self.layout238:destroy(); self.layout238 = nil; end;
        if self.edit239 ~= nil then self.edit239:destroy(); self.edit239 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.edit137 ~= nil then self.edit137:destroy(); self.edit137 = nil; end;
        if self.edit146 ~= nil then self.edit146:destroy(); self.edit146 = nil; end;
        if self.layout153 ~= nil then self.layout153:destroy(); self.layout153 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.layout179 ~= nil then self.layout179:destroy(); self.layout179 = nil; end;
        if self.edit230 ~= nil then self.edit230:destroy(); self.edit230 = nil; end;
        if self.edit90 ~= nil then self.edit90:destroy(); self.edit90 = nil; end;
        if self.edit238 ~= nil then self.edit238:destroy(); self.edit238 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.layout117 ~= nil then self.layout117:destroy(); self.layout117 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.layout102 ~= nil then self.layout102:destroy(); self.layout102 = nil; end;
        if self.edit140 ~= nil then self.edit140:destroy(); self.edit140 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit189 ~= nil then self.edit189:destroy(); self.edit189 = nil; end;
        if self.layout79 ~= nil then self.layout79:destroy(); self.layout79 = nil; end;
        if self.edit94 ~= nil then self.edit94:destroy(); self.edit94 = nil; end;
        if self.edit167 ~= nil then self.edit167:destroy(); self.edit167 = nil; end;
        if self.layout213 ~= nil then self.layout213:destroy(); self.layout213 = nil; end;
        if self.frmFichaOdisseia2_05_L_svg ~= nil then self.frmFichaOdisseia2_05_L_svg:destroy(); self.frmFichaOdisseia2_05_L_svg = nil; end;
        if self.layout142 ~= nil then self.layout142:destroy(); self.layout142 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.edit229 ~= nil then self.edit229:destroy(); self.edit229 = nil; end;
        if self.layout149 ~= nil then self.layout149:destroy(); self.layout149 = nil; end;
        if self.layout80 ~= nil then self.layout80:destroy(); self.layout80 = nil; end;
        if self.edit104 ~= nil then self.edit104:destroy(); self.edit104 = nil; end;
        if self.edit207 ~= nil then self.edit207:destroy(); self.edit207 = nil; end;
        if self.layout139 ~= nil then self.layout139:destroy(); self.layout139 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.layout82 ~= nil then self.layout82:destroy(); self.layout82 = nil; end;
        if self.edit108 ~= nil then self.edit108:destroy(); self.edit108 = nil; end;
        if self.layout233 ~= nil then self.layout233:destroy(); self.layout233 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.edit80 ~= nil then self.edit80:destroy(); self.edit80 = nil; end;
        if self.edit95 ~= nil then self.edit95:destroy(); self.edit95 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.layout65 ~= nil then self.layout65:destroy(); self.layout65 = nil; end;
        if self.edit171 ~= nil then self.edit171:destroy(); self.edit171 = nil; end;
        if self.edit186 ~= nil then self.edit186:destroy(); self.edit186 = nil; end;
        if self.edit97 ~= nil then self.edit97:destroy(); self.edit97 = nil; end;
        if self.layout208 ~= nil then self.layout208:destroy(); self.layout208 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.layout95 ~= nil then self.layout95:destroy(); self.layout95 = nil; end;
        if self.layout99 ~= nil then self.layout99:destroy(); self.layout99 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.edit147 ~= nil then self.edit147:destroy(); self.edit147 = nil; end;
        if self.edit63 ~= nil then self.edit63:destroy(); self.edit63 = nil; end;
        if self.layout93 ~= nil then self.layout93:destroy(); self.layout93 = nil; end;
        if self.layout81 ~= nil then self.layout81:destroy(); self.layout81 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.layout122 ~= nil then self.layout122:destroy(); self.layout122 = nil; end;
        if self.rclListaDosItens ~= nil then self.rclListaDosItens:destroy(); self.rclListaDosItens = nil; end;
        if self.layout77 ~= nil then self.layout77:destroy(); self.layout77 = nil; end;
        if self.layout150 ~= nil then self.layout150:destroy(); self.layout150 = nil; end;
        if self.layout175 ~= nil then self.layout175:destroy(); self.layout175 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.edit88 ~= nil then self.edit88:destroy(); self.edit88 = nil; end;
        if self.edit89 ~= nil then self.edit89:destroy(); self.edit89 = nil; end;
        if self.layout66 ~= nil then self.layout66:destroy(); self.layout66 = nil; end;
        if self.layout231 ~= nil then self.layout231:destroy(); self.layout231 = nil; end;
        if self.edit148 ~= nil then self.edit148:destroy(); self.edit148 = nil; end;
        if self.button22 ~= nil then self.button22:destroy(); self.button22 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.edit180 ~= nil then self.edit180:destroy(); self.edit180 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.edit232 ~= nil then self.edit232:destroy(); self.edit232 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.edit107 ~= nil then self.edit107:destroy(); self.edit107 = nil; end;
        if self.edit217 ~= nil then self.edit217:destroy(); self.edit217 = nil; end;
        if self.edit234 ~= nil then self.edit234:destroy(); self.edit234 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.edit237 ~= nil then self.edit237:destroy(); self.edit237 = nil; end;
        if self.layout74 ~= nil then self.layout74:destroy(); self.layout74 = nil; end;
        if self.layout104 ~= nil then self.layout104:destroy(); self.layout104 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.layout124 ~= nil then self.layout124:destroy(); self.layout124 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.layout159 ~= nil then self.layout159:destroy(); self.layout159 = nil; end;
        if self.layout197 ~= nil then self.layout197:destroy(); self.layout197 = nil; end;
        if self.layout144 ~= nil then self.layout144:destroy(); self.layout144 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.edit197 ~= nil then self.edit197:destroy(); self.edit197 = nil; end;
        if self.edit141 ~= nil then self.edit141:destroy(); self.edit141 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.edit75 ~= nil then self.edit75:destroy(); self.edit75 = nil; end;
        if self.layout214 ~= nil then self.layout214:destroy(); self.layout214 = nil; end;
        if self.edit193 ~= nil then self.edit193:destroy(); self.edit193 = nil; end;
        if self.edit65 ~= nil then self.edit65:destroy(); self.edit65 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.edit130 ~= nil then self.edit130:destroy(); self.edit130 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.button23 ~= nil then self.button23:destroy(); self.button23 = nil; end;
        if self.layout184 ~= nil then self.layout184:destroy(); self.layout184 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.layout161 ~= nil then self.layout161:destroy(); self.layout161 = nil; end;
        if self.layout131 ~= nil then self.layout131:destroy(); self.layout131 = nil; end;
        if self.edit144 ~= nil then self.edit144:destroy(); self.edit144 = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.edit203 ~= nil then self.edit203:destroy(); self.edit203 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.edit151 ~= nil then self.edit151:destroy(); self.edit151 = nil; end;
        if self.edit132 ~= nil then self.edit132:destroy(); self.edit132 = nil; end;
        if self.layout182 ~= nil then self.layout182:destroy(); self.layout182 = nil; end;
        if self.edit188 ~= nil then self.edit188:destroy(); self.edit188 = nil; end;
        if self.layout155 ~= nil then self.layout155:destroy(); self.layout155 = nil; end;
        if self.edit219 ~= nil then self.edit219:destroy(); self.edit219 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.edit119 ~= nil then self.edit119:destroy(); self.edit119 = nil; end;
        if self.button17 ~= nil then self.button17:destroy(); self.button17 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.edit190 ~= nil then self.edit190:destroy(); self.edit190 = nil; end;
        if self.layout239 ~= nil then self.layout239:destroy(); self.layout239 = nil; end;
        if self.button25 ~= nil then self.button25:destroy(); self.button25 = nil; end;
        if self.edit168 ~= nil then self.edit168:destroy(); self.edit168 = nil; end;
        if self.scrollBox6 ~= nil then self.scrollBox6:destroy(); self.scrollBox6 = nil; end;
        if self.layout258 ~= nil then self.layout258:destroy(); self.layout258 = nil; end;
        if self.layout121 ~= nil then self.layout121:destroy(); self.layout121 = nil; end;
        if self.edit257 ~= nil then self.edit257:destroy(); self.edit257 = nil; end;
        if self.edit78 ~= nil then self.edit78:destroy(); self.edit78 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.layout84 ~= nil then self.layout84:destroy(); self.layout84 = nil; end;
        if self.layout87 ~= nil then self.layout87:destroy(); self.layout87 = nil; end;
        if self.layout96 ~= nil then self.layout96:destroy(); self.layout96 = nil; end;
        if self.edit202 ~= nil then self.edit202:destroy(); self.edit202 = nil; end;
        if self.layout157 ~= nil then self.layout157:destroy(); self.layout157 = nil; end;
        if self.edit91 ~= nil then self.edit91:destroy(); self.edit91 = nil; end;
        if self.edit70 ~= nil then self.edit70:destroy(); self.edit70 = nil; end;
        if self.edit248 ~= nil then self.edit248:destroy(); self.edit248 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.layout163 ~= nil then self.layout163:destroy(); self.layout163 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.button19 ~= nil then self.button19:destroy(); self.button19 = nil; end;
        if self.edit136 ~= nil then self.edit136:destroy(); self.edit136 = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
        if self.layout86 ~= nil then self.layout86:destroy(); self.layout86 = nil; end;
        if self.layout237 ~= nil then self.layout237:destroy(); self.layout237 = nil; end;
        if self.edit212 ~= nil then self.edit212:destroy(); self.edit212 = nil; end;
        if self.layout85 ~= nil then self.layout85:destroy(); self.layout85 = nil; end;
        if self.edit173 ~= nil then self.edit173:destroy(); self.edit173 = nil; end;
        if self.layout255 ~= nil then self.layout255:destroy(); self.layout255 = nil; end;
        if self.edit227 ~= nil then self.edit227:destroy(); self.edit227 = nil; end;
        if self.layout91 ~= nil then self.layout91:destroy(); self.layout91 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmFichaOdisseia2_0_Licantropo()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmFichaOdisseia2_0_Licantropo();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmFichaOdisseia2_0_Licantropo = {
    newEditor = newfrmFichaOdisseia2_0_Licantropo, 
    new = newfrmFichaOdisseia2_0_Licantropo, 
    name = "frmFichaOdisseia2_0_Licantropo", 
    dataType = "br.com.RRPG.AODDL_S3", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "A Odisseia do Dragão - Ficha de Licantropo", 
    description=""};

frmFichaOdisseia2_0_Licantropo = _frmFichaOdisseia2_0_Licantropo;
Firecast.registrarForm(_frmFichaOdisseia2_0_Licantropo);
Firecast.registrarDataType(_frmFichaOdisseia2_0_Licantropo);

return _frmFichaOdisseia2_0_Licantropo;
