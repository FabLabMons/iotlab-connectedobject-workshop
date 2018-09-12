<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Atelier &quot;cr&#xe9;e ton premier objet connect&#xe9;&quot;" FOLDED="false" ID="ID_191153586" CREATED="1536757694025" MODIFIED="1536758391083" ICON_SIZE="36.0 pt" STYLE="oval">
<font SIZE="22"/>
<hook NAME="MapStyle" zoom="0.752">
    <properties fit_to_viewport="false" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" show_icon_for_attributes="true" show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" ICON_SIZE="64.0 pt" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font NAME="Segoe Print" SIZE="22"/>
<edge COLOR="#ffffff"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" ICON_SIZE="32.0 px" COLOR="#000000" BACKGROUND_COLOR="#ffffcc" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="2.6 pt" SHAPE_VERTICAL_MARGIN="2.6 pt" BORDER_WIDTH_LIKE_EDGE="true">
<font SIZE="18" BOLD="false" ITALIC="true"/>
<edge STYLE="sharp_bezier" WIDTH="8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" ICON_SIZE="28.0 px" COLOR="#000000" BORDER_WIDTH_LIKE_EDGE="true">
<font SIZE="16"/>
<edge STYLE="bezier" WIDTH="4"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" ICON_SIZE="24.0 px" COLOR="#000000" BORDER_WIDTH_LIKE_EDGE="true">
<font SIZE="14"/>
<edge STYLE="bezier" WIDTH="3"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" ICON_SIZE="24.0 px" COLOR="#111111" BORDER_WIDTH_LIKE_EDGE="true">
<font SIZE="13"/>
<edge STYLE="bezier" WIDTH="2"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5" ICON_SIZE="24.0 px" BORDER_WIDTH_LIKE_EDGE="true">
<font SIZE="12"/>
<edge STYLE="bezier" WIDTH="1"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6" ICON_SIZE="24.0 px">
<edge STYLE="bezier"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7" ICON_SIZE="16.0 px">
<font SIZE="10"/>
<edge STYLE="bezier"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8" ICON_SIZE="16.0 px">
<edge STYLE="bezier"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9" ICON_SIZE="16.0 px">
<edge STYLE="bezier"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10" ICON_SIZE="16.0 px">
<edge STYLE="bezier"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11" ICON_SIZE="16.0 px">
<edge STYLE="bezier"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="15" RULE="ON_BRANCH_CREATION"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties" VALUE="ALL"/>
<edge COLOR="#ffffff"/>
<node TEXT="Etapes" POSITION="right" ID="ID_273436263" CREATED="1536757694025" MODIFIED="1536758408086" HGAP_QUANTITY="91.26829627750192 pt" VSHIFT_QUANTITY="-30.731708746733723 pt">
<edge COLOR="#007c7c"/>
<node TEXT="Installation" ID="ID_588194298" CREATED="1536757694025" MODIFIED="1536758455383" HGAP_QUANTITY="15.756097642670499 pt" VSHIFT_QUANTITY="-12.292683498693489 pt">
<icon BUILTIN="full-1"/>
<node TEXT="IDE Arduino" ID="ID_927230819" CREATED="1536758413084" MODIFIED="1536758787534"/>
<node TEXT="board ESP8266" ID="ID_136859049" CREATED="1536758415499" MODIFIED="1536758425826"/>
<node TEXT="configurer Arduino pour ESP8266" ID="ID_1618449780" CREATED="1536758426782" MODIFIED="1536758437094">
<node TEXT="preferences &gt; additional board manager urls" FOLDED="true" ID="ID_1120847451" CREATED="1536760646012" MODIFIED="1536760727693">
<node TEXT="http://arduino.esp8266.com/stable/package_esp8266com_index.json" ID="ID_1077773300" CREATED="1536760657971" MODIFIED="1536760659131"/>
</node>
<node TEXT="tools &gt; board manager &gt; board + install esp8266" ID="ID_966365759" CREATED="1536760674965" MODIFIED="1536760696444"/>
</node>
</node>
<node TEXT="IDE Arduino" ID="ID_1104103844" CREATED="1536757694025" MODIFIED="1536758466087">
<icon BUILTIN="full-2"/>
<node TEXT="cr&#xe9;er un nouveau sketch" ID="ID_92594939" CREATED="1536758467744" MODIFIED="1536758472779"/>
<node TEXT="&#xe9;crire hello world + led blink" ID="ID_1023507716" CREATED="1536758473060" MODIFIED="1536758482856"/>
<node TEXT="lire port s&#xe9;rie" ID="ID_458430116" CREATED="1536758483608" MODIFIED="1536758490095"/>
</node>
<node TEXT="Contr&#xf4;le servomoteur" ID="ID_371478642" CREATED="1536758491460" MODIFIED="1536758543428">
<icon BUILTIN="full-3"/>
<node TEXT="contr&#xf4;le d&apos;angle via PWM" ID="ID_1077747300" CREATED="1536758918082" MODIFIED="1536758926920"/>
<node TEXT="sweep servo" ID="ID_1682309774" CREATED="1536758511206" MODIFIED="1536758514550"/>
<node TEXT="commande servo depuis port s&#xe9;rie" ID="ID_569952990" CREATED="1536758514827" MODIFIED="1536758532114"/>
<node TEXT="packaging servo dans bo&#xee;tier" ID="ID_1934330335" CREATED="1536758836664" MODIFIED="1536758846664"/>
</node>
<node TEXT="Connexion WiFi" ID="ID_1993234843" CREATED="1536758532973" MODIFIED="1536758545983">
<icon BUILTIN="full-4"/>
<node TEXT="configurer &#xb5;contr&#xf4;leur via DHCP" ID="ID_430132464" CREATED="1536758547582" MODIFIED="1536758577890"/>
<node TEXT="afficher la config r&#xe9;seau sur port s&#xe9;rie" ID="ID_1896901140" CREATED="1536758578556" MODIFIED="1536758590127"/>
<node TEXT="envoyer un paquet vers endpoint HTTP node-red" ID="ID_566644418" CREATED="1536758594723" MODIFIED="1536758741536"/>
</node>
<node TEXT="Contr&#xf4;le servo via WiFi" ID="ID_462880449" CREATED="1536758624375" MODIFIED="1536758649636">
<icon BUILTIN="full-5"/>
<node TEXT="r&#xe9;cup&#xe9;rer la valeur d&apos;angle depuis endpoint HTTP node-red" ID="ID_1718421683" CREATED="1536758650197" MODIFIED="1536758759152"/>
</node>
</node>
<node TEXT="Mat&#xe9;riel" FOLDED="true" POSITION="right" ID="ID_495676614" CREATED="1536757694025" MODIFIED="1536758771298" HGAP_QUANTITY="101.80488213352491 pt" VSHIFT_QUANTITY="-42.14634342409195 pt">
<edge COLOR="#009900"/>
<node TEXT="ESP8266" ID="ID_744391648" CREATED="1536757694025" MODIFIED="1536758782393" HGAP_QUANTITY="15.756097642670499 pt" VSHIFT_QUANTITY="-14.926829962699236 pt"/>
<node TEXT="servomoteur SG90" ID="ID_903669612" CREATED="1536757694025" MODIFIED="1536758798094"/>
<node TEXT="bo&#xee;tier avec cr&#xe9;maill&#xe8;re" ID="ID_86050821" CREATED="1536758798787" MODIFIED="1536758814294">
<node TEXT="support bas" ID="ID_419450297" CREATED="1536758853357" MODIFIED="1536758858700"/>
<node TEXT="capot haut" ID="ID_1311139555" CREATED="1536758859374" MODIFIED="1536758861741"/>
<node TEXT="cr&#xe9;maill&#xe8;re" ID="ID_522353976" CREATED="1536758862399" MODIFIED="1536758865017"/>
<node TEXT="roue dent&#xe9;e" ID="ID_1765716396" CREATED="1536758865252" MODIFIED="1536758867791"/>
</node>
<node TEXT="3 jumpers MF" ID="ID_842640513" CREATED="1536758869100" MODIFIED="1536758895325"/>
<node TEXT="c&#xe2;ble &#xb5;USB" ID="ID_502967613" CREATED="1536758933816" MODIFIED="1536758950805"/>
<node TEXT="laptop" ID="ID_525100364" CREATED="1536758957872" MODIFIED="1536758959094"/>
</node>
<node TEXT="R&#xe9;f&#xe9;rences" FOLDED="true" POSITION="right" ID="ID_90823870" CREATED="1536757694025" MODIFIED="1536760940284" HGAP_QUANTITY="56.146343424091945 pt" VSHIFT_QUANTITY="-61.46341749346744 pt">
<edge COLOR="#ff0000"/>
<node TEXT="ESP8266 NodeMCU pinout" ID="ID_1201198400" CREATED="1536757694025" MODIFIED="1536762845786" HGAP_QUANTITY="15.756097642670499 pt" VSHIFT_QUANTITY="-15.804878784034486 pt">
<hook URI="Mindmap%20atelier_files/pinout.png" SIZE="0.7585335" NAME="ExternalObject"/>
</node>
<node TEXT="Servo" ID="ID_1615683347" CREATED="1536757694025" MODIFIED="1536762805074" HGAP_QUANTITY="17.512195285340997 pt" VSHIFT_QUANTITY="3.512195285340997 pt">
<node TEXT="PWM" ID="ID_1353921414" CREATED="1536762683127" MODIFIED="1536762690791">
<node TEXT="HIGH" ID="ID_1417594449" CREATED="1536762691120" MODIFIED="1536762698280">
<node TEXT="1ms = -90&#xb0;" ID="ID_904816751" CREATED="1536762699442" MODIFIED="1536762727729"/>
<node TEXT="1,5ms = 0&#xb0;" ID="ID_1240253350" CREATED="1536762710648" MODIFIED="1536762725472"/>
<node TEXT="2ms = +90&#xb0;" ID="ID_862076109" CREATED="1536762716334" MODIFIED="1536762722557"/>
</node>
<node TEXT="HIGH + LOW = 20ms (50Hz)" ID="ID_629015743" CREATED="1536762729798" MODIFIED="1536762765639"/>
</node>
</node>
</node>
<node TEXT="IDEA 6" FOLDED="true" POSITION="left" ID="ID_25434398" CREATED="1536757694025" MODIFIED="1536757694025" HGAP_QUANTITY="73.70731985079694 pt" VSHIFT_QUANTITY="-37.75609931741573 pt">
<edge COLOR="#cc00ff"/>
<node TEXT="IDEA 6.1" ID="ID_352937383" CREATED="1536757694025" MODIFIED="1536757694025" HGAP_QUANTITY="13.121951178664752 pt" VSHIFT_QUANTITY="-9.658537034687741 pt"/>
<node TEXT="IDEA 6.2" ID="ID_966834988" CREATED="1536757694025" MODIFIED="1536757694025" HGAP_QUANTITY="15.756097642670499 pt" VSHIFT_QUANTITY="-7.902439392017243 pt"/>
</node>
<node TEXT="Tricks" POSITION="left" ID="ID_1822402846" CREATED="1536757694025" MODIFIED="1536763459466" HGAP_QUANTITY="84.24390570681993 pt" VSHIFT_QUANTITY="-36.00000167474521 pt">
<edge COLOR="#ff9900"/>
<node TEXT="R&#xe9;cup&#xe9;rer un param&#xe8;tre de path HTTP" ID="ID_1274507163" CREATED="1536757694025" MODIFIED="1536763507798" LINK="https://cookbook.nodered.org/http/handle-url-parameters" HGAP_QUANTITY="14.0 pt" VSHIFT_QUANTITY="-21.07317171204598 pt" TEXT_SHORTENED="true"><richcontent TYPE="DETAILS">

<html>
  

  <head>

  </head>
  <body>
  </body>
</html>

</richcontent>
</node>
<node TEXT="R&#xe9;pondre avec les donn&#xe9;es d&apos;un autre flux" ID="ID_1203076641" CREATED="1536757694025" MODIFIED="1536763592114" LINK="https://cookbook.nodered.org/http/include-data-from-another-flow"/>
<node TEXT="R&#xe9;cup&#xe9;rer des donn&#xe9;es textes d&apos;une requ&#xea;te POST" ID="ID_1178093153" CREATED="1536763600514" MODIFIED="1536763611172" LINK="https://cookbook.nodered.org/http/post-raw-data-to-a-flow"/>
</node>
<node TEXT="Pr&#xe9;sentations" POSITION="left" ID="ID_575079876" CREATED="1536757694025" MODIFIED="1536763080723" HGAP_QUANTITY="67.56097810145019 pt" VSHIFT_QUANTITY="-42.14634342409195 pt">
<edge COLOR="#0000ff"/>
<node TEXT="WiFi" ID="ID_1522387997" CREATED="1536757694025" MODIFIED="1536763087547"/>
<node TEXT="IP" ID="ID_1653634982" CREATED="1536763087964" MODIFIED="1536763089579"/>
<node TEXT="HTTP" ID="ID_593208659" CREATED="1536763243037" MODIFIED="1536763244745"/>
<node TEXT="contr&#xf4;le servomoteur" ID="ID_1621886335" CREATED="1536763091648" MODIFIED="1536763097061">
<node TEXT="duty cycle" ID="ID_1583006238" CREATED="1536763097743" MODIFIED="1536763101161"/>
</node>
<node TEXT="Fab-IoT-Lab" ID="ID_215164093" CREATED="1536763195865" MODIFIED="1536763200849">
<node TEXT="FabLab Mons" ID="ID_671385077" CREATED="1536763225909" MODIFIED="1536763228251"/>
</node>
<node TEXT="Fran&#xe7;ois Roland" ID="ID_1535756729" CREATED="1536763201335" MODIFIED="1536763212525"/>
</node>
</node>
</map>
