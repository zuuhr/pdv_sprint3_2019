˛
–D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Attributes\PostProcessingModelEditorAttribute.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
public 

class .
"PostProcessingModelEditorAttribute 3
:4 5
	Attribute6 ?
{ 
public 
readonly 
Type 
type !
;! "
public 
readonly 
bool 
alwaysEnabled *
;* +
public

 .
"PostProcessingModelEditorAttribute

 1
(

1 2
Type

2 6
type

7 ;
,

; <
bool

= A
alwaysEnabled

B O
=

P Q
false

R W
)

W X
{ 	
this 
. 
type 
= 
type 
; 
this 
. 
alwaysEnabled 
=  
alwaysEnabled! .
;. /
} 	
} 
} °%
≈D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\AmbientOcclusionModelEditor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
[ %
PostProcessingModelEditor 
( 
typeof %
(% &!
AmbientOcclusionModel& ;
); <
)< =
]= >
public 

class '
AmbientOcclusionModelEditor ,
:- .%
PostProcessingModelEditor/ H
{		 
SerializedProperty

 
m_Intensity

 &
;

& '
SerializedProperty 
m_Radius #
;# $
SerializedProperty 
m_SampleCount (
;( )
SerializedProperty 
m_Downsampling )
;) *
SerializedProperty '
m_ForceForwardCompatibility 6
;6 7
SerializedProperty 
m_AmbientOnly (
;( )
SerializedProperty 
m_HighPrecision *
;* +
public 
override 
void 
OnEnable %
(% &
)& '
{ 	
m_Intensity 
= 
FindSetting %
(% &
(& '
Settings' /
x0 1
)1 2
=>3 5
x6 7
.7 8
	intensity8 A
)A B
;B C
m_Radius 
= 
FindSetting "
(" #
(# $
Settings$ ,
x- .
). /
=>0 2
x3 4
.4 5
radius5 ;
); <
;< =
m_SampleCount 
= 
FindSetting '
(' (
(( )
Settings) 1
x2 3
)3 4
=>5 7
x8 9
.9 :
sampleCount: E
)E F
;F G
m_Downsampling 
= 
FindSetting (
(( )
() *
Settings* 2
x3 4
)4 5
=>6 8
x9 :
.: ;
downsampling; G
)G H
;H I'
m_ForceForwardCompatibility '
=( )
FindSetting* 5
(5 6
(6 7
Settings7 ?
x@ A
)A B
=>C E
xF G
.G H%
forceForwardCompatibilityH a
)a b
;b c
m_AmbientOnly 
= 
FindSetting '
(' (
(( )
Settings) 1
x2 3
)3 4
=>5 7
x8 9
.9 :
ambientOnly: E
)E F
;F G
m_HighPrecision 
= 
FindSetting )
() *
(* +
Settings+ 3
x4 5
)5 6
=>7 9
x: ;
.; <
highPrecision< I
)I J
;J K
} 	
public 
override 
void 
OnInspectorGUI +
(+ ,
), -
{ 	
EditorGUILayout 
. 
PropertyField )
() *
m_Intensity* 5
)5 6
;6 7
EditorGUILayout   
.   
PropertyField   )
(  ) *
m_Radius  * 2
)  2 3
;  3 4
EditorGUILayout!! 
.!! 
PropertyField!! )
(!!) *
m_SampleCount!!* 7
)!!7 8
;!!8 9
EditorGUILayout"" 
."" 
PropertyField"" )
("") *
m_Downsampling""* 8
)""8 9
;""9 :
EditorGUILayout## 
.## 
PropertyField## )
(##) *'
m_ForceForwardCompatibility##* E
)##E F
;##F G
EditorGUILayout$$ 
.$$ 
PropertyField$$ )
($$) *
m_HighPrecision$$* 9
,$$9 :
EditorGUIHelper$$; J
.$$J K

GetContent$$K U
($$U V
$str$$V p
)$$p q
)$$q r
;$$r s
using&& 
(&& 
new&& 
	EditorGUI&&  
.&&  !
DisabledGroupScope&&! 3
(&&3 4'
m_ForceForwardCompatibility&&4 O
.&&O P
	boolValue&&P Y
)&&Y Z
)&&Z [
EditorGUILayout'' 
.''  
PropertyField''  -
(''- .
m_AmbientOnly''. ;
,''; <
EditorGUIHelper''= L
.''L M

GetContent''M W
(''W X
$str''X w
)''w x
)''x y
;''y z
}(( 	
})) 
}** ¯3
¡D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\AntialiasingModelEditor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
[		 %
PostProcessingModelEditor		 
(		 
typeof		 %
(		% &
AntialiasingModel		& 7
)		7 8
)		8 9
]		9 :
public

 

class

 #
AntialiasingModelEditor

 (
:

) *%
PostProcessingModelEditor

+ D
{ 
SerializedProperty 
m_Method #
;# $
SerializedProperty 
m_FxaaPreset '
;' (
SerializedProperty 
m_TaaJitterSpread ,
;, -
SerializedProperty 
m_TaaSharpen '
;' (
SerializedProperty #
m_TaaStationaryBlending 2
;2 3
SerializedProperty 
m_TaaMotionBlending .
;. /
static 
string 
[ 
] 
s_MethodNames %
=& '
{ 	
$str ,
,, -
$str $
} 	
;	 

public 
override 
void 
OnEnable %
(% &
)& '
{ 	
m_Method 
= 
FindSetting "
(" #
(# $
Settings$ ,
x- .
). /
=>0 2
x3 4
.4 5
method5 ;
); <
;< =
m_FxaaPreset 
= 
FindSetting &
(& '
(' (
Settings( 0
x1 2
)2 3
=>4 6
x7 8
.8 9
fxaaSettings9 E
.E F
presetF L
)L M
;M N
m_TaaJitterSpread!! 
=!! 
FindSetting!!  +
(!!+ ,
(!!, -
Settings!!- 5
x!!6 7
)!!7 8
=>!!9 ;
x!!< =
.!!= >
taaSettings!!> I
.!!I J
jitterSpread!!J V
)!!V W
;!!W X
m_TaaSharpen"" 
="" 
FindSetting"" &
(""& '
(""' (
Settings""( 0
x""1 2
)""2 3
=>""4 6
x""7 8
.""8 9
taaSettings""9 D
.""D E
sharpen""E L
)""L M
;""M N#
m_TaaStationaryBlending## #
=##$ %
FindSetting##& 1
(##1 2
(##2 3
Settings##3 ;
x##< =
)##= >
=>##? A
x##B C
.##C D
taaSettings##D O
.##O P
stationaryBlending##P b
)##b c
;##c d
m_TaaMotionBlending$$ 
=$$  !
FindSetting$$" -
($$- .
($$. /
Settings$$/ 7
x$$8 9
)$$9 :
=>$$; =
x$$> ?
.$$? @
taaSettings$$@ K
.$$K L
motionBlending$$L Z
)$$Z [
;$$[ \
}%% 	
public'' 
override'' 
void'' 
OnInspectorGUI'' +
(''+ ,
)'', -
{(( 	
m_Method)) 
.)) 
intValue)) 
=)) 
EditorGUILayout))  /
.))/ 0
Popup))0 5
())5 6
$str))6 >
,))> ?
m_Method))@ H
.))H I
intValue))I Q
,))Q R
s_MethodNames))S `
)))` a
;))a b
if++ 
(++ 
m_Method++ 
.++ 
intValue++ !
==++" $
(++% &
int++& )
)++) *
Method++* 0
.++0 1
Fxaa++1 5
)++5 6
{,, 
EditorGUILayout-- 
.--  
PropertyField--  -
(--- .
m_FxaaPreset--. :
)--: ;
;--; <
}.. 
else// 
if// 
(// 
m_Method// 
.// 
intValue// &
==//' )
(//* +
int//+ .
)//. /
Method/// 5
.//5 6
Taa//6 9
)//9 :
{00 
if11 
(11 
QualitySettings11 #
.11# $
antiAliasing11$ 0
>111 2
$num113 4
)114 5
EditorGUILayout22 #
.22# $
HelpBox22$ +
(22+ ,
$str22, q
,22q r
MessageType22s ~
.22~ 
Warning	22 Ü
)
22Ü á
;
22á à
EditorGUILayout44 
.44  

LabelField44  *
(44* +
$str44+ 3
,443 4
EditorStyles445 A
.44A B
	boldLabel44B K
)44K L
;44L M
	EditorGUI55 
.55 
indentLevel55 %
++55% '
;55' (
EditorGUILayout66 
.66  
PropertyField66  -
(66- .
m_TaaJitterSpread66. ?
,66? @
EditorGUIHelper66A P
.66P Q

GetContent66Q [
(66[ \
$str66\ d
)66d e
)66e f
;66f g
	EditorGUI77 
.77 
indentLevel77 %
--77% '
;77' (
EditorGUILayout99 
.99  
Space99  %
(99% &
)99& '
;99' (
EditorGUILayout;; 
.;;  

LabelField;;  *
(;;* +
$str;;+ 5
,;;5 6
EditorStyles;;7 C
.;;C D
	boldLabel;;D M
);;M N
;;;N O
	EditorGUI<< 
.<< 
indentLevel<< %
++<<% '
;<<' (
EditorGUILayout== 
.==  
PropertyField==  -
(==- .#
m_TaaStationaryBlending==. E
,==E F
EditorGUIHelper==G V
.==V W

GetContent==W a
(==a b
$str==b n
)==n o
)==o p
;==p q
EditorGUILayout>> 
.>>  
PropertyField>>  -
(>>- .
m_TaaMotionBlending>>. A
,>>A B
EditorGUIHelper>>C R
.>>R S

GetContent>>S ]
(>>] ^
$str>>^ f
)>>f g
)>>g h
;>>h i
	EditorGUI?? 
.?? 
indentLevel?? %
--??% '
;??' (
EditorGUILayoutAA 
.AA  
SpaceAA  %
(AA% &
)AA& '
;AA' (
EditorGUILayoutCC 
.CC  
PropertyFieldCC  -
(CC- .
m_TaaSharpenCC. :
)CC: ;
;CC; <
}DD 
}EE 	
}FF 
}GG ûô
∫D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\BloomModelEditor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
[ %
PostProcessingModelEditor 
( 
typeof %
(% &

BloomModel& 0
)0 1
)1 2
]2 3
public		 

class		 
BloomModelEditor		 !
:		" #%
PostProcessingModelEditor		$ =
{

 
struct 
BloomSettings 
{ 	
public 
SerializedProperty %
	intensity& /
;/ 0
public 
SerializedProperty %
	threshold& /
;/ 0
public 
SerializedProperty %
softKnee& .
;. /
public 
SerializedProperty %
radius& ,
;, -
public 
SerializedProperty %
antiFlicker& 1
;1 2
} 	
struct 
LensDirtSettings 
{ 	
public 
SerializedProperty %
texture& -
;- .
public 
SerializedProperty %
	intensity& /
;/ 0
} 	
BloomSettings 
m_Bloom 
; 
LensDirtSettings 

m_LensDirt #
;# $
public 
override 
void 
OnEnable %
(% &
)& '
{ 	
m_Bloom 
= 
new 
BloomSettings '
{   
	intensity!! 
=!! 
FindSetting!! '
(!!' (
(!!( )
Settings!!) 1
x!!2 3
)!!3 4
=>!!5 7
x!!8 9
.!!9 :
bloom!!: ?
.!!? @
	intensity!!@ I
)!!I J
,!!J K
	threshold"" 
="" 
FindSetting"" '
(""' (
(""( )
Settings"") 1
x""2 3
)""3 4
=>""5 7
x""8 9
.""9 :
bloom"": ?
.""? @
	threshold""@ I
)""I J
,""J K
softKnee## 
=## 
FindSetting## &
(##& '
(##' (
Settings##( 0
x##1 2
)##2 3
=>##4 6
x##7 8
.##8 9
bloom##9 >
.##> ?
softKnee##? G
)##G H
,##H I
radius$$ 
=$$ 
FindSetting$$ $
($$$ %
($$% &
Settings$$& .
x$$/ 0
)$$0 1
=>$$2 4
x$$5 6
.$$6 7
bloom$$7 <
.$$< =
radius$$= C
)$$C D
,$$D E
antiFlicker%% 
=%% 
FindSetting%% )
(%%) *
(%%* +
Settings%%+ 3
x%%4 5
)%%5 6
=>%%7 9
x%%: ;
.%%; <
bloom%%< A
.%%A B
antiFlicker%%B M
)%%M N
}&& 
;&& 

m_LensDirt(( 
=(( 
new(( 
LensDirtSettings(( -
{)) 
texture** 
=** 
FindSetting** %
(**% &
(**& '
Settings**' /
x**0 1
)**1 2
=>**3 5
x**6 7
.**7 8
lensDirt**8 @
.**@ A
texture**A H
)**H I
,**I J
	intensity++ 
=++ 
FindSetting++ '
(++' (
(++( )
Settings++) 1
x++2 3
)++3 4
=>++5 7
x++8 9
.++9 :
lensDirt++: B
.++B C
	intensity++C L
)++L M
},, 
;,, 
}-- 	
public// 
override// 
void// 
OnInspectorGUI// +
(//+ ,
)//, -
{00 	
EditorGUILayout11 
.11 
Space11 !
(11! "
)11" #
;11# $
PrepareGraph22 
(22 
)22 
;22 
	DrawGraph33 
(33 
)33 
;33 
EditorGUILayout44 
.44 
Space44 !
(44! "
)44" #
;44# $
EditorGUILayout66 
.66 
PropertyField66 )
(66) *
m_Bloom66* 1
.661 2
	intensity662 ;
)66; <
;66< =
EditorGUILayout77 
.77 
PropertyField77 )
(77) *
m_Bloom77* 1
.771 2
	threshold772 ;
,77; <
EditorGUIHelper77= L
.77L M

GetContent77M W
(77W X
$str77X k
)77k l
)77l m
;77m n
EditorGUILayout88 
.88 
PropertyField88 )
(88) *
m_Bloom88* 1
.881 2
softKnee882 :
)88: ;
;88; <
EditorGUILayout99 
.99 
PropertyField99 )
(99) *
m_Bloom99* 1
.991 2
radius992 8
)998 9
;999 :
EditorGUILayout:: 
.:: 
PropertyField:: )
(::) *
m_Bloom::* 1
.::1 2
antiFlicker::2 =
)::= >
;::> ?
EditorGUILayout<< 
.<< 
Space<< !
(<<! "
)<<" #
;<<# $
EditorGUILayout== 
.== 

LabelField== &
(==& '
$str==' -
,==- .
EditorStyles==/ ;
.==; <
	boldLabel==< E
)==E F
;==F G
	EditorGUI>> 
.>> 
indentLevel>> !
++>>! #
;>># $
EditorGUILayout?? 
.?? 
PropertyField?? )
(??) *

m_LensDirt??* 4
.??4 5
texture??5 <
)??< =
;??= >
EditorGUILayout@@ 
.@@ 
PropertyField@@ )
(@@) *

m_LensDirt@@* 4
.@@4 5
	intensity@@5 >
)@@> ?
;@@? @
	EditorGUIAA 
.AA 
indentLevelAA !
--AA! #
;AA# $
}BB 	
floatFF 
m_GraphThresholdFF 
;FF 
floatGG 
m_GraphKneeGG 
;GG 
floatHH 
m_GraphIntensityHH 
;HH 
constKK 
intKK 
k_CurveResolutionKK #
=KK$ %
$numKK& (
;KK( )
Vector3NN 
[NN 
]NN 
m_RectVerticesNN  
=NN! "
newNN# &
Vector3NN' .
[NN. /
$numNN/ 0
]NN0 1
;NN1 2
Vector3OO 
[OO 
]OO 
m_LineVerticesOO  
=OO! "
newOO# &
Vector3OO' .
[OO. /
$numOO/ 0
]OO0 1
;OO1 2
Vector3PP 
[PP 
]PP 
m_CurveVerticesPP !
=PP" #
newPP$ '
Vector3PP( /
[PP/ 0
k_CurveResolutionPP0 A
]PPA B
;PPB C
RectRR 
m_RectGraphRR 
;RR 
floatSS 
m_RangeXSS 
;SS 
floatTT 
m_RangeYTT 
;TT 
floatVV 
ResponseFunctionVV 
(VV 
floatVV $
xVV% &
)VV& '
{WW 	
varXX 
rqXX 
=XX 
MathfXX 
.XX 
ClampXX  
(XX  !
xXX! "
-XX# $
m_GraphThresholdXX% 5
+XX6 7
m_GraphKneeXX8 C
,XXC D
$numXXE F
,XXF G
m_GraphKneeXXH S
*XXT U
$numXXV W
)XXW X
;XXX Y
rqYY 
=YY 
rqYY 
*YY 
rqYY 
*YY 
$numYY  
/YY! "
m_GraphKneeYY# .
;YY. /
returnZZ 
MathfZZ 
.ZZ 
MaxZZ 
(ZZ 
rqZZ 
,ZZ  
xZZ! "
-ZZ# $
m_GraphThresholdZZ% 5
)ZZ5 6
*ZZ7 8
m_GraphIntensityZZ9 I
;ZZI J
}[[ 	
Vector3^^ 
PointInRect^^ 
(^^ 
float^^ !
x^^" #
,^^# $
float^^% *
y^^+ ,
)^^, -
{__ 	
x`` 
=`` 
Mathf`` 
.`` 
Lerp`` 
(`` 
m_RectGraph`` &
.``& '
x``' (
,``( )
m_RectGraph``* 5
.``5 6
xMax``6 :
,``: ;
x``< =
/``> ?
m_RangeX``@ H
)``H I
;``I J
yaa 
=aa 
Mathfaa 
.aa 
Lerpaa 
(aa 
m_RectGraphaa &
.aa& '
yMaxaa' +
,aa+ ,
m_RectGraphaa- 8
.aa8 9
yaa9 :
,aa: ;
yaa< =
/aa> ?
m_RangeYaa@ H
)aaH I
;aaI J
returnbb 
newbb 
Vector3bb 
(bb 
xbb  
,bb  !
ybb" #
,bb# $
$numbb% &
)bb& '
;bb' (
}cc 	
voidff 
DrawLineff 
(ff 
floatff 
x1ff 
,ff 
floatff  %
y1ff& (
,ff( )
floatff* /
x2ff0 2
,ff2 3
floatff4 9
y2ff: <
,ff< =
floatff> C
	grayscaleffD M
)ffM N
{gg 	
m_LineVerticeshh 
[hh 
$numhh 
]hh 
=hh 
PointInRecthh  +
(hh+ ,
x1hh, .
,hh. /
y1hh0 2
)hh2 3
;hh3 4
m_LineVerticesii 
[ii 
$numii 
]ii 
=ii 
PointInRectii  +
(ii+ ,
x2ii, .
,ii. /
y2ii0 2
)ii2 3
;ii3 4
Handlesjj 
.jj 
colorjj 
=jj 
Colorjj !
.jj! "
whitejj" '
*jj( )
	grayscalejj* 3
;jj3 4
Handleskk 
.kk 
DrawAAPolyLinekk "
(kk" #
$numkk# '
,kk' (
m_LineVerticeskk) 7
)kk7 8
;kk8 9
}ll 	
voidoo 
DrawRectoo 
(oo 
floatoo 
x1oo 
,oo 
floatoo  %
y1oo& (
,oo( )
floatoo* /
x2oo0 2
,oo2 3
floatoo4 9
y2oo: <
,oo< =
floatoo> C
fillooD H
,ooH I
floatooJ O
lineooP T
)ooT U
{pp 	
m_RectVerticesqq 
[qq 
$numqq 
]qq 
=qq 
PointInRectqq  +
(qq+ ,
x1qq, .
,qq. /
y1qq0 2
)qq2 3
;qq3 4
m_RectVerticesrr 
[rr 
$numrr 
]rr 
=rr 
PointInRectrr  +
(rr+ ,
x2rr, .
,rr. /
y1rr0 2
)rr2 3
;rr3 4
m_RectVerticesss 
[ss 
$numss 
]ss 
=ss 
PointInRectss  +
(ss+ ,
x2ss, .
,ss. /
y2ss0 2
)ss2 3
;ss3 4
m_RectVerticestt 
[tt 
$numtt 
]tt 
=tt 
PointInRecttt  +
(tt+ ,
x1tt, .
,tt. /
y2tt0 2
)tt2 3
;tt3 4
Handlesvv 
.vv )
DrawSolidRectangleWithOutlinevv 1
(vv1 2
m_RectVerticesww 
,ww 
fillxx 
<xx 
$numxx 
?xx 
Colorxx  
.xx  !
clearxx! &
:xx' (
Colorxx) .
.xx. /
whitexx/ 4
*xx5 6
fillxx7 ;
,xx; <
lineyy 
<yy 
$numyy 
?yy 
Coloryy  
.yy  !
clearyy! &
:yy' (
Coloryy) .
.yy. /
whiteyy/ 4
*yy5 6
lineyy7 ;
)zz 
;zz 
}{{ 	
public~~ 
void~~ 
PrepareGraph~~  
(~~  !
)~~! "
{ 	
var
ÄÄ 
bloom
ÄÄ 
=
ÄÄ 
(
ÄÄ 

BloomModel
ÄÄ #
)
ÄÄ# $
target
ÄÄ$ *
;
ÄÄ* +
m_RangeX
ÅÅ 
=
ÅÅ 
$num
ÅÅ 
;
ÅÅ 
m_RangeY
ÇÇ 
=
ÇÇ 
$num
ÇÇ 
;
ÇÇ 
m_GraphThreshold
ÑÑ 
=
ÑÑ 
bloom
ÑÑ $
.
ÑÑ$ %
settings
ÑÑ% -
.
ÑÑ- .
bloom
ÑÑ. 3
.
ÑÑ3 4
thresholdLinear
ÑÑ4 C
;
ÑÑC D
m_GraphKnee
ÖÖ 
=
ÖÖ 
bloom
ÖÖ 
.
ÖÖ  
settings
ÖÖ  (
.
ÖÖ( )
bloom
ÖÖ) .
.
ÖÖ. /
softKnee
ÖÖ/ 7
*
ÖÖ8 9
m_GraphThreshold
ÖÖ: J
+
ÖÖK L
$num
ÖÖM R
;
ÖÖR S
m_GraphIntensity
àà 
=
àà 
Mathf
àà $
.
àà$ %
Min
àà% (
(
àà( )
bloom
àà) .
.
àà. /
settings
àà/ 7
.
àà7 8
bloom
àà8 =
.
àà= >
	intensity
àà> G
,
ààG H
$num
ààI L
)
ààL M
;
ààM N
}
ââ 	
public
åå 
void
åå 
	DrawGraph
åå 
(
åå 
)
åå 
{
çç 	
using
éé 
(
éé 
new
éé 
	GUILayout
éé  
.
éé  !
HorizontalScope
éé! 0
(
éé0 1
)
éé1 2
)
éé2 3
{
èè 
	GUILayout
êê 
.
êê 
Space
êê 
(
êê  
	EditorGUI
êê  )
.
êê) *
indentLevel
êê* 5
*
êê6 7
$num
êê8 ;
)
êê; <
;
êê< =
m_RectGraph
ëë 
=
ëë 
GUILayoutUtility
ëë .
.
ëë. /
GetRect
ëë/ 6
(
ëë6 7
$num
ëë7 :
,
ëë: ;
$num
ëë< >
)
ëë> ?
;
ëë? @
}
íí 
DrawRect
ïï 
(
ïï 
$num
ïï 
,
ïï 
$num
ïï 
,
ïï 
m_RangeX
ïï #
,
ïï# $
m_RangeY
ïï% -
,
ïï- .
$num
ïï/ 3
,
ïï3 4
$num
ïï5 9
)
ïï9 :
;
ïï: ;
DrawRect
òò 
(
òò 
m_GraphThreshold
òò %
-
òò& '
m_GraphKnee
òò( 3
,
òò3 4
$num
òò5 6
,
òò6 7
m_GraphThreshold
òò8 H
+
òòI J
m_GraphKnee
òòK V
,
òòV W
m_RangeY
òòX `
,
òò` a
$num
òòb g
,
òòg h
-
òòi j
$num
òòj k
)
òòk l
;
òòl m
for
õõ 
(
õõ 
var
õõ 
i
õõ 
=
õõ 
$num
õõ 
;
õõ 
i
õõ 
<
õõ 
m_RangeY
õõ  (
;
õõ( )
i
õõ* +
++
õõ+ -
)
õõ- .
DrawLine
úú 
(
úú 
$num
úú 
,
úú 
i
úú 
,
úú 
m_RangeX
úú '
,
úú' (
i
úú) *
,
úú* +
$num
úú, 0
)
úú0 1
;
úú1 2
for
üü 
(
üü 
var
üü 
i
üü 
=
üü 
$num
üü 
;
üü 
i
üü 
<
üü 
m_RangeX
üü  (
;
üü( )
i
üü* +
++
üü+ -
)
üü- .
DrawLine
†† 
(
†† 
i
†† 
,
†† 
$num
†† 
,
†† 
i
††  
,
††  !
m_RangeY
††" *
,
††* +
$num
††, 0
)
††0 1
;
††1 2
Handles
££ 
.
££ 
Label
££ 
(
££ 
PointInRect
§§ 
(
§§ 
$num
§§ 
,
§§ 
m_RangeY
§§ '
)
§§' (
+
§§) *
Vector3
§§+ 2
.
§§2 3
right
§§3 8
,
§§8 9
$str
•• .
,
••. /
EditorStyles
••0 <
.
••< =
	miniLabel
••= F
)
¶¶ 
;
¶¶ 
DrawLine
©© 
(
©© 
m_GraphThreshold
©© %
,
©©% &
$num
©©' (
,
©©( )
m_GraphThreshold
©©* :
,
©©: ;
m_RangeY
©©< D
,
©©D E
$num
©©F J
)
©©J K
;
©©K L
var
¨¨ 
vcount
¨¨ 
=
¨¨ 
$num
¨¨ 
;
¨¨ 
while
≠≠ 
(
≠≠ 
vcount
≠≠ 
<
≠≠ 
k_CurveResolution
≠≠ -
)
≠≠- .
{
ÆÆ 
var
ØØ 
x
ØØ 
=
ØØ 
m_RangeX
ØØ  
*
ØØ! "
vcount
ØØ# )
/
ØØ* +
(
ØØ, -
k_CurveResolution
ØØ- >
-
ØØ? @
$num
ØØA B
)
ØØB C
;
ØØC D
var
∞∞ 
y
∞∞ 
=
∞∞ 
ResponseFunction
∞∞ (
(
∞∞( )
x
∞∞) *
)
∞∞* +
;
∞∞+ ,
if
±± 
(
±± 
y
±± 
<
±± 
m_RangeY
±±  
)
±±  !
{
≤≤ 
m_CurveVertices
≥≥ #
[
≥≥# $
vcount
≥≥$ *
++
≥≥* ,
]
≥≥, -
=
≥≥. /
PointInRect
≥≥0 ;
(
≥≥; <
x
≥≥< =
,
≥≥= >
y
≥≥? @
)
≥≥@ A
;
≥≥A B
}
¥¥ 
else
µµ 
{
∂∂ 
if
∑∑ 
(
∑∑ 
vcount
∑∑ 
>
∑∑  
$num
∑∑! "
)
∑∑" #
{
∏∏ 
var
∫∫ 
v1
∫∫ 
=
∫∫  
m_CurveVertices
∫∫! 0
[
∫∫0 1
vcount
∫∫1 7
-
∫∫8 9
$num
∫∫: ;
]
∫∫; <
;
∫∫< =
var
ªª 
v2
ªª 
=
ªª  
m_CurveVertices
ªª! 0
[
ªª0 1
vcount
ªª1 7
-
ªª8 9
$num
ªª: ;
]
ªª; <
;
ªª< =
var
ºº 
clip
ºº  
=
ºº! "
(
ºº# $
m_RectGraph
ºº$ /
.
ºº/ 0
y
ºº0 1
-
ºº2 3
v1
ºº4 6
.
ºº6 7
y
ºº7 8
)
ºº8 9
/
ºº: ;
(
ºº< =
v2
ºº= ?
.
ºº? @
y
ºº@ A
-
ººB C
v1
ººD F
.
ººF G
y
ººG H
)
ººH I
;
ººI J
m_CurveVertices
ΩΩ '
[
ΩΩ' (
vcount
ΩΩ( .
-
ΩΩ/ 0
$num
ΩΩ1 2
]
ΩΩ2 3
=
ΩΩ4 5
v1
ΩΩ6 8
+
ΩΩ9 :
(
ΩΩ; <
v2
ΩΩ< >
-
ΩΩ? @
v1
ΩΩA C
)
ΩΩC D
*
ΩΩE F
clip
ΩΩG K
;
ΩΩK L
}
ææ 
break
øø 
;
øø 
}
¿¿ 
}
¡¡ 
if
√√ 
(
√√ 
vcount
√√ 
>
√√ 
$num
√√ 
)
√√ 
{
ƒƒ 
Handles
≈≈ 
.
≈≈ 
color
≈≈ 
=
≈≈ 
Color
≈≈  %
.
≈≈% &
white
≈≈& +
*
≈≈, -
$num
≈≈. 2
;
≈≈2 3
Handles
∆∆ 
.
∆∆ 
DrawAAPolyLine
∆∆ &
(
∆∆& '
$num
∆∆' +
,
∆∆+ ,
vcount
∆∆- 3
,
∆∆3 4
m_CurveVertices
∆∆5 D
)
∆∆D E
;
∆∆E F
}
«« 
}
»» 	
}
ÀÀ 
}ÃÃ ≈_
¡D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\BuiltinDebugViewsEditor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
[ %
PostProcessingModelEditor 
( 
typeof %
(% &"
BuiltinDebugViewsModel& <
)< =
,= >
alwaysEnabled? L
:L M
trueN R
)R S
]S T
public		 

class		 #
BuiltinDebugViewsEditor		 (
:		) *%
PostProcessingModelEditor		+ D
{

 
struct 
DepthSettings 
{ 	
public 
SerializedProperty %
scale& +
;+ ,
} 	
struct !
MotionVectorsSettings $
{ 	
public 
SerializedProperty %
sourceOpacity& 3
;3 4
public 
SerializedProperty %
motionImageOpacity& 8
;8 9
public 
SerializedProperty % 
motionImageAmplitude& :
;: ;
public 
SerializedProperty % 
motionVectorsOpacity& :
;: ;
public 
SerializedProperty %#
motionVectorsResolution& =
;= >
public 
SerializedProperty %"
motionVectorsAmplitude& <
;< =
} 	
SerializedProperty 
m_Mode !
;! "
DepthSettings 
m_Depth 
; !
MotionVectorsSettings 
m_MotionVectors -
;- .
public 
override 
void 
OnEnable %
(% &
)& '
{ 	
m_Mode   
=   
FindSetting    
(    !
(  ! "
Settings  " *
x  + ,
)  , -
=>  . 0
x  1 2
.  2 3
mode  3 7
)  7 8
;  8 9
m_Depth"" 
="" 
new"" 
DepthSettings"" '
{## 
scale$$ 
=$$ 
FindSetting$$ #
($$# $
($$$ %
Settings$$% -
x$$. /
)$$/ 0
=>$$1 3
x$$4 5
.$$5 6
depth$$6 ;
.$$; <
scale$$< A
)$$A B
}%% 
;%% 
m_MotionVectors'' 
='' 
new'' !!
MotionVectorsSettings''" 7
{(( 
sourceOpacity)) 
=)) 
FindSetting))  +
())+ ,
()), -
Settings))- 5
x))6 7
)))7 8
=>))9 ;
x))< =
.))= >
motionVectors))> K
.))K L
sourceOpacity))L Y
)))Y Z
,))Z [
motionImageOpacity** "
=**# $
FindSetting**% 0
(**0 1
(**1 2
Settings**2 :
x**; <
)**< =
=>**> @
x**A B
.**B C
motionVectors**C P
.**P Q
motionImageOpacity**Q c
)**c d
,**d e 
motionImageAmplitude++ $
=++% &
FindSetting++' 2
(++2 3
(++3 4
Settings++4 <
x++= >
)++> ?
=>++@ B
x++C D
.++D E
motionVectors++E R
.++R S 
motionImageAmplitude++S g
)++g h
,++h i 
motionVectorsOpacity,, $
=,,% &
FindSetting,,' 2
(,,2 3
(,,3 4
Settings,,4 <
x,,= >
),,> ?
=>,,@ B
x,,C D
.,,D E
motionVectors,,E R
.,,R S 
motionVectorsOpacity,,S g
),,g h
,,,h i#
motionVectorsResolution-- '
=--( )
FindSetting--* 5
(--5 6
(--6 7
Settings--7 ?
x--@ A
)--A B
=>--C E
x--F G
.--G H
motionVectors--H U
.--U V#
motionVectorsResolution--V m
)--m n
,--n o"
motionVectorsAmplitude.. &
=..' (
FindSetting..) 4
(..4 5
(..5 6
Settings..6 >
x..? @
)..@ A
=>..B D
x..E F
...F G
motionVectors..G T
...T U"
motionVectorsAmplitude..U k
)..k l
,..l m
}// 
;// 
}00 	
public22 
override22 
void22 
OnInspectorGUI22 +
(22+ ,
)22, -
{33 	
EditorGUILayout44 
.44 
PropertyField44 )
(44) *
m_Mode44* 0
)440 1
;441 2
int66 
mode66 
=66 
m_Mode66 
.66 
intValue66 &
;66& '
if88 
(88 
mode88 
==88 
(88 
int88 
)88 
Mode88 !
.88! "
Depth88" '
)88' (
{99 
EditorGUILayout:: 
.::  
PropertyField::  -
(::- .
m_Depth::. 5
.::5 6
scale::6 ;
)::; <
;::< =
};; 
else<< 
if<< 
(<< 
mode<< 
==<< 
(<< 
int<< !
)<<! "
Mode<<" &
.<<& '
MotionVectors<<' 4
)<<4 5
{== 
EditorGUILayout>> 
.>>  
HelpBox>>  '
(>>' (
$str>>( T
,>>T U
MessageType>>V a
.>>a b
Info>>b f
)>>f g
;>>g h
EditorGUILayout@@ 
.@@  

LabelField@@  *
(@@* +
$str@@+ 9
,@@9 :
EditorStyles@@; G
.@@G H
	boldLabel@@H Q
)@@Q R
;@@R S
	EditorGUIAA 
.AA 
indentLevelAA %
++AA% '
;AA' (
EditorGUILayoutBB 
.BB  
PropertyFieldBB  -
(BB- .
m_MotionVectorsBB. =
.BB= >
sourceOpacityBB> K
,BBK L
EditorGUIHelperBBM \
.BB\ ]

GetContentBB] g
(BBg h
$strBBh q
)BBq r
)BBr s
;BBs t
	EditorGUICC 
.CC 
indentLevelCC %
--CC% '
;CC' (
EditorGUILayoutEE 
.EE  
SpaceEE  %
(EE% &
)EE& '
;EE' (
EditorGUILayoutGG 
.GG  

LabelFieldGG  *
(GG* +
$strGG+ E
,GGE F
EditorStylesGGG S
.GGS T
	boldLabelGGT ]
)GG] ^
;GG^ _
	EditorGUIHH 
.HH 
indentLevelHH %
++HH% '
;HH' (
ifJJ 
(JJ 
m_MotionVectorsJJ #
.JJ# $
motionImageOpacityJJ$ 6
.JJ6 7

floatValueJJ7 A
>JJB C
$numJJD F
)JJF G
EditorGUILayoutKK #
.KK# $
HelpBoxKK$ +
(KK+ ,
$strKK, l
,KKl m
MessageTypeKKn y
.KKy z
Warning	KKz Å
)
KKÅ Ç
;
KKÇ É
EditorGUILayoutMM 
.MM  
PropertyFieldMM  -
(MM- .
m_MotionVectorsMM. =
.MM= >
motionImageOpacityMM> P
,MMP Q
EditorGUIHelperMMR a
.MMa b

GetContentMMb l
(MMl m
$strMMm v
)MMv w
)MMw x
;MMx y
EditorGUILayoutNN 
.NN  
PropertyFieldNN  -
(NN- .
m_MotionVectorsNN. =
.NN= > 
motionImageAmplitudeNN> R
,NNR S
EditorGUIHelperNNT c
.NNc d

GetContentNNd n
(NNn o
$strNNo z
)NNz {
)NN{ |
;NN| }
	EditorGUIOO 
.OO 
indentLevelOO %
--OO% '
;OO' (
EditorGUILayoutQQ 
.QQ  
SpaceQQ  %
(QQ% &
)QQ& '
;QQ' (
EditorGUILayoutSS 
.SS  

LabelFieldSS  *
(SS* +
$strSS+ D
,SSD E
EditorStylesSSF R
.SSR S
	boldLabelSSS \
)SS\ ]
;SS] ^
	EditorGUITT 
.TT 
indentLevelTT %
++TT% '
;TT' (
EditorGUILayoutUU 
.UU  
PropertyFieldUU  -
(UU- .
m_MotionVectorsUU. =
.UU= > 
motionVectorsOpacityUU> R
,UUR S
EditorGUIHelperUUT c
.UUc d

GetContentUUd n
(UUn o
$strUUo x
)UUx y
)UUy z
;UUz {
EditorGUILayoutVV 
.VV  
PropertyFieldVV  -
(VV- .
m_MotionVectorsVV. =
.VV= >#
motionVectorsResolutionVV> U
,VVU V
EditorGUIHelperVVW f
.VVf g

GetContentVVg q
(VVq r
$strVVr ~
)VV~ 
)	VV Ä
;
VVÄ Å
EditorGUILayoutWW 
.WW  
PropertyFieldWW  -
(WW- .
m_MotionVectorsWW. =
.WW= >"
motionVectorsAmplitudeWW> T
,WWT U
EditorGUIHelperWWV e
.WWe f

GetContentWWf p
(WWp q
$strWWq |
)WW| }
)WW} ~
;WW~ 
	EditorGUIXX 
.XX 
indentLevelXX %
--XX% '
;XX' (
}YY 
elseZZ 
{[[ 
CheckActiveEffect\\ !
(\\! "
mode\\" &
==\\' )
(\\* +
int\\+ .
)\\. /
Mode\\/ 3
.\\3 4
AmbientOcclusion\\4 D
&&\\E G
!\\H I
profile\\I P
.\\P Q
ambientOcclusion\\Q a
.\\a b
enabled\\b i
,\\i j
$str\\k ~
)\\~ 
;	\\ Ä
CheckActiveEffect]] !
(]]! "
mode]]" &
==]]' )
(]]* +
int]]+ .
)]]. /
Mode]]/ 3
.]]3 4

FocusPlane]]4 >
&&]]? A
!]]B C
profile]]C J
.]]J K
depthOfField]]K W
.]]W X
enabled]]X _
,]]_ `
$str]]a q
)]]q r
;]]r s
CheckActiveEffect^^ !
(^^! "
mode^^" &
==^^' )
(^^* +
int^^+ .
)^^. /
Mode^^/ 3
.^^3 4
EyeAdaptation^^4 A
&&^^B D
!^^E F
profile^^F M
.^^M N
eyeAdaptation^^N [
.^^[ \
enabled^^\ c
,^^c d
$str^^e u
)^^u v
;^^v w
CheckActiveEffect__ !
(__! "
(__" #
mode__# '
==__( *
(__+ ,
int__, /
)__/ 0
Mode__0 4
.__4 5
LogLut__5 ;
||__< >
mode__? C
==__D F
(__G H
int__H K
)__K L
Mode__L P
.__P Q
PreGradingLog__Q ^
)__^ _
&&__` b
!__c d
profile__d k
.__k l
colorGrading__l x
.__x y
enabled	__y Ä
,
__Ä Å
$str
__Ç ë
)
__ë í
;
__í ì
CheckActiveEffect`` !
(``! "
mode``" &
==``' )
(``* +
int``+ .
)``. /
Mode``/ 3
.``3 4
UserLut``4 ;
&&``< >
!``? @
profile``@ G
.``G H
userLut``H O
.``O P
enabled``P W
,``W X
$str``Y c
)``c d
;``d e
}aa 
}bb 	
voiddd 
CheckActiveEffectdd 
(dd 
booldd #
exprdd$ (
,dd( )
stringdd* 0
namedd1 5
)dd5 6
{ee 	
ifff 
(ff 
exprff 
)ff 
EditorGUILayoutgg 
.gg  
HelpBoxgg  '
(gg' (
stringgg( .
.gg. /
Formatgg/ 5
(gg5 6
$strgg6 e
,gge f
nameggg k
)ggk l
,ggl m
MessageTypeggn y
.ggy z
Warning	ggz Å
)
ggÅ Ç
;
ggÇ É
}hh 	
}ii 
}jj õ
√D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\ChromaticAberrationEditor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
[ %
PostProcessingModelEditor 
( 
typeof %
(% &$
ChromaticAberrationModel& >
)> ?
)? @
]@ A
public 

class +
ChromaticaAberrationModelEditor 0
:1 2$
DefaultPostFxModelEditor3 K
{ 
} 
}		 Óü
¡D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\ColorGradingModelEditor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
[ %
PostProcessingModelEditor 
( 
typeof %
(% &
ColorGradingModel& 7
)7 8
)8 9
]9 :
public 

class #
ColorGradingModelEditor (
:) *%
PostProcessingModelEditor+ D
{ 
static 

GUIContent 
[ 
] 
s_Tonemappers )
=* +
{ 	
new 

GUIContent 
( 
$str !
)! "
," #
new 

GUIContent 
( 
$str *
)* +
,+ ,
new 

GUIContent 
( 
$str $
)$ %
} 	
;	 

struct 
TonemappingSettings "
{ 	
public 
SerializedProperty %

tonemapper& 0
;0 1
public 
SerializedProperty %
neutralBlackIn& 4
;4 5
public 
SerializedProperty %
neutralWhiteIn& 4
;4 5
public 
SerializedProperty %
neutralBlackOut& 5
;5 6
public 
SerializedProperty %
neutralWhiteOut& 5
;5 6
public 
SerializedProperty %
neutralWhiteLevel& 7
;7 8
public 
SerializedProperty %
neutralWhiteClip& 6
;6 7
}   	
struct"" 
BasicSettings"" 
{## 	
public$$ 
SerializedProperty$$ %
exposure$$& .
;$$. /
public%% 
SerializedProperty%% %
temperature%%& 1
;%%1 2
public&& 
SerializedProperty&& %
tint&&& *
;&&* +
public'' 
SerializedProperty'' %
hueShift''& .
;''. /
public(( 
SerializedProperty(( %

saturation((& 0
;((0 1
public)) 
SerializedProperty)) %
contrast))& .
;)). /
}** 	
struct,,  
ChannelMixerSettings,, #
{-- 	
public.. 
SerializedProperty.. %
[..% &
]..& '
channels..( 0
;..0 1
public// 
SerializedProperty// %!
currentEditingChannel//& ;
;//; <
}00 	
struct22 
ColorWheelsSettings22 "
{33 	
public44	 
SerializedProperty44 "
mode44# '
;44' (
public55 
SerializedProperty55 %
log55& )
;55) *
public66 
SerializedProperty66 %
linear66& ,
;66, -
}77 	
static99 

GUIContent99 
[99 
]99 
s_Curves99 $
=99% &
{:: 	
new;; 

GUIContent;; 
(;; 
$str;; !
);;! "
,;;" #
new<< 

GUIContent<< 
(<< 
$str<< '
)<<' (
,<<( )
new== 

GUIContent== 
(== 
$str== '
)==' (
,==( )
new>> 

GUIContent>> 
(>> 
$str>> '
)>>' (
,>>( )
new?? 

GUIContent?? 
(?? 
$str?? '
)??' (
}@@ 	
;@@	 

structBB 
CurvesSettingsBB 
{CC 	
publicDD 
SerializedPropertyDD %
masterDD& ,
;DD, -
publicEE 
SerializedPropertyEE %
redEE& )
;EE) *
publicFF 
SerializedPropertyFF %
greenFF& +
;FF+ ,
publicGG 
SerializedPropertyGG %
blueGG& *
;GG* +
publicII 
SerializedPropertyII %
hueVShueII& .
;II. /
publicJJ 
SerializedPropertyJJ %
hueVSsatJJ& .
;JJ. /
publicKK 
SerializedPropertyKK %
satVSsatKK& .
;KK. /
publicLL 
SerializedPropertyLL %
lumVSsatLL& .
;LL. /
publicNN 
SerializedPropertyNN %
currentEditingCurveNN& 9
;NN9 :
publicOO 
SerializedPropertyOO %
curveYOO& ,
;OO, -
publicPP 
SerializedPropertyPP %
curveRPP& ,
;PP, -
publicQQ 
SerializedPropertyQQ %
curveGQQ& ,
;QQ, -
publicRR 
SerializedPropertyRR %
curveBRR& ,
;RR, -
}SS 	
TonemappingSettingsUU 
m_TonemappingUU )
;UU) *
BasicSettingsVV 
m_BasicVV 
;VV  
ChannelMixerSettingsWW 
m_ChannelMixerWW +
;WW+ ,
ColorWheelsSettingsXX 
m_ColorWheelsXX )
;XX) *
CurvesSettingsYY 
m_CurvesYY 
;YY  
CurveEditor[[ 
m_CurveEditor[[ !
;[[! "

Dictionary\\ 
<\\ 
SerializedProperty\\ %
,\\% &
Color\\' ,
>\\, -
m_CurveDict\\. 9
;\\9 :
const__ 
int__ 
k_CurveResolution__ #
=__$ %
$num__& (
;__( )
const`` 
float`` 
k_NeutralRangeX`` #
=``$ %
$num``& (
;``( )
constaa 
floataa 
k_NeutralRangeYaa #
=aa$ %
$numaa& (
;aa( )
Vector3bb 
[bb 
]bb 
m_RectVerticesbb  
=bb! "
newbb# &
Vector3bb' .
[bb. /
$numbb/ 0
]bb0 1
;bb1 2
Vector3cc 
[cc 
]cc 
m_LineVerticescc  
=cc! "
newcc# &
Vector3cc' .
[cc. /
$numcc/ 0
]cc0 1
;cc1 2
Vector3dd 
[dd 
]dd 
m_CurveVerticesdd !
=dd" #
newdd$ '
Vector3dd( /
[dd/ 0
k_CurveResolutiondd0 A
]ddA B
;ddB C
Rectee 	
m_NeutralCurveRectee
 
;ee 
publicgg 
overridegg 
voidgg 
OnEnablegg %
(gg% &
)gg& '
{hh 	
m_Tonemappingjj 
=jj 
newjj 
TonemappingSettingsjj  3
{kk 

tonemapperll 
=ll 
FindSettingll (
(ll( )
(ll) *
Settingsll* 2
xll3 4
)ll4 5
=>ll6 8
xll9 :
.ll: ;
tonemappingll; F
.llF G

tonemapperllG Q
)llQ R
,llR S
neutralBlackInmm 
=mm  
FindSettingmm! ,
(mm, -
(mm- .
Settingsmm. 6
xmm7 8
)mm8 9
=>mm: <
xmm= >
.mm> ?
tonemappingmm? J
.mmJ K
neutralBlackInmmK Y
)mmY Z
,mmZ [
neutralWhiteInnn 
=nn  
FindSettingnn! ,
(nn, -
(nn- .
Settingsnn. 6
xnn7 8
)nn8 9
=>nn: <
xnn= >
.nn> ?
tonemappingnn? J
.nnJ K
neutralWhiteInnnK Y
)nnY Z
,nnZ [
neutralBlackOutoo 
=oo  !
FindSettingoo" -
(oo- .
(oo. /
Settingsoo/ 7
xoo8 9
)oo9 :
=>oo; =
xoo> ?
.oo? @
tonemappingoo@ K
.ooK L
neutralBlackOutooL [
)oo[ \
,oo\ ]
neutralWhiteOutpp 
=pp  !
FindSettingpp" -
(pp- .
(pp. /
Settingspp/ 7
xpp8 9
)pp9 :
=>pp; =
xpp> ?
.pp? @
tonemappingpp@ K
.ppK L
neutralWhiteOutppL [
)pp[ \
,pp\ ]
neutralWhiteLevelqq !
=qq" #
FindSettingqq$ /
(qq/ 0
(qq0 1
Settingsqq1 9
xqq: ;
)qq; <
=>qq= ?
xqq@ A
.qqA B
tonemappingqqB M
.qqM N
neutralWhiteLevelqqN _
)qq_ `
,qq` a
neutralWhiteCliprr  
=rr! "
FindSettingrr# .
(rr. /
(rr/ 0
Settingsrr0 8
xrr9 :
)rr: ;
=>rr< >
xrr? @
.rr@ A
tonemappingrrA L
.rrL M
neutralWhiteCliprrM ]
)rr] ^
}ss 
;ss 
m_Basicvv 
=vv 
newvv 
BasicSettingsvv '
{ww 
exposurexx 
=xx 
FindSettingxx &
(xx& '
(xx' (
Settingsxx( 0
xxx1 2
)xx2 3
=>xx4 6
xxx7 8
.xx8 9
basicxx9 >
.xx> ?
postExposurexx? K
)xxK L
,xxL M
temperatureyy 
=yy 
FindSettingyy )
(yy) *
(yy* +
Settingsyy+ 3
xyy4 5
)yy5 6
=>yy7 9
xyy: ;
.yy; <
basicyy< A
.yyA B
temperatureyyB M
)yyM N
,yyN O
tintzz 
=zz 
FindSettingzz "
(zz" #
(zz# $
Settingszz$ ,
xzz- .
)zz. /
=>zz0 2
xzz3 4
.zz4 5
basiczz5 :
.zz: ;
tintzz; ?
)zz? @
,zz@ A
hueShift{{ 
={{ 
FindSetting{{ &
({{& '
({{' (
Settings{{( 0
x{{1 2
){{2 3
=>{{4 6
x{{7 8
.{{8 9
basic{{9 >
.{{> ?
hueShift{{? G
){{G H
,{{H I

saturation|| 
=|| 
FindSetting|| (
(||( )
(||) *
Settings||* 2
x||3 4
)||4 5
=>||6 8
x||9 :
.||: ;
basic||; @
.||@ A

saturation||A K
)||K L
,||L M
contrast}} 
=}} 
FindSetting}} &
(}}& '
(}}' (
Settings}}( 0
x}}1 2
)}}2 3
=>}}4 6
x}}7 8
.}}8 9
basic}}9 >
.}}> ?
contrast}}? G
)}}G H
}~~ 
;~~ 
m_ChannelMixer
ÅÅ 
=
ÅÅ 
new
ÅÅ  "
ChannelMixerSettings
ÅÅ! 5
{
ÇÇ 
channels
ÉÉ 
=
ÉÉ 
new
ÉÉ 
[
ÉÉ 
]
ÉÉ  
{
ÑÑ 
FindSetting
ÖÖ 
(
ÖÖ  
(
ÖÖ  !
Settings
ÖÖ! )
x
ÖÖ* +
)
ÖÖ+ ,
=>
ÖÖ- /
x
ÖÖ0 1
.
ÖÖ1 2
channelMixer
ÖÖ2 >
.
ÖÖ> ?
red
ÖÖ? B
)
ÖÖB C
,
ÖÖC D
FindSetting
ÜÜ 
(
ÜÜ  
(
ÜÜ  !
Settings
ÜÜ! )
x
ÜÜ* +
)
ÜÜ+ ,
=>
ÜÜ- /
x
ÜÜ0 1
.
ÜÜ1 2
channelMixer
ÜÜ2 >
.
ÜÜ> ?
green
ÜÜ? D
)
ÜÜD E
,
ÜÜE F
FindSetting
áá 
(
áá  
(
áá  !
Settings
áá! )
x
áá* +
)
áá+ ,
=>
áá- /
x
áá0 1
.
áá1 2
channelMixer
áá2 >
.
áá> ?
blue
áá? C
)
ááC D
}
àà 
,
àà #
currentEditingChannel
ââ %
=
ââ& '
FindSetting
ââ( 3
(
ââ3 4
(
ââ4 5
Settings
ââ5 =
x
ââ> ?
)
ââ? @
=>
ââA C
x
ââD E
.
ââE F
channelMixer
ââF R
.
ââR S#
currentEditingChannel
ââS h
)
ââh i
}
ää 
;
ää 
m_ColorWheels
çç 
=
çç 
new
çç !
ColorWheelsSettings
çç  3
{
éé 
mode
èè 
=
èè	 

FindSetting
èè 
(
èè 
(
èè 
Settings
èè  
x
èè! "
)
èè" #
=>
èè$ &
x
èè' (
.
èè( )
colorWheels
èè) 4
.
èè4 5
mode
èè5 9
)
èè9 :
,
èè: ;
log
êê 
=
êê 
FindSetting
êê !
(
êê! "
(
êê" #
Settings
êê# +
x
êê, -
)
êê- .
=>
êê/ 1
x
êê2 3
.
êê3 4
colorWheels
êê4 ?
.
êê? @
log
êê@ C
)
êêC D
,
êêD E
linear
ëë 
=
ëë 
FindSetting
ëë $
(
ëë$ %
(
ëë% &
Settings
ëë& .
x
ëë/ 0
)
ëë0 1
=>
ëë2 4
x
ëë5 6
.
ëë6 7
colorWheels
ëë7 B
.
ëëB C
linear
ëëC I
)
ëëI J
}
íí 
;
íí 
m_Curves
ïï 
=
ïï 
new
ïï 
CurvesSettings
ïï )
{
ññ 
master
óó 
=
óó 
FindSetting
óó $
(
óó$ %
(
óó% &
Settings
óó& .
x
óó/ 0
)
óó0 1
=>
óó2 4
x
óó5 6
.
óó6 7
curves
óó7 =
.
óó= >
master
óó> D
.
óóD E
curve
óóE J
)
óóJ K
,
óóK L
red
òò 
=
òò 
FindSetting
òò !
(
òò! "
(
òò" #
Settings
òò# +
x
òò, -
)
òò- .
=>
òò/ 1
x
òò2 3
.
òò3 4
curves
òò4 :
.
òò: ;
red
òò; >
.
òò> ?
curve
òò? D
)
òòD E
,
òòE F
green
ôô 
=
ôô 
FindSetting
ôô #
(
ôô# $
(
ôô$ %
Settings
ôô% -
x
ôô. /
)
ôô/ 0
=>
ôô1 3
x
ôô4 5
.
ôô5 6
curves
ôô6 <
.
ôô< =
green
ôô= B
.
ôôB C
curve
ôôC H
)
ôôH I
,
ôôI J
blue
öö 
=
öö 
FindSetting
öö "
(
öö" #
(
öö# $
Settings
öö$ ,
x
öö- .
)
öö. /
=>
öö0 2
x
öö3 4
.
öö4 5
curves
öö5 ;
.
öö; <
blue
öö< @
.
öö@ A
curve
ööA F
)
ööF G
,
ööG H
hueVShue
úú 
=
úú 
FindSetting
úú &
(
úú& '
(
úú' (
Settings
úú( 0
x
úú1 2
)
úú2 3
=>
úú4 6
x
úú7 8
.
úú8 9
curves
úú9 ?
.
úú? @
hueVShue
úú@ H
.
úúH I
curve
úúI N
)
úúN O
,
úúO P
hueVSsat
ùù 
=
ùù 
FindSetting
ùù &
(
ùù& '
(
ùù' (
Settings
ùù( 0
x
ùù1 2
)
ùù2 3
=>
ùù4 6
x
ùù7 8
.
ùù8 9
curves
ùù9 ?
.
ùù? @
hueVSsat
ùù@ H
.
ùùH I
curve
ùùI N
)
ùùN O
,
ùùO P
satVSsat
ûû 
=
ûû 
FindSetting
ûû &
(
ûû& '
(
ûû' (
Settings
ûû( 0
x
ûû1 2
)
ûû2 3
=>
ûû4 6
x
ûû7 8
.
ûû8 9
curves
ûû9 ?
.
ûû? @
satVSsat
ûû@ H
.
ûûH I
curve
ûûI N
)
ûûN O
,
ûûO P
lumVSsat
üü 
=
üü 
FindSetting
üü &
(
üü& '
(
üü' (
Settings
üü( 0
x
üü1 2
)
üü2 3
=>
üü4 6
x
üü7 8
.
üü8 9
curves
üü9 ?
.
üü? @
lumVSsat
üü@ H
.
üüH I
curve
üüI N
)
üüN O
,
üüO P!
currentEditingCurve
°° #
=
°°$ %
FindSetting
°°& 1
(
°°1 2
(
°°2 3
Settings
°°3 ;
x
°°< =
)
°°= >
=>
°°? A
x
°°B C
.
°°C D
curves
°°D J
.
°°J K#
e_CurrentEditingCurve
°°K `
)
°°` a
,
°°a b
curveY
¢¢ 
=
¢¢ 
FindSetting
¢¢ $
(
¢¢$ %
(
¢¢% &
Settings
¢¢& .
x
¢¢/ 0
)
¢¢0 1
=>
¢¢2 4
x
¢¢5 6
.
¢¢6 7
curves
¢¢7 =
.
¢¢= >
e_CurveY
¢¢> F
)
¢¢F G
,
¢¢G H
curveR
££ 
=
££ 
FindSetting
££ $
(
££$ %
(
££% &
Settings
££& .
x
££/ 0
)
££0 1
=>
££2 4
x
££5 6
.
££6 7
curves
££7 =
.
££= >
e_CurveR
££> F
)
££F G
,
££G H
curveG
§§ 
=
§§ 
FindSetting
§§ $
(
§§$ %
(
§§% &
Settings
§§& .
x
§§/ 0
)
§§0 1
=>
§§2 4
x
§§5 6
.
§§6 7
curves
§§7 =
.
§§= >
e_CurveG
§§> F
)
§§F G
,
§§G H
curveB
•• 
=
•• 
FindSetting
•• $
(
••$ %
(
••% &
Settings
••& .
x
••/ 0
)
••0 1
=>
••2 4
x
••5 6
.
••6 7
curves
••7 =
.
••= >
e_CurveB
••> F
)
••F G
}
¶¶ 
;
¶¶ 
m_CurveDict
©© 
=
©© 
new
©© 

Dictionary
©© (
<
©©( ) 
SerializedProperty
©©) ;
,
©©; <
Color
©©= B
>
©©B C
(
©©C D
)
©©D E
;
©©E F
var
´´ 
settings
´´ 
=
´´ 
CurveEditor
´´ &
.
´´& '
Settings
´´' /
.
´´/ 0
defaultSettings
´´0 ?
;
´´? @
m_CurveEditor
≠≠ 
=
≠≠ 
new
≠≠ 
CurveEditor
≠≠  +
(
≠≠+ ,
settings
≠≠, 4
)
≠≠4 5
;
≠≠5 6
AddCurve
ÆÆ 
(
ÆÆ 
m_Curves
ÆÆ 
.
ÆÆ 
master
ÆÆ $
,
ÆÆ$ %
new
ÆÆ( +
Color
ÆÆ, 1
(
ÆÆ1 2
$num
ÆÆ2 4
,
ÆÆ4 5
$num
ÆÆ6 8
,
ÆÆ8 9
$num
ÆÆ: <
)
ÆÆ< =
,
ÆÆ= >
$num
ÆÆ? @
,
ÆÆ@ A
false
ÆÆB G
)
ÆÆG H
;
ÆÆH I
AddCurve
ØØ 
(
ØØ 
m_Curves
ØØ 
.
ØØ 
red
ØØ !
,
ØØ! "
new
ØØ( +
Color
ØØ, 1
(
ØØ1 2
$num
ØØ2 4
,
ØØ4 5
$num
ØØ6 8
,
ØØ8 9
$num
ØØ: <
)
ØØ< =
,
ØØ= >
$num
ØØ? @
,
ØØ@ A
false
ØØB G
)
ØØG H
;
ØØH I
AddCurve
∞∞ 
(
∞∞ 
m_Curves
∞∞ 
.
∞∞ 
green
∞∞ #
,
∞∞# $
new
∞∞( +
Color
∞∞, 1
(
∞∞1 2
$num
∞∞2 4
,
∞∞4 5
$num
∞∞6 8
,
∞∞8 9
$num
∞∞: <
)
∞∞< =
,
∞∞= >
$num
∞∞? @
,
∞∞@ A
false
∞∞B G
)
∞∞G H
;
∞∞H I
AddCurve
±± 
(
±± 
m_Curves
±± 
.
±± 
blue
±± "
,
±±" #
new
±±( +
Color
±±, 1
(
±±1 2
$num
±±2 4
,
±±4 5
$num
±±6 :
,
±±: ;
$num
±±< >
)
±±> ?
,
±±? @
$num
±±A B
,
±±B C
false
±±D I
)
±±I J
;
±±J K
AddCurve
≤≤ 
(
≤≤ 
m_Curves
≤≤ 
.
≤≤ 
hueVShue
≤≤ &
,
≤≤& '
new
≤≤( +
Color
≤≤, 1
(
≤≤1 2
$num
≤≤2 4
,
≤≤4 5
$num
≤≤6 8
,
≤≤8 9
$num
≤≤: <
)
≤≤< =
,
≤≤= >
$num
≤≤? @
,
≤≤@ A
true
≤≤B F
)
≤≤F G
;
≤≤G H
AddCurve
≥≥ 
(
≥≥ 
m_Curves
≥≥ 
.
≥≥ 
hueVSsat
≥≥ &
,
≥≥& '
new
≥≥( +
Color
≥≥, 1
(
≥≥1 2
$num
≥≥2 4
,
≥≥4 5
$num
≥≥6 8
,
≥≥8 9
$num
≥≥: <
)
≥≥< =
,
≥≥= >
$num
≥≥? @
,
≥≥@ A
true
≥≥B F
)
≥≥F G
;
≥≥G H
AddCurve
¥¥ 
(
¥¥ 
m_Curves
¥¥ 
.
¥¥ 
satVSsat
¥¥ &
,
¥¥& '
new
¥¥( +
Color
¥¥, 1
(
¥¥1 2
$num
¥¥2 4
,
¥¥4 5
$num
¥¥6 8
,
¥¥8 9
$num
¥¥: <
)
¥¥< =
,
¥¥= >
$num
¥¥? @
,
¥¥@ A
false
¥¥B G
)
¥¥G H
;
¥¥H I
AddCurve
µµ 
(
µµ 
m_Curves
µµ 
.
µµ 
lumVSsat
µµ &
,
µµ& '
new
µµ( +
Color
µµ, 1
(
µµ1 2
$num
µµ2 4
,
µµ4 5
$num
µµ6 8
,
µµ8 9
$num
µµ: <
)
µµ< =
,
µµ= >
$num
µµ? @
,
µµ@ A
false
µµB G
)
µµG H
;
µµH I
}
∂∂ 	
void
∏∏ 
AddCurve
∏∏ 
(
∏∏  
SerializedProperty
∏∏ (
prop
∏∏) -
,
∏∏- .
Color
∏∏/ 4
color
∏∏5 :
,
∏∏: ;
uint
∏∏< @
minPointCount
∏∏A N
,
∏∏N O
bool
∏∏P T
loop
∏∏U Y
)
∏∏Y Z
{
ππ 	
var
∫∫ 
state
∫∫ 
=
∫∫ 
CurveEditor
∫∫ #
.
∫∫# $

CurveState
∫∫$ .
.
∫∫. /
defaultState
∫∫/ ;
;
∫∫; <
state
ªª 
.
ªª 
color
ªª 
=
ªª 
color
ªª 
;
ªª  
state
ºº 
.
ºº 
visible
ºº 
=
ºº 
false
ºº !
;
ºº! "
state
ΩΩ 
.
ΩΩ 
minPointCount
ΩΩ 
=
ΩΩ  !
minPointCount
ΩΩ" /
;
ΩΩ/ 0
state
ææ 
.
ææ (
onlyShowHandlesOnSelection
ææ ,
=
ææ- .
true
ææ/ 3
;
ææ3 4
state
øø 
.
øø "
zeroKeyConstantValue
øø &
=
øø' (
$num
øø) -
;
øø- .
state
¿¿ 
.
¿¿ 
loopInBounds
¿¿ 
=
¿¿  
loop
¿¿! %
;
¿¿% &
m_CurveEditor
¡¡ 
.
¡¡ 
Add
¡¡ 
(
¡¡ 
prop
¡¡ "
,
¡¡" #
state
¡¡$ )
)
¡¡) *
;
¡¡* +
m_CurveDict
¬¬ 
.
¬¬ 
Add
¬¬ 
(
¬¬ 
prop
¬¬  
,
¬¬  !
color
¬¬" '
)
¬¬' (
;
¬¬( )
}
√√ 	
public
≈≈ 
override
≈≈ 
void
≈≈ 
	OnDisable
≈≈ &
(
≈≈& '
)
≈≈' (
{
∆∆ 	
m_CurveEditor
«« 
.
«« 
	RemoveAll
«« #
(
««# $
)
««$ %
;
««% &
}
»» 	
public
   
override
   
void
   
OnInspectorGUI
   +
(
  + ,
)
  , -
{
ÀÀ 	
DoGUIFor
ÃÃ 
(
ÃÃ 
$str
ÃÃ "
,
ÃÃ" #
DoTonemappingGUI
ÃÃ$ 4
)
ÃÃ4 5
;
ÃÃ5 6
EditorGUILayout
ÕÕ 
.
ÕÕ 
Space
ÕÕ !
(
ÕÕ! "
)
ÕÕ" #
;
ÕÕ# $
DoGUIFor
ŒŒ 
(
ŒŒ 
$str
ŒŒ 
,
ŒŒ 

DoBasicGUI
ŒŒ (
)
ŒŒ( )
;
ŒŒ) *
EditorGUILayout
œœ 
.
œœ 
Space
œœ !
(
œœ! "
)
œœ" #
;
œœ# $
DoGUIFor
–– 
(
–– 
$str
–– $
,
––$ %
DoChannelMixerGUI
––& 7
)
––7 8
;
––8 9
EditorGUILayout
—— 
.
—— 
Space
—— !
(
——! "
)
——" #
;
——# $
DoGUIFor
““ 
(
““ 
$str
““ !
,
““! "
DoColorWheelsGUI
““# 3
)
““3 4
;
““4 5
EditorGUILayout
”” 
.
”” 
Space
”” !
(
””! "
)
””" #
;
””# $
DoGUIFor
‘‘ 
(
‘‘ 
$str
‘‘ %
,
‘‘% &
DoCurvesGUI
‘‘' 2
)
‘‘2 3
;
‘‘3 4
}
’’ 	
void
◊◊ 
DoGUIFor
◊◊ 
(
◊◊ 
string
◊◊ 
title
◊◊ "
,
◊◊" #
Action
◊◊$ *
func
◊◊+ /
)
◊◊/ 0
{
ÿÿ 	
EditorGUILayout
ŸŸ 
.
ŸŸ 

LabelField
ŸŸ &
(
ŸŸ& '
title
ŸŸ' ,
,
ŸŸ, -
EditorStyles
ŸŸ. :
.
ŸŸ: ;
	boldLabel
ŸŸ; D
)
ŸŸD E
;
ŸŸE F
	EditorGUI
⁄⁄ 
.
⁄⁄ 
indentLevel
⁄⁄ !
++
⁄⁄! #
;
⁄⁄# $
func
€€ 
(
€€ 
)
€€ 
;
€€ 
	EditorGUI
‹‹ 
.
‹‹ 
indentLevel
‹‹ !
--
‹‹! #
;
‹‹# $
}
›› 	
void
ﬂﬂ 
DoTonemappingGUI
ﬂﬂ 
(
ﬂﬂ 
)
ﬂﬂ 
{
‡‡ 	
int
·· 
tid
·· 
=
·· 
EditorGUILayout
·· %
.
··% &
Popup
··& +
(
··+ ,
EditorGUIHelper
··, ;
.
··; <

GetContent
··< F
(
··F G
$str
··G S
)
··S T
,
··T U
m_Tonemapping
··V c
.
··c d

tonemapper
··d n
.
··n o
intValue
··o w
,
··w x
s_Tonemappers··y Ü
)··Ü á
;··á à
if
„„ 
(
„„ 
tid
„„ 
==
„„ 
(
„„ 
int
„„ 
)
„„ 

Tonemapper
„„ &
.
„„& '
Neutral
„„' .
)
„„. /
{
‰‰ )
DrawNeutralTonemappingCurve
ÂÂ (
(
ÂÂ( )
)
ÂÂ) *
;
ÂÂ* +
EditorGUILayout
ÁÁ 
.
ÁÁ  
PropertyField
ÁÁ  -
(
ÁÁ- .
m_Tonemapping
ÁÁ. ;
.
ÁÁ; <
neutralBlackIn
ÁÁ< J
,
ÁÁJ K
EditorGUIHelper
ÁÁL [
.
ÁÁ[ \

GetContent
ÁÁ\ f
(
ÁÁf g
$str
ÁÁg q
)
ÁÁq r
)
ÁÁr s
;
ÁÁs t
EditorGUILayout
ËË 
.
ËË  
PropertyField
ËË  -
(
ËË- .
m_Tonemapping
ËË. ;
.
ËË; <
neutralWhiteIn
ËË< J
,
ËËJ K
EditorGUIHelper
ËËL [
.
ËË[ \

GetContent
ËË\ f
(
ËËf g
$str
ËËg q
)
ËËq r
)
ËËr s
;
ËËs t
EditorGUILayout
ÈÈ 
.
ÈÈ  
PropertyField
ÈÈ  -
(
ÈÈ- .
m_Tonemapping
ÈÈ. ;
.
ÈÈ; <
neutralBlackOut
ÈÈ< K
,
ÈÈK L
EditorGUIHelper
ÈÈM \
.
ÈÈ\ ]

GetContent
ÈÈ] g
(
ÈÈg h
$str
ÈÈh s
)
ÈÈs t
)
ÈÈt u
;
ÈÈu v
EditorGUILayout
ÍÍ 
.
ÍÍ  
PropertyField
ÍÍ  -
(
ÍÍ- .
m_Tonemapping
ÍÍ. ;
.
ÍÍ; <
neutralWhiteOut
ÍÍ< K
,
ÍÍK L
EditorGUIHelper
ÍÍM \
.
ÍÍ\ ]

GetContent
ÍÍ] g
(
ÍÍg h
$str
ÍÍh s
)
ÍÍs t
)
ÍÍt u
;
ÍÍu v
EditorGUILayout
ÎÎ 
.
ÎÎ  
PropertyField
ÎÎ  -
(
ÎÎ- .
m_Tonemapping
ÎÎ. ;
.
ÎÎ; <
neutralWhiteLevel
ÎÎ< M
,
ÎÎM N
EditorGUIHelper
ÎÎO ^
.
ÎÎ^ _

GetContent
ÎÎ_ i
(
ÎÎi j
$str
ÎÎj w
)
ÎÎw x
)
ÎÎx y
;
ÎÎy z
EditorGUILayout
ÏÏ 
.
ÏÏ  
PropertyField
ÏÏ  -
(
ÏÏ- .
m_Tonemapping
ÏÏ. ;
.
ÏÏ; <
neutralWhiteClip
ÏÏ< L
,
ÏÏL M
EditorGUIHelper
ÏÏN ]
.
ÏÏ] ^

GetContent
ÏÏ^ h
(
ÏÏh i
$str
ÏÏi u
)
ÏÏu v
)
ÏÏv w
;
ÏÏw x
}
ÌÌ 
m_Tonemapping
ÔÔ 
.
ÔÔ 

tonemapper
ÔÔ $
.
ÔÔ$ %
intValue
ÔÔ% -
=
ÔÔ. /
tid
ÔÔ0 3
;
ÔÔ3 4
}
 	
void
ÚÚ 	)
DrawNeutralTonemappingCurve
ÚÚ
 %
(
ÚÚ% &
)
ÚÚ& '
{
ÛÛ 
using
ÙÙ 
(
ÙÙ 
new
ÙÙ 
	GUILayout
ÙÙ  
.
ÙÙ  !
HorizontalScope
ÙÙ! 0
(
ÙÙ0 1
)
ÙÙ1 2
)
ÙÙ2 3
{
ıı 
	GUILayout
ˆˆ 
.
ˆˆ 
Space
ˆˆ 
(
ˆˆ  
	EditorGUI
ˆˆ  )
.
ˆˆ) *
indentLevel
ˆˆ* 5
*
ˆˆ6 7
$num
ˆˆ8 ;
)
ˆˆ; <
;
ˆˆ< = 
m_NeutralCurveRect
˜˜ "
=
˜˜# $
GUILayoutUtility
˜˜% 5
.
˜˜5 6
GetRect
˜˜6 =
(
˜˜= >
$num
˜˜> A
,
˜˜A B
$num
˜˜C E
)
˜˜E F
;
˜˜F G
}
¯¯ 
m_RectVertices
˚˚ 
[
˚˚ 
$num
˚˚ 
]
˚˚ 
=
˚˚ 
PointInRect
˚˚ "
(
˚˚" #
$num
˚˚0 2
,
˚˚2 3
$num
˚˚A C
)
˚˚C D
;
˚˚D E
m_RectVertices
¸¸ 
[
¸¸ 
$num
¸¸ 
]
¸¸ 
=
¸¸ 
PointInRect
¸¸  +
(
¸¸+ ,
k_NeutralRangeX
¸¸, ;
,
¸¸; <
$num
¸¸J L
)
¸¸L M
;
¸¸M N
m_RectVertices
˝˝ 
[
˝˝ 
$num
˝˝ 
]
˝˝ 
=
˝˝ 
PointInRect
˝˝  +
(
˝˝+ ,
k_NeutralRangeX
˝˝, ;
,
˝˝; <
k_NeutralRangeY
˝˝= L
)
˝˝L M
;
˝˝M N
m_RectVertices
˛˛ 
[
˛˛ 
$num
˛˛ 
]
˛˛ 
=
˛˛ 
PointInRect
˛˛  +
(
˛˛+ ,
$num
˛˛9 ;
,
˛˛; <
k_NeutralRangeY
˛˛= L
)
˛˛L M
;
˛˛M N
Handles
ÄÄ 
.
ÄÄ +
DrawSolidRectangleWithOutline
ÄÄ 1
(
ÄÄ1 2
m_RectVertices
ÅÅ 
,
ÅÅ 
Color
ÇÇ 
.
ÇÇ 
white
ÇÇ 
*
ÇÇ 
$num
ÇÇ "
,
ÇÇ" #
Color
ÉÉ 
.
ÉÉ 
white
ÉÉ 
*
ÉÉ 
$num
ÉÉ "
)
ÑÑ 
;
ÑÑ 
for
áá 
(
áá 
var
áá 
i
áá 
=
áá 
$num
áá 
;
áá 
i
áá 
<
áá 
k_NeutralRangeY
áá  /
;
áá/ 0
i
áá1 2
++
áá2 4
)
áá4 5
DrawLine
àà 
(
àà 
$num
àà 
,
àà 
i
àà 
,
àà 
k_NeutralRangeX
àà .
,
àà. /
i
àà0 1
,
àà1 2
$num
àà3 7
)
àà7 8
;
àà8 9
for
ãã 
(
ãã 
var
ãã 
i
ãã 
=
ãã 
$num
ãã 
;
ãã 
i
ãã 
<
ãã 
k_NeutralRangeX
ãã  /
;
ãã/ 0
i
ãã1 2
++
ãã2 4
)
ãã4 5
DrawLine
åå 
(
åå 
i
åå 
,
åå 
$num
åå 
,
åå 
i
åå  
,
åå  !
k_NeutralRangeY
åå" 1
,
åå1 2
$num
åå3 7
)
åå7 8
;
åå8 9
Handles
èè 
.
èè 
Label
èè 
(
èè 
PointInRect
êê 
(
êê 
$num
êê 
,
êê 
k_NeutralRangeY
êê .
)
êê. /
+
êê0 1
Vector3
êê2 9
.
êê9 :
right
êê: ?
,
êê? @
$str
ëë $
,
ëë$ %
EditorStyles
ëë& 2
.
ëë2 3
	miniLabel
ëë3 <
)
íí 
;
íí 
var
ïï 
tonemap
ïï 
=
ïï 
(
ïï 
(
ïï 
ColorGradingModel
ïï -
)
ïï- .
target
ïï. 4
)
ïï4 5
.
ïï5 6
settings
ïï6 >
.
ïï> ?
tonemapping
ïï? J
;
ïïJ K
const
óó 
float
óó 
scaleFactor
óó 
=
óó 
$num
óó  #
;
óó# $
const
òò 
float
òò 
scaleFactorHalf
òò '
=
òò( )
scaleFactor
òò* 5
*
òò6 7
$num
òò8 <
;
òò< =
float
öö 
inBlack
öö 
=
öö 
tonemap
öö #
.
öö# $
neutralBlackIn
öö$ 2
*
öö3 4
scaleFactor
öö5 @
+
ööA B
$num
ööC E
;
ööE F
float
õõ 
outBlack
õõ 
=
õõ 
tonemap
õõ $
.
õõ$ %
neutralBlackOut
õõ% 4
*
õõ5 6
scaleFactorHalf
õõ7 F
+
õõG H
$num
õõI K
;
õõK L
float
úú 
inWhite
úú 
=
úú 
tonemap
úú #
.
úú# $
neutralWhiteIn
úú$ 2
/
úú3 4
scaleFactor
úú5 @
;
úú@ A
float
ùù 
outWhite
ùù 
=
ùù 
$num
ùù 
-
ùù  !
tonemap
ùù" )
.
ùù) *
neutralWhiteOut
ùù* 9
/
ùù: ;
scaleFactor
ùù< G
;
ùùG H
float
ûû 

blackRatio
ûû 
=
ûû 
inBlack
ûû &
/
ûû' (
outBlack
ûû) 1
;
ûû1 2
float
üü 

whiteRatio
üü 
=
üü 
inWhite
üü &
/
üü' (
outWhite
üü) 1
;
üü1 2
const
°° 
float
°° 
a
°° 
=
°° 
$num
°°  
;
°°  !
float
¢¢ 
b
¢¢ 
=
¢¢ 
Mathf
¢¢ 
.
¢¢ 
Max
¢¢ 
(
¢¢  
$num
¢¢  "
,
¢¢" #
Mathf
¢¢$ )
.
¢¢) *
LerpUnclamped
¢¢* 7
(
¢¢7 8
$num
¢¢8 =
,
¢¢= >
$num
¢¢? D
,
¢¢D E

blackRatio
¢¢F P
)
¢¢P Q
)
¢¢Q R
;
¢¢R S
float
££ 
c
££ 
=
££ 
Mathf
££ 
.
££ 
LerpUnclamped
££ )
(
££) *
$num
££* /
,
££/ 0
$num
££1 6
,
££6 7

whiteRatio
££8 B
)
££B C
;
££C D
float
§§ 
d
§§ 
=
§§ 
Mathf
§§ 
.
§§ 
Max
§§ 
(
§§  
$num
§§  "
,
§§" #
Mathf
§§$ )
.
§§) *
LerpUnclamped
§§* 7
(
§§7 8
$num
§§8 =
,
§§= >
$num
§§? D
,
§§D E

blackRatio
§§F P
)
§§P Q
)
§§Q R
;
§§R S
const
•• 
float
•• 
e
•• 
=
•• 
$num
•• !
;
••! "
const
¶¶ 
float
¶¶ 
f
¶¶ 
=
¶¶ 
$num
¶¶ !
;
¶¶! "
float
ßß 

whiteLevel
ßß 
=
ßß 
tonemap
ßß  
.
ßß  !
neutralWhiteLevel
ßß! 2
;
ßß2 3
float
®® 
	whiteClip
®® 
=
®® 
tonemap
®® 
.
®®  
neutralWhiteClip
®®  0
/
®®1 2
scaleFactorHalf
®®3 B
;
®®B C
var
´´ 
vcount
´´ 
=
´´ 
$num
´´ 
;
´´ 
while
¨¨ 
(
¨¨ 
vcount
¨¨ 
<
¨¨ 
k_CurveResolution
¨¨ -
)
¨¨- .
{
≠≠ 
float
ÆÆ 
x
ÆÆ 
=
ÆÆ 
k_NeutralRangeX
ÆÆ )
*
ÆÆ* +
vcount
ÆÆ, 2
/
ÆÆ3 4
(
ÆÆ5 6
k_CurveResolution
ÆÆ6 G
-
ÆÆH I
$num
ÆÆJ K
)
ÆÆK L
;
ÆÆL M
float
ØØ 
y
ØØ 
=
ØØ 
NeutralTonemap
ØØ (
(
ØØ( )
x
ØØ) *
,
ØØ* +
a
ØØ, -
,
ØØ- .
b
ØØ/ 0
,
ØØ0 1
c
ØØ2 3
,
ØØ3 4
d
ØØ5 6
,
ØØ6 7
e
ØØ8 9
,
ØØ9 :
f
ØØ; <
,
ØØ< =

whiteLevel
ØØ> H
,
ØØH I
	whiteClip
ØØJ S
)
ØØS T
;
ØØT U
if
±± 
(
±± 
y
±± 
<
±± 
k_NeutralRangeY
±± '
)
±±' (
{
≤≤ 
m_CurveVertices
≥≥ #
[
≥≥# $
vcount
≥≥$ *
++
≥≥* ,
]
≥≥, -
=
≥≥. /
PointInRect
≥≥0 ;
(
≥≥; <
x
≥≥< =
,
≥≥= >
y
≥≥? @
)
≥≥@ A
;
≥≥A B
}
¥¥ 
else
µµ 
{
∂∂ 
if
∑∑ 
(
∑∑ 
vcount
∑∑ 
>
∑∑  
$num
∑∑! "
)
∑∑" #
{
∏∏ 
var
∫∫ 
v1
∫∫ 
=
∫∫  
m_CurveVertices
∫∫! 0
[
∫∫0 1
vcount
∫∫1 7
-
∫∫8 9
$num
∫∫: ;
]
∫∫; <
;
∫∫< =
var
ªª 
v2
ªª 
=
ªª  
m_CurveVertices
ªª! 0
[
ªª0 1
vcount
ªª1 7
-
ªª8 9
$num
ªª: ;
]
ªª; <
;
ªª< =
var
ºº 
clip
ºº  
=
ºº! "
(
ºº# $ 
m_NeutralCurveRect
ºº$ 6
.
ºº6 7
y
ºº7 8
-
ºº9 :
v1
ºº; =
.
ºº= >
y
ºº> ?
)
ºº? @
/
ººA B
(
ººC D
v2
ººD F
.
ººF G
y
ººG H
-
ººI J
v1
ººK M
.
ººM N
y
ººN O
)
ººO P
;
ººP Q
m_CurveVertices
ΩΩ '
[
ΩΩ' (
vcount
ΩΩ( .
-
ΩΩ/ 0
$num
ΩΩ1 2
]
ΩΩ2 3
=
ΩΩ4 5
v1
ΩΩ6 8
+
ΩΩ9 :
(
ΩΩ; <
v2
ΩΩ< >
-
ΩΩ? @
v1
ΩΩA C
)
ΩΩC D
*
ΩΩE F
clip
ΩΩG K
;
ΩΩK L
}
ææ 
break
øø 
;
øø 
}
¿¿ 
}
¡¡ 
if
√√ 
(
√√ 
vcount
√√ 
>
√√ 
$num
√√ 
)
√√ 
{
ƒƒ 
Handles
≈≈ 
.
≈≈ 
color
≈≈ 
=
≈≈ 
Color
≈≈  %
.
≈≈% &
white
≈≈& +
*
≈≈, -
$num
≈≈. 2
;
≈≈2 3
Handles
∆∆ 
.
∆∆ 
DrawAAPolyLine
∆∆ &
(
∆∆& '
$num
∆∆' +
,
∆∆+ ,
vcount
∆∆- 3
,
∆∆3 4
m_CurveVertices
∆∆5 D
)
∆∆D E
;
∆∆E F
}
«« 
}
»» 
void
   
DrawLine
   
(
   
float
   
x1
   
,
   
float
   
y1
    "
,
  " #
float
  $ )
x2
  * ,
,
  , -
float
  . 3
y2
  4 6
,
  6 7
float
  8 =
	grayscale
  > G
)
  G H
{
ÀÀ 	
m_LineVertices
ÃÃ 
[
ÃÃ 
$num
ÃÃ 
]
ÃÃ 
=
ÃÃ 
PointInRect
ÃÃ  +
(
ÃÃ+ ,
x1
ÃÃ, .
,
ÃÃ. /
y1
ÃÃ0 2
)
ÃÃ2 3
;
ÃÃ3 4
m_LineVertices
ÕÕ 
[
ÕÕ 
$num
ÕÕ 
]
ÕÕ 
=
ÕÕ 
PointInRect
ÕÕ  +
(
ÕÕ+ ,
x2
ÕÕ, .
,
ÕÕ. /
y2
ÕÕ0 2
)
ÕÕ2 3
;
ÕÕ3 4
Handles
ŒŒ 
.
ŒŒ 
color
ŒŒ 
=
ŒŒ 
Color
ŒŒ !
.
ŒŒ! "
white
ŒŒ" '
*
ŒŒ( )
	grayscale
ŒŒ* 3
;
ŒŒ3 4
Handles
œœ 
.
œœ 
DrawAAPolyLine
œœ "
(
œœ" #
$num
œœ# %
,
œœ% &
m_LineVertices
œœ' 5
)
œœ5 6
;
œœ6 7
}
–– 	
Vector3
““ 	
PointInRect
““
 
(
““ 
float
““ 
x
““ 
,
““ 
float
““ $
y
““% &
)
““& '
{
”” 	
x
‘‘ 
=
‘‘ 
Mathf
‘‘ 
.
‘‘ 
Lerp
‘‘ 
(
‘‘  
m_NeutralCurveRect
‘‘ -
.
‘‘- .
x
‘‘. /
,
‘‘/ 0 
m_NeutralCurveRect
‘‘1 C
.
‘‘C D
xMax
‘‘D H
,
‘‘H I
x
‘‘J K
/
‘‘L M
k_NeutralRangeX
‘‘N ]
)
‘‘] ^
;
‘‘^ _
y
’’ 
=
’’ 
Mathf
’’ 
.
’’ 
Lerp
’’ 
(
’’  
m_NeutralCurveRect
’’ -
.
’’- .
yMax
’’. 2
,
’’2 3 
m_NeutralCurveRect
’’4 F
.
’’F G
y
’’G H
,
’’H I
y
’’J K
/
’’L M
k_NeutralRangeY
’’N ]
)
’’] ^
;
’’^ _
return
÷÷ 
new
÷÷ 
Vector3
÷÷ 
(
÷÷ 
x
÷÷  
,
÷÷  !
y
÷÷" #
,
÷÷# $
$num
÷÷% &
)
÷÷& '
;
÷÷' (
}
◊◊ 	
float
ŸŸ 
NeutralCurve
ŸŸ 
(
ŸŸ 
float
ŸŸ 
x
ŸŸ 
,
ŸŸ 
float
ŸŸ #
a
ŸŸ$ %
,
ŸŸ% &
float
ŸŸ' ,
b
ŸŸ- .
,
ŸŸ. /
float
ŸŸ0 5
c
ŸŸ6 7
,
ŸŸ7 8
float
ŸŸ9 >
d
ŸŸ? @
,
ŸŸ@ A
float
ŸŸB G
e
ŸŸH I
,
ŸŸI J
float
ŸŸK P
f
ŸŸQ R
)
ŸŸR S
{
⁄⁄ 
return
€€ 	
(
€€
 
(
€€ 
x
€€ 
*
€€ 
(
€€ 
a
€€ 
*
€€ 
x
€€ 
+
€€ 
c
€€ 
*
€€ 
b
€€ 
)
€€ 
+
€€  !
d
€€" #
*
€€$ %
e
€€& '
)
€€' (
/
€€) *
(
€€+ ,
x
€€, -
*
€€. /
(
€€0 1
a
€€1 2
*
€€3 4
x
€€5 6
+
€€7 8
b
€€9 :
)
€€: ;
+
€€< =
d
€€> ?
*
€€@ A
f
€€B C
)
€€C D
)
€€D E
-
€€F G
e
€€H I
/
€€J K
f
€€L M
;
€€M N
}
‹‹ 
float
ﬁﬁ 

NeutralTonemap
ﬁﬁ 
(
ﬁﬁ 
float
ﬁﬁ 
x
ﬁﬁ  !
,
ﬁﬁ! "
float
ﬁﬁ# (
a
ﬁﬁ) *
,
ﬁﬁ* +
float
ﬁﬁ, 1
b
ﬁﬁ2 3
,
ﬁﬁ3 4
float
ﬁﬁ5 :
c
ﬁﬁ; <
,
ﬁﬁ< =
float
ﬁﬁ> C
d
ﬁﬁD E
,
ﬁﬁE F
float
ﬁﬁG L
e
ﬁﬁM N
,
ﬁﬁN O
float
ﬁﬁP U
f
ﬁﬁV W
,
ﬁﬁW X
float
ﬁﬁY ^

whiteLevel
ﬁﬁ_ i
,
ﬁﬁi j
float
ﬁﬁk p
	whiteClip
ﬁﬁq z
)
ﬁﬁz {
{
ﬂﬂ 
x
‡‡ 
=
‡‡ 
Mathf
‡‡ 
.
‡‡ 
Max
‡‡ 
(
‡‡ 
$num
‡‡ 
,
‡‡ 
x
‡‡ 
)
‡‡ 
;
‡‡ 
float
„„ 

whiteScale
„„	 
=
„„ 
$num
„„ 
/
„„ 
NeutralCurve
„„ '
(
„„' (

whiteLevel
„„( 2
,
„„2 3
a
„„4 5
,
„„5 6
b
„„7 8
,
„„8 9
c
„„: ;
,
„„; <
d
„„= >
,
„„> ?
e
„„@ A
,
„„A B
f
„„C D
)
„„D E
;
„„E F
x
‰‰ 
=
‰‰ 
NeutralCurve
‰‰ 
(
‰‰ 
x
‰‰ 
*
‰‰ 

whiteScale
‰‰ "
,
‰‰" #
a
‰‰$ %
,
‰‰% &
b
‰‰' (
,
‰‰( )
c
‰‰* +
,
‰‰+ ,
d
‰‰- .
,
‰‰. /
e
‰‰0 1
,
‰‰1 2
f
‰‰3 4
)
‰‰4 5
;
‰‰5 6
x
ÂÂ 
*=
ÂÂ 

whiteScale
ÂÂ 
;
ÂÂ 
x
ËË 
/=
ËË 
	whiteClip
ËË 
;
ËË 
return
ÍÍ 	
x
ÍÍ
 
;
ÍÍ 
}
ÎÎ 
void
ÌÌ 

DoBasicGUI
ÌÌ 
(
ÌÌ 
)
ÌÌ 
{
ÓÓ 	
EditorGUILayout
ÔÔ 
.
ÔÔ 
PropertyField
ÔÔ )
(
ÔÔ) *
m_Basic
ÔÔ* 1
.
ÔÔ1 2
exposure
ÔÔ2 :
,
ÔÔ: ;
EditorGUIHelper
ÔÔ< K
.
ÔÔK L

GetContent
ÔÔL V
(
ÔÔV W
$str
ÔÔW k
)
ÔÔk l
)
ÔÔl m
;
ÔÔm n
EditorGUILayout
 
.
 
PropertyField
 )
(
) *
m_Basic
* 1
.
1 2
temperature
2 =
)
= >
;
> ?
EditorGUILayout
ÒÒ 
.
ÒÒ 
PropertyField
ÒÒ )
(
ÒÒ) *
m_Basic
ÒÒ* 1
.
ÒÒ1 2
tint
ÒÒ2 6
)
ÒÒ6 7
;
ÒÒ7 8
EditorGUILayout
ÚÚ 
.
ÚÚ 
PropertyField
ÚÚ )
(
ÚÚ) *
m_Basic
ÚÚ* 1
.
ÚÚ1 2
hueShift
ÚÚ2 :
)
ÚÚ: ;
;
ÚÚ; <
EditorGUILayout
ÛÛ 
.
ÛÛ 
PropertyField
ÛÛ )
(
ÛÛ) *
m_Basic
ÛÛ* 1
.
ÛÛ1 2

saturation
ÛÛ2 <
)
ÛÛ< =
;
ÛÛ= >
EditorGUILayout
ÙÙ 
.
ÙÙ 
PropertyField
ÙÙ )
(
ÙÙ) *
m_Basic
ÙÙ* 1
.
ÙÙ1 2
contrast
ÙÙ2 :
)
ÙÙ: ;
;
ÙÙ; <
}
ıı 	
void
˜˜ 
DoChannelMixerGUI
˜˜ 
(
˜˜ 
)
˜˜  
{
¯¯ 	
int
˘˘ 
currentChannel
˘˘ 
=
˘˘  
m_ChannelMixer
˘˘! /
.
˘˘/ 0#
currentEditingChannel
˘˘0 E
.
˘˘E F
intValue
˘˘F N
;
˘˘N O
	EditorGUI
˚˚ 
.
˚˚ 
BeginChangeCheck
˚˚ &
(
˚˚& '
)
˚˚' (
;
˚˚( )
{
¸¸ 
using
˝˝ 
(
˝˝ 
new
˝˝ 
EditorGUILayout
˝˝ *
.
˝˝* +
HorizontalScope
˝˝+ :
(
˝˝: ;
)
˝˝; <
)
˝˝< =
{
˛˛ 
EditorGUILayout
ˇˇ #
.
ˇˇ# $
PrefixLabel
ˇˇ$ /
(
ˇˇ/ 0
$str
ˇˇ0 9
)
ˇˇ9 :
;
ˇˇ: ;
if
ÄÄ 
(
ÄÄ 
	GUILayout
ÄÄ !
.
ÄÄ! "
Toggle
ÄÄ" (
(
ÄÄ( )
currentChannel
ÄÄ) 7
==
ÄÄ8 :
$num
ÄÄ; <
,
ÄÄ< =
EditorGUIHelper
ÄÄ> M
.
ÄÄM N

GetContent
ÄÄN X
(
ÄÄX Y
$str
ÄÄY r
)
ÄÄr s
,
ÄÄs t
EditorStylesÄÄu Å
.ÄÄÅ Ç
miniButtonLeftÄÄÇ ê
)ÄÄê ë
)ÄÄë í
currentChannelÄÄì °
=ÄÄ¢ £
$numÄÄ§ •
;ÄÄ• ¶
if
ÅÅ 
(
ÅÅ 
	GUILayout
ÅÅ !
.
ÅÅ! "
Toggle
ÅÅ" (
(
ÅÅ( )
currentChannel
ÅÅ) 7
==
ÅÅ8 :
$num
ÅÅ; <
,
ÅÅ< =
EditorGUIHelper
ÅÅ> M
.
ÅÅM N

GetContent
ÅÅN X
(
ÅÅX Y
$str
ÅÅY v
)
ÅÅv w
,
ÅÅw x
EditorStylesÅÅy Ö
.ÅÅÖ Ü
miniButtonMidÅÅÜ ì
)ÅÅì î
)ÅÅî ï
currentChannelÅÅñ §
=ÅÅ• ¶
$numÅÅß ®
;ÅÅ® ©
if
ÇÇ 
(
ÇÇ 
	GUILayout
ÇÇ !
.
ÇÇ! "
Toggle
ÇÇ" (
(
ÇÇ( )
currentChannel
ÇÇ) 7
==
ÇÇ8 :
$num
ÇÇ; <
,
ÇÇ< =
EditorGUIHelper
ÇÇ> M
.
ÇÇM N

GetContent
ÇÇN X
(
ÇÇX Y
$str
ÇÇY t
)
ÇÇt u
,
ÇÇu v
EditorStylesÇÇw É
.ÇÇÉ Ñ
miniButtonRightÇÇÑ ì
)ÇÇì î
)ÇÇî ï
currentChannelÇÇñ §
=ÇÇ• ¶
$numÇÇß ®
;ÇÇ® ©
}
ÉÉ 
}
ÑÑ 
if
ÖÖ 
(
ÖÖ 
	EditorGUI
ÖÖ 
.
ÖÖ 
EndChangeCheck
ÖÖ (
(
ÖÖ( )
)
ÖÖ) *
)
ÖÖ* +
{
ÜÜ 
GUI
áá 
.
áá 
FocusControl
áá  
(
áá  !
null
áá! %
)
áá% &
;
áá& '
}
àà 
var
ää 
serializedChannel
ää !
=
ää" #
m_ChannelMixer
ää$ 2
.
ää2 3
channels
ää3 ;
[
ää; <
currentChannel
ää< J
]
ääJ K
;
ääK L
m_ChannelMixer
ãã 
.
ãã #
currentEditingChannel
ãã 0
.
ãã0 1
intValue
ãã1 9
=
ãã: ;
currentChannel
ãã< J
;
ããJ K
var
çç 
v
çç 
=
çç 
serializedChannel
çç %
.
çç% &
vector3Value
çç& 2
;
çç2 3
v
éé 
.
éé 
x
éé 
=
éé 
EditorGUILayout
éé !
.
éé! "
Slider
éé" (
(
éé( )
EditorGUIHelper
éé) 8
.
éé8 9

GetContent
éé9 C
(
ééC D
$strééD Ö
)ééÖ Ü
,ééÜ á
vééà â
.ééâ ä
xééä ã
,ééã å
-ééç é
$numééé ê
,ééê ë
$numééí î
)ééî ï
;ééï ñ
v
èè 
.
èè 
y
èè 
=
èè 
EditorGUILayout
èè !
.
èè! "
Slider
èè" (
(
èè( )
EditorGUIHelper
èè) 8
.
èè8 9

GetContent
èè9 C
(
èèC D
$strèèD â
)èèâ ä
,èèä ã
vèèå ç
.èèç é
yèèé è
,èèè ê
-èèë í
$numèèí î
,èèî ï
$numèèñ ò
)èèò ô
;èèô ö
v
êê 
.
êê 
z
êê 
=
êê 
EditorGUILayout
êê !
.
êê! "
Slider
êê" (
(
êê( )
EditorGUIHelper
êê) 8
.
êê8 9

GetContent
êê9 C
(
êêC D
$strêêD á
)êêá à
,êêà â
vêêä ã
.êêã å
zêêå ç
,êêç é
-êêè ê
$numêêê í
,êêí ì
$numêêî ñ
)êêñ ó
;êêó ò
serializedChannel
ëë 
.
ëë 
vector3Value
ëë *
=
ëë+ ,
v
ëë- .
;
ëë. /
}
íí 	
void
îî 
DoColorWheelsGUI
îî 
(
îî 
)
îî 
{
ïï 	
int
ññ	 
	wheelMode
ññ 
=
ññ 
m_ColorWheels
ññ &
.
ññ& '
mode
ññ' +
.
ññ+ ,
intValue
ññ, 4
;
ññ4 5
using
òò	 
(
òò 
new
òò 
EditorGUILayout
òò #
.
òò# $
HorizontalScope
òò$ 3
(
òò3 4
)
òò4 5
)
òò5 6
{
ôô	 

	GUILayout
öö
 
.
öö 
Space
öö 
(
öö 
$num
öö 
)
öö 
;
öö 
if
õõ
 
(
õõ 
	GUILayout
õõ 
.
õõ 
Toggle
õõ 
(
õõ 
	wheelMode
õõ (
==
õõ) +
(
õõ, -
int
õõ- 0
)
õõ0 1
ColorWheelMode
õõ1 ?
.
õõ? @
Linear
õõ@ F
,
õõF G
$str
õõH P
,
õõP Q
EditorStyles
õõR ^
.
õõ^ _
miniButtonLeft
õõ_ m
)
õõm n
)
õõn o
	wheelMode
õõp y
=
õõz {
(
õõ| }
intõõ} Ä
)õõÄ Å
ColorWheelModeõõÅ è
.õõè ê
Linearõõê ñ
;õõñ ó
if
úú
 
(
úú 
	GUILayout
úú 
.
úú 
Toggle
úú 
(
úú 
	wheelMode
úú (
==
úú) +
(
úú, -
int
úú- 0
)
úú0 1
ColorWheelMode
úú1 ?
.
úú? @
Log
úú@ C
,
úúC D
$str
úúE J
,
úúJ K
EditorStyles
úúL X
.
úúX Y
miniButtonRight
úúY h
)
úúh i
)
úúi j
	wheelMode
úúk t
=
úúu v
(
úúw x
int
úúx {
)
úú{ |
ColorWheelModeúú| ä
.úúä ã
Logúúã é
;úúé è
}
ùù	 

m_ColorWheels
üü	 
.
üü 
mode
üü 
.
üü 
intValue
üü $
=
üü% &
	wheelMode
üü' 0
;
üü0 1
EditorGUILayout
††	 
.
†† 
Space
†† 
(
†† 
)
††  
;
††  !
if
¢¢	 
(
¢¢ 
	wheelMode
¢¢ 
==
¢¢ 
(
¢¢ 
int
¢¢ 
)
¢¢ 
ColorWheelMode
¢¢ -
.
¢¢- .
Linear
¢¢. 4
)
¢¢4 5
{
££	 

EditorGUILayout
§§
 
.
§§ 
PropertyField
§§ '
(
§§' (
m_ColorWheels
§§( 5
.
§§5 6
linear
§§6 <
)
§§< =
;
§§= >
WheelSetTitle
••
 
(
•• 
GUILayoutUtility
•• (
.
••( )
GetLastRect
••) 4
(
••4 5
)
••5 6
,
••6 7
$str
••8 I
)
••I J
;
••J K
}
¶¶	 

else
ßß 
if
ßß 

(
ßß 
	wheelMode
ßß 
==
ßß 
(
ßß 
int
ßß 
)
ßß 
ColorWheelMode
ßß ,
.
ßß, -
Log
ßß- 0
)
ßß0 1
{
®® 
EditorGUILayout
©© 
.
©© 
PropertyField
©© !
(
©©! "
m_ColorWheels
©©" /
.
©©/ 0
log
©©0 3
)
©©3 4
;
©©4 5
WheelSetTitle
™™ 
(
™™ 
GUILayoutUtility
™™ "
.
™™" #
GetLastRect
™™# .
(
™™. /
)
™™/ 0
,
™™0 1
$str
™™2 @
)
™™@ A
;
™™A B
}
´´ 
}
¨¨ 	
static
ÆÆ 
void
ÆÆ 
WheelSetTitle
ÆÆ !
(
ÆÆ! "
Rect
ÆÆ" &
position
ÆÆ' /
,
ÆÆ/ 0
string
ÆÆ1 7
label
ÆÆ8 =
)
ÆÆ= >
{
ØØ 	
var
∞∞ 
matrix
∞∞ 
=
∞∞ 
GUI
∞∞ 
.
∞∞ 
matrix
∞∞ #
;
∞∞# $
var
±± 
rect
±± 
=
±± 
new
±± 
Rect
±± 
(
±±  
position
±±  (
.
±±( )
x
±±) *
-
±±+ ,
$num
±±- 0
,
±±0 1
position
±±2 :
.
±±: ;
y
±±; <
,
±±< ="
TrackballGroupDrawer
±±> R
.
±±R S
m_Size
±±S Y
,
±±Y Z"
TrackballGroupDrawer
±±[ o
.
±±o p
m_Size
±±p v
)
±±v w
;
±±w x

GUIUtility
≤≤ 
.
≤≤ 
RotateAroundPivot
≤≤ (
(
≤≤( )
-
≤≤) *
$num
≤≤* -
,
≤≤- .
rect
≤≤/ 3
.
≤≤3 4
center
≤≤4 :
)
≤≤: ;
;
≤≤; <
GUI
≥≥ 
.
≥≥ 
Label
≥≥ 
(
≥≥ 
rect
≥≥ 
,
≥≥ 
label
≥≥ !
,
≥≥! "
FxStyles
≥≥# +
.
≥≥+ ,
centeredMiniLabel
≥≥, =
)
≥≥= >
;
≥≥> ?
GUI
¥¥ 
.
¥¥ 
matrix
¥¥ 
=
¥¥ 
matrix
¥¥ 
;
¥¥  
}
µµ 	
void
∑∑  
ResetVisibleCurves
∑∑ 
(
∑∑  
)
∑∑  !
{
∏∏ 	
foreach
ππ 
(
ππ 
var
ππ 
curve
ππ 
in
ππ !
m_CurveDict
ππ" -
)
ππ- .
{
∫∫ 
var
ªª 
state
ªª 
=
ªª 
m_CurveEditor
ªª )
.
ªª) *
GetCurveState
ªª* 7
(
ªª7 8
curve
ªª8 =
.
ªª= >
Key
ªª> A
)
ªªA B
;
ªªB C
state
ºº 
.
ºº 
visible
ºº 
=
ºº 
false
ºº  %
;
ºº% &
m_CurveEditor
ΩΩ 
.
ΩΩ 
SetCurveState
ΩΩ +
(
ΩΩ+ ,
curve
ΩΩ, 1
.
ΩΩ1 2
Key
ΩΩ2 5
,
ΩΩ5 6
state
ΩΩ7 <
)
ΩΩ< =
;
ΩΩ= >
}
ææ 
}
øø 	
void
¡¡ 
SetCurveVisible
¡¡ 
(
¡¡  
SerializedProperty
¡¡ /
prop
¡¡0 4
)
¡¡4 5
{
¬¬ 	
var
√√ 
state
√√ 
=
√√ 
m_CurveEditor
√√ %
.
√√% &
GetCurveState
√√& 3
(
√√3 4
prop
√√4 8
)
√√8 9
;
√√9 :
state
ƒƒ 
.
ƒƒ 
visible
ƒƒ 
=
ƒƒ 
true
ƒƒ  
;
ƒƒ  !
m_CurveEditor
≈≈ 
.
≈≈ 
SetCurveState
≈≈ '
(
≈≈' (
prop
≈≈( ,
,
≈≈, -
state
≈≈. 3
)
≈≈3 4
;
≈≈4 5
}
∆∆ 	
bool
»» 
SpecialToggle
»» 
(
»» 
bool
»» 
value
»»  %
,
»»% &
string
»»' -
name
»». 2
,
»»2 3
out
»»4 7
bool
»»8 <
rightClicked
»»= I
)
»»I J
{
…… 	
var
   
rect
   
=
   
GUILayoutUtility
   '
.
  ' (
GetRect
  ( /
(
  / 0
EditorGUIHelper
  0 ?
.
  ? @

GetContent
  @ J
(
  J K
name
  K O
)
  O P
,
  P Q
EditorStyles
  R ^
.
  ^ _
toolbarButton
  _ l
)
  l m
;
  m n
var
ÃÃ 
e
ÃÃ 
=
ÃÃ 
Event
ÃÃ 
.
ÃÃ 
current
ÃÃ !
;
ÃÃ! "
rightClicked
ÕÕ 
=
ÕÕ 
(
ÕÕ 
e
ÕÕ 
.
ÕÕ 
type
ÕÕ "
==
ÕÕ# %
	EventType
ÕÕ& /
.
ÕÕ/ 0
MouseUp
ÕÕ0 7
&&
ÕÕ8 :
rect
ÕÕ; ?
.
ÕÕ? @
Contains
ÕÕ@ H
(
ÕÕH I
e
ÕÕI J
.
ÕÕJ K
mousePosition
ÕÕK X
)
ÕÕX Y
&&
ÕÕZ \
e
ÕÕ] ^
.
ÕÕ^ _
button
ÕÕ_ e
==
ÕÕf h
$num
ÕÕi j
)
ÕÕj k
;
ÕÕk l
return
œœ 
GUI
œœ 
.
œœ 
Toggle
œœ 
(
œœ 
rect
œœ "
,
œœ" #
value
œœ$ )
,
œœ) *
name
œœ+ /
,
œœ/ 0
EditorStyles
œœ1 =
.
œœ= >
toolbarButton
œœ> K
)
œœK L
;
œœL M
}
–– 	
static
““ 
Material
““ 
s_MaterialSpline
““ (
;
““( )
void
‘‘ 
DoCurvesGUI
‘‘ 
(
‘‘ 
)
‘‘ 
{
’’ 	
EditorGUILayout
÷÷ 
.
÷÷ 
Space
÷÷ !
(
÷÷! "
)
÷÷" #
;
÷÷# $
	EditorGUI
◊◊ 
.
◊◊ 
indentLevel
◊◊ !
-=
◊◊" $
$num
◊◊% &
;
◊◊& ' 
ResetVisibleCurves
ÿÿ 
(
ÿÿ 
)
ÿÿ  
;
ÿÿ  !
using
⁄⁄ 
(
⁄⁄ 
new
⁄⁄ 
	EditorGUI
⁄⁄  
.
⁄⁄  ! 
DisabledGroupScope
⁄⁄! 3
(
⁄⁄3 4 
serializedProperty
⁄⁄4 F
.
⁄⁄F G
serializedObject
⁄⁄G W
.
⁄⁄W X&
isEditingMultipleObjects
⁄⁄X p
)
⁄⁄p q
)
⁄⁄q r
{
€€ 
int
‹‹ 
curveEditingId
‹‹ "
=
‹‹# $
$num
‹‹% &
;
‹‹& '
using
ﬂﬂ 
(
ﬂﬂ 
new
ﬂﬂ 
	GUILayout
ﬂﬂ $
.
ﬂﬂ$ %
HorizontalScope
ﬂﬂ% 4
(
ﬂﬂ4 5
EditorStyles
ﬂﬂ5 A
.
ﬂﬂA B
toolbar
ﬂﬂB I
)
ﬂﬂI J
)
ﬂﬂJ K
{
‡‡ 
curveEditingId
·· "
=
··# $
EditorGUILayout
··% 4
.
··4 5
Popup
··5 :
(
··: ;
m_Curves
··; C
.
··C D!
currentEditingCurve
··D W
.
··W X
intValue
··X `
,
··` a
s_Curves
··b j
,
··j k
EditorStyles
··l x
.
··x y
toolbarPopup··y Ö
,··Ö Ü
	GUILayout··á ê
.··ê ë
MaxWidth··ë ô
(··ô ö
$num··ö û
)··û ü
)··ü †
;··† °
bool
‚‚ 
y
‚‚ 
=
‚‚ 
false
‚‚ "
,
‚‚" #
r
‚‚$ %
=
‚‚& '
false
‚‚( -
,
‚‚- .
g
‚‚/ 0
=
‚‚1 2
false
‚‚3 8
,
‚‚8 9
b
‚‚: ;
=
‚‚< =
false
‚‚> C
;
‚‚C D
if
‰‰ 
(
‰‰ 
curveEditingId
‰‰ &
==
‰‰' )
$num
‰‰* +
)
‰‰+ ,
{
ÂÂ 
EditorGUILayout
ÊÊ '
.
ÊÊ' (
Space
ÊÊ( -
(
ÊÊ- .
)
ÊÊ. /
;
ÊÊ/ 0
bool
ËË 
rightClickedY
ËË *
,
ËË* +
rightClickedR
ËË, 9
,
ËË9 :
rightClickedG
ËË; H
,
ËËH I
rightClickedB
ËËJ W
;
ËËW X
y
ÍÍ 
=
ÍÍ 
SpecialToggle
ÍÍ )
(
ÍÍ) *
m_Curves
ÍÍ* 2
.
ÍÍ2 3
curveY
ÍÍ3 9
.
ÍÍ9 :
	boolValue
ÍÍ: C
,
ÍÍC D
$str
ÍÍE H
,
ÍÍH I
out
ÍÍJ M
rightClickedY
ÍÍN [
)
ÍÍ[ \
;
ÍÍ\ ]
r
ÎÎ 
=
ÎÎ 
SpecialToggle
ÎÎ )
(
ÎÎ) *
m_Curves
ÎÎ* 2
.
ÎÎ2 3
curveR
ÎÎ3 9
.
ÎÎ9 :
	boolValue
ÎÎ: C
,
ÎÎC D
$str
ÎÎE H
,
ÎÎH I
out
ÎÎJ M
rightClickedR
ÎÎN [
)
ÎÎ[ \
;
ÎÎ\ ]
g
ÏÏ 
=
ÏÏ 
SpecialToggle
ÏÏ )
(
ÏÏ) *
m_Curves
ÏÏ* 2
.
ÏÏ2 3
curveG
ÏÏ3 9
.
ÏÏ9 :
	boolValue
ÏÏ: C
,
ÏÏC D
$str
ÏÏE H
,
ÏÏH I
out
ÏÏJ M
rightClickedG
ÏÏN [
)
ÏÏ[ \
;
ÏÏ\ ]
b
ÌÌ 
=
ÌÌ 
SpecialToggle
ÌÌ )
(
ÌÌ) *
m_Curves
ÌÌ* 2
.
ÌÌ2 3
curveB
ÌÌ3 9
.
ÌÌ9 :
	boolValue
ÌÌ: C
,
ÌÌC D
$str
ÌÌE H
,
ÌÌH I
out
ÌÌJ M
rightClickedB
ÌÌN [
)
ÌÌ[ \
;
ÌÌ\ ]
if
ÔÔ 
(
ÔÔ 
!
ÔÔ 
y
ÔÔ 
&&
ÔÔ !
!
ÔÔ" #
r
ÔÔ# $
&&
ÔÔ% '
!
ÔÔ( )
g
ÔÔ) *
&&
ÔÔ+ -
!
ÔÔ. /
b
ÔÔ/ 0
)
ÔÔ0 1
{
 
r
ÒÒ 
=
ÒÒ 
g
ÒÒ  !
=
ÒÒ" #
b
ÒÒ$ %
=
ÒÒ& '
false
ÒÒ( -
;
ÒÒ- .
y
ÚÚ 
=
ÚÚ 
true
ÚÚ  $
;
ÚÚ$ %
}
ÛÛ 
if
ıı 
(
ıı 
rightClickedY
ıı )
||
ıı* ,
rightClickedR
ıı- :
||
ıı; =
rightClickedG
ıı> K
||
ııL N
rightClickedB
ııO \
)
ıı\ ]
{
ˆˆ 
y
˜˜ 
=
˜˜ 
rightClickedY
˜˜  -
;
˜˜- .
r
¯¯ 
=
¯¯ 
rightClickedR
¯¯  -
;
¯¯- .
g
˘˘ 
=
˘˘ 
rightClickedG
˘˘  -
;
˘˘- .
b
˙˙ 
=
˙˙ 
rightClickedB
˙˙  -
;
˙˙- .
}
˚˚ 
if
˝˝ 
(
˝˝ 
y
˝˝ 
)
˝˝ 
SetCurveVisible
˝˝ .
(
˝˝. /
m_Curves
˝˝/ 7
.
˝˝7 8
master
˝˝8 >
)
˝˝> ?
;
˝˝? @
if
˛˛ 
(
˛˛ 
r
˛˛ 
)
˛˛ 
SetCurveVisible
˛˛ .
(
˛˛. /
m_Curves
˛˛/ 7
.
˛˛7 8
red
˛˛8 ;
)
˛˛; <
;
˛˛< =
if
ˇˇ 
(
ˇˇ 
g
ˇˇ 
)
ˇˇ 
SetCurveVisible
ˇˇ .
(
ˇˇ. /
m_Curves
ˇˇ/ 7
.
ˇˇ7 8
green
ˇˇ8 =
)
ˇˇ= >
;
ˇˇ> ?
if
ÄÄ 
(
ÄÄ 
b
ÄÄ 
)
ÄÄ 
SetCurveVisible
ÄÄ .
(
ÄÄ. /
m_Curves
ÄÄ/ 7
.
ÄÄ7 8
blue
ÄÄ8 <
)
ÄÄ< =
;
ÄÄ= >
m_Curves
ÇÇ  
.
ÇÇ  !
curveY
ÇÇ! '
.
ÇÇ' (
	boolValue
ÇÇ( 1
=
ÇÇ2 3
y
ÇÇ4 5
;
ÇÇ5 6
m_Curves
ÉÉ  
.
ÉÉ  !
curveR
ÉÉ! '
.
ÉÉ' (
	boolValue
ÉÉ( 1
=
ÉÉ2 3
r
ÉÉ4 5
;
ÉÉ5 6
m_Curves
ÑÑ  
.
ÑÑ  !
curveG
ÑÑ! '
.
ÑÑ' (
	boolValue
ÑÑ( 1
=
ÑÑ2 3
g
ÑÑ4 5
;
ÑÑ5 6
m_Curves
ÖÖ  
.
ÖÖ  !
curveB
ÖÖ! '
.
ÖÖ' (
	boolValue
ÖÖ( 1
=
ÖÖ2 3
b
ÖÖ4 5
;
ÖÖ5 6
}
ÜÜ 
else
áá 
{
àà 
switch
ââ 
(
ââ  
curveEditingId
ââ  .
)
ââ. /
{
ää 
case
ãã  
$num
ãã! "
:
ãã" #
SetCurveVisible
ãã$ 3
(
ãã3 4
m_Curves
ãã4 <
.
ãã< =
hueVShue
ãã= E
)
ããE F
;
ããF G
break
åå  %
;
åå% &
case
çç  
$num
çç! "
:
çç" #
SetCurveVisible
çç$ 3
(
çç3 4
m_Curves
çç4 <
.
çç< =
hueVSsat
çç= E
)
ççE F
;
ççF G
break
éé  %
;
éé% &
case
èè  
$num
èè! "
:
èè" #
SetCurveVisible
èè$ 3
(
èè3 4
m_Curves
èè4 <
.
èè< =
satVSsat
èè= E
)
èèE F
;
èèF G
break
êê  %
;
êê% &
case
ëë  
$num
ëë! "
:
ëë" #
SetCurveVisible
ëë$ 3
(
ëë3 4
m_Curves
ëë4 <
.
ëë< =
lumVSsat
ëë= E
)
ëëE F
;
ëëF G
break
íí  %
;
íí% &
}
ìì 
}
îî 
	GUILayout
ññ 
.
ññ 
FlexibleSpace
ññ +
(
ññ+ ,
)
ññ, -
;
ññ- .
if
òò 
(
òò 
	GUILayout
òò !
.
òò! "
Button
òò" (
(
òò( )
$str
òò) 0
,
òò0 1
EditorStyles
òò2 >
.
òò> ?
toolbarButton
òò? L
)
òòL M
)
òòM N
{
ôô 
switch
öö 
(
öö  
curveEditingId
öö  .
)
öö. /
{
õõ 
case
úú  
$num
úú! "
:
úú" #
if
ùù  "
(
ùù# $
y
ùù$ %
)
ùù% &
m_Curves
ùù' /
.
ùù/ 0
master
ùù0 6
.
ùù6 7!
animationCurveValue
ùù7 J
=
ùùK L
AnimationCurve
ùùM [
.
ùù[ \
Linear
ùù\ b
(
ùùb c
$num
ùùc e
,
ùùe f
$num
ùùg i
,
ùùi j
$num
ùùk m
,
ùùm n
$num
ùùo q
)
ùùq r
;
ùùr s
if
ûû  "
(
ûû# $
r
ûû$ %
)
ûû% &
m_Curves
ûû' /
.
ûû/ 0
red
ûû0 3
.
ûû3 4!
animationCurveValue
ûû4 G
=
ûûK L
AnimationCurve
ûûM [
.
ûû[ \
Linear
ûû\ b
(
ûûb c
$num
ûûc e
,
ûûe f
$num
ûûg i
,
ûûi j
$num
ûûk m
,
ûûm n
$num
ûûo q
)
ûûq r
;
ûûr s
if
üü  "
(
üü# $
g
üü$ %
)
üü% &
m_Curves
üü' /
.
üü/ 0
green
üü0 5
.
üü5 6!
animationCurveValue
üü6 I
=
üüK L
AnimationCurve
üüM [
.
üü[ \
Linear
üü\ b
(
üüb c
$num
üüc e
,
üüe f
$num
üüg i
,
üüi j
$num
üük m
,
üüm n
$num
üüo q
)
üüq r
;
üür s
if
††  "
(
††# $
b
††$ %
)
††% &
m_Curves
††' /
.
††/ 0
blue
††0 4
.
††4 5!
animationCurveValue
††5 H
=
††K L
AnimationCurve
††M [
.
††[ \
Linear
††\ b
(
††b c
$num
††c e
,
††e f
$num
††g i
,
††i j
$num
††k m
,
††m n
$num
††o q
)
††q r
;
††r s
break
°°  %
;
°°% &
case
¢¢  
$num
¢¢! "
:
¢¢" #
m_Curves
¢¢$ ,
.
¢¢, -
hueVShue
¢¢- 5
.
¢¢5 6!
animationCurveValue
¢¢6 I
=
¢¢J K
new
¢¢L O
AnimationCurve
¢¢P ^
(
¢¢^ _
)
¢¢_ `
;
¢¢` a
break
££  %
;
££% &
case
§§  
$num
§§! "
:
§§" #
m_Curves
§§$ ,
.
§§, -
hueVSsat
§§- 5
.
§§5 6!
animationCurveValue
§§6 I
=
§§J K
new
§§L O
AnimationCurve
§§P ^
(
§§^ _
)
§§_ `
;
§§` a
break
••  %
;
••% &
case
¶¶  
$num
¶¶! "
:
¶¶" #
m_Curves
¶¶$ ,
.
¶¶, -
satVSsat
¶¶- 5
.
¶¶5 6!
animationCurveValue
¶¶6 I
=
¶¶J K
new
¶¶L O
AnimationCurve
¶¶P ^
(
¶¶^ _
)
¶¶_ `
;
¶¶` a
break
ßß  %
;
ßß% &
case
®®  
$num
®®! "
:
®®" #
m_Curves
®®$ ,
.
®®, -
lumVSsat
®®- 5
.
®®5 6!
animationCurveValue
®®6 I
=
®®J K
new
®®L O
AnimationCurve
®®P ^
(
®®^ _
)
®®_ `
;
®®` a
break
©©  %
;
©©% &
}
™™ 
}
´´ 
m_Curves
≠≠ 
.
≠≠ !
currentEditingCurve
≠≠ 0
.
≠≠0 1
intValue
≠≠1 9
=
≠≠: ;
curveEditingId
≠≠< J
;
≠≠J K
}
ÆÆ 
var
±± 
settings
±± 
=
±± 
m_CurveEditor
±± ,
.
±±, -
settings
±±- 5
;
±±5 6
var
≤≤ 
rect
≤≤ 
=
≤≤ 
GUILayoutUtility
≤≤ +
.
≤≤+ ,
GetAspectRect
≤≤, 9
(
≤≤9 :
$num
≤≤: <
)
≤≤< =
;
≤≤= >
var
≥≥ 
	innerRect
≥≥ 
=
≥≥ 
settings
≥≥  (
.
≥≥( )
padding
≥≥) 0
.
≥≥0 1
Remove
≥≥1 7
(
≥≥7 8
rect
≥≥8 <
)
≥≥< =
;
≥≥= >
if
µµ 
(
µµ 
Event
µµ 
.
µµ 
current
µµ !
.
µµ! "
type
µµ" &
==
µµ' )
	EventType
µµ* 3
.
µµ3 4
Repaint
µµ4 ;
)
µµ; <
{
∂∂ 
	EditorGUI
∏∏ 
.
∏∏ 
DrawRect
∏∏ &
(
∏∏& '
rect
∏∏' +
,
∏∏+ ,
new
∏∏- 0
Color
∏∏1 6
(
∏∏6 7
$num
∏∏7 <
,
∏∏< =
$num
∏∏> C
,
∏∏C D
$num
∏∏E J
,
∏∏J K
$num
∏∏L N
)
∏∏N O
)
∏∏O P
;
∏∏P Q
if
∫∫ 
(
∫∫ 
s_MaterialSpline
∫∫ (
==
∫∫) +
null
∫∫, 0
)
∫∫0 1
s_MaterialSpline
ªª (
=
ªª) *
new
ªª+ .
Material
ªª/ 7
(
ªª7 8
Shader
ªª8 >
.
ªª> ?
Find
ªª? C
(
ªªC D
$str
ªªD h
)
ªªh i
)
ªªi j
{
ªªk l
	hideFlags
ªªm v
=
ªªw x
	HideFlagsªªy Ç
.ªªÇ É
HideAndDontSaveªªÉ í
}ªªì î
;ªªî ï
if
ΩΩ 
(
ΩΩ 
curveEditingId
ΩΩ &
==
ΩΩ' )
$num
ΩΩ* +
||
ΩΩ, .
curveEditingId
ΩΩ/ =
==
ΩΩ> @
$num
ΩΩA B
)
ΩΩB C#
DrawBackgroundTexture
ææ -
(
ææ- .
	innerRect
ææ. 7
,
ææ7 8
$num
ææ9 :
)
ææ: ;
;
ææ; <
else
øø 
if
øø 
(
øø 
curveEditingId
øø +
==
øø, .
$num
øø/ 0
||
øø1 3
curveEditingId
øø4 B
==
øøC E
$num
øøF G
)
øøG H#
DrawBackgroundTexture
¿¿ -
(
¿¿- .
	innerRect
¿¿. 7
,
¿¿7 8
$num
¿¿9 :
)
¿¿: ;
;
¿¿; <
Handles
√√ 
.
√√ 
color
√√ !
=
√√" #
Color
√√$ )
.
√√) *
white
√√* /
;
√√/ 0
Handles
ƒƒ 
.
ƒƒ +
DrawSolidRectangleWithOutline
ƒƒ 9
(
ƒƒ9 :
	innerRect
ƒƒ: C
,
ƒƒC D
Color
ƒƒE J
.
ƒƒJ K
clear
ƒƒK P
,
ƒƒP Q
new
ƒƒR U
Color
ƒƒV [
(
ƒƒ[ \
$num
ƒƒ\ `
,
ƒƒ` a
$num
ƒƒb f
,
ƒƒf g
$num
ƒƒh l
,
ƒƒl m
$num
ƒƒn r
)
ƒƒr s
)
ƒƒs t
;
ƒƒt u
Handles
«« 
.
«« 
color
«« !
=
««" #
new
««$ '
Color
««( -
(
««- .
$num
««. 0
,
««0 1
$num
««2 4
,
««4 5
$num
««6 8
,
««8 9
$num
««: ?
)
««? @
;
««@ A
int
»» 
hLines
»» 
=
»»  
(
»»! "
int
»»" %
)
»»% &
Mathf
»»& +
.
»»+ ,
Sqrt
»», 0
(
»»0 1
	innerRect
»»1 :
.
»»: ;
width
»»; @
)
»»@ A
;
»»A B
int
…… 
vLines
…… 
=
……  
(
……! "
int
……" %
)
……% &
(
……& '
hLines
……' -
/
……. /
(
……0 1
	innerRect
……1 :
.
……: ;
width
……; @
/
……A B
	innerRect
……C L
.
……L M
height
……M S
)
……S T
)
……T U
;
……U V
int
ÃÃ 

gridOffset
ÃÃ "
=
ÃÃ# $
Mathf
ÃÃ% *
.
ÃÃ* +

FloorToInt
ÃÃ+ 5
(
ÃÃ5 6
	innerRect
ÃÃ6 ?
.
ÃÃ? @
width
ÃÃ@ E
/
ÃÃF G
hLines
ÃÃH N
)
ÃÃN O
;
ÃÃO P
int
ÕÕ 
gridPadding
ÕÕ #
=
ÕÕ$ %
(
ÕÕ& '
(
ÕÕ' (
int
ÕÕ( +
)
ÕÕ+ ,
(
ÕÕ, -
	innerRect
ÕÕ- 6
.
ÕÕ6 7
width
ÕÕ7 <
)
ÕÕ< =
%
ÕÕ> ?
hLines
ÕÕ@ F
)
ÕÕF G
/
ÕÕH I
$num
ÕÕJ K
;
ÕÕK L
for
œœ 
(
œœ 
int
œœ 
i
œœ 
=
œœ  
$num
œœ! "
;
œœ" #
i
œœ$ %
<
œœ& '
hLines
œœ( .
;
œœ. /
i
œœ0 1
++
œœ1 3
)
œœ3 4
{
–– 
var
—— 
offset
—— "
=
——# $
i
——% &
*
——' (
Vector2
——) 0
.
——0 1
right
——1 6
*
——7 8

gridOffset
——9 C
;
——C D
offset
““ 
.
““ 
x
““  
+=
““! #
gridPadding
““$ /
;
““/ 0
Handles
”” 
.
””  
DrawLine
””  (
(
””( )
	innerRect
””) 2
.
””2 3
position
””3 ;
+
””< =
offset
””> D
,
””D E
new
””F I
Vector2
””J Q
(
””Q R
	innerRect
””R [
.
””[ \
x
””\ ]
,
””] ^
	innerRect
””_ h
.
””h i
yMax
””i m
-
””n o
$num
””p q
)
””q r
+
””s t
offset
””u {
)
””{ |
;
””| }
}
‘‘ 

gridOffset
◊◊ 
=
◊◊  
Mathf
◊◊! &
.
◊◊& '

FloorToInt
◊◊' 1
(
◊◊1 2
	innerRect
◊◊2 ;
.
◊◊; <
height
◊◊< B
/
◊◊C D
vLines
◊◊E K
)
◊◊K L
;
◊◊L M
gridPadding
ÿÿ 
=
ÿÿ  !
(
ÿÿ" #
(
ÿÿ# $
int
ÿÿ$ '
)
ÿÿ' (
(
ÿÿ( )
	innerRect
ÿÿ) 2
.
ÿÿ2 3
height
ÿÿ3 9
)
ÿÿ9 :
%
ÿÿ; <
vLines
ÿÿ= C
)
ÿÿC D
/
ÿÿE F
$num
ÿÿG H
;
ÿÿH I
for
⁄⁄ 
(
⁄⁄ 
int
⁄⁄ 
i
⁄⁄ 
=
⁄⁄  
$num
⁄⁄! "
;
⁄⁄" #
i
⁄⁄$ %
<
⁄⁄& '
vLines
⁄⁄( .
;
⁄⁄. /
i
⁄⁄0 1
++
⁄⁄1 3
)
⁄⁄3 4
{
€€ 
var
‹‹ 
offset
‹‹ "
=
‹‹# $
i
‹‹% &
*
‹‹' (
Vector2
‹‹) 0
.
‹‹0 1
up
‹‹1 3
*
‹‹4 5

gridOffset
‹‹6 @
;
‹‹@ A
offset
›› 
.
›› 
y
››  
+=
››! #
gridPadding
››$ /
;
››/ 0
Handles
ﬁﬁ 
.
ﬁﬁ  
DrawLine
ﬁﬁ  (
(
ﬁﬁ( )
	innerRect
ﬁﬁ) 2
.
ﬁﬁ2 3
position
ﬁﬁ3 ;
+
ﬁﬁ< =
offset
ﬁﬁ> D
,
ﬁﬁD E
new
ﬁﬁF I
Vector2
ﬁﬁJ Q
(
ﬁﬁQ R
	innerRect
ﬁﬁR [
.
ﬁﬁ[ \
xMax
ﬁﬁ\ `
-
ﬁﬁa b
$num
ﬁﬁc d
,
ﬁﬁd e
	innerRect
ﬁﬁf o
.
ﬁﬁo p
y
ﬁﬁp q
)
ﬁﬁq r
+
ﬁﬁs t
offset
ﬁﬁu {
)
ﬁﬁ{ |
;
ﬁﬁ| }
}
ﬂﬂ 
}
‡‡ 
if
„„ 
(
„„ 
m_CurveEditor
„„ !
.
„„! "
OnGUI
„„" '
(
„„' (
rect
„„( ,
)
„„, -
)
„„- .
{
‰‰ 
Repaint
ÂÂ 
(
ÂÂ 
)
ÂÂ 
;
ÂÂ 
GUI
ÊÊ 
.
ÊÊ 
changed
ÊÊ 
=
ÊÊ  !
true
ÊÊ" &
;
ÊÊ& '
}
ÁÁ 
if
ÈÈ 
(
ÈÈ 
Event
ÈÈ 
.
ÈÈ 
current
ÈÈ !
.
ÈÈ! "
type
ÈÈ" &
==
ÈÈ' )
	EventType
ÈÈ* 3
.
ÈÈ3 4
Repaint
ÈÈ4 ;
)
ÈÈ; <
{
ÍÍ 
Handles
ÏÏ 
.
ÏÏ 
color
ÏÏ !
=
ÏÏ" #
Color
ÏÏ$ )
.
ÏÏ) *
black
ÏÏ* /
;
ÏÏ/ 0
Handles
ÌÌ 
.
ÌÌ 
DrawLine
ÌÌ $
(
ÌÌ$ %
new
ÌÌ% (
Vector2
ÌÌ) 0
(
ÌÌ0 1
rect
ÌÌ1 5
.
ÌÌ5 6
x
ÌÌ6 7
,
ÌÌ7 8
rect
ÌÌ9 =
.
ÌÌ= >
y
ÌÌ> ?
-
ÌÌ@ A
$num
ÌÌB E
)
ÌÌE F
,
ÌÌF G
new
ÌÌH K
Vector2
ÌÌL S
(
ÌÌS T
rect
ÌÌT X
.
ÌÌX Y
xMax
ÌÌY ]
,
ÌÌ] ^
rect
ÌÌ_ c
.
ÌÌc d
y
ÌÌd e
-
ÌÌf g
$num
ÌÌh k
)
ÌÌk l
)
ÌÌl m
;
ÌÌm n
Handles
ÓÓ 
.
ÓÓ 
DrawLine
ÓÓ $
(
ÓÓ$ %
new
ÓÓ% (
Vector2
ÓÓ) 0
(
ÓÓ0 1
rect
ÓÓ1 5
.
ÓÓ5 6
x
ÓÓ6 7
,
ÓÓ7 8
rect
ÓÓ9 =
.
ÓÓ= >
y
ÓÓ> ?
-
ÓÓ@ A
$num
ÓÓB E
)
ÓÓE F
,
ÓÓF G
new
ÓÓH K
Vector2
ÓÓL S
(
ÓÓS T
rect
ÓÓT X
.
ÓÓX Y
x
ÓÓY Z
,
ÓÓZ [
rect
ÓÓ\ `
.
ÓÓ` a
yMax
ÓÓa e
)
ÓÓe f
)
ÓÓf g
;
ÓÓg h
Handles
ÔÔ 
.
ÔÔ 
DrawLine
ÔÔ $
(
ÔÔ$ %
new
ÔÔ% (
Vector2
ÔÔ) 0
(
ÔÔ0 1
rect
ÔÔ1 5
.
ÔÔ5 6
x
ÔÔ6 7
,
ÔÔ7 8
rect
ÔÔ9 =
.
ÔÔ= >
yMax
ÔÔ> B
)
ÔÔB C
,
ÔÔC D
new
ÔÔE H
Vector2
ÔÔI P
(
ÔÔP Q
rect
ÔÔQ U
.
ÔÔU V
xMax
ÔÔV Z
,
ÔÔZ [
rect
ÔÔ\ `
.
ÔÔ` a
yMax
ÔÔa e
)
ÔÔe f
)
ÔÔf g
;
ÔÔg h
Handles
 
.
 
DrawLine
 $
(
$ %
new
% (
Vector2
) 0
(
0 1
rect
1 5
.
5 6
xMax
6 :
,
: ;
rect
< @
.
@ A
yMax
A E
)
E F
,
F G
new
H K
Vector2
L S
(
S T
rect
T X
.
X Y
xMax
Y ]
,
] ^
rect
_ c
.
c d
y
d e
-
f g
$num
h k
)
k l
)
l m
;
m n
var
ÛÛ 
	selection
ÛÛ !
=
ÛÛ" #
m_CurveEditor
ÛÛ$ 1
.
ÛÛ1 2
GetSelection
ÛÛ2 >
(
ÛÛ> ?
)
ÛÛ? @
;
ÛÛ@ A
if
ıı 
(
ıı 
	selection
ıı !
.
ıı! "
curve
ıı" '
!=
ıı( *
null
ıı+ /
&&
ıı0 2
	selection
ıı3 <
.
ıı< =
keyframeIndex
ıı= J
>
ııK L
-
ııM N
$num
ııN O
)
ııO P
{
ˆˆ 
var
˜˜ 
key
˜˜ 
=
˜˜  !
	selection
˜˜" +
.
˜˜+ ,
keyframe
˜˜, 4
.
˜˜4 5
Value
˜˜5 :
;
˜˜: ;
var
¯¯ 
infoRect
¯¯ $
=
¯¯% &
	innerRect
¯¯' 0
;
¯¯0 1
infoRect
˘˘  
.
˘˘  !
x
˘˘! "
+=
˘˘# %
$num
˘˘& (
;
˘˘( )
infoRect
˙˙  
.
˙˙  !
width
˙˙! &
=
˙˙' (
$num
˙˙) -
;
˙˙- .
infoRect
˚˚  
.
˚˚  !
height
˚˚! '
=
˚˚( )
$num
˚˚* -
;
˚˚- .
GUI
¸¸ 
.
¸¸ 
Label
¸¸ !
(
¸¸! "
infoRect
¸¸" *
,
¸¸* +
string
¸¸, 2
.
¸¸2 3
Format
¸¸3 9
(
¸¸9 :
$str
¸¸: D
,
¸¸D E
key
¸¸F I
.
¸¸I J
time
¸¸J N
.
¸¸N O
ToString
¸¸O W
(
¸¸W X
$str
¸¸X \
)
¸¸\ ]
,
¸¸] ^
key
¸¸_ b
.
¸¸b c
value
¸¸c h
.
¸¸h i
ToString
¸¸i q
(
¸¸q r
$str
¸¸r v
)
¸¸v w
)
¸¸w x
,
¸¸x y
FxStyles¸¸z Ç
.¸¸Ç É
preLabel¸¸É ã
)¸¸ã å
;¸¸å ç
}
˝˝ 
}
˛˛ 
}
ˇˇ 
EditorGUILayout
åå 
.
åå 
Space
åå !
(
åå! "
)
åå" #
;
åå# $
	EditorGUI
çç 
.
çç 
indentLevel
çç !
+=
çç" $
$num
çç% &
;
çç& '
}
éé 	
void
êê #
DrawBackgroundTexture
êê "
(
êê" #
Rect
êê# '
rect
êê( ,
,
êê, -
int
êê. 1
pass
êê2 6
)
êê6 7
{
ëë 	
float
íí 
scale
íí 
=
íí 
EditorGUIUtility
íí *
.
íí* +
pixelsPerPoint
íí+ 9
;
íí9 :
var
îî 
oldRt
îî 
=
îî 
RenderTexture
îî %
.
îî% &
active
îî& ,
;
îî, -
var
ïï 
rt
ïï 
=
ïï 
RenderTexture
ïï "
.
ïï" #
GetTemporary
ïï# /
(
ïï/ 0
Mathf
ïï0 5
.
ïï5 6
	CeilToInt
ïï6 ?
(
ïï? @
rect
ïï@ D
.
ïïD E
width
ïïE J
*
ïïK L
scale
ïïM R
)
ïïR S
,
ïïS T
Mathf
ïïU Z
.
ïïZ [
	CeilToInt
ïï[ d
(
ïïd e
rect
ïïe i
.
ïïi j
height
ïïj p
*
ïïq r
scale
ïïs x
)
ïïx y
,
ïïy z
$num
ïï{ |
,
ïï| }"
RenderTextureFormatïï~ ë
.ïïë í
ARGB32ïïí ò
,ïïò ô&
RenderTextureReadWriteïïö ∞
.ïï∞ ±
Linearïï± ∑
)ïï∑ ∏
;ïï∏ π
s_MaterialSpline
ññ 
.
ññ 
SetFloat
ññ %
(
ññ% &
$str
ññ& 6
,
ññ6 7
GUI
ññ8 ;
.
ññ; <
enabled
ññ< C
?
ññD E
$num
ññF H
:
ññI J
$num
ññK O
)
ññO P
;
ññP Q
s_MaterialSpline
óó 
.
óó 
SetFloat
óó %
(
óó% &
$str
óó& 5
,
óó5 6
EditorGUIUtility
óó7 G
.
óóG H
pixelsPerPoint
óóH V
)
óóV W
;
óóW X
Graphics
ôô 
.
ôô 
Blit
ôô 
(
ôô 
null
ôô 
,
ôô 
rt
ôô  "
,
ôô" #
s_MaterialSpline
ôô$ 4
,
ôô4 5
pass
ôô6 :
)
ôô: ;
;
ôô; <
RenderTexture
öö 
.
öö 
active
öö  
=
öö! "
oldRt
öö# (
;
öö( )
GUI
úú 
.
úú 
DrawTexture
úú 
(
úú 
rect
úú  
,
úú  !
rt
úú" $
)
úú$ %
;
úú% &
RenderTexture
ùù 
.
ùù 
ReleaseTemporary
ùù *
(
ùù* +
rt
ùù+ -
)
ùù- .
;
ùù. /
}
ûû 	
}
üü 
}†† ∂
¬D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\DefaultPostFxModelEditor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
public 

class $
DefaultPostFxModelEditor )
:* +%
PostProcessingModelEditor, E
{ 
List 
< 
SerializedProperty 
>  
m_Properties! -
=. /
new0 3
List4 8
<8 9
SerializedProperty9 K
>K L
(L M
)M N
;N O
public		 
override		 
void		 
OnEnable		 %
(		% &
)		& '
{

 	
var 
iter 
= 
m_SettingsProperty )
.) *
Copy* .
(. /
)/ 0
.0 1
GetEnumerator1 >
(> ?
)? @
;@ A
while 
( 
iter 
. 
MoveNext  
(  !
)! "
)" #
m_Properties 
. 
Add  
(  !
(! "
(" #
SerializedProperty# 5
)5 6
iter6 :
.: ;
Current; B
)B C
.C D
CopyD H
(H I
)I J
)J K
;K L
} 	
public 
override 
void 
OnInspectorGUI +
(+ ,
), -
{ 	
foreach 
( 
var 
property !
in" $
m_Properties% 1
)1 2
EditorGUILayout 
.  
PropertyField  -
(- .
property. 6
)6 7
;7 8
} 	
} 
} –
¡D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\DepthOfFieldModelEditor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
[ %
PostProcessingModelEditor 
( 
typeof %
(% &
DepthOfFieldModel& 7
)7 8
)8 9
]9 :
public 

class #
DepthOfFieldModelEditor (
:) *%
PostProcessingModelEditor+ D
{		 
SerializedProperty

 
m_FocusDistance

 *
;

* +
SerializedProperty 

m_Aperture %
;% &
SerializedProperty 
m_FocalLength (
;( )
SerializedProperty 
m_UseCameraFov )
;) *
SerializedProperty 
m_KernelSize '
;' (
public 
override 
void 
OnEnable %
(% &
)& '
{ 	
m_FocusDistance 
= 
FindSetting )
() *
(* +
Settings+ 3
x4 5
)5 6
=>7 9
x: ;
.; <
focusDistance< I
)I J
;J K

m_Aperture 
= 
FindSetting $
($ %
(% &
Settings& .
x/ 0
)0 1
=>2 4
x5 6
.6 7
aperture7 ?
)? @
;@ A
m_FocalLength 
= 
FindSetting '
(' (
(( )
Settings) 1
x2 3
)3 4
=>5 7
x8 9
.9 :
focalLength: E
)E F
;F G
m_UseCameraFov 
= 
FindSetting (
(( )
() *
Settings* 2
x3 4
)4 5
=>6 8
x9 :
.: ;
useCameraFov; G
)G H
;H I
m_KernelSize 
= 
FindSetting &
(& '
(' (
Settings( 0
x1 2
)2 3
=>4 6
x7 8
.8 9

kernelSize9 C
)C D
;D E
} 	
public 
override 
void 
OnInspectorGUI +
(+ ,
), -
{ 	
EditorGUILayout 
. 
PropertyField )
() *
m_FocusDistance* 9
)9 :
;: ;
EditorGUILayout 
. 
PropertyField )
() *

m_Aperture* 4
,4 5
EditorGUIHelper6 E
.E F

GetContentF P
(P Q
$strQ d
)d e
)e f
;f g
EditorGUILayout 
. 
PropertyField )
() *
m_UseCameraFov* 8
,8 9
EditorGUIHelper: I
.I J

GetContentJ T
(T U
$strU e
)e f
)f g
;g h
if 
( 
! 
m_UseCameraFov 
.  
	boolValue  )
)) *
EditorGUILayout   
.    
PropertyField    -
(  - .
m_FocalLength  . ;
,  ; <
EditorGUIHelper  = L
.  L M

GetContent  M W
(  W X
$str  X k
)  k l
)  l m
;  m n
EditorGUILayout"" 
."" 
PropertyField"" )
("") *
m_KernelSize""* 6
)""6 7
;""7 8
}## 	
}$$ 
}%% é
æD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\DitheringModelEditor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
[ %
PostProcessingModelEditor 
( 
typeof %
(% &
DitheringModel& 4
)4 5
)5 6
]6 7
public 

class  
DitheringModelEditor %
:& '%
PostProcessingModelEditor( A
{ 
public 
override 
void 
OnInspectorGUI +
(+ ,
), -
{		 	
if

 
(

 
profile

 
.

 
grain

 
.

 
enabled

 %
&&

& (
target

) /
.

/ 0
enabled

0 7
)

7 8
EditorGUILayout 
.  
HelpBox  '
(' (
$str( _
,_ `
MessageTypea l
.l m
Warningm t
)t u
;u v
else 
EditorGUILayout 
.  
HelpBox  '
(' (
$str( @
,@ A
MessageTypeB M
.M N
InfoN R
)R S
;S T
} 	
} 
} ˆK
¬D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\EyeAdaptationModelEditor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
[ %
PostProcessingModelEditor 
( 
typeof %
(% &
EyeAdaptationModel& 8
)8 9
)9 :
]: ;
public		 

class		 $
EyeAdaptationModelEditor		 )
:		* +%
PostProcessingModelEditor		, E
{

 
SerializedProperty 
m_LowPercent '
;' (
SerializedProperty 
m_HighPercent (
;( )
SerializedProperty 
m_MinLuminance )
;) *
SerializedProperty 
m_MaxLuminance )
;) *
SerializedProperty 

m_KeyValue %
;% &
SerializedProperty 
m_DynamicKeyValue ,
;, -
SerializedProperty 
m_AdaptationType +
;+ ,
SerializedProperty 
	m_SpeedUp $
;$ %
SerializedProperty 
m_SpeedDown &
;& '
SerializedProperty 
m_LogMin #
;# $
SerializedProperty 
m_LogMax #
;# $
public 
override 
void 
OnEnable %
(% &
)& '
{ 	
m_LowPercent 
= 
FindSetting &
(& '
(' (
Settings( 0
x1 2
)2 3
=>4 6
x7 8
.8 9

lowPercent9 C
)C D
;D E
m_HighPercent 
= 
FindSetting '
(' (
(( )
Settings) 1
x2 3
)3 4
=>5 7
x8 9
.9 :
highPercent: E
)E F
;F G
m_MinLuminance 
= 
FindSetting (
(( )
() *
Settings* 2
x3 4
)4 5
=>6 8
x9 :
.: ;
minLuminance; G
)G H
;H I
m_MaxLuminance 
= 
FindSetting (
(( )
() *
Settings* 2
x3 4
)4 5
=>6 8
x9 :
.: ;
maxLuminance; G
)G H
;H I

m_KeyValue 
= 
FindSetting $
($ %
(% &
Settings& .
x/ 0
)0 1
=>2 4
x5 6
.6 7
keyValue7 ?
)? @
;@ A
m_DynamicKeyValue 
= 
FindSetting  +
(+ ,
(, -
Settings- 5
x6 7
)7 8
=>9 ;
x< =
.= >
dynamicKeyValue> M
)M N
;N O
m_AdaptationType 
= 
FindSetting *
(* +
(+ ,
Settings, 4
x5 6
)6 7
=>8 :
x; <
.< =
adaptationType= K
)K L
;L M
	m_SpeedUp   
=   
FindSetting   #
(  # $
(  $ %
Settings  % -
x  . /
)  / 0
=>  1 3
x  4 5
.  5 6
speedUp  6 =
)  = >
;  > ?
m_SpeedDown!! 
=!! 
FindSetting!! %
(!!% &
(!!& '
Settings!!' /
x!!0 1
)!!1 2
=>!!3 5
x!!6 7
.!!7 8
	speedDown!!8 A
)!!A B
;!!B C
m_LogMin"" 
="" 
FindSetting"" "
(""" #
(""# $
Settings""$ ,
x""- .
)"". /
=>""0 2
x""3 4
.""4 5
logMin""5 ;
)""; <
;""< =
m_LogMax## 
=## 
FindSetting## "
(##" #
(### $
Settings##$ ,
x##- .
)##. /
=>##0 2
x##3 4
.##4 5
logMax##5 ;
)##; <
;##< =
}$$ 	
public&& 
override&& 
void&& 
OnInspectorGUI&& +
(&&+ ,
)&&, -
{'' 	
if(( 
((( 
!(( 
GraphicsUtils(( 
.(( 
supportsDX11(( +
)((+ ,
EditorGUILayout)) 
.))  
HelpBox))  '
())' (
$str	))( ì
,
))ì î
MessageType
))ï †
.
))† °
Warning
))° ®
)
))® ©
;
))© ™
EditorGUILayout++ 
.++ 

LabelField++ &
(++& '
$str++' 9
,++9 :
EditorStyles++; G
.++G H
	boldLabel++H Q
)++Q R
;++R S
	EditorGUI,, 
.,, 
indentLevel,, !
++,,! #
;,,# $
EditorGUILayout-- 
.-- 
PropertyField-- )
(--) *
m_LogMin--* 2
,--2 3
EditorGUIHelper--4 C
.--C D

GetContent--D N
(--N O
$str--O ]
)--] ^
)--^ _
;--_ `
EditorGUILayout.. 
... 
PropertyField.. )
(..) *
m_LogMax..* 2
,..2 3
EditorGUIHelper..4 C
...C D

GetContent..D N
(..N O
$str..O ]
)..] ^
)..^ _
;.._ `
	EditorGUI// 
.// 
indentLevel// !
--//! #
;//# $
EditorGUILayout00 
.00 
Space00 !
(00! "
)00" #
;00# $
EditorGUILayout22 
.22 

LabelField22 &
(22& '
$str22' 6
,226 7
EditorStyles228 D
.22D E
	boldLabel22E N
)22N O
;22O P
	EditorGUI33 
.33 
indentLevel33 !
++33! #
;33# $
float44 
low44 
=44 
m_LowPercent44 $
.44$ %

floatValue44% /
;44/ 0
float55 
high55 
=55 
m_HighPercent55 &
.55& '

floatValue55' 1
;551 2
EditorGUILayout77 
.77 
MinMaxSlider77 (
(77( )
EditorGUIHelper77) 8
.778 9

GetContent779 C
(77C D
$str	77D Ø
)
77Ø ∞
,
77∞ ±
ref
77≤ µ
low
77∂ π
,
77π ∫
ref
77ª æ
high
77ø √
,
77√ ƒ
$num
77≈ «
,
77« »
$num
77… Ã
)
77Ã Õ
;
77Õ Œ
m_LowPercent99 
.99 

floatValue99 #
=99$ %
low99& )
;99) *
m_HighPercent:: 
.:: 

floatValue:: $
=::% &
high::' +
;::+ ,
EditorGUILayout<< 
.<< 
PropertyField<< )
(<<) *
m_MinLuminance<<* 8
,<<8 9
EditorGUIHelper<<: I
.<<I J

GetContent<<J T
(<<T U
$str<<U c
)<<c d
)<<d e
;<<e f
EditorGUILayout== 
.== 
PropertyField== )
(==) *
m_MaxLuminance==* 8
,==8 9
EditorGUIHelper==: I
.==I J

GetContent==J T
(==T U
$str==U c
)==c d
)==d e
;==e f
EditorGUILayout>> 
.>> 
PropertyField>> )
(>>) *
m_DynamicKeyValue>>* ;
)>>; <
;>>< =
if@@ 
(@@ 
!@@ 
m_DynamicKeyValue@@ "
.@@" #
	boolValue@@# ,
)@@, -
EditorGUILayoutAA 
.AA  
PropertyFieldAA  -
(AA- .

m_KeyValueAA. 8
)AA8 9
;AA9 :
	EditorGUICC 
.CC 
indentLevelCC !
--CC! #
;CC# $
EditorGUILayoutDD 
.DD 
SpaceDD !
(DD! "
)DD" #
;DD# $
EditorGUILayoutFF 
.FF 

LabelFieldFF &
(FF& '
$strFF' 3
,FF3 4
EditorStylesFF5 A
.FFA B
	boldLabelFFB K
)FFK L
;FFL M
	EditorGUIGG 
.GG 
indentLevelGG !
++GG! #
;GG# $
EditorGUILayoutII 
.II 
PropertyFieldII )
(II) *
m_AdaptationTypeII* :
,II: ;
EditorGUIHelperII< K
.IIK L

GetContentIIL V
(IIV W
$strIIW ]
)II] ^
)II^ _
;II_ `
ifKK 
(KK 
m_AdaptationTypeKK  
.KK  !
intValueKK! )
==KK* ,
(KK- .
intKK. 1
)KK1 2
EyeAdaptationModelKK2 D
.KKD E
EyeAdaptationTypeKKE V
.KKV W
ProgressiveKKW b
)KKb c
{LL 
	EditorGUIMM 
.MM 
indentLevelMM %
++MM% '
;MM' (
EditorGUILayoutNN 
.NN  
PropertyFieldNN  -
(NN- .
	m_SpeedUpNN. 7
)NN7 8
;NN8 9
EditorGUILayoutOO 
.OO  
PropertyFieldOO  -
(OO- .
m_SpeedDownOO. 9
)OO9 :
;OO: ;
	EditorGUIPP 
.PP 
indentLevelPP %
--PP% '
;PP' (
}QQ 
	EditorGUISS 
.SS 
indentLevelSS !
--SS! #
;SS# $
}TT 	
}UU 
}VV °
∏D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\FogModelEditor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
[ %
PostProcessingModelEditor 
( 
typeof %
(% &
FogModel& .
). /
)/ 0
]0 1
public 

class 
FogModelEditor 
:  !%
PostProcessingModelEditor" ;
{		 
SerializedProperty

 
m_ExcludeSkybox

 *
;

* +
public 
override 
void 
OnEnable %
(% &
)& '
{ 	
m_ExcludeSkybox 
= 
FindSetting )
() *
(* +
Settings+ 3
x4 5
)5 6
=>7 9
x: ;
.; <
excludeSkybox< I
)I J
;J K
} 	
public 
override 
void 
OnInspectorGUI +
(+ ,
), -
{ 	
EditorGUILayout 
. 
HelpBox #
(# $
$str	$ ‰
,
‰ Â
MessageType
Ê Ò
.
Ò Ú
Info
Ú ˆ
)
ˆ ˜
;
˜ ¯
EditorGUILayout 
. 
PropertyField )
() *
m_ExcludeSkybox* 9
)9 :
;: ;
	EditorGUI 
. 
indentLevel !
--! #
;# $
} 	
} 
} ÿ
∫D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\GrainModelEditor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
[ %
PostProcessingModelEditor 
( 
typeof %
(% &

GrainModel& 0
)0 1
)1 2
]2 3
public 

class 
GrainModelEditor !
:" #%
PostProcessingModelEditor$ =
{		 
SerializedProperty

 
	m_Colored

 $
;

$ %
SerializedProperty 
m_Intensity &
;& '
SerializedProperty 
m_Size !
;! "
SerializedProperty #
m_LuminanceContribution 2
;2 3
public 
override 
void 
OnEnable %
(% &
)& '
{ 	
	m_Colored 
= 
FindSetting #
(# $
($ %
Settings% -
x. /
)/ 0
=>1 3
x4 5
.5 6
colored6 =
)= >
;> ?
m_Intensity 
= 
FindSetting %
(% &
(& '
Settings' /
x0 1
)1 2
=>3 5
x6 7
.7 8
	intensity8 A
)A B
;B C
m_Size 
= 
FindSetting  
(  !
(! "
Settings" *
x+ ,
), -
=>. 0
x1 2
.2 3
size3 7
)7 8
;8 9#
m_LuminanceContribution #
=$ %
FindSetting& 1
(1 2
(2 3
Settings3 ;
x< =
)= >
=>? A
xB C
.C D!
luminanceContributionD Y
)Y Z
;Z [
} 	
public 
override 
void 
OnInspectorGUI +
(+ ,
), -
{ 	
EditorGUILayout 
. 
PropertyField )
() *
m_Intensity* 5
)5 6
;6 7
EditorGUILayout 
. 
PropertyField )
() *#
m_LuminanceContribution* A
)A B
;B C
EditorGUILayout 
. 
PropertyField )
() *
m_Size* 0
)0 1
;1 2
EditorGUILayout 
. 
PropertyField )
() *
	m_Colored* 3
)3 4
;4 5
} 	
} 
} áü
øD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\MotionBlurModelEditor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
[ %
PostProcessingModelEditor 
( 
typeof %
(% &
MotionBlurModel& 5
)5 6
)6 7
]7 8
public		 

class		 !
MotionBlurModelEditor		 &
:		' (%
PostProcessingModelEditor		) B
{

 
SerializedProperty 
m_ShutterAngle )
;) *
SerializedProperty 
m_SampleCount (
;( )
SerializedProperty 
m_FrameBlending *
;* +
GraphDrawer 
m_GraphDrawer !
;! "
class 
GraphDrawer 
{ 	
const 
float 
k_Height  
=! "
$num# &
;& '
Texture 
m_BlendingIcon "
;" #
GUIStyle 
m_LowerCenterStyle '
;' (
GUIStyle 
m_MiddleCenterStyle (
;( )
Color 
m_ColorDark 
; 
Color 
m_ColorGray 
; 
Vector3 
[ 
] 
m_RectVertices $
=% &
new' *
Vector3+ 2
[2 3
$num3 4
]4 5
;5 6
public 
GraphDrawer 
( 
)  
{   
m_BlendingIcon!! 
=!!  
EditorResources!!! 0
.!!0 1
Load!!1 5
<!!5 6
Texture!!6 =
>!!= >
(!!> ?
$str!!? Z
)!!Z [
;!![ \
m_LowerCenterStyle## "
=### $
new##% (
GUIStyle##) 1
(##1 2
EditorStyles##2 >
.##> ?
	miniLabel##? H
)##H I
{##J K
	alignment##L U
=##V W

TextAnchor##X b
.##b c
LowerCenter##c n
}##o p
;##p q
m_MiddleCenterStyle$$ #
=$$$ %
new$$& )
GUIStyle$$* 2
($$2 3
EditorStyles$$3 ?
.$$? @
	miniLabel$$@ I
)$$I J
{$$K L
	alignment$$M V
=$$W X

TextAnchor$$Y c
.$$c d
MiddleCenter$$d p
}$$q r
;$$r s
if&& 
(&& 
EditorGUIUtility&& $
.&&$ %
	isProSkin&&% .
)&&. /
{'' 
m_ColorDark(( 
=((  !
new((" %
Color((& +
(((+ ,
$num((, 1
,((1 2
$num((3 8
,((8 9
$num((: ?
)((? @
;((@ A
m_ColorGray)) 
=))  !
new))" %
Color))& +
())+ ,
$num)), 1
,))1 2
$num))3 8
,))8 9
$num)): ?
)))? @
;))@ A
}** 
else++ 
{,, 
m_ColorDark-- 
=--  !
new--" %
Color--& +
(--+ ,
$num--, 1
,--1 2
$num--3 8
,--8 9
$num--: ?
)--? @
;--@ A
m_ColorGray.. 
=..  !
new.." %
Color..& +
(..+ ,
$num.., 1
,..1 2
$num..3 8
,..8 9
$num..: ?
)..? @
;..@ A
}// 
}00 
public22 
void22 
DrawShutterGraph22 (
(22( )
float22) .
angle22/ 4
)224 5
{33 
var44 
center44 
=44 
GUILayoutUtility44 -
.44- .
GetRect44. 5
(445 6
$num446 9
,449 :
k_Height44; C
)44C D
.44D E
center44E K
;44K L
var77 
zeroWhenOff77 
=77  !
Mathf77" '
.77' (
Min77( +
(77+ ,
$num77, .
,77. /
angle770 5
*776 7
$num778 <
)77< =
;77= >
var88 
zeroWhenFull88  
=88! "
Mathf88# (
.88( )
Min88) ,
(88, -
$num88- /
,88/ 0
(881 2
$num882 6
-887 8
angle889 >
)88> ?
*88@ A
$num88B G
)88G H
;88H I
var;; 

discCenter;; 
=;;  
center;;! '
-;;( )
new;;* -
Vector2;;. 5
(;;5 6
k_Height;;6 >
*;;? @
$num;;A E
,;;E F
$num;;G I
);;I J
;;;J K
DrawDisc== 
(== 

discCenter== #
,==# $
k_Height==% -
*==. /
Mathf==0 5
.==5 6
Lerp==6 :
(==: ;
$num==; ?
,==? @
$num==A F
,==F G
zeroWhenFull==H T
)==T U
,==U V
m_ColorGray==W b
)==b c
;==c d
DrawDisc?? 
(?? 

discCenter?? #
,??# $
k_Height??% -
*??. /
$num??0 5
*??6 7
zeroWhenFull??8 D
,??D E
m_ColorDark??F Q
)??Q R
;??R S
DrawArcAA 
(AA 

discCenterAA "
,AA" #
k_HeightAA$ ,
*AA- .
$numAA/ 3
,AA3 4
$numAA5 9
-AA: ;
angleAA< A
,AAA B
m_ColorDarkAAC N
)AAN O
;AAO P
DrawDiscCC 
(CC 

discCenterCC #
,CC# $
zeroWhenOffCC% 0
,CC0 1
m_ColorGrayCC2 =
)CC= >
;CC> ?
varFF 
	labelSizeFF 
=FF 
newFF  #
Vector2FF$ +
(FF+ ,
k_HeightFF, 4
,FF4 5
k_HeightFF6 >
)FF> ?
;FF? @
varGG 
labelOriginGG 
=GG  !

discCenterGG" ,
-GG- .
	labelSizeGG/ 8
*GG9 :
$numGG; ?
;GG? @
varHH 
	labelRectHH 
=HH 
newHH  #
RectHH$ (
(HH( )
labelOriginHH) 4
,HH4 5
	labelSizeHH6 ?
)HH? @
;HH@ A
ifJJ 
(JJ 
MathfJJ 
.JJ 
ApproximatelyJJ '
(JJ' (
angleJJ( -
,JJ- .
$numJJ/ 1
)JJ1 2
)JJ2 3
GUIKK 
.KK 
LabelKK 
(KK 
	labelRectKK '
,KK' (
$strKK) .
,KK. /
m_MiddleCenterStyleKK0 C
)KKC D
;KKD E
elseLL 
ifLL 
(LL 
MathfLL 
.LL 
ApproximatelyLL ,
(LL, -
angleLL- 2
,LL2 3
$numLL4 8
)LL8 9
)LL9 :
GUIMM 
.MM 
LabelMM 
(MM 
	labelRectMM '
,MM' (
$strMM) /
,MM/ 0
m_MiddleCenterStyleMM1 D
)MMD E
;MME F
varPP 
outerBarSizePP  
=PP! "
newPP# &
Vector2PP' .
(PP. /
$numPP/ 4
,PP4 5
$numPP6 :
)PP: ;
*PP< =
k_HeightPP> F
;PPF G
varQQ 
innerBarSizeQQ  
=QQ! "
outerBarSizeQQ# /
;QQ/ 0
innerBarSizeRR 
.RR 
xRR 
*=RR !
angleRR" '
/RR( )
$numRR* .
;RR. /
varTT 
	barCenterTT 
=TT 
centerTT  &
+TT' (
newTT) ,
Vector2TT- 4
(TT4 5
k_HeightTT5 =
*TT> ?
$numTT@ D
,TTD E
$numTTF H
)TTH I
;TTI J
varUU 
	barOriginUU 
=UU 
	barCenterUU  )
-UU* +
outerBarSizeUU, 8
*UU9 :
$numUU; ?
;UU? @
DrawRectWW 
(WW 
	barOriginWW "
,WW" #
outerBarSizeWW$ 0
,WW0 1
m_ColorDarkWW2 =
)WW= >
;WW> ?
DrawRectXX 
(XX 
	barOriginXX "
,XX" #
innerBarSizeXX$ 0
,XX0 1
m_ColorGrayXX2 =
)XX= >
;XX> ?
varZZ 
barTextZZ 
=ZZ 
$strZZ 0
+ZZ1 2
(ZZ3 4
angleZZ4 9
/ZZ: ;
$numZZ< @
)ZZ@ A
.ZZA B
ToStringZZB J
(ZZJ K
$strZZK N
)ZZN O
+ZZP Q
$strZZR [
;ZZ[ \
GUI[[ 
.[[ 
Label[[ 
([[ 
new[[ 
Rect[[ "
([[" #
	barOrigin[[# ,
,[[, -
outerBarSize[[. :
)[[: ;
,[[; <
barText[[= D
,[[D E
m_MiddleCenterStyle[[F Y
)[[Y Z
;[[Z [
}\\ 
public^^ 
void^^ 
DrawBlendingGraph^^ )
(^^) *
float^^* /
strength^^0 8
)^^8 9
{__ 
var`` 
center`` 
=`` 
GUILayoutUtility`` -
.``- .
GetRect``. 5
(``5 6
$num``6 9
,``9 :
k_Height``; C
)``C D
.``D E
center``E K
;``K L
varbb 
iconSizebb 
=bb 
newbb "
Vector2bb# *
(bb* +
k_Heightbb+ 3
,bb3 4
k_Heightbb5 =
)bb= >
;bb> ?
varcc 

iconStridecc 
=cc  
newcc! $
Vector2cc% ,
(cc, -
k_Heightcc- 5
*cc6 7
$numcc8 <
,cc< =
$numcc> @
)cc@ A
;ccA B
vardd 

iconOrigindd 
=dd  
centerdd! '
-dd( )
iconSizedd* 2
*dd3 4
$numdd5 9
-dd: ;

iconStridedd< F
*ddG H
$numddI K
;ddK L
forff 
(ff 
varff 
iff 
=ff 
$numff 
;ff 
iff  !
<ff" #
$numff$ %
;ff% &
iff' (
++ff( *
)ff* +
{gg 
varhh 
weighthh 
=hh  
BlendingWeighthh! /
(hh/ 0
strengthhh0 8
,hh8 9
ihh: ;
/hh< =
$numhh> A
)hhA B
;hhB C
varii 
rectii 
=ii 
newii "
Rectii# '
(ii' (

iconOriginii( 2
+ii3 4

iconStrideii5 ?
*ii@ A
iiiB C
,iiC D
iconSizeiiE M
)iiM N
;iiN O
varkk 
colorkk 
=kk 
m_ColorGraykk  +
;kk+ ,
colorll 
.ll 
all 
=ll 
weightll $
;ll$ %
GUInn 
.nn 
colornn 
=nn 
colornn  %
;nn% &
GUIoo 
.oo 
Labeloo 
(oo 
rectoo "
,oo" #
m_BlendingIconoo$ 2
)oo2 3
;oo3 4
GUIqq 
.qq 
colorqq 
=qq 
Colorqq  %
.qq% &
whiteqq& +
;qq+ ,
GUIrr 
.rr 
Labelrr 
(rr 
rectrr "
,rr" #
(rr$ %
weightrr% +
*rr, -
$numrr. 1
)rr1 2
.rr2 3
ToStringrr3 ;
(rr; <
$strrr< ?
)rr? @
+rrA B
$strrrC F
,rrF G
m_LowerCenterStylerrH Z
)rrZ [
;rr[ \
}ss 
}uu 
floatxx 
BlendingWeightxx  
(xx  !
floatxx! &
strengthxx' /
,xx/ 0
floatxx1 6
timexx7 ;
)xx; <
{yy 
ifzz 
(zz 
strengthzz 
>zz 
$numzz !
||zz" $
Mathfzz% *
.zz* +
Approximatelyzz+ 8
(zz8 9
timezz9 =
,zz= >
$numzz? A
)zzA B
)zzB C
return{{ 
Mathf{{  
.{{  !
Exp{{! $
({{$ %
-{{% &
time{{& *
*{{+ ,
Mathf{{- 2
.{{2 3
Lerp{{3 7
({{7 8
$num{{8 ;
,{{; <
$num{{= @
,{{@ A
strength{{B J
){{J K
){{K L
;{{L M
return}} 
$num}} 
;}} 
}~~ 
void
ÅÅ 
DrawDisc
ÅÅ 
(
ÅÅ 
Vector2
ÅÅ !
center
ÅÅ" (
,
ÅÅ( )
float
ÅÅ* /
radius
ÅÅ0 6
,
ÅÅ6 7
Color
ÅÅ8 =
fill
ÅÅ> B
)
ÅÅB C
{
ÇÇ 
Handles
ÉÉ 
.
ÉÉ 
color
ÉÉ 
=
ÉÉ 
fill
ÉÉ  $
;
ÉÉ$ %
Handles
ÑÑ 
.
ÑÑ 
DrawSolidDisc
ÑÑ %
(
ÑÑ% &
center
ÑÑ& ,
,
ÑÑ, -
Vector3
ÑÑ. 5
.
ÑÑ5 6
forward
ÑÑ6 =
,
ÑÑ= >
radius
ÑÑ? E
)
ÑÑE F
;
ÑÑF G
}
ÖÖ 
void
àà 
DrawArc
àà 
(
àà 
Vector2
àà  
center
àà! '
,
àà' (
float
àà) .
radius
àà/ 5
,
àà5 6
float
àà7 <
angle
àà= B
,
ààB C
Color
ààD I
fill
ààJ N
)
ààN O
{
ââ 
var
ää 
start
ää 
=
ää 
new
ää 
Vector2
ää  '
(
ää' (
-
ãã 
Mathf
ãã 
.
ãã 
Cos
ãã "
(
ãã" #
Mathf
ãã# (
.
ãã( )
Deg2Rad
ãã) 0
*
ãã1 2
angle
ãã3 8
/
ãã9 :
$num
ãã; =
)
ãã= >
,
ãã> ?
Mathf
åå 
.
åå 
Sin
åå !
(
åå! "
Mathf
åå" '
.
åå' (
Deg2Rad
åå( /
*
åå0 1
angle
åå2 7
/
åå8 9
$num
åå: <
)
åå< =
)
çç 
;
çç 
Handles
èè 
.
èè 
color
èè 
=
èè 
fill
èè  $
;
èè$ %
Handles
êê 
.
êê 
DrawSolidArc
êê $
(
êê$ %
center
êê% +
,
êê+ ,
Vector3
êê- 4
.
êê4 5
forward
êê5 <
,
êê< =
start
êê> C
,
êêC D
angle
êêE J
,
êêJ K
radius
êêL R
)
êêR S
;
êêS T
}
ëë 
void
îî 
DrawRect
îî 
(
îî 
Vector2
îî !
origin
îî" (
,
îî( )
Vector2
îî* 1
size
îî2 6
,
îî6 7
Color
îî8 =
color
îî> C
)
îîC D
{
ïï 
var
ññ 
p0
ññ 
=
ññ 
origin
ññ 
;
ññ  
var
óó 
p1
óó 
=
óó 
origin
óó 
+
óó  !
size
óó" &
;
óó& '
m_RectVertices
ôô 
[
ôô 
$num
ôô  
]
ôô  !
=
ôô" #
p0
ôô$ &
;
ôô& '
m_RectVertices
öö 
[
öö 
$num
öö  
]
öö  !
=
öö" #
new
öö$ '
Vector2
öö( /
(
öö/ 0
p1
öö0 2
.
öö2 3
x
öö3 4
,
öö4 5
p0
öö6 8
.
öö8 9
y
öö9 :
)
öö: ;
;
öö; <
m_RectVertices
õõ 
[
õõ 
$num
õõ  
]
õõ  !
=
õõ" #
p1
õõ$ &
;
õõ& '
m_RectVertices
úú 
[
úú 
$num
úú  
]
úú  !
=
úú" #
new
úú$ '
Vector2
úú( /
(
úú/ 0
p0
úú0 2
.
úú2 3
x
úú3 4
,
úú4 5
p1
úú6 8
.
úú8 9
y
úú9 :
)
úú: ;
;
úú; <
Handles
ûû 
.
ûû 
color
ûû 
=
ûû 
Color
ûû  %
.
ûû% &
white
ûû& +
;
ûû+ ,
Handles
üü 
.
üü +
DrawSolidRectangleWithOutline
üü 5
(
üü5 6
m_RectVertices
üü6 D
,
üüD E
color
üüF K
,
üüK L
Color
üüM R
.
üüR S
clear
üüS X
)
üüX Y
;
üüY Z
}
†† 
}
°° 	
public
££ 
override
££ 
void
££ 
OnEnable
££ %
(
££% &
)
££& '
{
§§ 	
m_ShutterAngle
•• 
=
•• 
FindSetting
•• (
(
••( )
(
••) *
Settings
••* 2
x
••3 4
)
••4 5
=>
••6 8
x
••9 :
.
••: ;
shutterAngle
••; G
)
••G H
;
••H I
m_SampleCount
¶¶ 
=
¶¶ 
FindSetting
¶¶ '
(
¶¶' (
(
¶¶( )
Settings
¶¶) 1
x
¶¶2 3
)
¶¶3 4
=>
¶¶5 7
x
¶¶8 9
.
¶¶9 :
sampleCount
¶¶: E
)
¶¶E F
;
¶¶F G
m_FrameBlending
ßß 
=
ßß 
FindSetting
ßß )
(
ßß) *
(
ßß* +
Settings
ßß+ 3
x
ßß4 5
)
ßß5 6
=>
ßß7 9
x
ßß: ;
.
ßß; <
frameBlending
ßß< I
)
ßßI J
;
ßßJ K
}
®® 	
public
™™ 
override
™™ 
void
™™ 
OnInspectorGUI
™™ +
(
™™+ ,
)
™™, -
{
´´ 	
if
¨¨ 
(
¨¨ 
m_GraphDrawer
¨¨ 
==
¨¨  
null
¨¨! %
)
¨¨% &
m_GraphDrawer
≠≠ 
=
≠≠ 
new
≠≠  #
GraphDrawer
≠≠$ /
(
≠≠/ 0
)
≠≠0 1
;
≠≠1 2
EditorGUILayout
ØØ 
.
ØØ 

LabelField
ØØ &
(
ØØ& '
$str
ØØ' A
,
ØØA B
EditorStyles
ØØC O
.
ØØO P
	boldLabel
ØØP Y
)
ØØY Z
;
ØØZ [
	EditorGUI
∞∞ 
.
∞∞ 
indentLevel
∞∞ !
++
∞∞! #
;
∞∞# $
m_GraphDrawer
±± 
.
±± 
DrawShutterGraph
±± *
(
±±* +
m_ShutterAngle
±±+ 9
.
±±9 :

floatValue
±±: D
)
±±D E
;
±±E F
EditorGUILayout
≤≤ 
.
≤≤ 
PropertyField
≤≤ )
(
≤≤) *
m_ShutterAngle
≤≤* 8
)
≤≤8 9
;
≤≤9 :
EditorGUILayout
≥≥ 
.
≥≥ 
PropertyField
≥≥ )
(
≥≥) *
m_SampleCount
≥≥* 7
)
≥≥7 8
;
≥≥8 9
	EditorGUI
¥¥ 
.
¥¥ 
indentLevel
¥¥ !
--
¥¥! #
;
¥¥# $
EditorGUILayout
µµ 
.
µµ 
Space
µµ !
(
µµ! "
)
µµ" #
;
µµ# $
EditorGUILayout
∑∑ 
.
∑∑ 

LabelField
∑∑ &
(
∑∑& '
$str
∑∑' @
,
∑∑@ A
EditorStyles
∑∑B N
.
∑∑N O
	boldLabel
∑∑O X
)
∑∑X Y
;
∑∑Y Z
	EditorGUI
∏∏ 
.
∏∏ 
indentLevel
∏∏ !
++
∏∏! #
;
∏∏# $
float
∫∫ 
fbValue
∫∫ 
=
∫∫ 
m_FrameBlending
∫∫ +
.
∫∫+ ,

floatValue
∫∫, 6
;
∫∫6 7
m_GraphDrawer
ªª 
.
ªª 
DrawBlendingGraph
ªª +
(
ªª+ ,
fbValue
ªª, 3
)
ªª3 4
;
ªª4 5
EditorGUILayout
ºº 
.
ºº 
PropertyField
ºº )
(
ºº) *
m_FrameBlending
ºº* 9
)
ºº9 :
;
ºº: ;
if
ææ 
(
ææ 
fbValue
ææ 
>
ææ 
$num
ææ 
)
ææ 
EditorGUILayout
øø 
.
øø  
HelpBox
øø  '
(
øø' (
$str
øø( 
,øø Ä
MessageTypeøøÅ å
.øøå ç
Infoøøç ë
)øøë í
;øøí ì
	EditorGUI
¬¬ 
.
¬¬ 
indentLevel
¬¬ !
--
¬¬! #
;
¬¬# $
}
√√ 	
}
ƒƒ 
}≈≈ ¨T
 D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\ScreenSpaceReflectionModelEditor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
[ %
PostProcessingModelEditor 
( 
typeof %
(% &&
ScreenSpaceReflectionModel& @
)@ A
)A B
]B C
public		 

class		 ,
 ScreenSpaceReflectionModelEditor		 1
:		2 3%
PostProcessingModelEditor		4 M
{

 
struct 
IntensitySettings  
{ 	
public 
SerializedProperty % 
reflectionMultiplier& :
;: ;
public 
SerializedProperty %
fadeDistance& 2
;2 3
public 
SerializedProperty %
fresnelFade& 1
;1 2
public 
SerializedProperty %
fresnelFadePower& 6
;6 7
} 	
struct 
ReflectionSettings !
{ 	
public 
SerializedProperty %
	blendType& /
;/ 0
public 
SerializedProperty %
reflectionQuality& 7
;7 8
public 
SerializedProperty %
maxDistance& 1
;1 2
public 
SerializedProperty %
iterationCount& 4
;4 5
public 
SerializedProperty %
stepSize& .
;. /
public 
SerializedProperty %
widthModifier& 3
;3 4
public 
SerializedProperty %
reflectionBlur& 4
;4 5
public 
SerializedProperty %
reflectBackfaces& 6
;6 7
} 	
struct 
ScreenEdgeMask 
{   	
public!! 
SerializedProperty!! %
	intensity!!& /
;!!/ 0
}"" 	
IntensitySettings$$ 
m_Intensity$$ %
;$$% &
ReflectionSettings%% 
m_Reflection%% '
;%%' (
ScreenEdgeMask&& 
m_ScreenEdgeMask&& '
;&&' (
public(( 
override(( 
void(( 
OnEnable(( %
(((% &
)((& '
{)) 	
m_Intensity** 
=** 
new** 
IntensitySettings** /
{++  
reflectionMultiplier,, $
=,,% &
FindSetting,,' 2
(,,2 3
(,,3 4
Settings,,4 <
x,,= >
),,> ?
=>,,@ B
x,,C D
.,,D E
	intensity,,E N
.,,N O 
reflectionMultiplier,,O c
),,c d
,,,d e
fadeDistance-- 
=-- 
FindSetting-- *
(--* +
(--+ ,
Settings--, 4
x--5 6
)--6 7
=>--8 :
x--; <
.--< =
	intensity--= F
.--F G
fadeDistance--G S
)--S T
,--T U
fresnelFade.. 
=.. 
FindSetting.. )
(..) *
(..* +
Settings..+ 3
x..4 5
)..5 6
=>..7 9
x..: ;
...; <
	intensity..< E
...E F
fresnelFade..F Q
)..Q R
,..R S
fresnelFadePower//  
=//! "
FindSetting//# .
(//. /
(/// 0
Settings//0 8
x//9 :
)//: ;
=>//< >
x//? @
.//@ A
	intensity//A J
.//J K
fresnelFadePower//K [
)//[ \
}00 
;00 
m_Reflection22 
=22 
new22 
ReflectionSettings22 1
{33 
	blendType44 
=44 
FindSetting44 '
(44' (
(44( )
Settings44) 1
x442 3
)443 4
=>445 7
x448 9
.449 :

reflection44: D
.44D E
	blendType44E N
)44N O
,44O P
reflectionQuality55 !
=55" #
FindSetting55$ /
(55/ 0
(550 1
Settings551 9
x55: ;
)55; <
=>55= ?
x55@ A
.55A B

reflection55B L
.55L M
reflectionQuality55M ^
)55^ _
,55_ `
maxDistance66 
=66 
FindSetting66 )
(66) *
(66* +
Settings66+ 3
x664 5
)665 6
=>667 9
x66: ;
.66; <

reflection66< F
.66F G
maxDistance66G R
)66R S
,66S T
iterationCount77 
=77  
FindSetting77! ,
(77, -
(77- .
Settings77. 6
x777 8
)778 9
=>77: <
x77= >
.77> ?

reflection77? I
.77I J
iterationCount77J X
)77X Y
,77Y Z
stepSize88 
=88 
FindSetting88 &
(88& '
(88' (
Settings88( 0
x881 2
)882 3
=>884 6
x887 8
.888 9

reflection889 C
.88C D
stepSize88D L
)88L M
,88M N
widthModifier99 
=99 
FindSetting99  +
(99+ ,
(99, -
Settings99- 5
x996 7
)997 8
=>999 ;
x99< =
.99= >

reflection99> H
.99H I
widthModifier99I V
)99V W
,99W X
reflectionBlur:: 
=::  
FindSetting::! ,
(::, -
(::- .
Settings::. 6
x::7 8
)::8 9
=>::: <
x::= >
.::> ?

reflection::? I
.::I J
reflectionBlur::J X
)::X Y
,::Y Z
reflectBackfaces;;  
=;;! "
FindSetting;;# .
(;;. /
(;;/ 0
Settings;;0 8
x;;9 :
);;: ;
=>;;< >
x;;? @
.;;@ A

reflection;;A K
.;;K L
reflectBackfaces;;L \
);;\ ]
}<< 
;<< 
m_ScreenEdgeMask>> 
=>> 
new>> "
ScreenEdgeMask>># 1
{?? 
	intensity@@ 
=@@ 
FindSetting@@ '
(@@' (
(@@( )
Settings@@) 1
x@@2 3
)@@3 4
=>@@5 7
x@@8 9
.@@9 :
screenEdgeMask@@: H
.@@H I
	intensity@@I R
)@@R S
}AA 
;AA 
}BB 	
publicDD 
overrideDD 
voidDD 
OnInspectorGUIDD +
(DD+ ,
)DD, -
{EE 	
EditorGUILayoutFF 
.FF 
HelpBoxFF #
(FF# $
$strFF$ ^
,FF^ _
MessageTypeFF` k
.FFk l
InfoFFl p
)FFp q
;FFq r
EditorGUILayoutHH 
.HH 

LabelFieldHH &
(HH& '
$strHH' 3
,HH3 4
EditorStylesHH5 A
.HHA B
	boldLabelHHB K
)HHK L
;HHL M
	EditorGUIII 
.II 
indentLevelII !
++II! #
;II# $
EditorGUILayoutJJ 
.JJ 
PropertyFieldJJ )
(JJ) *
m_ReflectionJJ* 6
.JJ6 7
	blendTypeJJ7 @
)JJ@ A
;JJA B
EditorGUILayoutKK 
.KK 
PropertyFieldKK )
(KK) *
m_ReflectionKK* 6
.KK6 7
reflectionQualityKK7 H
)KKH I
;KKI J
EditorGUILayoutLL 
.LL 
PropertyFieldLL )
(LL) *
m_ReflectionLL* 6
.LL6 7
maxDistanceLL7 B
)LLB C
;LLC D
EditorGUILayoutMM 
.MM 
PropertyFieldMM )
(MM) *
m_ReflectionMM* 6
.MM6 7
iterationCountMM7 E
)MME F
;MMF G
EditorGUILayoutNN 
.NN 
PropertyFieldNN )
(NN) *
m_ReflectionNN* 6
.NN6 7
stepSizeNN7 ?
)NN? @
;NN@ A
EditorGUILayoutOO 
.OO 
PropertyFieldOO )
(OO) *
m_ReflectionOO* 6
.OO6 7
widthModifierOO7 D
)OOD E
;OOE F
EditorGUILayoutPP 
.PP 
PropertyFieldPP )
(PP) *
m_ReflectionPP* 6
.PP6 7
reflectionBlurPP7 E
)PPE F
;PPF G
EditorGUILayoutQQ 
.QQ 
PropertyFieldQQ )
(QQ) *
m_ReflectionQQ* 6
.QQ6 7
reflectBackfacesQQ7 G
)QQG H
;QQH I
	EditorGUIRR 
.RR 
indentLevelRR !
--RR! #
;RR# $
EditorGUILayoutTT 
.TT 
SpaceTT !
(TT! "
)TT" #
;TT# $
EditorGUILayoutUU 
.UU 

LabelFieldUU &
(UU& '
$strUU' 2
,UU2 3
EditorStylesUU4 @
.UU@ A
	boldLabelUUA J
)UUJ K
;UUK L
	EditorGUIVV 
.VV 
indentLevelVV !
++VV! #
;VV# $
EditorGUILayoutWW 
.WW 
PropertyFieldWW )
(WW) *
m_IntensityWW* 5
.WW5 6 
reflectionMultiplierWW6 J
)WWJ K
;WWK L
EditorGUILayoutXX 
.XX 
PropertyFieldXX )
(XX) *
m_IntensityXX* 5
.XX5 6
fadeDistanceXX6 B
)XXB C
;XXC D
EditorGUILayoutYY 
.YY 
PropertyFieldYY )
(YY) *
m_IntensityYY* 5
.YY5 6
fresnelFadeYY6 A
)YYA B
;YYB C
EditorGUILayoutZZ 
.ZZ 
PropertyFieldZZ )
(ZZ) *
m_IntensityZZ* 5
.ZZ5 6
fresnelFadePowerZZ6 F
)ZZF G
;ZZG H
	EditorGUI[[ 
.[[ 
indentLevel[[ !
--[[! #
;[[# $
EditorGUILayout]] 
.]] 
Space]] !
(]]! "
)]]" #
;]]# $
EditorGUILayout^^ 
.^^ 

LabelField^^ &
(^^& '
$str^^' 9
,^^9 :
EditorStyles^^; G
.^^G H
	boldLabel^^H Q
)^^Q R
;^^R S
	EditorGUI__ 
.__ 
indentLevel__ !
++__! #
;__# $
EditorGUILayout`` 
.`` 
PropertyField`` )
(``) *
m_ScreenEdgeMask``* :
.``: ;
	intensity``; D
)``D E
;``E F
	EditorGUIaa 
.aa 
indentLevelaa !
--aa! #
;aa# $
}bb 	
}cc 
}dd Ö.
ºD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\UserLutModelEditor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
[ %
PostProcessingModelEditor 
( 
typeof %
(% &
UserLutModel& 2
)2 3
)3 4
]4 5
public		 

class		 
UserLutModelEditor		 #
:		$ %%
PostProcessingModelEditor		& ?
{

 
SerializedProperty 
	m_Texture $
;$ %
SerializedProperty 
m_Contribution )
;) *
public 
override 
void 
OnEnable %
(% &
)& '
{ 	
	m_Texture 
= 
FindSetting #
(# $
($ %
Settings% -
x. /
)/ 0
=>1 3
x4 5
.5 6
lut6 9
)9 :
;: ;
m_Contribution 
= 
FindSetting (
(( )
() *
Settings* 2
x3 4
)4 5
=>6 8
x9 :
.: ;
contribution; G
)G H
;H I
} 	
public 
override 
void 
OnInspectorGUI +
(+ ,
), -
{ 	
var 
lut 
= 
( 
target 
as  
UserLutModel! -
)- .
.. /
settings/ 7
.7 8
lut8 ;
;; <
if 
( 
lut 
!= 
null 
) 
{ 
var 
importer 
= 
(  
TextureImporter  /
)/ 0
AssetImporter0 =
.= >
	GetAtPath> G
(G H
AssetDatabaseH U
.U V
GetAssetPathV b
(b c
lutc f
)f g
)g h
;h i
if 
( 
importer 
!= 
null  $
)$ %
{ 
bool   
valid   
=    
importer  ! )
.  ) *

anisoLevel  * 4
==  5 7
$num  8 9
&&!! 
importer!! #
.!!# $
mipmapEnabled!!$ 1
==!!2 4
false!!5 :
&&"" 
importer"" #
.""# $
sRGBTexture""$ /
==""0 2
false""3 8
&&## 
(## 
importer## $
.##$ %
textureCompression##% 7
==##8 :&
TextureImporterCompression##; U
.##U V
Uncompressed##V b
)##b c
;##c d
if++ 
(++ 
!++ 
valid++ 
)++ 
{,, 
EditorGUILayout-- '
.--' (
HelpBox--( /
(--/ 0
$str--0 N
,--N O
MessageType--P [
.--[ \
Warning--\ c
)--c d
;--d e
	GUILayout// !
.//! "
Space//" '
(//' (
-//( )
$num//) +
)//+ ,
;//, -
using00 
(00 
new00 "
EditorGUILayout00# 2
.002 3
HorizontalScope003 B
(00B C
)00C D
)00D E
{11 
	GUILayout22 %
.22% &
FlexibleSpace22& 3
(223 4
)224 5
;225 6
if33 
(33  
	GUILayout33  )
.33) *
Button33* 0
(330 1
$str331 6
,336 7
	GUILayout338 A
.33A B
Width33B G
(33G H
$num33H J
)33J K
)33K L
)33L M
{44  
SetLUTImportSettings55  4
(554 5
importer555 =
)55= >
;55> ?
AssetDatabase66  -
.66- .
Refresh66. 5
(665 6
)666 7
;667 8
}77 
	GUILayout88 %
.88% &
Space88& +
(88+ ,
$num88, -
)88- .
;88. /
}99 
	GUILayout:: !
.::! "
Space::" '
(::' (
$num::( *
)::* +
;::+ ,
};; 
}<< 
else== 
{>> 
	m_Texture?? 
.??  
objectReferenceValue?? 2
=??3 4
null??5 9
;??9 :
}@@ 
}AA 
EditorGUILayoutCC 
.CC 
PropertyFieldCC )
(CC) *
	m_TextureCC* 3
)CC3 4
;CC4 5
EditorGUILayoutDD 
.DD 
PropertyFieldDD )
(DD) *
m_ContributionDD* 8
)DD8 9
;DD9 :
}EE 	
voidGG  
SetLUTImportSettingsGG !
(GG! "
TextureImporterGG" 1
importerGG2 :
)GG: ;
{HH 	
importerJJ 
.JJ 
textureTypeJJ  
=JJ! "
TextureImporterTypeJJ# 6
.JJ6 7
DefaultJJ7 >
;JJ> ?
importerKK 
.KK 
sRGBTextureKK  
=KK! "
falseKK# (
;KK( )
importerLL 
.LL 
textureCompressionLL '
=LL( )&
TextureImporterCompressionLL* D
.LLD E
UncompressedLLE Q
;LLQ R
importerRR 
.RR 

anisoLevelRR 
=RR  !
$numRR" #
;RR# $
importerSS 
.SS 
mipmapEnabledSS "
=SS# $
falseSS% *
;SS* +
importerTT 
.TT 
SaveAndReimportTT $
(TT$ %
)TT% &
;TT& '
}UU 	
}VV 
}WW ﬁJ
ΩD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\VignetteModelEditor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
[		 %
PostProcessingModelEditor		 
(		 
typeof		 %
(		% &
VignetteModel		& 3
)		3 4
)		4 5
]		5 6
public

 

class

 
VignetteModelEditor

 $
:

% &%
PostProcessingModelEditor

' @
{ 
SerializedProperty 
m_Mode !
;! "
SerializedProperty 
m_Color "
;" #
SerializedProperty 
m_Center #
;# $
SerializedProperty 
m_Intensity &
;& '
SerializedProperty 
m_Smoothness '
;' (
SerializedProperty 
m_Roundness &
;& '
SerializedProperty 
m_Mask !
;! "
SerializedProperty 
	m_Opacity $
;$ %
SerializedProperty 
	m_Rounded $
;$ %
public 
override 
void 
OnEnable %
(% &
)& '
{ 	
m_Mode 
= 
FindSetting  
(  !
(! "
Settings" *
x+ ,
), -
=>. 0
x1 2
.2 3
mode3 7
)7 8
;8 9
m_Color 
= 
FindSetting !
(! "
(" #
Settings# +
x, -
)- .
=>/ 1
x2 3
.3 4
color4 9
)9 :
;: ;
m_Center 
= 
FindSetting "
(" #
(# $
Settings$ ,
x- .
). /
=>0 2
x3 4
.4 5
center5 ;
); <
;< =
m_Intensity 
= 
FindSetting %
(% &
(& '
Settings' /
x0 1
)1 2
=>3 5
x6 7
.7 8
	intensity8 A
)A B
;B C
m_Smoothness 
= 
FindSetting &
(& '
(' (
Settings( 0
x1 2
)2 3
=>4 6
x7 8
.8 9

smoothness9 C
)C D
;D E
m_Roundness 
= 
FindSetting %
(% &
(& '
Settings' /
x0 1
)1 2
=>3 5
x6 7
.7 8
	roundness8 A
)A B
;B C
m_Mask 
= 
FindSetting  
(  !
(! "
Settings" *
x+ ,
), -
=>. 0
x1 2
.2 3
mask3 7
)7 8
;8 9
	m_Opacity 
= 
FindSetting #
(# $
($ %
Settings% -
x. /
)/ 0
=>1 3
x4 5
.5 6
opacity6 =
)= >
;> ?
	m_Rounded   
=   
FindSetting   #
(  # $
(  $ %
Settings  % -
x  . /
)  / 0
=>  1 3
x  4 5
.  5 6
rounded  6 =
)  = >
;  > ?
}!! 	
public## 
override## 
void## 
OnInspectorGUI## +
(##+ ,
)##, -
{$$ 	
EditorGUILayout%% 
.%% 
PropertyField%% )
(%%) *
m_Mode%%* 0
)%%0 1
;%%1 2
EditorGUILayout&& 
.&& 
PropertyField&& )
(&&) *
m_Color&&* 1
)&&1 2
;&&2 3
if(( 
((( 
m_Mode(( 
.(( 
intValue(( 
<((  !
(((" #
int((# &
)((& '
VignetteMode((' 3
.((3 4
Masked((4 :
)((: ;
{)) 
EditorGUILayout** 
.**  
PropertyField**  -
(**- .
m_Center**. 6
)**6 7
;**7 8
EditorGUILayout++ 
.++  
PropertyField++  -
(++- .
m_Intensity++. 9
)++9 :
;++: ;
EditorGUILayout,, 
.,,  
PropertyField,,  -
(,,- .
m_Smoothness,,. :
),,: ;
;,,; <
EditorGUILayout-- 
.--  
PropertyField--  -
(--- .
m_Roundness--. 9
)--9 :
;--: ;
EditorGUILayout.. 
...  
PropertyField..  -
(..- .
	m_Rounded... 7
)..7 8
;..8 9
}// 
else00 
{11 
var22 
mask22 
=22 
(22 
target22 "
as22# %
VignetteModel22& 3
)223 4
.224 5
settings225 =
.22= >
mask22> B
;22B C
if55 
(55 
mask55 
!=55 
null55  
)55  !
{66 
var77 
importer77  
=77! "
AssetImporter77# 0
.770 1
	GetAtPath771 :
(77: ;
AssetDatabase77; H
.77H I
GetAssetPath77I U
(77U V
mask77V Z
)77Z [
)77[ \
as77] _
TextureImporter77` o
;77o p
if99 
(99 
importer99  
!=99! #
null99$ (
)99( )
{:: 
bool<< 
valid<< "
=<<# $
importer<<% -
.<<- .

anisoLevel<<. 8
==<<9 ;
$num<<< =
&&== 
importer== '
.==' (
mipmapEnabled==( 5
====6 8
false==9 >
&&?? 
importer?? '
.??' (
alphaSource??( 3
==??4 6&
TextureImporterAlphaSource??7 Q
.??Q R
FromGrayScale??R _
&&@@ 
importer@@ '
.@@' (
textureCompression@@( :
==@@; =&
TextureImporterCompression@@> X
.@@X Y
Uncompressed@@Y e
&&AA 
importerAA '
.AA' (
wrapModeAA( 0
==AA1 3
TextureWrapModeAA4 C
.AAC D
ClampAAD I
;AAI J
ifJJ 
(JJ 
!JJ 
validJJ "
)JJ" #
{KK 
EditorGUILayoutLL +
.LL+ ,
HelpBoxLL, 3
(LL3 4
$strLL4 S
,LLS T
MessageTypeLLU `
.LL` a
WarningLLa h
)LLh i
;LLi j
	GUILayoutNN %
.NN% &
SpaceNN& +
(NN+ ,
-NN, -
$numNN- /
)NN/ 0
;NN0 1
usingOO !
(OO" #
newOO# &
EditorGUILayoutOO' 6
.OO6 7
HorizontalScopeOO7 F
(OOF G
)OOG H
)OOH I
{PP 
	GUILayoutQQ  )
.QQ) *
FlexibleSpaceQQ* 7
(QQ7 8
)QQ8 9
;QQ9 :
ifRR  "
(RR# $
	GUILayoutRR$ -
.RR- .
ButtonRR. 4
(RR4 5
$strRR5 :
,RR: ;
	GUILayoutRR< E
.RRE F
WidthRRF K
(RRK L
$numRRL N
)RRN O
)RRO P
)RRP Q
{SS  !!
SetMaskImportSettingsTT$ 9
(TT9 :
importerTT: B
)TTB C
;TTC D
AssetDatabaseUU$ 1
.UU1 2
RefreshUU2 9
(UU9 :
)UU: ;
;UU; <
}VV  !
	GUILayoutWW  )
.WW) *
SpaceWW* /
(WW/ 0
$numWW0 1
)WW1 2
;WW2 3
}XX 
	GUILayoutYY %
.YY% &
SpaceYY& +
(YY+ ,
$numYY, .
)YY. /
;YY/ 0
}ZZ 
}[[ 
}\\ 
EditorGUILayout^^ 
.^^  
PropertyField^^  -
(^^- .
m_Mask^^. 4
)^^4 5
;^^5 6
EditorGUILayout__ 
.__  
PropertyField__  -
(__- .
	m_Opacity__. 7
)__7 8
;__8 9
}`` 
}aa 	
voidcc !
SetMaskImportSettingscc "
(cc" #
TextureImportercc# 2
importercc3 ;
)cc; <
{dd 	
importerff 
.ff 
textureTypeff  
=ff! "
TextureImporterTypeff# 6
.ff6 7
SingleChannelff7 D
;ffD E
importerhh 
.hh 
alphaSourcehh  
=hh! "&
TextureImporterAlphaSourcehh# =
.hh= >
FromGrayScalehh> K
;hhK L
importerii 
.ii 
textureCompressionii '
=ii( )&
TextureImporterCompressionii* D
.iiD E
UncompressediiE Q
;iiQ R
importerpp 
.pp 

anisoLevelpp 
=pp  !
$numpp" #
;pp# $
importerqq 
.qq 
mipmapEnabledqq "
=qq# $
falseqq% *
;qq* +
importerrr 
.rr 
wrapModerr 
=rr 
TextureWrapModerr  /
.rr/ 0
Clamprr0 5
;rr5 6
importerss 
.ss 
SaveAndReimportss $
(ss$ %
)ss% &
;ss& '
}tt 	
}uu 
}vv ì’
ºD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Monitors\HistogramMonitor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
public		 

class		 
HistogramMonitor		 !
:		" #!
PostProcessingMonitor		$ 9
{

 
static 

GUIContent 
s_MonitorTitle (
=) *
new+ .

GUIContent/ 9
(9 :
$str: E
)E F
;F G
ComputeShader 
m_ComputeShader %
;% &
ComputeBuffer 
m_Buffer 
; 
Material 

m_Material 
; 
RenderTexture 
m_HistogramTexture (
;( )
Rect 
m_MonitorAreaRect 
; 
public 
HistogramMonitor 
(  
)  !
{ 	
m_ComputeShader 
= 
EditorResources -
.- .
Load. 2
<2 3
ComputeShader3 @
>@ A
(A B
$strB e
)e f
;f g
} 	
public 
override 
void 
Dispose $
($ %
)% &
{ 	
GraphicsUtils 
. 
Destroy !
(! "

m_Material" ,
), -
;- .
GraphicsUtils 
. 
Destroy !
(! "
m_HistogramTexture" 4
)4 5
;5 6
if 
( 
m_Buffer 
!= 
null  
)  !
m_Buffer 
. 
Release  
(  !
)! "
;" #

m_Material   
=   
null   
;   
m_HistogramTexture!! 
=!!  
null!!! %
;!!% &
m_Buffer"" 
="" 
null"" 
;"" 
}## 	
public%% 
override%% 
bool%% 
IsSupported%% (
(%%( )
)%%) *
{&& 	
return'' 
m_ComputeShader'' "
!=''# %
null''& *
&&''+ -
GraphicsUtils''. ;
.''; <
supportsDX11''< H
;''H I
}(( 	
public** 
override** 

GUIContent** "
GetMonitorTitle**# 2
(**2 3
)**3 4
{++ 	
return,, 
s_MonitorTitle,, !
;,,! "
}-- 	
public// 
override// 
void// 
OnMonitorSettings// .
(//. /
)/// 0
{00 	
	EditorGUI11 
.11 
BeginChangeCheck11 &
(11& '
)11' (
;11( )
bool33 
refreshOnPlay33 
=33  
m_MonitorSettings33! 2
.332 3
refreshOnPlay333 @
;33@ A
var44 
mode44 
=44 
m_MonitorSettings44 (
.44( )
histogramMode44) 6
;446 7
refreshOnPlay66 
=66 
	GUILayout66 %
.66% &
Toggle66& ,
(66, -
refreshOnPlay66- :
,66: ;
new66< ?

GUIContent66@ J
(66J K
FxStyles66K S
.66S T
playIcon66T \
,66\ ]
$str	66^ ©
)
66© ™
,
66™ ´
FxStyles
66¨ ¥
.
66¥ µ
	preButton
66µ æ
)
66æ ø
;
66ø ¿
mode77 
=77 
(77 
HistogramMode77 !
)77! "
EditorGUILayout77" 1
.771 2
	EnumPopup772 ;
(77; <
mode77< @
,77@ A
FxStyles77B J
.77J K
preDropdown77K V
,77V W
	GUILayout77X a
.77a b
MaxWidth77b j
(77j k
$num77k o
)77o p
)77p q
;77q r
if99 
(99 
	EditorGUI99 
.99 
EndChangeCheck99 (
(99( )
)99) *
)99* +
{:: 
Undo;; 
.;; 
RecordObject;; !
(;;! "
m_BaseEditor;;" .
.;;. /
serializedObject;;/ ?
.;;? @
targetObject;;@ L
,;;L M
$str;;N j
);;j k
;;;k l
m_MonitorSettings<< !
.<<! "
refreshOnPlay<<" /
=<<0 1
refreshOnPlay<<2 ?
;<<? @
m_MonitorSettings== !
.==! "
histogramMode==" /
===0 1
mode==2 6
;==6 7!
InternalEditorUtility>> %
.>>% &
RepaintAllViews>>& 5
(>>5 6
)>>6 7
;>>7 8
}?? 
}@@ 	
publicBB 
overrideBB 
voidBB 
OnMonitorGUIBB )
(BB) *
RectBB* .
rBB/ 0
)BB0 1
{CC 	
ifDD 
(DD 
EventDD 
.DD 
currentDD 
.DD 
typeDD "
==DD# %
	EventTypeDD& /
.DD/ 0
RepaintDD0 7
)DD7 8
{EE 
ifGG 
(GG 
MathfGG 
.GG 
ApproximatelyGG '
(GG' (
m_MonitorAreaRectGG( 9
.GG9 :
widthGG: ?
,GG? @
$numGGA B
)GGB C
&&GGD F
MathfGGG L
.GGL M
ApproximatelyGGM Z
(GGZ [
m_MonitorAreaRectGG[ l
.GGl m
heightGGm s
,GGs t
$numGGu v
)GGv w
)GGw x!
InternalEditorUtilityHH )
.HH) *
RepaintAllViewsHH* 9
(HH9 :
)HH: ;
;HH; <
floatKK 
widthKK 
=KK 
m_HistogramTextureKK 0
!=KK1 3
nullKK4 8
?LL 
MathfLL 
.LL 
MinLL 
(LL  
m_HistogramTextureLL  2
.LL2 3
widthLL3 8
,LL8 9
rLL: ;
.LL; <
widthLL< A
-LLB C
$numLLD G
)LLG H
:MM 
rMM 
.MM 
widthMM 
;MM 
floatNN 
heightNN 
=NN 
m_HistogramTextureNN 1
!=NN2 4
nullNN5 9
?OO 
MathfOO 
.OO 
MinOO 
(OO  
m_HistogramTextureOO  2
.OO2 3
heightOO3 9
,OO9 :
rOO; <
.OO< =
heightOO= C
-OOD E
$numOOF I
)OOI J
:PP 
rPP 
.PP 
heightPP 
;PP 
m_MonitorAreaRectRR !
=RR" #
newRR$ '
RectRR( ,
(RR, -
MathfSS 
.SS 
FloorSS #
(SS# $
rSS$ %
.SS% &
xSS& '
+SS( )
rSS* +
.SS+ ,
widthSS, 1
/SS2 3
$numSS4 6
-SS7 8
widthSS9 >
/SS? @
$numSSA C
)SSC D
,SSD E
MathfTT 
.TT 
FloorTT #
(TT# $
rTT$ %
.TT% &
yTT& '
+TT( )
rTT* +
.TT+ ,
heightTT, 2
/TT3 4
$numTT5 7
-TT8 9
heightTT: @
/TTA B
$numTTC E
-TTF G
$numTTH J
)TTJ K
,TTK L
widthUU 
,UU 
heightUU %
)VV 
;VV 
ifXX 
(XX 
m_HistogramTextureXX &
!=XX' )
nullXX* .
)XX. /
{YY 
GraphicsZZ 
.ZZ 
DrawTextureZZ (
(ZZ( )
m_MonitorAreaRectZZ) :
,ZZ: ;
m_HistogramTextureZZ< N
)ZZN O
;ZZO P
var\\ 
color\\ 
=\\ 
Color\\  %
.\\% &
white\\& +
;\\+ ,
const]] 
float]] 
	kTickSize]]  )
=]]* +
$num]], .
;]]. /
if`` 
(`` 
m_MonitorSettings`` )
.``) *
histogramMode``* 7
==``8 :
HistogramMode``; H
.``H I
RGBSplit``I Q
)``Q R
{aa 
vargg 
Agg 
=gg 
newgg  #
Vector3gg$ +
(gg+ ,
m_MonitorAreaRectgg, =
.gg= >
xgg> ?
-gg@ A
$numggB D
,ggD E
m_MonitorAreaRectggF W
.ggW X
yggX Y
-ggZ [
$numgg\ ^
)gg^ _
;gg_ `
varhh 
Ehh 
=hh 
newhh  #
Vector3hh$ +
(hh+ ,
Ahh, -
.hh- .
xhh. /
+hh0 1
m_MonitorAreaRecthh2 C
.hhC D
widthhhD I
+hhJ K
$numhhL N
,hhN O
m_MonitorAreaRecthhP a
.hha b
yhhb c
-hhd e
$numhhf h
)hhh i
;hhi j
varii 
Hii 
=ii 
newii  #
Vector3ii$ +
(ii+ ,
Eii, -
.ii- .
xii. /
,ii/ 0
Eii1 2
.ii2 3
yii3 4
+ii5 6
m_MonitorAreaRectii7 H
.iiH I
heightiiI O
+iiP Q
$numiiR T
)iiT U
;iiU V
varjj 
Ljj 
=jj 
newjj  #
Vector3jj$ +
(jj+ ,
Ajj, -
.jj- .
xjj. /
,jj/ 0
Hjj1 2
.jj2 3
yjj3 4
)jj4 5
;jj5 6
varll 
Nll 
=ll 
newll  #
Vector3ll$ +
(ll+ ,
All, -
.ll- .
xll. /
,ll/ 0
All1 2
.ll2 3
yll3 4
+ll5 6
(ll7 8
Lll8 9
.ll9 :
yll: ;
-ll< =
All> ?
.ll? @
yll@ A
)llA B
/llC D
$numllE G
)llG H
;llH I
varmm 
Mmm 
=mm 
newmm  #
Vector3mm$ +
(mm+ ,
Amm, -
.mm- .
xmm. /
,mm/ 0
Amm1 2
.mm2 3
ymm3 4
+mm5 6
(mm7 8
Lmm8 9
.mm9 :
ymm: ;
-mm< =
Amm> ?
.mm? @
ymm@ A
)mmA B
*mmC D
$nummmE G
/mmH I
$nummmJ L
)mmL M
;mmM N
varnn 
Fnn 
=nn 
newnn  #
Vector3nn$ +
(nn+ ,
Enn, -
.nn- .
xnn. /
,nn/ 0
Enn1 2
.nn2 3
ynn3 4
+nn5 6
(nn7 8
Hnn8 9
.nn9 :
ynn: ;
-nn< =
Enn> ?
.nn? @
ynn@ A
)nnA B
/nnC D
$numnnE G
)nnG H
;nnH I
varoo 
Goo 
=oo 
newoo  #
Vector3oo$ +
(oo+ ,
Eoo, -
.oo- .
xoo. /
,oo/ 0
Eoo1 2
.oo2 3
yoo3 4
+oo5 6
(oo7 8
Hoo8 9
.oo9 :
yoo: ;
-oo< =
Eoo> ?
.oo? @
yoo@ A
)ooA B
*ooC D
$numooE G
/ooH I
$numooJ L
)ooL M
;ooM N
varqq 
Cqq 
=qq 
newqq  #
Vector3qq$ +
(qq+ ,
Aqq, -
.qq- .
xqq. /
+qq0 1
(qq2 3
Eqq3 4
.qq4 5
xqq5 6
-qq7 8
Aqq9 :
.qq: ;
xqq; <
)qq< =
/qq> ?
$numqq@ B
,qqB C
AqqD E
.qqE F
yqqF G
)qqG H
;qqH I
varrr 
Jrr 
=rr 
newrr  #
Vector3rr$ +
(rr+ ,
Lrr, -
.rr- .
xrr. /
+rr0 1
(rr2 3
Hrr3 4
.rr4 5
xrr5 6
-rr7 8
Lrr9 :
.rr: ;
xrr; <
)rr< =
/rr> ?
$numrr@ B
,rrB C
LrrD E
.rrE F
yrrF G
)rrG H
;rrH I
vartt 
Btt 
=tt 
newtt  #
Vector3tt$ +
(tt+ ,
Att, -
.tt- .
xtt. /
+tt0 1
(tt2 3
Ctt3 4
.tt4 5
xtt5 6
-tt7 8
Att9 :
.tt: ;
xtt; <
)tt< =
/tt> ?
$numtt@ B
,ttB C
AttD E
.ttE F
yttF G
)ttG H
;ttH I
varuu 
Duu 
=uu 
newuu  #
Vector3uu$ +
(uu+ ,
Cuu, -
.uu- .
xuu. /
+uu0 1
(uu2 3
Euu3 4
.uu4 5
xuu5 6
-uu7 8
Cuu9 :
.uu: ;
xuu; <
)uu< =
/uu> ?
$numuu@ B
,uuB C
CuuD E
.uuE F
yuuF G
)uuG H
;uuH I
varvv 
Ivv 
=vv 
newvv  #
Vector3vv$ +
(vv+ ,
Jvv, -
.vv- .
xvv. /
+vv0 1
(vv2 3
Hvv3 4
.vv4 5
xvv5 6
-vv7 8
Jvv9 :
.vv: ;
xvv; <
)vv< =
/vv> ?
$numvv@ B
,vvB C
JvvD E
.vvE F
yvvF G
)vvG H
;vvH I
varww 
Kww 
=ww 
newww  #
Vector3ww$ +
(ww+ ,
Lww, -
.ww- .
xww. /
+ww0 1
(ww2 3
Jww3 4
.ww4 5
xww5 6
-ww7 8
Lww9 :
.ww: ;
xww; <
)ww< =
/ww> ?
$numww@ B
,wwB C
LwwD E
.wwE F
ywwF G
)wwG H
;wwH I
Handleszz 
.zz  
colorzz  %
=zz& '
colorzz( -
;zz- .
Handles{{ 
.{{  
DrawLine{{  (
({{( )
A{{) *
,{{* +
E{{, -
){{- .
;{{. /
Handles|| 
.||  
DrawLine||  (
(||( )
E||) *
,||* +
H||, -
)||- .
;||. /
Handles}} 
.}}  
DrawLine}}  (
(}}( )
H}}) *
,}}* +
L}}, -
)}}- .
;}}. /
Handles~~ 
.~~  
DrawLine~~  (
(~~( )
L~~) *
,~~* +
new~~, /
Vector3~~0 7
(~~7 8
A~~8 9
.~~9 :
x~~: ;
,~~; <
A~~= >
.~~> ?
y~~? @
-~~A B
$num~~C E
)~~E F
)~~F G
;~~G H
Handles
ÅÅ 
.
ÅÅ  
DrawLine
ÅÅ  (
(
ÅÅ( )
A
ÅÅ) *
,
ÅÅ* +
new
ÅÅ, /
Vector3
ÅÅ0 7
(
ÅÅ7 8
A
ÅÅ8 9
.
ÅÅ9 :
x
ÅÅ: ;
-
ÅÅ< =
	kTickSize
ÅÅ> G
,
ÅÅG H
A
ÅÅI J
.
ÅÅJ K
y
ÅÅK L
)
ÅÅL M
)
ÅÅM N
;
ÅÅN O
Handles
ÇÇ 
.
ÇÇ  
DrawLine
ÇÇ  (
(
ÇÇ( )
N
ÇÇ) *
,
ÇÇ* +
new
ÇÇ, /
Vector3
ÇÇ0 7
(
ÇÇ7 8
N
ÇÇ8 9
.
ÇÇ9 :
x
ÇÇ: ;
-
ÇÇ< =
	kTickSize
ÇÇ> G
,
ÇÇG H
N
ÇÇI J
.
ÇÇJ K
y
ÇÇK L
)
ÇÇL M
)
ÇÇM N
;
ÇÇN O
Handles
ÉÉ 
.
ÉÉ  
DrawLine
ÉÉ  (
(
ÉÉ( )
M
ÉÉ) *
,
ÉÉ* +
new
ÉÉ, /
Vector3
ÉÉ0 7
(
ÉÉ7 8
M
ÉÉ8 9
.
ÉÉ9 :
x
ÉÉ: ;
-
ÉÉ< =
	kTickSize
ÉÉ> G
,
ÉÉG H
M
ÉÉI J
.
ÉÉJ K
y
ÉÉK L
)
ÉÉL M
)
ÉÉM N
;
ÉÉN O
Handles
ÑÑ 
.
ÑÑ  
DrawLine
ÑÑ  (
(
ÑÑ( )
L
ÑÑ) *
,
ÑÑ* +
new
ÑÑ, /
Vector3
ÑÑ0 7
(
ÑÑ7 8
L
ÑÑ8 9
.
ÑÑ9 :
x
ÑÑ: ;
-
ÑÑ< =
	kTickSize
ÑÑ> G
,
ÑÑG H
L
ÑÑI J
.
ÑÑJ K
y
ÑÑK L
)
ÑÑL M
)
ÑÑM N
;
ÑÑN O
Handles
ÜÜ 
.
ÜÜ  
DrawLine
ÜÜ  (
(
ÜÜ( )
E
ÜÜ) *
,
ÜÜ* +
new
ÜÜ, /
Vector3
ÜÜ0 7
(
ÜÜ7 8
E
ÜÜ8 9
.
ÜÜ9 :
x
ÜÜ: ;
+
ÜÜ< =
	kTickSize
ÜÜ> G
,
ÜÜG H
E
ÜÜI J
.
ÜÜJ K
y
ÜÜK L
)
ÜÜL M
)
ÜÜM N
;
ÜÜN O
Handles
áá 
.
áá  
DrawLine
áá  (
(
áá( )
F
áá) *
,
áá* +
new
áá, /
Vector3
áá0 7
(
áá7 8
F
áá8 9
.
áá9 :
x
áá: ;
+
áá< =
	kTickSize
áá> G
,
ááG H
F
ááI J
.
ááJ K
y
ááK L
)
ááL M
)
ááM N
;
ááN O
Handles
àà 
.
àà  
DrawLine
àà  (
(
àà( )
G
àà) *
,
àà* +
new
àà, /
Vector3
àà0 7
(
àà7 8
G
àà8 9
.
àà9 :
x
àà: ;
+
àà< =
	kTickSize
àà> G
,
ààG H
G
ààI J
.
ààJ K
y
ààK L
)
ààL M
)
ààM N
;
ààN O
Handles
ââ 
.
ââ  
DrawLine
ââ  (
(
ââ( )
H
ââ) *
,
ââ* +
new
ââ, /
Vector3
ââ0 7
(
ââ7 8
H
ââ8 9
.
ââ9 :
x
ââ: ;
+
ââ< =
	kTickSize
ââ> G
,
ââG H
H
ââI J
.
ââJ K
y
ââK L
)
ââL M
)
ââM N
;
ââN O
Handles
åå 
.
åå  
DrawLine
åå  (
(
åå( )
A
åå) *
,
åå* +
new
åå, /
Vector3
åå0 7
(
åå7 8
A
åå8 9
.
åå9 :
x
åå: ;
,
åå; <
A
åå= >
.
åå> ?
y
åå? @
-
ååA B
	kTickSize
ååC L
)
ååL M
)
ååM N
;
ååN O
Handles
çç 
.
çç  
DrawLine
çç  (
(
çç( )
B
çç) *
,
çç* +
new
çç, /
Vector3
çç0 7
(
çç7 8
B
çç8 9
.
çç9 :
x
çç: ;
,
çç; <
B
çç= >
.
çç> ?
y
çç? @
-
ççA B
	kTickSize
ççC L
)
ççL M
)
ççM N
;
ççN O
Handles
éé 
.
éé  
DrawLine
éé  (
(
éé( )
C
éé) *
,
éé* +
new
éé, /
Vector3
éé0 7
(
éé7 8
C
éé8 9
.
éé9 :
x
éé: ;
,
éé; <
C
éé= >
.
éé> ?
y
éé? @
-
ééA B
	kTickSize
ééC L
)
ééL M
)
ééM N
;
ééN O
Handles
èè 
.
èè  
DrawLine
èè  (
(
èè( )
D
èè) *
,
èè* +
new
èè, /
Vector3
èè0 7
(
èè7 8
D
èè8 9
.
èè9 :
x
èè: ;
,
èè; <
D
èè= >
.
èè> ?
y
èè? @
-
èèA B
	kTickSize
èèC L
)
èèL M
)
èèM N
;
èèN O
Handles
êê 
.
êê  
DrawLine
êê  (
(
êê( )
E
êê) *
,
êê* +
new
êê, /
Vector3
êê0 7
(
êê7 8
E
êê8 9
.
êê9 :
x
êê: ;
,
êê; <
E
êê= >
.
êê> ?
y
êê? @
-
êêA B
	kTickSize
êêC L
)
êêL M
)
êêM N
;
êêN O
Handles
íí 
.
íí  
DrawLine
íí  (
(
íí( )
L
íí) *
,
íí* +
new
íí, /
Vector3
íí0 7
(
íí7 8
L
íí8 9
.
íí9 :
x
íí: ;
,
íí; <
L
íí= >
.
íí> ?
y
íí? @
+
ííA B
	kTickSize
ííC L
)
ííL M
)
ííM N
;
ííN O
Handles
ìì 
.
ìì  
DrawLine
ìì  (
(
ìì( )
K
ìì) *
,
ìì* +
new
ìì, /
Vector3
ìì0 7
(
ìì7 8
K
ìì8 9
.
ìì9 :
x
ìì: ;
,
ìì; <
K
ìì= >
.
ìì> ?
y
ìì? @
+
ììA B
	kTickSize
ììC L
)
ììL M
)
ììM N
;
ììN O
Handles
îî 
.
îî  
DrawLine
îî  (
(
îî( )
J
îî) *
,
îî* +
new
îî, /
Vector3
îî0 7
(
îî7 8
J
îî8 9
.
îî9 :
x
îî: ;
,
îî; <
J
îî= >
.
îî> ?
y
îî? @
+
îîA B
	kTickSize
îîC L
)
îîL M
)
îîM N
;
îîN O
Handles
ïï 
.
ïï  
DrawLine
ïï  (
(
ïï( )
I
ïï) *
,
ïï* +
new
ïï, /
Vector3
ïï0 7
(
ïï7 8
I
ïï8 9
.
ïï9 :
x
ïï: ;
,
ïï; <
I
ïï= >
.
ïï> ?
y
ïï? @
+
ïïA B
	kTickSize
ïïC L
)
ïïL M
)
ïïM N
;
ïïN O
Handles
ññ 
.
ññ  
DrawLine
ññ  (
(
ññ( )
H
ññ) *
,
ññ* +
new
ññ, /
Vector3
ññ0 7
(
ññ7 8
H
ññ8 9
.
ññ9 :
x
ññ: ;
,
ññ; <
H
ññ= >
.
ññ> ?
y
ññ? @
+
ññA B
	kTickSize
ññC L
)
ññL M
)
ññM N
;
ññN O
Handles
ôô 
.
ôô  
DrawLine
ôô  (
(
ôô( )
N
ôô) *
,
ôô* +
F
ôô, -
)
ôô- .
;
ôô. /
Handles
öö 
.
öö  
DrawLine
öö  (
(
öö( )
M
öö) *
,
öö* +
G
öö, -
)
öö- .
;
öö. /
GUI
ùù 
.
ùù 
color
ùù !
=
ùù" #
color
ùù$ )
;
ùù) *
GUI
ûû 
.
ûû 
Label
ûû !
(
ûû! "
new
ûû" %
Rect
ûû& *
(
ûû* +
L
ûû+ ,
.
ûû, -
x
ûû- .
-
ûû/ 0
$num
ûû1 4
,
ûû4 5
L
ûû6 7
.
ûû7 8
y
ûû8 9
+
ûû: ;
	kTickSize
ûû< E
-
ûûF G
$num
ûûH J
,
ûûJ K
$num
ûûL O
,
ûûO P
$num
ûûQ T
)
ûûT U
,
ûûU V
$str
ûûW \
,
ûû\ ]
FxStyles
ûû^ f
.
ûûf g
tickStyleCenter
ûûg v
)
ûûv w
;
ûûw x
GUI
üü 
.
üü 
Label
üü !
(
üü! "
new
üü" %
Rect
üü& *
(
üü* +
J
üü+ ,
.
üü, -
x
üü- .
-
üü/ 0
$num
üü1 4
,
üü4 5
J
üü6 7
.
üü7 8
y
üü8 9
+
üü: ;
	kTickSize
üü< E
-
üüF G
$num
üüH J
,
üüJ K
$num
üüL O
,
üüO P
$num
üüQ T
)
üüT U
,
üüU V
$str
üüW \
,
üü\ ]
FxStyles
üü^ f
.
üüf g
tickStyleCenter
üüg v
)
üüv w
;
üüw x
GUI
†† 
.
†† 
Label
†† !
(
††! "
new
††" %
Rect
††& *
(
††* +
H
††+ ,
.
††, -
x
††- .
-
††/ 0
$num
††1 4
,
††4 5
H
††6 7
.
††7 8
y
††8 9
+
††: ;
	kTickSize
††< E
-
††F G
$num
††H J
,
††J K
$num
††L O
,
††O P
$num
††Q T
)
††T U
,
††U V
$str
††W \
,
††\ ]
FxStyles
††^ f
.
††f g
tickStyleCenter
††g v
)
††v w
;
††w x
}
°° 
else
¢¢ 
{
££ 
var
™™ 
A
™™ 
=
™™ 
new
™™  #
Vector3
™™$ +
(
™™+ ,
m_MonitorAreaRect
™™, =
.
™™= >
x
™™> ?
,
™™? @
m_MonitorAreaRect
™™A R
.
™™R S
y
™™S T
)
™™T U
;
™™U V
var
´´ 
E
´´ 
=
´´ 
new
´´  #
Vector3
´´$ +
(
´´+ ,
A
´´, -
.
´´- .
x
´´. /
+
´´0 1
m_MonitorAreaRect
´´2 C
.
´´C D
width
´´D I
+
´´J K
$num
´´L N
,
´´N O
m_MonitorAreaRect
´´P a
.
´´a b
y
´´b c
)
´´c d
;
´´d e
var
¨¨ 
I
¨¨ 
=
¨¨ 
new
¨¨  #
Vector3
¨¨$ +
(
¨¨+ ,
E
¨¨, -
.
¨¨- .
x
¨¨. /
,
¨¨/ 0
E
¨¨1 2
.
¨¨2 3
y
¨¨3 4
+
¨¨5 6
m_MonitorAreaRect
¨¨7 H
.
¨¨H I
height
¨¨I O
+
¨¨P Q
$num
¨¨R T
)
¨¨T U
;
¨¨U V
var
≠≠ 
M
≠≠ 
=
≠≠ 
new
≠≠  #
Vector3
≠≠$ +
(
≠≠+ ,
A
≠≠, -
.
≠≠- .
x
≠≠. /
,
≠≠/ 0
I
≠≠1 2
.
≠≠2 3
y
≠≠3 4
)
≠≠4 5
;
≠≠5 6
var
ØØ 
C
ØØ 
=
ØØ 
new
ØØ  #
Vector3
ØØ$ +
(
ØØ+ ,
A
ØØ, -
.
ØØ- .
x
ØØ. /
+
ØØ0 1
(
ØØ2 3
E
ØØ3 4
.
ØØ4 5
x
ØØ5 6
-
ØØ7 8
A
ØØ9 :
.
ØØ: ;
x
ØØ; <
)
ØØ< =
/
ØØ> ?
$num
ØØ@ B
,
ØØB C
A
ØØD E
.
ØØE F
y
ØØF G
)
ØØG H
;
ØØH I
var
∞∞ 
G
∞∞ 
=
∞∞ 
new
∞∞  #
Vector3
∞∞$ +
(
∞∞+ ,
E
∞∞, -
.
∞∞- .
x
∞∞. /
,
∞∞/ 0
E
∞∞1 2
.
∞∞2 3
y
∞∞3 4
+
∞∞5 6
(
∞∞7 8
I
∞∞8 9
.
∞∞9 :
y
∞∞: ;
-
∞∞< =
E
∞∞> ?
.
∞∞? @
y
∞∞@ A
)
∞∞A B
/
∞∞C D
$num
∞∞E G
)
∞∞G H
;
∞∞H I
var
±± 
K
±± 
=
±± 
new
±±  #
Vector3
±±$ +
(
±±+ ,
M
±±, -
.
±±- .
x
±±. /
+
±±0 1
(
±±2 3
I
±±3 4
.
±±4 5
x
±±5 6
-
±±7 8
M
±±9 :
.
±±: ;
x
±±; <
)
±±< =
/
±±> ?
$num
±±@ B
,
±±B C
M
±±D E
.
±±E F
y
±±F G
)
±±G H
;
±±H I
var
≤≤ 
O
≤≤ 
=
≤≤ 
new
≤≤  #
Vector3
≤≤$ +
(
≤≤+ ,
A
≤≤, -
.
≤≤- .
x
≤≤. /
,
≤≤/ 0
A
≤≤1 2
.
≤≤2 3
y
≤≤3 4
+
≤≤5 6
(
≤≤7 8
M
≤≤8 9
.
≤≤9 :
y
≤≤: ;
-
≤≤< =
A
≤≤> ?
.
≤≤? @
y
≤≤@ A
)
≤≤A B
/
≤≤C D
$num
≤≤E G
)
≤≤G H
;
≤≤H I
var
¥¥ 
P
¥¥ 
=
¥¥ 
new
¥¥  #
Vector3
¥¥$ +
(
¥¥+ ,
A
¥¥, -
.
¥¥- .
x
¥¥. /
,
¥¥/ 0
A
¥¥1 2
.
¥¥2 3
y
¥¥3 4
+
¥¥5 6
(
¥¥7 8
O
¥¥8 9
.
¥¥9 :
y
¥¥: ;
-
¥¥< =
A
¥¥> ?
.
¥¥? @
y
¥¥@ A
)
¥¥A B
/
¥¥C D
$num
¥¥E G
)
¥¥G H
;
¥¥H I
var
µµ 
F
µµ 
=
µµ 
new
µµ  #
Vector3
µµ$ +
(
µµ+ ,
E
µµ, -
.
µµ- .
x
µµ. /
,
µµ/ 0
E
µµ1 2
.
µµ2 3
y
µµ3 4
+
µµ5 6
(
µµ7 8
G
µµ8 9
.
µµ9 :
y
µµ: ;
-
µµ< =
E
µµ> ?
.
µµ? @
y
µµ@ A
)
µµA B
/
µµC D
$num
µµE G
)
µµG H
;
µµH I
var
∂∂ 
N
∂∂ 
=
∂∂ 
new
∂∂  #
Vector3
∂∂$ +
(
∂∂+ ,
A
∂∂, -
.
∂∂- .
x
∂∂. /
,
∂∂/ 0
O
∂∂1 2
.
∂∂2 3
y
∂∂3 4
+
∂∂5 6
(
∂∂7 8
M
∂∂8 9
.
∂∂9 :
y
∂∂: ;
-
∂∂< =
O
∂∂> ?
.
∂∂? @
y
∂∂@ A
)
∂∂A B
/
∂∂C D
$num
∂∂E G
)
∂∂G H
;
∂∂H I
var
∑∑ 
H
∑∑ 
=
∑∑ 
new
∑∑  #
Vector3
∑∑$ +
(
∑∑+ ,
E
∑∑, -
.
∑∑- .
x
∑∑. /
,
∑∑/ 0
G
∑∑1 2
.
∑∑2 3
y
∑∑3 4
+
∑∑5 6
(
∑∑7 8
I
∑∑8 9
.
∑∑9 :
y
∑∑: ;
-
∑∑< =
G
∑∑> ?
.
∑∑? @
y
∑∑@ A
)
∑∑A B
/
∑∑C D
$num
∑∑E G
)
∑∑G H
;
∑∑H I
var
ππ 
B
ππ 
=
ππ 
new
ππ  #
Vector3
ππ$ +
(
ππ+ ,
A
ππ, -
.
ππ- .
x
ππ. /
+
ππ0 1
(
ππ2 3
C
ππ3 4
.
ππ4 5
x
ππ5 6
-
ππ7 8
A
ππ9 :
.
ππ: ;
x
ππ; <
)
ππ< =
/
ππ> ?
$num
ππ@ B
,
ππB C
A
ππD E
.
ππE F
y
ππF G
)
ππG H
;
ππH I
var
∫∫ 
L
∫∫ 
=
∫∫ 
new
∫∫  #
Vector3
∫∫$ +
(
∫∫+ ,
M
∫∫, -
.
∫∫- .
x
∫∫. /
+
∫∫0 1
(
∫∫2 3
K
∫∫3 4
.
∫∫4 5
x
∫∫5 6
-
∫∫7 8
M
∫∫9 :
.
∫∫: ;
x
∫∫; <
)
∫∫< =
/
∫∫> ?
$num
∫∫@ B
,
∫∫B C
M
∫∫D E
.
∫∫E F
y
∫∫F G
)
∫∫G H
;
∫∫H I
var
ªª 
D
ªª 
=
ªª 
new
ªª  #
Vector3
ªª$ +
(
ªª+ ,
C
ªª, -
.
ªª- .
x
ªª. /
+
ªª0 1
(
ªª2 3
E
ªª3 4
.
ªª4 5
x
ªª5 6
-
ªª7 8
C
ªª9 :
.
ªª: ;
x
ªª; <
)
ªª< =
/
ªª> ?
$num
ªª@ B
,
ªªB C
A
ªªD E
.
ªªE F
y
ªªF G
)
ªªG H
;
ªªH I
var
ºº 
J
ºº 
=
ºº 
new
ºº  #
Vector3
ºº$ +
(
ºº+ ,
K
ºº, -
.
ºº- .
x
ºº. /
+
ºº0 1
(
ºº2 3
I
ºº3 4
.
ºº4 5
x
ºº5 6
-
ºº7 8
K
ºº9 :
.
ºº: ;
x
ºº; <
)
ºº< =
/
ºº> ?
$num
ºº@ B
,
ººB C
M
ººD E
.
ººE F
y
ººF G
)
ººG H
;
ººH I
Handles
øø 
.
øø  
color
øø  %
=
øø& '
color
øø( -
;
øø- .
Handles
¿¿ 
.
¿¿  
DrawLine
¿¿  (
(
¿¿( )
A
¿¿) *
,
¿¿* +
E
¿¿, -
)
¿¿- .
;
¿¿. /
Handles
¡¡ 
.
¡¡  
DrawLine
¡¡  (
(
¡¡( )
E
¡¡) *
,
¡¡* +
I
¡¡, -
)
¡¡- .
;
¡¡. /
Handles
¬¬ 
.
¬¬  
DrawLine
¬¬  (
(
¬¬( )
I
¬¬) *
,
¬¬* +
M
¬¬, -
)
¬¬- .
;
¬¬. /
Handles
√√ 
.
√√  
DrawLine
√√  (
(
√√( )
M
√√) *
,
√√* +
new
√√, /
Vector3
√√0 7
(
√√7 8
A
√√8 9
.
√√9 :
x
√√: ;
,
√√; <
A
√√= >
.
√√> ?
y
√√? @
-
√√A B
$num
√√C E
)
√√E F
)
√√F G
;
√√G H
Handles
∆∆ 
.
∆∆  
DrawLine
∆∆  (
(
∆∆( )
A
∆∆) *
,
∆∆* +
new
∆∆, /
Vector3
∆∆0 7
(
∆∆7 8
A
∆∆8 9
.
∆∆9 :
x
∆∆: ;
-
∆∆< =
	kTickSize
∆∆> G
,
∆∆G H
A
∆∆I J
.
∆∆J K
y
∆∆K L
)
∆∆L M
)
∆∆M N
;
∆∆N O
Handles
«« 
.
««  
DrawLine
««  (
(
««( )
P
««) *
,
««* +
new
««, /
Vector3
««0 7
(
««7 8
P
««8 9
.
««9 :
x
««: ;
-
««< =
	kTickSize
««> G
,
««G H
P
««I J
.
««J K
y
««K L
)
««L M
)
««M N
;
««N O
Handles
»» 
.
»»  
DrawLine
»»  (
(
»»( )
O
»») *
,
»»* +
new
»», /
Vector3
»»0 7
(
»»7 8
O
»»8 9
.
»»9 :
x
»»: ;
-
»»< =
	kTickSize
»»> G
,
»»G H
O
»»I J
.
»»J K
y
»»K L
)
»»L M
)
»»M N
;
»»N O
Handles
…… 
.
……  
DrawLine
……  (
(
……( )
N
……) *
,
……* +
new
……, /
Vector3
……0 7
(
……7 8
N
……8 9
.
……9 :
x
……: ;
-
……< =
	kTickSize
……> G
,
……G H
N
……I J
.
……J K
y
……K L
)
……L M
)
……M N
;
……N O
Handles
   
.
    
DrawLine
    (
(
  ( )
M
  ) *
,
  * +
new
  , /
Vector3
  0 7
(
  7 8
M
  8 9
.
  9 :
x
  : ;
-
  < =
	kTickSize
  > G
,
  G H
M
  I J
.
  J K
y
  K L
)
  L M
)
  M N
;
  N O
Handles
ÃÃ 
.
ÃÃ  
DrawLine
ÃÃ  (
(
ÃÃ( )
E
ÃÃ) *
,
ÃÃ* +
new
ÃÃ, /
Vector3
ÃÃ0 7
(
ÃÃ7 8
E
ÃÃ8 9
.
ÃÃ9 :
x
ÃÃ: ;
+
ÃÃ< =
	kTickSize
ÃÃ> G
,
ÃÃG H
E
ÃÃI J
.
ÃÃJ K
y
ÃÃK L
)
ÃÃL M
)
ÃÃM N
;
ÃÃN O
Handles
ÕÕ 
.
ÕÕ  
DrawLine
ÕÕ  (
(
ÕÕ( )
F
ÕÕ) *
,
ÕÕ* +
new
ÕÕ, /
Vector3
ÕÕ0 7
(
ÕÕ7 8
F
ÕÕ8 9
.
ÕÕ9 :
x
ÕÕ: ;
+
ÕÕ< =
	kTickSize
ÕÕ> G
,
ÕÕG H
F
ÕÕI J
.
ÕÕJ K
y
ÕÕK L
)
ÕÕL M
)
ÕÕM N
;
ÕÕN O
Handles
ŒŒ 
.
ŒŒ  
DrawLine
ŒŒ  (
(
ŒŒ( )
G
ŒŒ) *
,
ŒŒ* +
new
ŒŒ, /
Vector3
ŒŒ0 7
(
ŒŒ7 8
G
ŒŒ8 9
.
ŒŒ9 :
x
ŒŒ: ;
+
ŒŒ< =
	kTickSize
ŒŒ> G
,
ŒŒG H
G
ŒŒI J
.
ŒŒJ K
y
ŒŒK L
)
ŒŒL M
)
ŒŒM N
;
ŒŒN O
Handles
œœ 
.
œœ  
DrawLine
œœ  (
(
œœ( )
H
œœ) *
,
œœ* +
new
œœ, /
Vector3
œœ0 7
(
œœ7 8
H
œœ8 9
.
œœ9 :
x
œœ: ;
+
œœ< =
	kTickSize
œœ> G
,
œœG H
H
œœI J
.
œœJ K
y
œœK L
)
œœL M
)
œœM N
;
œœN O
Handles
–– 
.
––  
DrawLine
––  (
(
––( )
I
––) *
,
––* +
new
––, /
Vector3
––0 7
(
––7 8
I
––8 9
.
––9 :
x
––: ;
+
––< =
	kTickSize
––> G
,
––G H
I
––I J
.
––J K
y
––K L
)
––L M
)
––M N
;
––N O
Handles
”” 
.
””  
DrawLine
””  (
(
””( )
A
””) *
,
””* +
new
””, /
Vector3
””0 7
(
””7 8
A
””8 9
.
””9 :
x
””: ;
,
””; <
A
””= >
.
””> ?
y
””? @
-
””A B
	kTickSize
””C L
)
””L M
)
””M N
;
””N O
Handles
‘‘ 
.
‘‘  
DrawLine
‘‘  (
(
‘‘( )
B
‘‘) *
,
‘‘* +
new
‘‘, /
Vector3
‘‘0 7
(
‘‘7 8
B
‘‘8 9
.
‘‘9 :
x
‘‘: ;
,
‘‘; <
B
‘‘= >
.
‘‘> ?
y
‘‘? @
-
‘‘A B
	kTickSize
‘‘C L
)
‘‘L M
)
‘‘M N
;
‘‘N O
Handles
’’ 
.
’’  
DrawLine
’’  (
(
’’( )
C
’’) *
,
’’* +
new
’’, /
Vector3
’’0 7
(
’’7 8
C
’’8 9
.
’’9 :
x
’’: ;
,
’’; <
C
’’= >
.
’’> ?
y
’’? @
-
’’A B
	kTickSize
’’C L
)
’’L M
)
’’M N
;
’’N O
Handles
÷÷ 
.
÷÷  
DrawLine
÷÷  (
(
÷÷( )
D
÷÷) *
,
÷÷* +
new
÷÷, /
Vector3
÷÷0 7
(
÷÷7 8
D
÷÷8 9
.
÷÷9 :
x
÷÷: ;
,
÷÷; <
D
÷÷= >
.
÷÷> ?
y
÷÷? @
-
÷÷A B
	kTickSize
÷÷C L
)
÷÷L M
)
÷÷M N
;
÷÷N O
Handles
◊◊ 
.
◊◊  
DrawLine
◊◊  (
(
◊◊( )
E
◊◊) *
,
◊◊* +
new
◊◊, /
Vector3
◊◊0 7
(
◊◊7 8
E
◊◊8 9
.
◊◊9 :
x
◊◊: ;
,
◊◊; <
E
◊◊= >
.
◊◊> ?
y
◊◊? @
-
◊◊A B
	kTickSize
◊◊C L
)
◊◊L M
)
◊◊M N
;
◊◊N O
Handles
ŸŸ 
.
ŸŸ  
DrawLine
ŸŸ  (
(
ŸŸ( )
M
ŸŸ) *
,
ŸŸ* +
new
ŸŸ, /
Vector3
ŸŸ0 7
(
ŸŸ7 8
M
ŸŸ8 9
.
ŸŸ9 :
x
ŸŸ: ;
,
ŸŸ; <
M
ŸŸ= >
.
ŸŸ> ?
y
ŸŸ? @
+
ŸŸA B
	kTickSize
ŸŸC L
)
ŸŸL M
)
ŸŸM N
;
ŸŸN O
Handles
⁄⁄ 
.
⁄⁄  
DrawLine
⁄⁄  (
(
⁄⁄( )
L
⁄⁄) *
,
⁄⁄* +
new
⁄⁄, /
Vector3
⁄⁄0 7
(
⁄⁄7 8
L
⁄⁄8 9
.
⁄⁄9 :
x
⁄⁄: ;
,
⁄⁄; <
L
⁄⁄= >
.
⁄⁄> ?
y
⁄⁄? @
+
⁄⁄A B
	kTickSize
⁄⁄C L
)
⁄⁄L M
)
⁄⁄M N
;
⁄⁄N O
Handles
€€ 
.
€€  
DrawLine
€€  (
(
€€( )
K
€€) *
,
€€* +
new
€€, /
Vector3
€€0 7
(
€€7 8
K
€€8 9
.
€€9 :
x
€€: ;
,
€€; <
K
€€= >
.
€€> ?
y
€€? @
+
€€A B
	kTickSize
€€C L
)
€€L M
)
€€M N
;
€€N O
Handles
‹‹ 
.
‹‹  
DrawLine
‹‹  (
(
‹‹( )
J
‹‹) *
,
‹‹* +
new
‹‹, /
Vector3
‹‹0 7
(
‹‹7 8
J
‹‹8 9
.
‹‹9 :
x
‹‹: ;
,
‹‹; <
J
‹‹= >
.
‹‹> ?
y
‹‹? @
+
‹‹A B
	kTickSize
‹‹C L
)
‹‹L M
)
‹‹M N
;
‹‹N O
Handles
›› 
.
››  
DrawLine
››  (
(
››( )
I
››) *
,
››* +
new
››, /
Vector3
››0 7
(
››7 8
I
››8 9
.
››9 :
x
››: ;
,
››; <
I
››= >
.
››> ?
y
››? @
+
››A B
	kTickSize
››C L
)
››L M
)
››M N
;
››N O
GUI
‡‡ 
.
‡‡ 
color
‡‡ !
=
‡‡" #
color
‡‡$ )
;
‡‡) *
GUI
·· 
.
·· 
Label
·· !
(
··! "
new
··" %
Rect
··& *
(
··* +
A
··+ ,
.
··, -
x
··- .
-
··/ 0
	kTickSize
··1 :
-
··; <
$num
··= @
,
··@ A
A
··B C
.
··C D
y
··D E
-
··F G
$num
··H K
,
··K L
$num
··M P
,
··P Q
$num
··R U
)
··U V
,
··V W
$str
··X ]
,
··] ^
FxStyles
··_ g
.
··g h
tickStyleRight
··h v
)
··v w
;
··w x
GUI
‚‚ 
.
‚‚ 
Label
‚‚ !
(
‚‚! "
new
‚‚" %
Rect
‚‚& *
(
‚‚* +
O
‚‚+ ,
.
‚‚, -
x
‚‚- .
-
‚‚/ 0
	kTickSize
‚‚1 :
-
‚‚; <
$num
‚‚= @
,
‚‚@ A
O
‚‚B C
.
‚‚C D
y
‚‚D E
-
‚‚F G
$num
‚‚H K
,
‚‚K L
$num
‚‚M P
,
‚‚P Q
$num
‚‚R U
)
‚‚U V
,
‚‚V W
$str
‚‚X ]
,
‚‚] ^
FxStyles
‚‚_ g
.
‚‚g h
tickStyleRight
‚‚h v
)
‚‚v w
;
‚‚w x
GUI
„„ 
.
„„ 
Label
„„ !
(
„„! "
new
„„" %
Rect
„„& *
(
„„* +
M
„„+ ,
.
„„, -
x
„„- .
-
„„/ 0
	kTickSize
„„1 :
-
„„; <
$num
„„= @
,
„„@ A
M
„„B C
.
„„C D
y
„„D E
-
„„F G
$num
„„H K
,
„„K L
$num
„„M P
,
„„P Q
$num
„„R U
)
„„U V
,
„„V W
$str
„„X ]
,
„„] ^
FxStyles
„„_ g
.
„„g h
tickStyleRight
„„h v
)
„„v w
;
„„w x
GUI
ÂÂ 
.
ÂÂ 
Label
ÂÂ !
(
ÂÂ! "
new
ÂÂ" %
Rect
ÂÂ& *
(
ÂÂ* +
E
ÂÂ+ ,
.
ÂÂ, -
x
ÂÂ- .
+
ÂÂ/ 0
	kTickSize
ÂÂ1 :
+
ÂÂ; <
$num
ÂÂ= ?
,
ÂÂ? @
E
ÂÂA B
.
ÂÂB C
y
ÂÂC D
-
ÂÂE F
$num
ÂÂG J
,
ÂÂJ K
$num
ÂÂL O
,
ÂÂO P
$num
ÂÂQ T
)
ÂÂT U
,
ÂÂU V
$str
ÂÂW \
,
ÂÂ\ ]
FxStyles
ÂÂ^ f
.
ÂÂf g
tickStyleLeft
ÂÂg t
)
ÂÂt u
;
ÂÂu v
GUI
ÊÊ 
.
ÊÊ 
Label
ÊÊ !
(
ÊÊ! "
new
ÊÊ" %
Rect
ÊÊ& *
(
ÊÊ* +
G
ÊÊ+ ,
.
ÊÊ, -
x
ÊÊ- .
+
ÊÊ/ 0
	kTickSize
ÊÊ1 :
+
ÊÊ; <
$num
ÊÊ= ?
,
ÊÊ? @
G
ÊÊA B
.
ÊÊB C
y
ÊÊC D
-
ÊÊE F
$num
ÊÊG J
,
ÊÊJ K
$num
ÊÊL O
,
ÊÊO P
$num
ÊÊQ T
)
ÊÊT U
,
ÊÊU V
$str
ÊÊW \
,
ÊÊ\ ]
FxStyles
ÊÊ^ f
.
ÊÊf g
tickStyleLeft
ÊÊg t
)
ÊÊt u
;
ÊÊu v
GUI
ÁÁ 
.
ÁÁ 
Label
ÁÁ !
(
ÁÁ! "
new
ÁÁ" %
Rect
ÁÁ& *
(
ÁÁ* +
I
ÁÁ+ ,
.
ÁÁ, -
x
ÁÁ- .
+
ÁÁ/ 0
	kTickSize
ÁÁ1 :
+
ÁÁ; <
$num
ÁÁ= ?
,
ÁÁ? @
I
ÁÁA B
.
ÁÁB C
y
ÁÁC D
-
ÁÁE F
$num
ÁÁG J
,
ÁÁJ K
$num
ÁÁL O
,
ÁÁO P
$num
ÁÁQ T
)
ÁÁT U
,
ÁÁU V
$str
ÁÁW \
,
ÁÁ\ ]
FxStyles
ÁÁ^ f
.
ÁÁf g
tickStyleLeft
ÁÁg t
)
ÁÁt u
;
ÁÁu v
GUI
ÈÈ 
.
ÈÈ 
Label
ÈÈ !
(
ÈÈ! "
new
ÈÈ" %
Rect
ÈÈ& *
(
ÈÈ* +
M
ÈÈ+ ,
.
ÈÈ, -
x
ÈÈ- .
-
ÈÈ/ 0
$num
ÈÈ1 4
,
ÈÈ4 5
M
ÈÈ6 7
.
ÈÈ7 8
y
ÈÈ8 9
+
ÈÈ: ;
	kTickSize
ÈÈ< E
-
ÈÈF G
$num
ÈÈH J
,
ÈÈJ K
$num
ÈÈL O
,
ÈÈO P
$num
ÈÈQ T
)
ÈÈT U
,
ÈÈU V
$str
ÈÈW \
,
ÈÈ\ ]
FxStyles
ÈÈ^ f
.
ÈÈf g
tickStyleCenter
ÈÈg v
)
ÈÈv w
;
ÈÈw x
GUI
ÍÍ 
.
ÍÍ 
Label
ÍÍ !
(
ÍÍ! "
new
ÍÍ" %
Rect
ÍÍ& *
(
ÍÍ* +
K
ÍÍ+ ,
.
ÍÍ, -
x
ÍÍ- .
-
ÍÍ/ 0
$num
ÍÍ1 4
,
ÍÍ4 5
K
ÍÍ6 7
.
ÍÍ7 8
y
ÍÍ8 9
+
ÍÍ: ;
	kTickSize
ÍÍ< E
-
ÍÍF G
$num
ÍÍH J
,
ÍÍJ K
$num
ÍÍL O
,
ÍÍO P
$num
ÍÍQ T
)
ÍÍT U
,
ÍÍU V
$str
ÍÍW \
,
ÍÍ\ ]
FxStyles
ÍÍ^ f
.
ÍÍf g
tickStyleCenter
ÍÍg v
)
ÍÍv w
;
ÍÍw x
GUI
ÎÎ 
.
ÎÎ 
Label
ÎÎ !
(
ÎÎ! "
new
ÎÎ" %
Rect
ÎÎ& *
(
ÎÎ* +
I
ÎÎ+ ,
.
ÎÎ, -
x
ÎÎ- .
-
ÎÎ/ 0
$num
ÎÎ1 4
,
ÎÎ4 5
I
ÎÎ6 7
.
ÎÎ7 8
y
ÎÎ8 9
+
ÎÎ: ;
	kTickSize
ÎÎ< E
-
ÎÎF G
$num
ÎÎH J
,
ÎÎJ K
$num
ÎÎL O
,
ÎÎO P
$num
ÎÎQ T
)
ÎÎT U
,
ÎÎU V
$str
ÎÎW \
,
ÎÎ\ ]
FxStyles
ÎÎ^ f
.
ÎÎf g
tickStyleCenter
ÎÎg v
)
ÎÎv w
;
ÎÎw x
}
ÏÏ 
}
ÌÌ 
}
ÓÓ 
}
ÔÔ 	
public
ÒÒ 
override
ÒÒ 
void
ÒÒ 
OnFrameData
ÒÒ (
(
ÒÒ( )
RenderTexture
ÒÒ) 6
source
ÒÒ7 =
)
ÒÒ= >
{
ÚÚ 	
if
ÛÛ 
(
ÛÛ 
Application
ÛÛ 
.
ÛÛ 
	isPlaying
ÛÛ %
&&
ÛÛ& (
!
ÛÛ) *
m_MonitorSettings
ÛÛ* ;
.
ÛÛ; <
refreshOnPlay
ÛÛ< I
)
ÛÛI J
return
ÙÙ 
;
ÙÙ 
if
ˆˆ 
(
ˆˆ 
Mathf
ˆˆ 
.
ˆˆ 
Approximately
ˆˆ #
(
ˆˆ# $
m_MonitorAreaRect
ˆˆ$ 5
.
ˆˆ5 6
width
ˆˆ6 ;
,
ˆˆ; <
$num
ˆˆ= >
)
ˆˆ> ?
||
ˆˆ@ B
Mathf
ˆˆC H
.
ˆˆH I
Approximately
ˆˆI V
(
ˆˆV W
m_MonitorAreaRect
ˆˆW h
.
ˆˆh i
height
ˆˆi o
,
ˆˆo p
$num
ˆˆq r
)
ˆˆr s
)
ˆˆs t
return
˜˜ 
;
˜˜ 
float
˘˘ 
ratio
˘˘ 
=
˘˘ 
(
˘˘ 
float
˘˘  
)
˘˘  !
source
˘˘! '
.
˘˘' (
width
˘˘( -
/
˘˘. /
(
˘˘0 1
float
˘˘1 6
)
˘˘6 7
source
˘˘7 =
.
˘˘= >
height
˘˘> D
;
˘˘D E
int
˙˙ 
h
˙˙ 
=
˙˙ 
$num
˙˙ 
;
˙˙ 
int
˚˚ 
w
˚˚ 
=
˚˚ 
Mathf
˚˚ 
.
˚˚ 

FloorToInt
˚˚ $
(
˚˚$ %
h
˚˚% &
*
˚˚' (
ratio
˚˚) .
)
˚˚. /
;
˚˚/ 0
var
˝˝ 
rt
˝˝ 
=
˝˝ 
RenderTexture
˝˝ "
.
˝˝" #
GetTemporary
˝˝# /
(
˝˝/ 0
w
˝˝0 1
,
˝˝1 2
h
˝˝3 4
,
˝˝4 5
$num
˝˝6 7
,
˝˝7 8
source
˝˝9 ?
.
˝˝? @
format
˝˝@ F
)
˝˝F G
;
˝˝G H
Graphics
˛˛ 
.
˛˛ 
Blit
˛˛ 
(
˛˛ 
source
˛˛  
,
˛˛  !
rt
˛˛" $
)
˛˛$ %
;
˛˛% &
ComputeHistogram
ˇˇ 
(
ˇˇ 
rt
ˇˇ 
)
ˇˇ  
;
ˇˇ  !
m_BaseEditor
ÄÄ 
.
ÄÄ 
Repaint
ÄÄ  
(
ÄÄ  !
)
ÄÄ! "
;
ÄÄ" #
RenderTexture
ÅÅ 
.
ÅÅ 
ReleaseTemporary
ÅÅ *
(
ÅÅ* +
rt
ÅÅ+ -
)
ÅÅ- .
;
ÅÅ. /
}
ÇÇ 	
void
ÑÑ 
CreateBuffer
ÑÑ 
(
ÑÑ 
int
ÑÑ 
width
ÑÑ #
,
ÑÑ# $
int
ÑÑ% (
height
ÑÑ) /
)
ÑÑ/ 0
{
ÖÖ 	
m_Buffer
ÜÜ 
=
ÜÜ 
new
ÜÜ 
ComputeBuffer
ÜÜ (
(
ÜÜ( )
width
ÜÜ) .
*
ÜÜ/ 0
height
ÜÜ1 7
,
ÜÜ7 8
sizeof
ÜÜ9 ?
(
ÜÜ? @
uint
ÜÜ@ D
)
ÜÜD E
<<
ÜÜF H
$num
ÜÜI J
)
ÜÜJ K
;
ÜÜK L
}
áá 	
void
ââ 
ComputeHistogram
ââ 
(
ââ 
RenderTexture
ââ +
source
ââ, 2
)
ââ2 3
{
ää 	
if
ãã 
(
ãã 
m_Buffer
ãã 
==
ãã 
null
ãã  
)
ãã  !
{
åå 
CreateBuffer
çç 
(
çç 
$num
çç  
,
çç  !
$num
çç" #
)
çç# $
;
çç$ %
}
éé 
else
èè 
if
èè 
(
èè 
m_Buffer
èè 
.
èè 
count
èè #
!=
èè$ &
$num
èè' *
)
èè* +
{
êê 
m_Buffer
ëë 
.
ëë 
Release
ëë  
(
ëë  !
)
ëë! "
;
ëë" #
CreateBuffer
íí 
(
íí 
$num
íí  
,
íí  !
$num
íí" #
)
íí# $
;
íí$ %
}
ìì 
if
ïï 
(
ïï 

m_Material
ïï 
==
ïï 
null
ïï "
)
ïï" #
{
ññ 

m_Material
óó 
=
óó 
new
óó  
Material
óó! )
(
óó) *
Shader
óó* 0
.
óó0 1
Find
óó1 5
(
óó5 6
$str
óó6 `
)
óó` a
)
óóa b
{
óóc d
	hideFlags
óóe n
=
óóo p
	HideFlags
óóq z
.
óóz {
DontSaveóó{ É
}óóÑ Ö
;óóÖ Ü
}
òò 
var
öö 
channels
öö 
=
öö 
Vector4
öö "
.
öö" #
zero
öö# '
;
öö' (
switch
õõ 
(
õõ 
m_MonitorSettings
õõ %
.
õõ% &
histogramMode
õõ& 3
)
õõ3 4
{
úú 
case
ùù 
HistogramMode
ùù "
.
ùù" #
Red
ùù# &
:
ùù& '
channels
ùù( 0
.
ùù0 1
x
ùù1 2
=
ùù3 4
$num
ùù5 7
;
ùù7 8
break
ùù9 >
;
ùù> ?
case
ûû 
HistogramMode
ûû "
.
ûû" #
Green
ûû# (
:
ûû( )
channels
ûû* 2
.
ûû2 3
y
ûû3 4
=
ûû5 6
$num
ûû7 9
;
ûû9 :
break
ûû; @
;
ûû@ A
case
üü 
HistogramMode
üü "
.
üü" #
Blue
üü# '
:
üü' (
channels
üü) 1
.
üü1 2
z
üü2 3
=
üü4 5
$num
üü6 8
;
üü8 9
break
üü: ?
;
üü? @
case
†† 
HistogramMode
†† "
.
††" #
	Luminance
††# ,
:
††, -
channels
††. 6
.
††6 7
w
††7 8
=
††9 :
$num
††; =
;
††= >
break
††? D
;
††D E
default
°° 
:
°° 
channels
°° !
=
°°" #
new
°°$ '
Vector4
°°( /
(
°°/ 0
$num
°°0 2
,
°°2 3
$num
°°4 6
,
°°6 7
$num
°°8 :
,
°°: ;
$num
°°< >
)
°°> ?
;
°°? @
break
°°A F
;
°°F G
}
¢¢ 
var
§§ 
cs
§§ 
=
§§ 
m_ComputeShader
§§ $
;
§§$ %
int
¶¶ 
kernel
¶¶ 
=
¶¶ 
cs
¶¶ 
.
¶¶ 

FindKernel
¶¶ &
(
¶¶& '
$str
¶¶' 8
)
¶¶8 9
;
¶¶9 :
cs
ßß 
.
ßß 
	SetBuffer
ßß 
(
ßß 
kernel
ßß 
,
ßß  
$str
ßß! -
,
ßß- .
m_Buffer
ßß/ 7
)
ßß7 8
;
ßß8 9
cs
®® 
.
®® 
Dispatch
®® 
(
®® 
kernel
®® 
,
®® 
$num
®®  !
,
®®! "
$num
®®# $
,
®®$ %
$num
®®& '
)
®®' (
;
®®( )
kernel
™™ 
=
™™ 
cs
™™ 
.
™™ 

FindKernel
™™ "
(
™™" #
$str
™™# 5
)
™™5 6
;
™™6 7
cs
´´ 
.
´´ 
	SetBuffer
´´ 
(
´´ 
kernel
´´ 
,
´´  
$str
´´! -
,
´´- .
m_Buffer
´´/ 7
)
´´7 8
;
´´8 9
cs
¨¨ 
.
¨¨ 

SetTexture
¨¨ 
(
¨¨ 
kernel
¨¨  
,
¨¨  !
$str
¨¨" +
,
¨¨+ ,
source
¨¨- 3
)
¨¨3 4
;
¨¨4 5
cs
≠≠ 
.
≠≠ 
SetInt
≠≠ 
(
≠≠ 
$str
≠≠ !
,
≠≠! "
GraphicsUtils
≠≠# 0
.
≠≠0 1 
isLinearColorSpace
≠≠1 C
?
≠≠D E
$num
≠≠F G
:
≠≠H I
$num
≠≠J K
)
≠≠K L
;
≠≠L M
cs
ÆÆ 
.
ÆÆ 
	SetVector
ÆÆ 
(
ÆÆ 
$str
ÆÆ 
,
ÆÆ  
new
ÆÆ! $
Vector4
ÆÆ% ,
(
ÆÆ, -
source
ÆÆ- 3
.
ÆÆ3 4
width
ÆÆ4 9
,
ÆÆ9 :
source
ÆÆ; A
.
ÆÆA B
height
ÆÆB H
,
ÆÆH I
$num
ÆÆJ L
,
ÆÆL M
$num
ÆÆN P
)
ÆÆP Q
)
ÆÆQ R
;
ÆÆR S
cs
ØØ 
.
ØØ 
	SetVector
ØØ 
(
ØØ 
$str
ØØ $
,
ØØ$ %
channels
ØØ& .
)
ØØ. /
;
ØØ/ 0
cs
∞∞ 
.
∞∞ 
Dispatch
∞∞ 
(
∞∞ 
kernel
∞∞ 
,
∞∞ 
Mathf
∞∞  %
.
∞∞% &
	CeilToInt
∞∞& /
(
∞∞/ 0
source
∞∞0 6
.
∞∞6 7
width
∞∞7 <
/
∞∞= >
$num
∞∞? B
)
∞∞B C
,
∞∞C D
Mathf
∞∞E J
.
∞∞J K
	CeilToInt
∞∞K T
(
∞∞T U
source
∞∞U [
.
∞∞[ \
height
∞∞\ b
/
∞∞c d
$num
∞∞e h
)
∞∞h i
,
∞∞i j
$num
∞∞k l
)
∞∞l m
;
∞∞m n
kernel
≤≤ 
=
≤≤ 
cs
≤≤ 
.
≤≤ 

FindKernel
≤≤ "
(
≤≤" #
$str
≤≤# 4
)
≤≤4 5
;
≤≤5 6
cs
≥≥ 
.
≥≥ 
	SetBuffer
≥≥ 
(
≥≥ 
kernel
≥≥ 
,
≥≥  
$str
≥≥! -
,
≥≥- .
m_Buffer
≥≥/ 7
)
≥≥7 8
;
≥≥8 9
cs
¥¥ 
.
¥¥ 
Dispatch
¥¥ 
(
¥¥ 
kernel
¥¥ 
,
¥¥ 
$num
¥¥  !
,
¥¥! "
$num
¥¥# $
,
¥¥$ %
$num
¥¥& '
)
¥¥' (
;
¥¥( )
if
∂∂ 
(
∂∂  
m_HistogramTexture
∂∂ "
==
∂∂# %
null
∂∂& *
||
∂∂+ - 
m_HistogramTexture
∂∂. @
.
∂∂@ A
width
∂∂A F
!=
∂∂G I
source
∂∂J P
.
∂∂P Q
width
∂∂Q V
||
∂∂W Y 
m_HistogramTexture
∂∂Z l
.
∂∂l m
height
∂∂m s
!=
∂∂t v
source
∂∂w }
.
∂∂} ~
height∂∂~ Ñ
)∂∂Ñ Ö
{
∑∑ 
GraphicsUtils
∏∏ 
.
∏∏ 
Destroy
∏∏ %
(
∏∏% & 
m_HistogramTexture
∏∏& 8
)
∏∏8 9
;
∏∏9 : 
m_HistogramTexture
ππ "
=
ππ# $
new
ππ% (
RenderTexture
ππ) 6
(
ππ6 7
source
ππ7 =
.
ππ= >
width
ππ> C
,
ππC D
source
ππE K
.
ππK L
height
ππL R
,
ππR S
$num
ππT U
,
ππU V!
RenderTextureFormat
ππW j
.
ππj k
ARGB32
ππk q
,
ππq r%
RenderTextureReadWriteππs â
.ππâ ä
Linearππä ê
)ππê ë
{
∫∫ 
	hideFlags
ªª 
=
ªª 
	HideFlags
ªª  )
.
ªª) *
DontSave
ªª* 2
,
ªª2 3
wrapMode
ºº 
=
ºº 
TextureWrapMode
ºº .
.
ºº. /
Clamp
ºº/ 4
,
ºº4 5

filterMode
ΩΩ 
=
ΩΩ  

FilterMode
ΩΩ! +
.
ΩΩ+ ,
Bilinear
ΩΩ, 4
}
ææ 
;
ææ 
}
øø 

m_Material
¡¡ 
.
¡¡ 
	SetBuffer
¡¡  
(
¡¡  !
$str
¡¡! -
,
¡¡- .
m_Buffer
¡¡/ 7
)
¡¡7 8
;
¡¡8 9

m_Material
¬¬ 
.
¬¬ 
	SetVector
¬¬  
(
¬¬  !
$str
¬¬! (
,
¬¬( )
new
¬¬* -
Vector2
¬¬. 5
(
¬¬5 6 
m_HistogramTexture
¬¬6 H
.
¬¬H I
width
¬¬I N
,
¬¬N O 
m_HistogramTexture
¬¬P b
.
¬¬b c
height
¬¬c i
)
¬¬i j
)
¬¬j k
;
¬¬k l

m_Material
√√ 
.
√√ 
SetColor
√√ 
(
√√  
$str
√√  )
,
√√) *
new
√√+ .
Color
√√/ 4
(
√√4 5
$num
√√5 7
,
√√7 8
$num
√√9 ;
,
√√; <
$num
√√= ?
,
√√? @
$num
√√A C
)
√√C D
)
√√D E
;
√√E F

m_Material
ƒƒ 
.
ƒƒ 
SetColor
ƒƒ 
(
ƒƒ  
$str
ƒƒ  )
,
ƒƒ) *
new
ƒƒ+ .
Color
ƒƒ/ 4
(
ƒƒ4 5
$num
ƒƒ5 7
,
ƒƒ7 8
$num
ƒƒ9 ;
,
ƒƒ; <
$num
ƒƒ= ?
,
ƒƒ? @
$num
ƒƒA C
)
ƒƒC D
)
ƒƒD E
;
ƒƒE F

m_Material
≈≈ 
.
≈≈ 
SetColor
≈≈ 
(
≈≈  
$str
≈≈  )
,
≈≈) *
new
≈≈+ .
Color
≈≈/ 4
(
≈≈4 5
$num
≈≈5 7
,
≈≈7 8
$num
≈≈9 ;
,
≈≈; <
$num
≈≈= ?
,
≈≈? @
$num
≈≈A C
)
≈≈C D
)
≈≈D E
;
≈≈E F

m_Material
∆∆ 
.
∆∆ 
SetColor
∆∆ 
(
∆∆  
$str
∆∆  )
,
∆∆) *
new
∆∆+ .
Color
∆∆/ 4
(
∆∆4 5
$num
∆∆5 7
,
∆∆7 8
$num
∆∆9 ;
,
∆∆; <
$num
∆∆= ?
,
∆∆? @
$num
∆∆A C
)
∆∆C D
)
∆∆D E
;
∆∆E F

m_Material
«« 
.
«« 
SetInt
«« 
(
«« 
$str
«« (
,
««( )
(
««* +
int
««+ .
)
««. /
m_MonitorSettings
««/ @
.
««@ A
histogramMode
««A N
)
««N O
;
««O P
int
…… 
pass
…… 
=
…… 
$num
…… 
;
…… 
if
   
(
   
m_MonitorSettings
   !
.
  ! "
histogramMode
  " /
==
  0 2
HistogramMode
  3 @
.
  @ A
	RGBMerged
  A J
)
  J K
pass
ÀÀ 
=
ÀÀ 
$num
ÀÀ 
;
ÀÀ 
else
ÃÃ 
if
ÃÃ 
(
ÃÃ 
m_MonitorSettings
ÃÃ &
.
ÃÃ& '
histogramMode
ÃÃ' 4
==
ÃÃ5 7
HistogramMode
ÃÃ8 E
.
ÃÃE F
RGBSplit
ÃÃF N
)
ÃÃN O
pass
ÕÕ 
=
ÕÕ 
$num
ÕÕ 
;
ÕÕ 
Graphics
œœ 
.
œœ 
Blit
œœ 
(
œœ 
null
œœ 
,
œœ  
m_HistogramTexture
œœ  2
,
œœ2 3

m_Material
œœ4 >
,
œœ> ?
pass
œœ@ D
)
œœD E
;
œœE F
}
–– 	
}
—— 
}““ Ì«
πD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Monitors\ParadeMonitor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
public 

class 
ParadeMonitor 
:  !
PostProcessingMonitor! 6
{ 
static		 

GUIContent		 
s_MonitorTitle		 (
=		) *
new		+ .

GUIContent		/ 9
(		9 :
$str		: B
)		B C
;		C D
ComputeShader 
m_ComputeShader %
;% &
ComputeBuffer 
m_Buffer 
; 
Material 

m_Material 
; 
RenderTexture 
m_WaveformTexture '
;' (
Rect 
m_MonitorAreaRect 
; 
public 
ParadeMonitor 
( 
) 
{ 	
m_ComputeShader 
= 
EditorResources -
.- .
Load. 2
<2 3
ComputeShader3 @
>@ A
(A B
$strB d
)d e
;e f
} 	
public 
override 
void 
Dispose $
($ %
)% &
{ 	
GraphicsUtils 
. 
Destroy !
(! "

m_Material" ,
), -
;- .
GraphicsUtils 
. 
Destroy !
(! "
m_WaveformTexture" 3
)3 4
;4 5
if 
( 
m_Buffer 
!= 
null  
)  !
m_Buffer 
. 
Release  
(  !
)! "
;" #

m_Material 
= 
null 
; 
m_WaveformTexture 
= 
null  $
;$ %
m_Buffer   
=   
null   
;   
}!! 	
public## 
override## 
bool## 
IsSupported## (
(##( )
)##) *
{$$ 	
return%% 
m_ComputeShader%% "
!=%%# %
null%%& *
&&%%+ -
GraphicsUtils%%. ;
.%%; <
supportsDX11%%< H
;%%H I
}&& 	
public(( 
override(( 

GUIContent(( "
GetMonitorTitle((# 2
(((2 3
)((3 4
{)) 	
return** 
s_MonitorTitle** !
;**! "
}++ 	
public-- 
override-- 
void-- 
OnMonitorSettings-- .
(--. /
)--/ 0
{.. 	
	EditorGUI// 
.// 
BeginChangeCheck// &
(//& '
)//' (
;//( )
bool11 
refreshOnPlay11 
=11  
m_MonitorSettings11! 2
.112 3
refreshOnPlay113 @
;11@ A
float22 
exposure22 
=22 
m_MonitorSettings22 .
.22. /
paradeExposure22/ =
;22= >
refreshOnPlay44 
=44 
	GUILayout44 %
.44% &
Toggle44& ,
(44, -
refreshOnPlay44- :
,44: ;
new44< ?

GUIContent44@ J
(44J K
FxStyles44K S
.44S T
playIcon44T \
,44\ ]
$str	44^ ¶
)
44¶ ß
,
44ß ®
FxStyles
44© ±
.
44± ≤
	preButton
44≤ ª
)
44ª º
;
44º Ω
exposure55 
=55 
	GUILayout55  
.55  !
HorizontalSlider55! 1
(551 2
exposure552 :
,55: ;
$num55< A
,55A B
$num55C G
,55G H
FxStyles55I Q
.55Q R
	preSlider55R [
,55[ \
FxStyles55] e
.55e f
preSliderThumb55f t
,55t u
	GUILayout55v 
.	55 Ä
Width
55Ä Ö
(
55Ö Ü
$num
55Ü â
)
55â ä
)
55ä ã
;
55ã å
if77 
(77 
	EditorGUI77 
.77 
EndChangeCheck77 (
(77( )
)77) *
)77* +
{88 
Undo99 
.99 
RecordObject99 !
(99! "
m_BaseEditor99" .
.99. /
serializedObject99/ ?
.99? @
targetObject99@ L
,99L M
$str99N g
)99g h
;99h i
m_MonitorSettings:: !
.::! "
refreshOnPlay::" /
=::0 1
refreshOnPlay::2 ?
;::? @
m_MonitorSettings;; !
.;;! "
paradeExposure;;" 0
=;;1 2
exposure;;3 ;
;;;; <!
InternalEditorUtility<< %
.<<% &
RepaintAllViews<<& 5
(<<5 6
)<<6 7
;<<7 8
}== 
}>> 	
public@@ 
override@@ 
void@@ 
OnMonitorGUI@@ )
(@@) *
Rect@@* .
r@@/ 0
)@@0 1
{AA 	
ifBB 
(BB 
EventBB 
.BB 
currentBB 
.BB 
typeBB "
==BB# %
	EventTypeBB& /
.BB/ 0
RepaintBB0 7
)BB7 8
{CC 
ifEE 
(EE 
MathfEE 
.EE 
ApproximatelyEE '
(EE' (
m_MonitorAreaRectEE( 9
.EE9 :
widthEE: ?
,EE? @
$numEEA B
)EEB C
&&EED F
MathfEEG L
.EEL M
ApproximatelyEEM Z
(EEZ [
m_MonitorAreaRectEE[ l
.EEl m
heightEEm s
,EEs t
$numEEu v
)EEv w
)EEw x!
InternalEditorUtilityFF )
.FF) *
RepaintAllViewsFF* 9
(FF9 :
)FF: ;
;FF; <
floatII 
widthII 
=II 
m_WaveformTextureII /
!=II0 2
nullII3 7
?JJ 
MathfJJ 
.JJ 
MinJJ 
(JJ  
m_WaveformTextureJJ  1
.JJ1 2
widthJJ2 7
,JJ7 8
rJJ9 :
.JJ: ;
widthJJ; @
-JJA B
$numJJC F
)JJF G
:KK 
rKK 
.KK 
widthKK 
;KK 
floatLL 
heightLL 
=LL 
m_WaveformTextureLL 0
!=LL1 3
nullLL4 8
?MM 
MathfMM 
.MM 
MinMM 
(MM  
m_WaveformTextureMM  1
.MM1 2
heightMM2 8
,MM8 9
rMM: ;
.MM; <
heightMM< B
-MMC D
$numMME H
)MMH I
:NN 
rNN 
.NN 
heightNN 
;NN 
m_MonitorAreaRectPP !
=PP" #
newPP$ '
RectPP( ,
(PP, -
MathfQQ 
.QQ 
FloorQQ #
(QQ# $
rQQ$ %
.QQ% &
xQQ& '
+QQ( )
rQQ* +
.QQ+ ,
widthQQ, 1
/QQ2 3
$numQQ4 6
-QQ7 8
widthQQ9 >
/QQ? @
$numQQA C
)QQC D
,QQD E
MathfRR 
.RR 
FloorRR #
(RR# $
rRR$ %
.RR% &
yRR& '
+RR( )
rRR* +
.RR+ ,
heightRR, 2
/RR3 4
$numRR5 7
-RR8 9
heightRR: @
/RRA B
$numRRC E
-RRF G
$numRRH J
)RRJ K
,RRK L
widthSS 
,SS 
heightSS %
)TT 
;TT 
ifVV 
(VV 
m_WaveformTextureVV %
!=VV& (
nullVV) -
)VV- .
{WW 

m_MaterialXX 
.XX 
SetFloatXX '
(XX' (
$strXX( 3
,XX3 4
m_MonitorSettingsXX5 F
.XXF G
paradeExposureXXG U
)XXU V
;XXV W
varZZ 
	oldActiveZZ !
=ZZ" #
RenderTextureZZ$ 1
.ZZ1 2
activeZZ2 8
;ZZ8 9
Graphics[[ 
.[[ 
Blit[[ !
([[! "
null[[" &
,[[& '
m_WaveformTexture[[( 9
,[[9 :

m_Material[[; E
,[[E F
$num[[G H
)[[H I
;[[I J
RenderTexture\\ !
.\\! "
active\\" (
=\\) *
	oldActive\\+ 4
;\\4 5
Graphics^^ 
.^^ 
DrawTexture^^ (
(^^( )
m_MonitorAreaRect^^) :
,^^: ;
m_WaveformTexture^^< M
)^^M N
;^^N O
var`` 
color`` 
=`` 
Color``  %
.``% &
white``& +
;``+ ,
constaa 
floataa 
	kTickSizeaa  )
=aa* +
$numaa, .
;aa. /
varjj 
Ajj 
=jj 
newjj 
Vector3jj  '
(jj' (
m_MonitorAreaRectjj( 9
.jj9 :
xjj: ;
,jj; <
m_MonitorAreaRectjj= N
.jjN O
yjjO P
)jjP Q
;jjQ R
varkk 
Dkk 
=kk 
newkk 
Vector3kk  '
(kk' (
Akk( )
.kk) *
xkk* +
+kk, -
m_MonitorAreaRectkk. ?
.kk? @
widthkk@ E
+kkF G
$numkkH J
,kkJ K
m_MonitorAreaRectkkL ]
.kk] ^
ykk^ _
)kk_ `
;kk` a
varll 
Hll 
=ll 
newll 
Vector3ll  '
(ll' (
Dll( )
.ll) *
xll* +
,ll+ ,
Dll- .
.ll. /
yll/ 0
+ll1 2
m_MonitorAreaRectll3 D
.llD E
heightllE K
+llL M
$numllN P
)llP Q
;llQ R
varmm 
Kmm 
=mm 
newmm 
Vector3mm  '
(mm' (
Amm( )
.mm) *
xmm* +
,mm+ ,
Hmm- .
.mm. /
ymm/ 0
)mm0 1
;mm1 2
varoo 
Foo 
=oo 
newoo 
Vector3oo  '
(oo' (
Doo( )
.oo) *
xoo* +
,oo+ ,
Doo- .
.oo. /
yoo/ 0
+oo1 2
(oo3 4
Hoo4 5
.oo5 6
yoo6 7
-oo8 9
Doo: ;
.oo; <
yoo< =
)oo= >
/oo? @
$numooA C
)ooC D
;ooD E
varpp 
Mpp 
=pp 
newpp 
Vector3pp  '
(pp' (
App( )
.pp) *
xpp* +
,pp+ ,
App- .
.pp. /
ypp/ 0
+pp1 2
(pp3 4
Kpp4 5
.pp5 6
ypp6 7
-pp8 9
App: ;
.pp; <
ypp< =
)pp= >
/pp? @
$numppA C
)ppC D
;ppD E
varrr 
Brr 
=rr 
newrr 
Vector3rr  '
(rr' (
Arr( )
.rr) *
xrr* +
+rr, -
(rr. /
Drr/ 0
.rr0 1
xrr1 2
-rr3 4
Arr5 6
.rr6 7
xrr7 8
)rr8 9
/rr: ;
$numrr< >
,rr> ?
Arr@ A
.rrA B
yrrB C
)rrC D
;rrD E
varss 
Css 
=ss 
newss 
Vector3ss  '
(ss' (
Ass( )
.ss) *
xss* +
+ss, -
(ss. /
Dss/ 0
.ss0 1
xss1 2
-ss3 4
Ass5 6
.ss6 7
xss7 8
)ss8 9
*ss: ;
$numss< >
/ss? @
$numssA C
,ssC D
AssE F
.ssF G
yssG H
)ssH I
;ssI J
vartt 
Itt 
=tt 
newtt 
Vector3tt  '
(tt' (
Ktt( )
.tt) *
xtt* +
+tt, -
(tt. /
Htt/ 0
.tt0 1
xtt1 2
-tt3 4
Ktt5 6
.tt6 7
xtt7 8
)tt8 9
*tt: ;
$numtt< >
/tt? @
$numttA C
,ttC D
KttE F
.ttF G
yttG H
)ttH I
;ttI J
varuu 
Juu 
=uu 
newuu 
Vector3uu  '
(uu' (
Kuu( )
.uu) *
xuu* +
+uu, -
(uu. /
Huu/ 0
.uu0 1
xuu1 2
-uu3 4
Kuu5 6
.uu6 7
xuu7 8
)uu8 9
/uu: ;
$numuu< >
,uu> ?
Kuu@ A
.uuA B
yuuB C
)uuC D
;uuD E
varww 
Nww 
=ww 
newww 
Vector3ww  '
(ww' (
Aww( )
.ww) *
xww* +
,ww+ ,
Aww- .
.ww. /
yww/ 0
+ww1 2
(ww3 4
Mww4 5
.ww5 6
yww6 7
-ww8 9
Aww: ;
.ww; <
yww< =
)ww= >
/ww? @
$numwwA C
)wwC D
;wwD E
varxx 
Lxx 
=xx 
newxx 
Vector3xx  '
(xx' (
Axx( )
.xx) *
xxx* +
,xx+ ,
Mxx- .
.xx. /
yxx/ 0
+xx1 2
(xx3 4
Kxx4 5
.xx5 6
yxx6 7
-xx8 9
Mxx: ;
.xx; <
yxx< =
)xx= >
/xx? @
$numxxA C
)xxC D
;xxD E
varyy 
Eyy 
=yy 
newyy 
Vector3yy  '
(yy' (
Dyy( )
.yy) *
xyy* +
,yy+ ,
Dyy- .
.yy. /
yyy/ 0
+yy1 2
(yy3 4
Fyy4 5
.yy5 6
yyy6 7
-yy8 9
Dyy: ;
.yy; <
yyy< =
)yy= >
/yy? @
$numyyA C
)yyC D
;yyD E
varzz 
Gzz 
=zz 
newzz 
Vector3zz  '
(zz' (
Dzz( )
.zz) *
xzz* +
,zz+ ,
Fzz- .
.zz. /
yzz/ 0
+zz1 2
(zz3 4
Hzz4 5
.zz5 6
yzz6 7
-zz8 9
Fzz: ;
.zz; <
yzz< =
)zz= >
/zz? @
$numzzA C
)zzC D
;zzD E
var|| 
O|| 
=|| 
new|| 
Vector3||  '
(||' (
A||( )
.||) *
x||* +
+||, -
(||. /
B||/ 0
.||0 1
x||1 2
-||3 4
A||5 6
.||6 7
x||7 8
)||8 9
/||: ;
$num||< >
,||> ?
A||@ A
.||A B
y||B C
)||C D
;||D E
var}} 
P}} 
=}} 
new}} 
Vector3}}  '
(}}' (
B}}( )
.}}) *
x}}* +
+}}, -
(}}. /
C}}/ 0
.}}0 1
x}}1 2
-}}3 4
B}}5 6
.}}6 7
x}}7 8
)}}8 9
/}}: ;
$num}}< >
,}}> ?
B}}@ A
.}}A B
y}}B C
)}}C D
;}}D E
var~~ 
Q~~ 
=~~ 
new~~ 
Vector3~~  '
(~~' (
C~~( )
.~~) *
x~~* +
+~~, -
(~~. /
D~~/ 0
.~~0 1
x~~1 2
-~~3 4
C~~5 6
.~~6 7
x~~7 8
)~~8 9
/~~: ;
$num~~< >
,~~> ?
C~~@ A
.~~A B
y~~B C
)~~C D
;~~D E
var
ÄÄ 
R
ÄÄ 
=
ÄÄ 
new
ÄÄ 
Vector3
ÄÄ  '
(
ÄÄ' (
I
ÄÄ( )
.
ÄÄ) *
x
ÄÄ* +
+
ÄÄ, -
(
ÄÄ. /
H
ÄÄ/ 0
.
ÄÄ0 1
x
ÄÄ1 2
-
ÄÄ3 4
I
ÄÄ5 6
.
ÄÄ6 7
x
ÄÄ7 8
)
ÄÄ8 9
/
ÄÄ: ;
$num
ÄÄ< >
,
ÄÄ> ?
I
ÄÄ@ A
.
ÄÄA B
y
ÄÄB C
)
ÄÄC D
;
ÄÄD E
var
ÅÅ 
S
ÅÅ 
=
ÅÅ 
new
ÅÅ 
Vector3
ÅÅ  '
(
ÅÅ' (
J
ÅÅ( )
.
ÅÅ) *
x
ÅÅ* +
+
ÅÅ, -
(
ÅÅ. /
I
ÅÅ/ 0
.
ÅÅ0 1
x
ÅÅ1 2
-
ÅÅ3 4
J
ÅÅ5 6
.
ÅÅ6 7
x
ÅÅ7 8
)
ÅÅ8 9
/
ÅÅ: ;
$num
ÅÅ< >
,
ÅÅ> ?
J
ÅÅ@ A
.
ÅÅA B
y
ÅÅB C
)
ÅÅC D
;
ÅÅD E
var
ÇÇ 
T
ÇÇ 
=
ÇÇ 
new
ÇÇ 
Vector3
ÇÇ  '
(
ÇÇ' (
K
ÇÇ( )
.
ÇÇ) *
x
ÇÇ* +
+
ÇÇ, -
(
ÇÇ. /
J
ÇÇ/ 0
.
ÇÇ0 1
x
ÇÇ1 2
-
ÇÇ3 4
K
ÇÇ5 6
.
ÇÇ6 7
x
ÇÇ7 8
)
ÇÇ8 9
/
ÇÇ: ;
$num
ÇÇ< >
,
ÇÇ> ?
K
ÇÇ@ A
.
ÇÇA B
y
ÇÇB C
)
ÇÇC D
;
ÇÇD E
Handles
ÖÖ 
.
ÖÖ 
color
ÖÖ !
=
ÖÖ" #
color
ÖÖ$ )
;
ÖÖ) *
Handles
ÜÜ 
.
ÜÜ 
DrawLine
ÜÜ $
(
ÜÜ$ %
A
ÜÜ% &
,
ÜÜ& '
D
ÜÜ( )
)
ÜÜ) *
;
ÜÜ* +
Handles
áá 
.
áá 
DrawLine
áá $
(
áá$ %
D
áá% &
,
áá& '
H
áá( )
)
áá) *
;
áá* +
Handles
àà 
.
àà 
DrawLine
àà $
(
àà$ %
H
àà% &
,
àà& '
K
àà( )
)
àà) *
;
àà* +
Handles
ââ 
.
ââ 
DrawLine
ââ $
(
ââ$ %
K
ââ% &
,
ââ& '
new
ââ( +
Vector3
ââ, 3
(
ââ3 4
A
ââ4 5
.
ââ5 6
x
ââ6 7
,
ââ7 8
A
ââ9 :
.
ââ: ;
y
ââ; <
-
ââ= >
$num
ââ? A
)
ââA B
)
ââB C
;
ââC D
Handles
ãã 
.
ãã 
DrawLine
ãã $
(
ãã$ %
B
ãã% &
,
ãã& '
J
ãã( )
)
ãã) *
;
ãã* +
Handles
åå 
.
åå 
DrawLine
åå $
(
åå$ %
C
åå% &
,
åå& '
I
åå( )
)
åå) *
;
åå* +
Handles
èè 
.
èè 
DrawLine
èè $
(
èè$ %
A
èè% &
,
èè& '
new
èè( +
Vector3
èè, 3
(
èè3 4
A
èè4 5
.
èè5 6
x
èè6 7
-
èè8 9
	kTickSize
èè: C
,
èèC D
A
èèE F
.
èèF G
y
èèG H
)
èèH I
)
èèI J
;
èèJ K
Handles
êê 
.
êê 
DrawLine
êê $
(
êê$ %
N
êê% &
,
êê& '
new
êê( +
Vector3
êê, 3
(
êê3 4
N
êê4 5
.
êê5 6
x
êê6 7
-
êê8 9
	kTickSize
êê: C
,
êêC D
N
êêE F
.
êêF G
y
êêG H
)
êêH I
)
êêI J
;
êêJ K
Handles
ëë 
.
ëë 
DrawLine
ëë $
(
ëë$ %
M
ëë% &
,
ëë& '
new
ëë( +
Vector3
ëë, 3
(
ëë3 4
M
ëë4 5
.
ëë5 6
x
ëë6 7
-
ëë8 9
	kTickSize
ëë: C
,
ëëC D
M
ëëE F
.
ëëF G
y
ëëG H
)
ëëH I
)
ëëI J
;
ëëJ K
Handles
íí 
.
íí 
DrawLine
íí $
(
íí$ %
L
íí% &
,
íí& '
new
íí( +
Vector3
íí, 3
(
íí3 4
L
íí4 5
.
íí5 6
x
íí6 7
-
íí8 9
	kTickSize
íí: C
,
ííC D
L
ííE F
.
ííF G
y
ííG H
)
ííH I
)
ííI J
;
ííJ K
Handles
ìì 
.
ìì 
DrawLine
ìì $
(
ìì$ %
K
ìì% &
,
ìì& '
new
ìì( +
Vector3
ìì, 3
(
ìì3 4
K
ìì4 5
.
ìì5 6
x
ìì6 7
-
ìì8 9
	kTickSize
ìì: C
,
ììC D
K
ììE F
.
ììF G
y
ììG H
)
ììH I
)
ììI J
;
ììJ K
Handles
ïï 
.
ïï 
DrawLine
ïï $
(
ïï$ %
D
ïï% &
,
ïï& '
new
ïï( +
Vector3
ïï, 3
(
ïï3 4
D
ïï4 5
.
ïï5 6
x
ïï6 7
+
ïï8 9
	kTickSize
ïï: C
,
ïïC D
D
ïïE F
.
ïïF G
y
ïïG H
)
ïïH I
)
ïïI J
;
ïïJ K
Handles
ññ 
.
ññ 
DrawLine
ññ $
(
ññ$ %
E
ññ% &
,
ññ& '
new
ññ( +
Vector3
ññ, 3
(
ññ3 4
E
ññ4 5
.
ññ5 6
x
ññ6 7
+
ññ8 9
	kTickSize
ññ: C
,
ññC D
E
ññE F
.
ññF G
y
ññG H
)
ññH I
)
ññI J
;
ññJ K
Handles
óó 
.
óó 
DrawLine
óó $
(
óó$ %
F
óó% &
,
óó& '
new
óó( +
Vector3
óó, 3
(
óó3 4
F
óó4 5
.
óó5 6
x
óó6 7
+
óó8 9
	kTickSize
óó: C
,
óóC D
F
óóE F
.
óóF G
y
óóG H
)
óóH I
)
óóI J
;
óóJ K
Handles
òò 
.
òò 
DrawLine
òò $
(
òò$ %
G
òò% &
,
òò& '
new
òò( +
Vector3
òò, 3
(
òò3 4
G
òò4 5
.
òò5 6
x
òò6 7
+
òò8 9
	kTickSize
òò: C
,
òòC D
G
òòE F
.
òòF G
y
òòG H
)
òòH I
)
òòI J
;
òòJ K
Handles
ôô 
.
ôô 
DrawLine
ôô $
(
ôô$ %
H
ôô% &
,
ôô& '
new
ôô( +
Vector3
ôô, 3
(
ôô3 4
H
ôô4 5
.
ôô5 6
x
ôô6 7
+
ôô8 9
	kTickSize
ôô: C
,
ôôC D
H
ôôE F
.
ôôF G
y
ôôG H
)
ôôH I
)
ôôI J
;
ôôJ K
Handles
úú 
.
úú 
DrawLine
úú $
(
úú$ %
A
úú% &
,
úú& '
new
úú( +
Vector3
úú, 3
(
úú3 4
A
úú4 5
.
úú5 6
x
úú6 7
,
úú7 8
A
úú9 :
.
úú: ;
y
úú; <
-
úú= >
	kTickSize
úú? H
)
úúH I
)
úúI J
;
úúJ K
Handles
ùù 
.
ùù 
DrawLine
ùù $
(
ùù$ %
B
ùù% &
,
ùù& '
new
ùù( +
Vector3
ùù, 3
(
ùù3 4
B
ùù4 5
.
ùù5 6
x
ùù6 7
,
ùù7 8
B
ùù9 :
.
ùù: ;
y
ùù; <
-
ùù= >
	kTickSize
ùù? H
)
ùùH I
)
ùùI J
;
ùùJ K
Handles
ûû 
.
ûû 
DrawLine
ûû $
(
ûû$ %
C
ûû% &
,
ûû& '
new
ûû( +
Vector3
ûû, 3
(
ûû3 4
C
ûû4 5
.
ûû5 6
x
ûû6 7
,
ûû7 8
C
ûû9 :
.
ûû: ;
y
ûû; <
-
ûû= >
	kTickSize
ûû? H
)
ûûH I
)
ûûI J
;
ûûJ K
Handles
üü 
.
üü 
DrawLine
üü $
(
üü$ %
D
üü% &
,
üü& '
new
üü( +
Vector3
üü, 3
(
üü3 4
D
üü4 5
.
üü5 6
x
üü6 7
,
üü7 8
D
üü9 :
.
üü: ;
y
üü; <
-
üü= >
	kTickSize
üü? H
)
üüH I
)
üüI J
;
üüJ K
Handles
†† 
.
†† 
DrawLine
†† $
(
††$ %
O
††% &
,
††& '
new
††( +
Vector3
††, 3
(
††3 4
O
††4 5
.
††5 6
x
††6 7
,
††7 8
O
††9 :
.
††: ;
y
††; <
-
††= >
	kTickSize
††? H
)
††H I
)
††I J
;
††J K
Handles
°° 
.
°° 
DrawLine
°° $
(
°°$ %
P
°°% &
,
°°& '
new
°°( +
Vector3
°°, 3
(
°°3 4
P
°°4 5
.
°°5 6
x
°°6 7
,
°°7 8
P
°°9 :
.
°°: ;
y
°°; <
-
°°= >
	kTickSize
°°? H
)
°°H I
)
°°I J
;
°°J K
Handles
¢¢ 
.
¢¢ 
DrawLine
¢¢ $
(
¢¢$ %
Q
¢¢% &
,
¢¢& '
new
¢¢( +
Vector3
¢¢, 3
(
¢¢3 4
Q
¢¢4 5
.
¢¢5 6
x
¢¢6 7
,
¢¢7 8
Q
¢¢9 :
.
¢¢: ;
y
¢¢; <
-
¢¢= >
	kTickSize
¢¢? H
)
¢¢H I
)
¢¢I J
;
¢¢J K
Handles
§§ 
.
§§ 
DrawLine
§§ $
(
§§$ %
H
§§% &
,
§§& '
new
§§( +
Vector3
§§, 3
(
§§3 4
H
§§4 5
.
§§5 6
x
§§6 7
,
§§7 8
H
§§9 :
.
§§: ;
y
§§; <
+
§§= >
	kTickSize
§§? H
)
§§H I
)
§§I J
;
§§J K
Handles
•• 
.
•• 
DrawLine
•• $
(
••$ %
I
••% &
,
••& '
new
••( +
Vector3
••, 3
(
••3 4
I
••4 5
.
••5 6
x
••6 7
,
••7 8
I
••9 :
.
••: ;
y
••; <
+
••= >
	kTickSize
••? H
)
••H I
)
••I J
;
••J K
Handles
¶¶ 
.
¶¶ 
DrawLine
¶¶ $
(
¶¶$ %
J
¶¶% &
,
¶¶& '
new
¶¶( +
Vector3
¶¶, 3
(
¶¶3 4
J
¶¶4 5
.
¶¶5 6
x
¶¶6 7
,
¶¶7 8
J
¶¶9 :
.
¶¶: ;
y
¶¶; <
+
¶¶= >
	kTickSize
¶¶? H
)
¶¶H I
)
¶¶I J
;
¶¶J K
Handles
ßß 
.
ßß 
DrawLine
ßß $
(
ßß$ %
K
ßß% &
,
ßß& '
new
ßß( +
Vector3
ßß, 3
(
ßß3 4
K
ßß4 5
.
ßß5 6
x
ßß6 7
,
ßß7 8
K
ßß9 :
.
ßß: ;
y
ßß; <
+
ßß= >
	kTickSize
ßß? H
)
ßßH I
)
ßßI J
;
ßßJ K
Handles
®® 
.
®® 
DrawLine
®® $
(
®®$ %
R
®®% &
,
®®& '
new
®®( +
Vector3
®®, 3
(
®®3 4
R
®®4 5
.
®®5 6
x
®®6 7
,
®®7 8
R
®®9 :
.
®®: ;
y
®®; <
+
®®= >
	kTickSize
®®? H
)
®®H I
)
®®I J
;
®®J K
Handles
©© 
.
©© 
DrawLine
©© $
(
©©$ %
S
©©% &
,
©©& '
new
©©( +
Vector3
©©, 3
(
©©3 4
S
©©4 5
.
©©5 6
x
©©6 7
,
©©7 8
S
©©9 :
.
©©: ;
y
©©; <
+
©©= >
	kTickSize
©©? H
)
©©H I
)
©©I J
;
©©J K
Handles
™™ 
.
™™ 
DrawLine
™™ $
(
™™$ %
T
™™% &
,
™™& '
new
™™( +
Vector3
™™, 3
(
™™3 4
T
™™4 5
.
™™5 6
x
™™6 7
,
™™7 8
T
™™9 :
.
™™: ;
y
™™; <
+
™™= >
	kTickSize
™™? H
)
™™H I
)
™™I J
;
™™J K
GUI
≠≠ 
.
≠≠ 
color
≠≠ 
=
≠≠ 
color
≠≠  %
;
≠≠% &
GUI
ÆÆ 
.
ÆÆ 
Label
ÆÆ 
(
ÆÆ 
new
ÆÆ !
Rect
ÆÆ" &
(
ÆÆ& '
A
ÆÆ' (
.
ÆÆ( )
x
ÆÆ) *
-
ÆÆ+ ,
	kTickSize
ÆÆ- 6
-
ÆÆ7 8
$num
ÆÆ9 <
,
ÆÆ< =
A
ÆÆ> ?
.
ÆÆ? @
y
ÆÆ@ A
-
ÆÆB C
$num
ÆÆD G
,
ÆÆG H
$num
ÆÆI L
,
ÆÆL M
$num
ÆÆN Q
)
ÆÆQ R
,
ÆÆR S
$str
ÆÆT Y
,
ÆÆY Z
FxStyles
ÆÆ[ c
.
ÆÆc d
tickStyleRight
ÆÆd r
)
ÆÆr s
;
ÆÆs t
GUI
ØØ 
.
ØØ 
Label
ØØ 
(
ØØ 
new
ØØ !
Rect
ØØ" &
(
ØØ& '
M
ØØ' (
.
ØØ( )
x
ØØ) *
-
ØØ+ ,
	kTickSize
ØØ- 6
-
ØØ7 8
$num
ØØ9 <
,
ØØ< =
M
ØØ> ?
.
ØØ? @
y
ØØ@ A
-
ØØB C
$num
ØØD G
,
ØØG H
$num
ØØI L
,
ØØL M
$num
ØØN Q
)
ØØQ R
,
ØØR S
$str
ØØT Y
,
ØØY Z
FxStyles
ØØ[ c
.
ØØc d
tickStyleRight
ØØd r
)
ØØr s
;
ØØs t
GUI
∞∞ 
.
∞∞ 
Label
∞∞ 
(
∞∞ 
new
∞∞ !
Rect
∞∞" &
(
∞∞& '
K
∞∞' (
.
∞∞( )
x
∞∞) *
-
∞∞+ ,
	kTickSize
∞∞- 6
-
∞∞7 8
$num
∞∞9 <
,
∞∞< =
K
∞∞> ?
.
∞∞? @
y
∞∞@ A
-
∞∞B C
$num
∞∞D G
,
∞∞G H
$num
∞∞I L
,
∞∞L M
$num
∞∞N Q
)
∞∞Q R
,
∞∞R S
$str
∞∞T Y
,
∞∞Y Z
FxStyles
∞∞[ c
.
∞∞c d
tickStyleRight
∞∞d r
)
∞∞r s
;
∞∞s t
GUI
≤≤ 
.
≤≤ 
Label
≤≤ 
(
≤≤ 
new
≤≤ !
Rect
≤≤" &
(
≤≤& '
D
≤≤' (
.
≤≤( )
x
≤≤) *
+
≤≤+ ,
	kTickSize
≤≤- 6
+
≤≤7 8
$num
≤≤9 ;
,
≤≤; <
D
≤≤= >
.
≤≤> ?
y
≤≤? @
-
≤≤A B
$num
≤≤C F
,
≤≤F G
$num
≤≤H K
,
≤≤K L
$num
≤≤M P
)
≤≤P Q
,
≤≤Q R
$str
≤≤S X
,
≤≤X Y
FxStyles
≤≤Z b
.
≤≤b c
tickStyleLeft
≤≤c p
)
≤≤p q
;
≤≤q r
GUI
≥≥ 
.
≥≥ 
Label
≥≥ 
(
≥≥ 
new
≥≥ !
Rect
≥≥" &
(
≥≥& '
F
≥≥' (
.
≥≥( )
x
≥≥) *
+
≥≥+ ,
	kTickSize
≥≥- 6
+
≥≥7 8
$num
≥≥9 ;
,
≥≥; <
F
≥≥= >
.
≥≥> ?
y
≥≥? @
-
≥≥A B
$num
≥≥C F
,
≥≥F G
$num
≥≥H K
,
≥≥K L
$num
≥≥M P
)
≥≥P Q
,
≥≥Q R
$str
≥≥S X
,
≥≥X Y
FxStyles
≥≥Z b
.
≥≥b c
tickStyleLeft
≥≥c p
)
≥≥p q
;
≥≥q r
GUI
¥¥ 
.
¥¥ 
Label
¥¥ 
(
¥¥ 
new
¥¥ !
Rect
¥¥" &
(
¥¥& '
H
¥¥' (
.
¥¥( )
x
¥¥) *
+
¥¥+ ,
	kTickSize
¥¥- 6
+
¥¥7 8
$num
¥¥9 ;
,
¥¥; <
H
¥¥= >
.
¥¥> ?
y
¥¥? @
-
¥¥A B
$num
¥¥C F
,
¥¥F G
$num
¥¥H K
,
¥¥K L
$num
¥¥M P
)
¥¥P Q
,
¥¥Q R
$str
¥¥S X
,
¥¥X Y
FxStyles
¥¥Z b
.
¥¥b c
tickStyleLeft
¥¥c p
)
¥¥p q
;
¥¥q r
}
µµ 
}
∂∂ 
}
∑∑ 	
public
ππ 
override
ππ 
void
ππ 
OnFrameData
ππ (
(
ππ( )
RenderTexture
ππ) 6
source
ππ7 =
)
ππ= >
{
∫∫ 	
if
ªª 
(
ªª 
Application
ªª 
.
ªª 
	isPlaying
ªª %
&&
ªª& (
!
ªª) *
m_MonitorSettings
ªª* ;
.
ªª; <
refreshOnPlay
ªª< I
)
ªªI J
return
ºº 
;
ºº 
if
ææ 
(
ææ 
Mathf
ææ 
.
ææ 
Approximately
ææ #
(
ææ# $
m_MonitorAreaRect
ææ$ 5
.
ææ5 6
width
ææ6 ;
,
ææ; <
$num
ææ= >
)
ææ> ?
||
ææ@ B
Mathf
ææC H
.
ææH I
Approximately
ææI V
(
ææV W
m_MonitorAreaRect
ææW h
.
ææh i
height
ææi o
,
ææo p
$num
ææq r
)
æær s
)
ææs t
return
øø 
;
øø 
float
¡¡ 
ratio
¡¡ 
=
¡¡ 
(
¡¡ 
(
¡¡ 
float
¡¡ !
)
¡¡! "
source
¡¡" (
.
¡¡( )
width
¡¡) .
/
¡¡/ 0
(
¡¡1 2
float
¡¡2 7
)
¡¡7 8
source
¡¡8 >
.
¡¡> ?
height
¡¡? E
)
¡¡E F
/
¡¡G H
$num
¡¡I K
;
¡¡K L
int
¬¬ 
h
¬¬ 
=
¬¬ 
$num
¬¬ 
;
¬¬ 
int
√√ 
w
√√ 
=
√√ 
Mathf
√√ 
.
√√ 

FloorToInt
√√ $
(
√√$ %
h
√√% &
*
√√' (
ratio
√√) .
)
√√. /
;
√√/ 0
var
≈≈ 
rt
≈≈ 
=
≈≈ 
RenderTexture
≈≈ "
.
≈≈" #
GetTemporary
≈≈# /
(
≈≈/ 0
w
≈≈0 1
,
≈≈1 2
h
≈≈3 4
,
≈≈4 5
$num
≈≈6 7
,
≈≈7 8
source
≈≈9 ?
.
≈≈? @
format
≈≈@ F
)
≈≈F G
;
≈≈G H
Graphics
∆∆ 
.
∆∆ 
Blit
∆∆ 
(
∆∆ 
source
∆∆  
,
∆∆  !
rt
∆∆" $
)
∆∆$ %
;
∆∆% &
ComputeWaveform
«« 
(
«« 
rt
«« 
)
«« 
;
««  
m_BaseEditor
»» 
.
»» 
Repaint
»»  
(
»»  !
)
»»! "
;
»»" #
RenderTexture
…… 
.
…… 
ReleaseTemporary
…… *
(
……* +
rt
……+ -
)
……- .
;
……. /
}
   	
void
ÃÃ 
CreateBuffer
ÃÃ 
(
ÃÃ 
int
ÃÃ 
width
ÃÃ #
,
ÃÃ# $
int
ÃÃ% (
height
ÃÃ) /
)
ÃÃ/ 0
{
ÕÕ 	
m_Buffer
ŒŒ 
=
ŒŒ 
new
ŒŒ 
ComputeBuffer
ŒŒ (
(
ŒŒ( )
width
ŒŒ) .
*
ŒŒ/ 0
height
ŒŒ1 7
,
ŒŒ7 8
sizeof
ŒŒ9 ?
(
ŒŒ? @
uint
ŒŒ@ D
)
ŒŒD E
<<
ŒŒF H
$num
ŒŒI J
)
ŒŒJ K
;
ŒŒK L
}
œœ 	
void
—— 
ComputeWaveform
—— 
(
—— 
RenderTexture
—— *
source
——+ 1
)
——1 2
{
““ 	
if
”” 
(
”” 
m_Buffer
”” 
==
”” 
null
””  
)
””  !
{
‘‘ 
CreateBuffer
’’ 
(
’’ 
source
’’ #
.
’’# $
width
’’$ )
,
’’) *
source
’’+ 1
.
’’1 2
height
’’2 8
)
’’8 9
;
’’9 :
}
÷÷ 
else
◊◊ 
if
◊◊ 
(
◊◊ 
m_Buffer
◊◊ 
.
◊◊ 
count
◊◊ #
!=
◊◊$ &
(
◊◊' (
source
◊◊( .
.
◊◊. /
width
◊◊/ 4
*
◊◊5 6
source
◊◊7 =
.
◊◊= >
height
◊◊> D
)
◊◊D E
)
◊◊E F
{
ÿÿ 
m_Buffer
ŸŸ 
.
ŸŸ 
Release
ŸŸ  
(
ŸŸ  !
)
ŸŸ! "
;
ŸŸ" #
CreateBuffer
⁄⁄ 
(
⁄⁄ 
source
⁄⁄ #
.
⁄⁄# $
width
⁄⁄$ )
,
⁄⁄) *
source
⁄⁄+ 1
.
⁄⁄1 2
height
⁄⁄2 8
)
⁄⁄8 9
;
⁄⁄9 :
}
€€ 
var
›› 
channels
›› 
=
›› 
m_MonitorSettings
›› ,
.
››, -
	waveformY
››- 6
?
ﬁﬁ 
new
ﬁﬁ 
Vector4
ﬁﬁ 
(
ﬁﬁ 
$num
ﬁﬁ  
,
ﬁﬁ  !
$num
ﬁﬁ" $
,
ﬁﬁ$ %
$num
ﬁﬁ& (
,
ﬁﬁ( )
$num
ﬁﬁ* ,
)
ﬁﬁ, -
:
ﬂﬂ 
new
ﬂﬂ 
Vector4
ﬂﬂ 
(
ﬂﬂ 
m_MonitorSettings
ﬂﬂ /
.
ﬂﬂ/ 0
	waveformR
ﬂﬂ0 9
?
ﬂﬂ: ;
$num
ﬂﬂ< >
:
ﬂﬂ? @
$num
ﬂﬂA C
,
ﬂﬂC D
m_MonitorSettings
ﬂﬂE V
.
ﬂﬂV W
	waveformG
ﬂﬂW `
?
ﬂﬂa b
$num
ﬂﬂc e
:
ﬂﬂf g
$num
ﬂﬂh j
,
ﬂﬂj k
m_MonitorSettings
ﬂﬂl }
.
ﬂﬂ} ~
	waveformBﬂﬂ~ á
?ﬂﬂà â
$numﬂﬂä å
:ﬂﬂç é
$numﬂﬂè ë
,ﬂﬂë í
$numﬂﬂì ï
)ﬂﬂï ñ
;ﬂﬂñ ó
var
·· 
cs
·· 
=
·· 
m_ComputeShader
·· $
;
··$ %
int
„„ 
kernel
„„ 
=
„„ 
cs
„„ 
.
„„ 

FindKernel
„„ &
(
„„& '
$str
„„' 7
)
„„7 8
;
„„8 9
cs
‰‰ 
.
‰‰ 
	SetBuffer
‰‰ 
(
‰‰ 
kernel
‰‰ 
,
‰‰  
$str
‰‰! ,
,
‰‰, -
m_Buffer
‰‰. 6
)
‰‰6 7
;
‰‰7 8
cs
ÂÂ 
.
ÂÂ 
Dispatch
ÂÂ 
(
ÂÂ 
kernel
ÂÂ 
,
ÂÂ 
source
ÂÂ  &
.
ÂÂ& '
width
ÂÂ' ,
,
ÂÂ, -
$num
ÂÂ. /
,
ÂÂ/ 0
$num
ÂÂ1 2
)
ÂÂ2 3
;
ÂÂ3 4
kernel
ÁÁ 
=
ÁÁ 
cs
ÁÁ 
.
ÁÁ 

FindKernel
ÁÁ "
(
ÁÁ" #
$str
ÁÁ# .
)
ÁÁ. /
;
ÁÁ/ 0
cs
ËË 
.
ËË 
	SetBuffer
ËË 
(
ËË 
kernel
ËË 
,
ËË  
$str
ËË! ,
,
ËË, -
m_Buffer
ËË. 6
)
ËË6 7
;
ËË7 8
cs
ÈÈ 
.
ÈÈ 

SetTexture
ÈÈ 
(
ÈÈ 
kernel
ÈÈ  
,
ÈÈ  !
$str
ÈÈ" +
,
ÈÈ+ ,
source
ÈÈ- 3
)
ÈÈ3 4
;
ÈÈ4 5
cs
ÍÍ 
.
ÍÍ 
SetInt
ÍÍ 
(
ÍÍ 
$str
ÍÍ !
,
ÍÍ! "
GraphicsUtils
ÍÍ# 0
.
ÍÍ0 1 
isLinearColorSpace
ÍÍ1 C
?
ÍÍD E
$num
ÍÍF G
:
ÍÍH I
$num
ÍÍJ K
)
ÍÍK L
;
ÍÍL M
cs
ÎÎ 
.
ÎÎ 
	SetVector
ÎÎ 
(
ÎÎ 
$str
ÎÎ $
,
ÎÎ$ %
channels
ÎÎ& .
)
ÎÎ. /
;
ÎÎ/ 0
cs
ÏÏ 
.
ÏÏ 
Dispatch
ÏÏ 
(
ÏÏ 
kernel
ÏÏ 
,
ÏÏ 
source
ÏÏ  &
.
ÏÏ& '
width
ÏÏ' ,
,
ÏÏ, -
$num
ÏÏ. /
,
ÏÏ/ 0
$num
ÏÏ1 2
)
ÏÏ2 3
;
ÏÏ3 4
if
ÓÓ 
(
ÓÓ 
m_WaveformTexture
ÓÓ !
==
ÓÓ" $
null
ÓÓ% )
||
ÓÓ* ,
m_WaveformTexture
ÓÓ- >
.
ÓÓ> ?
width
ÓÓ? D
!=
ÓÓE G
(
ÓÓH I
source
ÓÓI O
.
ÓÓO P
width
ÓÓP U
*
ÓÓV W
$num
ÓÓX Y
)
ÓÓY Z
||
ÓÓ[ ]
m_WaveformTexture
ÓÓ^ o
.
ÓÓo p
height
ÓÓp v
!=
ÓÓw y
sourceÓÓz Ä
.ÓÓÄ Å
heightÓÓÅ á
)ÓÓá à
{
ÔÔ 
GraphicsUtils
 
.
 
Destroy
 %
(
% &
m_WaveformTexture
& 7
)
7 8
;
8 9
m_WaveformTexture
ÒÒ !
=
ÒÒ" #
new
ÒÒ$ '
RenderTexture
ÒÒ( 5
(
ÒÒ5 6
source
ÒÒ6 <
.
ÒÒ< =
width
ÒÒ= B
*
ÒÒC D
$num
ÒÒE F
,
ÒÒF G
source
ÒÒH N
.
ÒÒN O
height
ÒÒO U
,
ÒÒU V
$num
ÒÒW X
,
ÒÒX Y!
RenderTextureFormat
ÒÒZ m
.
ÒÒm n
ARGB32
ÒÒn t
,
ÒÒt u%
RenderTextureReadWriteÒÒv å
.ÒÒå ç
LinearÒÒç ì
)ÒÒì î
{
ÚÚ 
	hideFlags
ÛÛ 
=
ÛÛ 
	HideFlags
ÛÛ  )
.
ÛÛ) *
DontSave
ÛÛ* 2
,
ÛÛ2 3
wrapMode
ÙÙ 
=
ÙÙ 
TextureWrapMode
ÙÙ .
.
ÙÙ. /
Clamp
ÙÙ/ 4
,
ÙÙ4 5

filterMode
ıı 
=
ıı  

FilterMode
ıı! +
.
ıı+ ,
Bilinear
ıı, 4
}
ˆˆ 
;
ˆˆ 
}
˜˜ 
if
˘˘ 
(
˘˘ 

m_Material
˘˘ 
==
˘˘ 
null
˘˘ "
)
˘˘" #

m_Material
˙˙ 
=
˙˙ 
new
˙˙  
Material
˙˙! )
(
˙˙) *
Shader
˙˙* 0
.
˙˙0 1
Find
˙˙1 5
(
˙˙5 6
$str
˙˙6 ]
)
˙˙] ^
)
˙˙^ _
{
˙˙` a
	hideFlags
˙˙b k
=
˙˙l m
	HideFlags
˙˙n w
.
˙˙w x
DontSave˙˙x Ä
}˙˙Å Ç
;˙˙Ç É

m_Material
¸¸ 
.
¸¸ 
	SetBuffer
¸¸  
(
¸¸  !
$str
¸¸! ,
,
¸¸, -
m_Buffer
¸¸. 6
)
¸¸6 7
;
¸¸7 8

m_Material
˝˝ 
.
˝˝ 
	SetVector
˝˝  
(
˝˝  !
$str
˝˝! (
,
˝˝( )
new
˝˝* -
Vector2
˝˝. 5
(
˝˝5 6
m_WaveformTexture
˝˝6 G
.
˝˝G H
width
˝˝H M
,
˝˝M N
m_WaveformTexture
˝˝O `
.
˝˝` a
height
˝˝a g
)
˝˝g h
)
˝˝h i
;
˝˝i j

m_Material
˛˛ 
.
˛˛ 
	SetVector
˛˛  
(
˛˛  !
$str
˛˛! ,
,
˛˛, -
channels
˛˛. 6
)
˛˛6 7
;
˛˛7 8
}
ˇˇ 	
}
ÄÄ 
}ÅÅ õˆ
æD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Monitors\VectorscopeMonitor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
public 

class 
VectorscopeMonitor #
:$ %!
PostProcessingMonitor& ;
{ 
static		 

GUIContent		 
s_MonitorTitle		 (
=		) *
new		+ .

GUIContent		/ 9
(		9 :
$str		: G
)		G H
;		H I
ComputeShader 
m_ComputeShader %
;% &
ComputeBuffer 
m_Buffer 
; 
Material 

m_Material 
; 
RenderTexture  
m_VectorscopeTexture *
;* +
Rect 
m_MonitorAreaRect 
; 
public 
VectorscopeMonitor !
(! "
)" #
{ 	
m_ComputeShader 
= 
EditorResources -
.- .
Load. 2
<2 3
ComputeShader3 @
>@ A
(A B
$strB g
)g h
;h i
} 	
public 
override 
void 
Dispose $
($ %
)% &
{ 	
GraphicsUtils 
. 
Destroy !
(! "

m_Material" ,
), -
;- .
GraphicsUtils 
. 
Destroy !
(! " 
m_VectorscopeTexture" 6
)6 7
;7 8
if 
( 
m_Buffer 
!= 
null  
)  !
m_Buffer 
. 
Release  
(  !
)! "
;" #

m_Material 
= 
null 
;  
m_VectorscopeTexture  
=! "
null# '
;' (
m_Buffer   
=   
null   
;   
}!! 	
public## 
override## 
bool## 
IsSupported## (
(##( )
)##) *
{$$ 	
return%% 
m_ComputeShader%% "
!=%%# %
null%%& *
&&%%+ -
GraphicsUtils%%. ;
.%%; <
supportsDX11%%< H
;%%H I
}&& 	
public(( 
override(( 

GUIContent(( "
GetMonitorTitle((# 2
(((2 3
)((3 4
{)) 	
return** 
s_MonitorTitle** !
;**! "
}++ 	
public-- 
override-- 
void-- 
OnMonitorSettings-- .
(--. /
)--/ 0
{.. 	
	EditorGUI// 
.// 
BeginChangeCheck// &
(//& '
)//' (
;//( )
bool11 
refreshOnPlay11 
=11  
m_MonitorSettings11! 2
.112 3
refreshOnPlay113 @
;11@ A
float22 
exposure22 
=22 
m_MonitorSettings22 .
.22. /
vectorscopeExposure22/ B
;22B C
bool33 
showBackground33 
=33  !
m_MonitorSettings33" 3
.333 4%
vectorscopeShowBackground334 M
;33M N
refreshOnPlay55 
=55 
	GUILayout55 %
.55% &
Toggle55& ,
(55, -
refreshOnPlay55- :
,55: ;
new55< ?

GUIContent55@ J
(55J K
FxStyles55K S
.55S T
playIcon55T \
,55\ ]
$str	55^ ´
)
55´ ¨
,
55¨ ≠
FxStyles
55Æ ∂
.
55∂ ∑
	preButton
55∑ ¿
)
55¿ ¡
;
55¡ ¬
exposure66 
=66 
	GUILayout66  
.66  !
HorizontalSlider66! 1
(661 2
exposure662 :
,66: ;
$num66< A
,66A B
$num66C G
,66G H
FxStyles66I Q
.66Q R
	preSlider66R [
,66[ \
FxStyles66] e
.66e f
preSliderThumb66f t
,66t u
	GUILayout66v 
.	66 Ä
Width
66Ä Ö
(
66Ö Ü
$num
66Ü â
)
66â ä
)
66ä ã
;
66ã å
showBackground77 
=77 
	GUILayout77 &
.77& '
Toggle77' -
(77- .
showBackground77. <
,77< =
new77> A

GUIContent77B L
(77L M
FxStyles77M U
.77U V
checkerIcon77V a
,77a b
$str	77c è
)
77è ê
,
77ê ë
FxStyles
77í ö
.
77ö õ
	preButton
77õ §
)
77§ •
;
77• ¶
if99 
(99 
	EditorGUI99 
.99 
EndChangeCheck99 (
(99( )
)99) *
)99* +
{:: 
Undo;; 
.;; 
RecordObject;; !
(;;! "
m_BaseEditor;;" .
.;;. /
serializedObject;;/ ?
.;;? @
targetObject;;@ L
,;;L M
$str;;N l
);;l m
;;;m n
m_MonitorSettings<< !
.<<! "
refreshOnPlay<<" /
=<<0 1
refreshOnPlay<<2 ?
;<<? @
m_MonitorSettings== !
.==! "
vectorscopeExposure==" 5
===6 7
exposure==8 @
;==@ A
m_MonitorSettings>> !
.>>! "%
vectorscopeShowBackground>>" ;
=>>< =
showBackground>>> L
;>>L M!
InternalEditorUtility?? %
.??% &
RepaintAllViews??& 5
(??5 6
)??6 7
;??7 8
}@@ 
}AA 	
publicCC 
overrideCC 
voidCC 
OnMonitorGUICC )
(CC) *
RectCC* .
rCC/ 0
)CC0 1
{DD 	
ifEE 
(EE 
EventEE 
.EE 
currentEE 
.EE 
typeEE "
==EE# %
	EventTypeEE& /
.EE/ 0
RepaintEE0 7
)EE7 8
{FF 
ifHH 
(HH 
MathfHH 
.HH 
ApproximatelyHH '
(HH' (
m_MonitorAreaRectHH( 9
.HH9 :
widthHH: ?
,HH? @
$numHHA B
)HHB C
&&HHD F
MathfHHG L
.HHL M
ApproximatelyHHM Z
(HHZ [
m_MonitorAreaRectHH[ l
.HHl m
heightHHm s
,HHs t
$numHHu v
)HHv w
)HHw x!
InternalEditorUtilityII )
.II) *
RepaintAllViewsII* 9
(II9 :
)II: ;
;II; <
floatLL 
sizeLL 
=LL 
$numLL 
;LL  
ifNN 
(NN 
rNN 
.NN 
widthNN 
<NN 
rNN 
.NN  
heightNN  &
)NN& '
{OO 
sizePP 
=PP  
m_VectorscopeTexturePP /
!=PP0 2
nullPP3 7
?QQ 
MathfQQ 
.QQ  
MinQQ  #
(QQ# $ 
m_VectorscopeTextureQQ$ 8
.QQ8 9
widthQQ9 >
,QQ> ?
rQQ@ A
.QQA B
widthQQB G
-QQH I
$numQQJ M
)QQM N
:RR 
rRR 
.RR 
widthRR !
;RR! "
}SS 
elseTT 
{UU 
sizeVV 
=VV  
m_VectorscopeTextureVV /
!=VV0 2
nullVV3 7
?WW 
MathfWW 
.WW  
MinWW  #
(WW# $ 
m_VectorscopeTextureWW$ 8
.WW8 9
heightWW9 ?
,WW? @
rWWA B
.WWB C
heightWWC I
-WWJ K
$numWWL O
)WWO P
:XX 
rXX 
.XX 
heightXX "
;XX" #
}YY 
m_MonitorAreaRect[[ !
=[[" #
new[[$ '
Rect[[( ,
([[, -
Mathf\\ 
.\\ 
Floor\\ #
(\\# $
r\\$ %
.\\% &
x\\& '
+\\( )
r\\* +
.\\+ ,
width\\, 1
/\\2 3
$num\\4 6
-\\7 8
size\\9 =
/\\> ?
$num\\@ B
)\\B C
,\\C D
Mathf]] 
.]] 
Floor]] #
(]]# $
r]]$ %
.]]% &
y]]& '
+]]( )
r]]* +
.]]+ ,
height]], 2
/]]3 4
$num]]5 7
-]]8 9
size]]: >
/]]? @
$num]]A C
-]]D E
$num]]F H
)]]H I
,]]I J
size^^ 
,^^ 
size^^ "
)__ 
;__ 
ifaa 
(aa  
m_VectorscopeTextureaa (
!=aa) +
nullaa, 0
)aa0 1
{bb 

m_Materialcc 
.cc 
SetFloatcc '
(cc' (
$strcc( 3
,cc3 4
m_MonitorSettingscc5 F
.ccF G
vectorscopeExposureccG Z
)ccZ [
;cc[ \
varee 
	oldActiveee !
=ee" #
RenderTextureee$ 1
.ee1 2
activeee2 8
;ee8 9
Graphicsff 
.ff 
Blitff !
(ff! "
nullff" &
,ff& ' 
m_VectorscopeTextureff( <
,ff< =

m_Materialff> H
,ffH I
m_MonitorSettingsffJ [
.ff[ \%
vectorscopeShowBackgroundff\ u
?ffv w
$numffx y
:ffz {
$numff| }
)ff} ~
;ff~ 
RenderTexturegg !
.gg! "
activegg" (
=gg) *
	oldActivegg+ 4
;gg4 5
Graphicsii 
.ii 
DrawTextureii (
(ii( )
m_MonitorAreaRectii) :
,ii: ; 
m_VectorscopeTextureii< P
)iiP Q
;iiQ R
varkk 
colorkk 
=kk 
Colorkk  %
.kk% &
whitekk& +
;kk+ ,
constll 
floatll 
	kTickSizell  )
=ll* +
$numll, /
;ll/ 0
constmm 
intmm 

kTickCountmm (
=mm) *
$nummm+ -
;mm- .
floatoo 
radiusoo  
=oo! "
m_MonitorAreaRectoo# 4
.oo4 5
widthoo5 :
/oo; <
$numoo= ?
;oo? @
floatpp 
midXpp 
=pp  
m_MonitorAreaRectpp! 2
.pp2 3
xpp3 4
+pp5 6
radiuspp7 =
;pp= >
floatqq 
midYqq 
=qq  
m_MonitorAreaRectqq! 2
.qq2 3
yqq3 4
+qq5 6
radiusqq7 =
;qq= >
varrr 
centerrr 
=rr  
newrr! $
Vector2rr% ,
(rr, -
midXrr- 1
,rr1 2
midYrr3 7
)rr7 8
;rr8 9
coloruu 
.uu 
auu 
*=uu 
$numuu #
;uu# $
Handlesvv 
.vv 
colorvv !
=vv" #
colorvv$ )
;vv) *
Handlesww 
.ww 
DrawLineww $
(ww$ %
newww% (
Vector2ww) 0
(ww0 1
midXww1 5
,ww5 6
m_MonitorAreaRectww7 H
.wwH I
ywwI J
)wwJ K
,wwK L
newwwM P
Vector2wwQ X
(wwX Y
midXwwY ]
,ww] ^
m_MonitorAreaRectww_ p
.wwp q
ywwq r
+wws t
m_MonitorAreaRect	wwu Ü
.
wwÜ á
height
wwá ç
)
wwç é
)
wwé è
;
wwè ê
Handlesxx 
.xx 
DrawLinexx $
(xx$ %
newxx% (
Vector2xx) 0
(xx0 1
m_MonitorAreaRectxx1 B
.xxB C
xxxC D
,xxD E
midYxxF J
)xxJ K
,xxK L
newxxM P
Vector2xxQ X
(xxX Y
m_MonitorAreaRectxxY j
.xxj k
xxxk l
+xxm n
m_MonitorAreaRect	xxo Ä
.
xxÄ Å
width
xxÅ Ü
,
xxÜ á
midY
xxà å
)
xxå ç
)
xxç é
;
xxé è
ifzz 
(zz 
m_MonitorAreaRectzz )
.zz) *
widthzz* /
>zz0 1
$numzz2 6
)zz6 7
{{{ 
color|| 
.|| 
a|| 
=||  !
$num||" $
;||$ %
Handles 
.  
color  %
=& '
color( -
;- .
for
ÄÄ 
(
ÄÄ 
int
ÄÄ  
i
ÄÄ! "
=
ÄÄ# $
$num
ÄÄ% &
;
ÄÄ& '
i
ÄÄ( )
<
ÄÄ* +

kTickCount
ÄÄ, 6
;
ÄÄ6 7
i
ÄÄ8 9
++
ÄÄ9 ;
)
ÄÄ; <
{
ÅÅ 
float
ÇÇ !
a
ÇÇ" #
=
ÇÇ$ %
(
ÇÇ& '
float
ÇÇ' ,
)
ÇÇ, -
i
ÇÇ- .
/
ÇÇ/ 0
(
ÇÇ1 2
float
ÇÇ2 7
)
ÇÇ7 8

kTickCount
ÇÇ8 B
;
ÇÇB C
float
ÉÉ !
theta
ÉÉ" '
=
ÉÉ( )
a
ÉÉ* +
*
ÉÉ, -
(
ÉÉ. /
Mathf
ÉÉ/ 4
.
ÉÉ4 5
PI
ÉÉ5 7
*
ÉÉ8 9
$num
ÉÉ: <
)
ÉÉ< =
;
ÉÉ= >
float
ÑÑ !
tx
ÑÑ" $
=
ÑÑ% &
Mathf
ÑÑ' ,
.
ÑÑ, -
Cos
ÑÑ- 0
(
ÑÑ0 1
theta
ÑÑ1 6
+
ÑÑ7 8
(
ÑÑ9 :
Mathf
ÑÑ: ?
.
ÑÑ? @
PI
ÑÑ@ B
/
ÑÑC D
$num
ÑÑE G
)
ÑÑG H
)
ÑÑH I
;
ÑÑI J
float
ÖÖ !
ty
ÖÖ" $
=
ÖÖ% &
Mathf
ÖÖ' ,
.
ÖÖ, -
Sin
ÖÖ- 0
(
ÖÖ0 1
theta
ÖÖ1 6
-
ÖÖ7 8
(
ÖÖ9 :
Mathf
ÖÖ: ?
.
ÖÖ? @
PI
ÖÖ@ B
/
ÖÖC D
$num
ÖÖE G
)
ÖÖG H
)
ÖÖH I
;
ÖÖI J
var
ÜÜ 
innerVec
ÜÜ  (
=
ÜÜ) *
center
ÜÜ+ 1
+
ÜÜ2 3
new
ÜÜ4 7
Vector2
ÜÜ8 ?
(
ÜÜ? @
tx
ÜÜ@ B
,
ÜÜB C
ty
ÜÜD F
)
ÜÜF G
*
ÜÜH I
(
ÜÜJ K
radius
ÜÜK Q
-
ÜÜR S
	kTickSize
ÜÜT ]
)
ÜÜ] ^
;
ÜÜ^ _
var
áá 
outerVec
áá  (
=
áá) *
center
áá+ 1
+
áá2 3
new
áá4 7
Vector2
áá8 ?
(
áá? @
tx
áá@ B
,
ááB C
ty
ááD F
)
ááF G
*
ááH I
radius
ááJ P
;
ááP Q
Handles
àà #
.
àà# $
DrawAAPolyLine
àà$ 2
(
àà2 3
$num
àà3 5
,
àà5 6
innerVec
àà7 ?
,
àà? @
outerVec
ààA I
)
ààI J
;
ààJ K
}
ââ 
color
åå 
.
åå 
a
åå 
=
åå  !
$num
åå" $
;
åå$ %
var
çç 
oldColor
çç $
=
çç% &
GUI
çç' *
.
çç* +
color
çç+ 0
;
çç0 1
GUI
éé 
.
éé 
color
éé !
=
éé" #
color
éé$ )
*
éé* +
$num
éé, .
;
éé. /
var
êê 
point
êê !
=
êê" #
new
êê$ '
Vector2
êê( /
(
êê/ 0
-
êê0 1
$num
êê1 7
,
êê7 8
-
êê9 :
$num
êê: @
)
êê@ A
*
êêB C
radius
êêD J
+
êêK L
center
êêM S
;
êêS T
var
ëë 
rect
ëë  
=
ëë! "
new
ëë# &
Rect
ëë' +
(
ëë+ ,
point
ëë, 1
.
ëë1 2
x
ëë2 3
-
ëë4 5
$num
ëë6 9
,
ëë9 :
point
ëë; @
.
ëë@ A
y
ëëA B
-
ëëC D
$num
ëëE H
,
ëëH I
$num
ëëJ M
,
ëëM N
$num
ëëO R
)
ëëR S
;
ëëS T
GUI
íí 
.
íí 
Label
íí !
(
íí! "
rect
íí" &
,
íí& '
$str
íí( -
,
íí- .
FxStyles
íí/ 7
.
íí7 8
tickStyleCenter
íí8 G
)
ííG H
;
ííH I
point
îî 
=
îî 
new
îî  #
Vector2
îî$ +
(
îî+ ,
-
îî, -
$num
îî- 3
,
îî3 4
$num
îî5 ;
)
îî; <
*
îî= >
radius
îî? E
+
îîF G
center
îîH N
;
îîN O
rect
ïï 
=
ïï 
new
ïï "
Rect
ïï# '
(
ïï' (
point
ïï( -
.
ïï- .
x
ïï. /
-
ïï0 1
$num
ïï2 5
,
ïï5 6
point
ïï7 <
.
ïï< =
y
ïï= >
-
ïï? @
$num
ïïA D
,
ïïD E
$num
ïïF I
,
ïïI J
$num
ïïK N
)
ïïN O
;
ïïO P
GUI
ññ 
.
ññ 
Label
ññ !
(
ññ! "
rect
ññ" &
,
ññ& '
$str
ññ( -
,
ññ- .
FxStyles
ññ/ 7
.
ññ7 8
tickStyleCenter
ññ8 G
)
ññG H
;
ññH I
point
òò 
=
òò 
new
òò  #
Vector2
òò$ +
(
òò+ ,
$num
òò, 2
,
òò2 3
$num
òò4 :
)
òò: ;
*
òò< =
radius
òò> D
+
òòE F
center
òòG M
;
òòM N
rect
ôô 
=
ôô 
new
ôô "
Rect
ôô# '
(
ôô' (
point
ôô( -
.
ôô- .
x
ôô. /
-
ôô0 1
$num
ôô2 5
,
ôô5 6
point
ôô7 <
.
ôô< =
y
ôô= >
-
ôô? @
$num
ôôA D
,
ôôD E
$num
ôôF I
,
ôôI J
$num
ôôK N
)
ôôN O
;
ôôO P
GUI
öö 
.
öö 
Label
öö !
(
öö! "
rect
öö" &
,
öö& '
$str
öö( -
,
öö- .
FxStyles
öö/ 7
.
öö7 8
tickStyleCenter
öö8 G
)
ööG H
;
ööH I
point
úú 
=
úú 
new
úú  #
Vector2
úú$ +
(
úú+ ,
-
úú, -
$num
úú- 3
,
úú3 4
-
úú5 6
$num
úú6 <
)
úú< =
*
úú> ?
radius
úú@ F
+
úúG H
center
úúI O
;
úúO P
rect
ùù 
=
ùù 
new
ùù "
Rect
ùù# '
(
ùù' (
point
ùù( -
.
ùù- .
x
ùù. /
-
ùù0 1
$num
ùù2 5
,
ùù5 6
point
ùù7 <
.
ùù< =
y
ùù= >
-
ùù? @
$num
ùùA D
,
ùùD E
$num
ùùF I
,
ùùI J
$num
ùùK N
)
ùùN O
;
ùùO P
GUI
ûû 
.
ûû 
Label
ûû !
(
ûû! "
rect
ûû" &
,
ûû& '
$str
ûû( -
,
ûû- .
FxStyles
ûû/ 7
.
ûû7 8
tickStyleCenter
ûû8 G
)
ûûG H
;
ûûH I
point
†† 
=
†† 
new
††  #
Vector2
††$ +
(
††+ ,
$num
††, 2
,
††2 3
$num
††4 :
)
††: ;
*
††< =
radius
††> D
+
††E F
center
††G M
;
††M N
rect
°° 
=
°° 
new
°° "
Rect
°°# '
(
°°' (
point
°°( -
.
°°- .
x
°°. /
-
°°0 1
$num
°°2 5
,
°°5 6
point
°°7 <
.
°°< =
y
°°= >
-
°°? @
$num
°°A D
,
°°D E
$num
°°F I
,
°°I J
$num
°°K N
)
°°N O
;
°°O P
GUI
¢¢ 
.
¢¢ 
Label
¢¢ !
(
¢¢! "
rect
¢¢" &
,
¢¢& '
$str
¢¢( -
,
¢¢- .
FxStyles
¢¢/ 7
.
¢¢7 8
tickStyleCenter
¢¢8 G
)
¢¢G H
;
¢¢H I
point
§§ 
=
§§ 
new
§§  #
Vector2
§§$ +
(
§§+ ,
$num
§§, 2
,
§§2 3
-
§§4 5
$num
§§5 ;
)
§§; <
*
§§= >
radius
§§? E
+
§§F G
center
§§H N
;
§§N O
rect
•• 
=
•• 
new
•• "
Rect
••# '
(
••' (
point
••( -
.
••- .
x
••. /
-
••0 1
$num
••2 5
,
••5 6
point
••7 <
.
••< =
y
••= >
-
••? @
$num
••A D
,
••D E
$num
••F I
,
••I J
$num
••K N
)
••N O
;
••O P
GUI
¶¶ 
.
¶¶ 
Label
¶¶ !
(
¶¶! "
rect
¶¶" &
,
¶¶& '
$str
¶¶( -
,
¶¶- .
FxStyles
¶¶/ 7
.
¶¶7 8
tickStyleCenter
¶¶8 G
)
¶¶G H
;
¶¶H I
GUI
ßß 
.
ßß 
color
ßß !
=
ßß" #
oldColor
ßß$ ,
;
ßß, -
}
®® 
}
©© 
}
™™ 
}
´´ 	
public
≠≠ 
override
≠≠ 
void
≠≠ 
OnFrameData
≠≠ (
(
≠≠( )
RenderTexture
≠≠) 6
source
≠≠7 =
)
≠≠= >
{
ÆÆ 	
if
ØØ 
(
ØØ 
Application
ØØ 
.
ØØ 
	isPlaying
ØØ %
&&
ØØ& (
!
ØØ) *
m_MonitorSettings
ØØ* ;
.
ØØ; <
refreshOnPlay
ØØ< I
)
ØØI J
return
∞∞ 
;
∞∞ 
if
≤≤ 
(
≤≤ 
Mathf
≤≤ 
.
≤≤ 
Approximately
≤≤ #
(
≤≤# $
m_MonitorAreaRect
≤≤$ 5
.
≤≤5 6
width
≤≤6 ;
,
≤≤; <
$num
≤≤= >
)
≤≤> ?
||
≤≤@ B
Mathf
≤≤C H
.
≤≤H I
Approximately
≤≤I V
(
≤≤V W
m_MonitorAreaRect
≤≤W h
.
≤≤h i
height
≤≤i o
,
≤≤o p
$num
≤≤q r
)
≤≤r s
)
≤≤s t
return
≥≥ 
;
≥≥ 
float
µµ 
ratio
µµ 
=
µµ 
(
µµ 
float
µµ  
)
µµ  !
source
µµ! '
.
µµ' (
width
µµ( -
/
µµ. /
(
µµ0 1
float
µµ1 6
)
µµ6 7
source
µµ7 =
.
µµ= >
height
µµ> D
;
µµD E
int
∂∂ 
h
∂∂ 
=
∂∂ 
$num
∂∂ 
;
∂∂ 
int
∑∑ 
w
∑∑ 
=
∑∑ 
Mathf
∑∑ 
.
∑∑ 

FloorToInt
∑∑ $
(
∑∑$ %
h
∑∑% &
*
∑∑' (
ratio
∑∑) .
)
∑∑. /
;
∑∑/ 0
var
ππ 
rt
ππ 
=
ππ 
RenderTexture
ππ "
.
ππ" #
GetTemporary
ππ# /
(
ππ/ 0
w
ππ0 1
,
ππ1 2
h
ππ3 4
,
ππ4 5
$num
ππ6 7
,
ππ7 8
source
ππ9 ?
.
ππ? @
format
ππ@ F
)
ππF G
;
ππG H
Graphics
∫∫ 
.
∫∫ 
Blit
∫∫ 
(
∫∫ 
source
∫∫  
,
∫∫  !
rt
∫∫" $
)
∫∫$ %
;
∫∫% & 
ComputeVectorscope
ªª 
(
ªª 
rt
ªª !
)
ªª! "
;
ªª" #
m_BaseEditor
ºº 
.
ºº 
Repaint
ºº  
(
ºº  !
)
ºº! "
;
ºº" #
RenderTexture
ΩΩ 
.
ΩΩ 
ReleaseTemporary
ΩΩ *
(
ΩΩ* +
rt
ΩΩ+ -
)
ΩΩ- .
;
ΩΩ. /
}
ææ 	
void
¿¿ 
CreateBuffer
¿¿ 
(
¿¿ 
int
¿¿ 
width
¿¿ #
,
¿¿# $
int
¿¿% (
height
¿¿) /
)
¿¿/ 0
{
¡¡ 	
m_Buffer
¬¬ 
=
¬¬ 
new
¬¬ 
ComputeBuffer
¬¬ (
(
¬¬( )
width
¬¬) .
*
¬¬/ 0
height
¬¬1 7
,
¬¬7 8
sizeof
¬¬9 ?
(
¬¬? @
uint
¬¬@ D
)
¬¬D E
)
¬¬E F
;
¬¬F G
}
√√ 	
void
≈≈  
ComputeVectorscope
≈≈ 
(
≈≈  
RenderTexture
≈≈  -
source
≈≈. 4
)
≈≈4 5
{
∆∆ 	
if
«« 
(
«« 
m_Buffer
«« 
==
«« 
null
««  
)
««  !
{
»» 
CreateBuffer
…… 
(
…… 
source
…… #
.
……# $
width
……$ )
,
……) *
source
……+ 1
.
……1 2
height
……2 8
)
……8 9
;
……9 :
}
   
else
ÀÀ 
if
ÀÀ 
(
ÀÀ 
m_Buffer
ÀÀ 
.
ÀÀ 
count
ÀÀ #
!=
ÀÀ$ &
(
ÀÀ' (
source
ÀÀ( .
.
ÀÀ. /
width
ÀÀ/ 4
*
ÀÀ5 6
source
ÀÀ7 =
.
ÀÀ= >
height
ÀÀ> D
)
ÀÀD E
)
ÀÀE F
{
ÃÃ 
m_Buffer
ÕÕ 
.
ÕÕ 
Release
ÕÕ  
(
ÕÕ  !
)
ÕÕ! "
;
ÕÕ" #
CreateBuffer
ŒŒ 
(
ŒŒ 
source
ŒŒ #
.
ŒŒ# $
width
ŒŒ$ )
,
ŒŒ) *
source
ŒŒ+ 1
.
ŒŒ1 2
height
ŒŒ2 8
)
ŒŒ8 9
;
ŒŒ9 :
}
œœ 
var
—— 
cs
—— 
=
—— 
m_ComputeShader
—— $
;
——$ %
int
”” 
kernel
”” 
=
”” 
cs
”” 
.
”” 

FindKernel
”” &
(
””& '
$str
””' :
)
””: ;
;
””; <
cs
‘‘ 
.
‘‘ 
	SetBuffer
‘‘ 
(
‘‘ 
kernel
‘‘ 
,
‘‘  
$str
‘‘! /
,
‘‘/ 0
m_Buffer
‘‘1 9
)
‘‘9 :
;
‘‘: ;
cs
’’ 
.
’’ 
	SetVector
’’ 
(
’’ 
$str
’’ 
,
’’  
new
’’! $
Vector4
’’% ,
(
’’, -
source
’’- 3
.
’’3 4
width
’’4 9
,
’’9 :
source
’’; A
.
’’A B
height
’’B H
,
’’H I
$num
’’J L
,
’’L M
$num
’’N P
)
’’P Q
)
’’Q R
;
’’R S
cs
÷÷ 
.
÷÷ 
Dispatch
÷÷ 
(
÷÷ 
kernel
÷÷ 
,
÷÷ 
Mathf
÷÷  %
.
÷÷% &
	CeilToInt
÷÷& /
(
÷÷/ 0
source
÷÷0 6
.
÷÷6 7
width
÷÷7 <
/
÷÷= >
$num
÷÷? B
)
÷÷B C
,
÷÷C D
Mathf
÷÷E J
.
÷÷J K
	CeilToInt
÷÷K T
(
÷÷T U
source
÷÷U [
.
÷÷[ \
height
÷÷\ b
/
÷÷c d
$num
÷÷e h
)
÷÷h i
,
÷÷i j
$num
÷÷k l
)
÷÷l m
;
÷÷m n
kernel
ÿÿ 
=
ÿÿ 
cs
ÿÿ 
.
ÿÿ 

FindKernel
ÿÿ "
(
ÿÿ" #
$str
ÿÿ# 1
)
ÿÿ1 2
;
ÿÿ2 3
cs
ŸŸ 
.
ŸŸ 
	SetBuffer
ŸŸ 
(
ŸŸ 
kernel
ŸŸ 
,
ŸŸ  
$str
ŸŸ! /
,
ŸŸ/ 0
m_Buffer
ŸŸ1 9
)
ŸŸ9 :
;
ŸŸ: ;
cs
⁄⁄ 
.
⁄⁄ 

SetTexture
⁄⁄ 
(
⁄⁄ 
kernel
⁄⁄  
,
⁄⁄  !
$str
⁄⁄" +
,
⁄⁄+ ,
source
⁄⁄- 3
)
⁄⁄3 4
;
⁄⁄4 5
cs
€€ 
.
€€ 
SetInt
€€ 
(
€€ 
$str
€€ !
,
€€! "
GraphicsUtils
€€# 0
.
€€0 1 
isLinearColorSpace
€€1 C
?
€€D E
$num
€€F G
:
€€H I
$num
€€J K
)
€€K L
;
€€L M
cs
‹‹ 
.
‹‹ 
	SetVector
‹‹ 
(
‹‹ 
$str
‹‹ 
,
‹‹  
new
‹‹! $
Vector4
‹‹% ,
(
‹‹, -
source
‹‹- 3
.
‹‹3 4
width
‹‹4 9
,
‹‹9 :
source
‹‹; A
.
‹‹A B
height
‹‹B H
,
‹‹H I
$num
‹‹J L
,
‹‹L M
$num
‹‹N P
)
‹‹P Q
)
‹‹Q R
;
‹‹R S
cs
›› 
.
›› 
Dispatch
›› 
(
›› 
kernel
›› 
,
›› 
Mathf
››  %
.
››% &
	CeilToInt
››& /
(
››/ 0
source
››0 6
.
››6 7
width
››7 <
/
››= >
$num
››? B
)
››B C
,
››C D
Mathf
››E J
.
››J K
	CeilToInt
››K T
(
››T U
source
››U [
.
››[ \
height
››\ b
/
››c d
$num
››e h
)
››h i
,
››i j
$num
››k l
)
››l m
;
››m n
if
ﬂﬂ 
(
ﬂﬂ "
m_VectorscopeTexture
ﬂﬂ $
==
ﬂﬂ% '
null
ﬂﬂ( ,
||
ﬂﬂ- /"
m_VectorscopeTexture
ﬂﬂ0 D
.
ﬂﬂD E
width
ﬂﬂE J
!=
ﬂﬂK M
source
ﬂﬂN T
.
ﬂﬂT U
width
ﬂﬂU Z
||
ﬂﬂ[ ]"
m_VectorscopeTexture
ﬂﬂ^ r
.
ﬂﬂr s
height
ﬂﬂs y
!=
ﬂﬂz |
sourceﬂﬂ} É
.ﬂﬂÉ Ñ
heightﬂﬂÑ ä
)ﬂﬂä ã
{
‡‡ 
GraphicsUtils
·· 
.
·· 
Destroy
·· %
(
··% &"
m_VectorscopeTexture
··& :
)
··: ;
;
··; <"
m_VectorscopeTexture
‚‚ $
=
‚‚% &
new
‚‚' *
RenderTexture
‚‚+ 8
(
‚‚8 9
source
‚‚9 ?
.
‚‚? @
width
‚‚@ E
,
‚‚E F
source
‚‚G M
.
‚‚M N
height
‚‚N T
,
‚‚T U
$num
‚‚V W
,
‚‚W X!
RenderTextureFormat
‚‚Y l
.
‚‚l m
ARGB32
‚‚m s
,
‚‚s t%
RenderTextureReadWrite‚‚u ã
.‚‚ã å
Linear‚‚å í
)‚‚í ì
{
„„ 
	hideFlags
‰‰ 
=
‰‰ 
	HideFlags
‰‰  )
.
‰‰) *
DontSave
‰‰* 2
,
‰‰2 3
wrapMode
ÂÂ 
=
ÂÂ 
TextureWrapMode
ÂÂ .
.
ÂÂ. /
Clamp
ÂÂ/ 4
,
ÂÂ4 5

filterMode
ÊÊ 
=
ÊÊ  

FilterMode
ÊÊ! +
.
ÊÊ+ ,
Bilinear
ÊÊ, 4
}
ÁÁ 
;
ÁÁ 
}
ËË 
if
ÍÍ 
(
ÍÍ 

m_Material
ÍÍ 
==
ÍÍ 
null
ÍÍ "
)
ÍÍ" #

m_Material
ÎÎ 
=
ÎÎ 
new
ÎÎ  
Material
ÎÎ! )
(
ÎÎ) *
Shader
ÎÎ* 0
.
ÎÎ0 1
Find
ÎÎ1 5
(
ÎÎ5 6
$str
ÎÎ6 b
)
ÎÎb c
)
ÎÎc d
{
ÎÎe f
	hideFlags
ÎÎg p
=
ÎÎq r
	HideFlags
ÎÎs |
.
ÎÎ| }
DontSaveÎÎ} Ö
}ÎÎÜ á
;ÎÎá à

m_Material
ÌÌ 
.
ÌÌ 
	SetBuffer
ÌÌ  
(
ÌÌ  !
$str
ÌÌ! /
,
ÌÌ/ 0
m_Buffer
ÌÌ1 9
)
ÌÌ9 :
;
ÌÌ: ;

m_Material
ÓÓ 
.
ÓÓ 
	SetVector
ÓÓ  
(
ÓÓ  !
$str
ÓÓ! (
,
ÓÓ( )
new
ÓÓ* -
Vector2
ÓÓ. 5
(
ÓÓ5 6"
m_VectorscopeTexture
ÓÓ6 J
.
ÓÓJ K
width
ÓÓK P
,
ÓÓP Q"
m_VectorscopeTexture
ÓÓR f
.
ÓÓf g
height
ÓÓg m
)
ÓÓm n
)
ÓÓn o
;
ÓÓo p
}
ÔÔ 	
}
 
}ÒÒ Î◊
ªD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Monitors\WaveformMonitor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
public 

class 
WaveformMonitor  
:! "!
PostProcessingMonitor# 8
{ 
static		 

GUIContent		 
s_MonitorTitle		 (
=		) *
new		+ .

GUIContent		/ 9
(		9 :
$str		: D
)		D E
;		E F
ComputeShader 
m_ComputeShader %
;% &
ComputeBuffer 
m_Buffer 
; 
Material 

m_Material 
; 
RenderTexture 
m_WaveformTexture '
;' (
Rect 
m_MonitorAreaRect 
; 
public 
WaveformMonitor 
( 
)  
{ 	
m_ComputeShader 
= 
EditorResources -
.- .
Load. 2
<2 3
ComputeShader3 @
>@ A
(A B
$strB d
)d e
;e f
} 	
public 
override 
void 
Dispose $
($ %
)% &
{ 	
GraphicsUtils 
. 
Destroy !
(! "

m_Material" ,
), -
;- .
GraphicsUtils 
. 
Destroy !
(! "
m_WaveformTexture" 3
)3 4
;4 5
if 
( 
m_Buffer 
!= 
null  
)  !
m_Buffer 
. 
Release  
(  !
)! "
;" #

m_Material 
= 
null 
; 
m_WaveformTexture 
= 
null  $
;$ %
m_Buffer   
=   
null   
;   
}!! 	
public## 
override## 
bool## 
IsSupported## (
(##( )
)##) *
{$$ 	
return%% 
m_ComputeShader%% "
!=%%# %
null%%& *
&&%%+ -
GraphicsUtils%%. ;
.%%; <
supportsDX11%%< H
;%%H I
}&& 	
public(( 
override(( 

GUIContent(( "
GetMonitorTitle((# 2
(((2 3
)((3 4
{)) 	
return** 
s_MonitorTitle** !
;**! "
}++ 	
public-- 
override-- 
void-- 
OnMonitorSettings-- .
(--. /
)--/ 0
{.. 	
	EditorGUI// 
.// 
BeginChangeCheck// &
(//& '
)//' (
;//( )
bool11 
refreshOnPlay11 
=11  
m_MonitorSettings11! 2
.112 3
refreshOnPlay113 @
;11@ A
float22 
exposure22 
=22 
m_MonitorSettings22 .
.22. /
waveformExposure22/ ?
;22? @
bool33 
Y33 
=33 
m_MonitorSettings33 &
.33& '
	waveformY33' 0
;330 1
bool44 
R44 
=44 
m_MonitorSettings44 &
.44& '
	waveformR44' 0
;440 1
bool55 
G55 
=55 
m_MonitorSettings55 &
.55& '
	waveformG55' 0
;550 1
bool66 
B66 
=66 
m_MonitorSettings66 &
.66& '
	waveformB66' 0
;660 1
refreshOnPlay88 
=88 
	GUILayout88 %
.88% &
Toggle88& ,
(88, -
refreshOnPlay88- :
,88: ;
new88< ?

GUIContent88@ J
(88J K
FxStyles88K S
.88S T
playIcon88T \
,88\ ]
$str	88^ ®
)
88® ©
,
88© ™
FxStyles
88´ ≥
.
88≥ ¥
	preButton
88¥ Ω
)
88Ω æ
;
88æ ø
exposure:: 
=:: 
	GUILayout::  
.::  !
HorizontalSlider::! 1
(::1 2
exposure::2 :
,::: ;
$num::< A
,::A B
$num::C G
,::G H
FxStyles::I Q
.::Q R
	preSlider::R [
,::[ \
FxStyles::] e
.::e f
preSliderThumb::f t
,::t u
	GUILayout::v 
.	:: Ä
Width
::Ä Ö
(
::Ö Ü
$num
::Ü â
)
::â ä
)
::ä ã
;
::ã å
Y<< 
=<< 
	GUILayout<< 
.<< 
Toggle<<  
(<<  !
Y<<! "
,<<" #
new<<$ '

GUIContent<<( 2
(<<2 3
$str<<3 6
,<<6 7
$str<<8 [
)<<[ \
,<<\ ]
FxStyles<<^ f
.<<f g
	preButton<<g p
)<<p q
;<<q r
if>> 
(>> 
Y>> 
)>> 
{?? 
R@@ 
=@@ 
false@@ 
;@@ 
GAA 
=AA 
falseAA 
;AA 
BBB 
=BB 
falseBB 
;BB 
}CC 
REE 
=EE 
	GUILayoutEE 
.EE 
ToggleEE  
(EE  !
REE! "
,EE" #
newEE$ '

GUIContentEE( 2
(EE2 3
$strEE3 6
,EE6 7
$strEE8 P
)EEP Q
,EEQ R
FxStylesEES [
.EE[ \
	preButtonEE\ e
)EEe f
;EEf g
GFF 
=FF 
	GUILayoutFF 
.FF 
ToggleFF  
(FF  !
GFF! "
,FF" #
newFF$ '

GUIContentFF( 2
(FF2 3
$strFF3 6
,FF6 7
$strFF8 R
)FFR S
,FFS T
FxStylesFFU ]
.FF] ^
	preButtonFF^ g
)FFg h
;FFh i
BGG 
=GG 
	GUILayoutGG 
.GG 
ToggleGG  
(GG  !
BGG! "
,GG" #
newGG$ '

GUIContentGG( 2
(GG2 3
$strGG3 6
,GG6 7
$strGG8 Q
)GGQ R
,GGR S
FxStylesGGT \
.GG\ ]
	preButtonGG] f
)GGf g
;GGg h
ifII 
(II 
RII 
||II 
GII 
||II 
BII 
)II 
YJJ 
=JJ 
falseJJ 
;JJ 
ifLL 
(LL 
!LL 
YLL 
&&LL 
!LL 
RLL 
&&LL 
!LL 
GLL 
&&LL !
!LL" #
BLL# $
)LL$ %
{MM 
RNN 
=NN 
trueNN 
;NN 
GOO 
=OO 
trueOO 
;OO 
BPP 
=PP 
truePP 
;PP 
}QQ 
ifSS 
(SS 
	EditorGUISS 
.SS 
EndChangeCheckSS (
(SS( )
)SS) *
)SS* +
{TT 
UndoUU 
.UU 
RecordObjectUU !
(UU! "
m_BaseEditorUU" .
.UU. /
serializedObjectUU/ ?
.UU? @
targetObjectUU@ L
,UUL M
$strUUN j
)UUj k
;UUk l
m_MonitorSettingsVV !
.VV! "
refreshOnPlayVV" /
=VV0 1
refreshOnPlayVV2 ?
;VV? @
m_MonitorSettingsWW !
.WW! "
waveformExposureWW" 2
=WW3 4
exposureWW5 =
;WW= >
m_MonitorSettingsXX !
.XX! "
	waveformYXX" +
=XX, -
YXX. /
;XX/ 0
m_MonitorSettingsYY !
.YY! "
	waveformRYY" +
=YY, -
RYY. /
;YY/ 0
m_MonitorSettingsZZ !
.ZZ! "
	waveformGZZ" +
=ZZ, -
GZZ. /
;ZZ/ 0
m_MonitorSettings[[ !
.[[! "
	waveformB[[" +
=[[, -
B[[. /
;[[/ 0!
InternalEditorUtility\\ %
.\\% &
RepaintAllViews\\& 5
(\\5 6
)\\6 7
;\\7 8
}]] 
}^^ 	
public`` 
override`` 
void`` 
OnMonitorGUI`` )
(``) *
Rect``* .
r``/ 0
)``0 1
{aa 	
ifbb 
(bb 
Eventbb 
.bb 
currentbb 
.bb 
typebb "
==bb# %
	EventTypebb& /
.bb/ 0
Repaintbb0 7
)bb7 8
{cc 
ifee 
(ee 
Mathfee 
.ee 
Approximatelyee '
(ee' (
m_MonitorAreaRectee( 9
.ee9 :
widthee: ?
,ee? @
$numeeA B
)eeB C
&&eeD F
MathfeeG L
.eeL M
ApproximatelyeeM Z
(eeZ [
m_MonitorAreaRectee[ l
.eel m
heighteem s
,ees t
$numeeu v
)eev w
)eew x!
InternalEditorUtilityff )
.ff) *
RepaintAllViewsff* 9
(ff9 :
)ff: ;
;ff; <
floatii 
widthii 
=ii 
m_WaveformTextureii /
!=ii0 2
nullii3 7
?jj 
Mathfjj 
.jj 
Minjj 
(jj  
m_WaveformTexturejj  1
.jj1 2
widthjj2 7
,jj7 8
rjj9 :
.jj: ;
widthjj; @
-jjA B
$numjjC F
)jjF G
:kk 
rkk 
.kk 
widthkk 
;kk 
floatll 
heightll 
=ll 
m_WaveformTexturell 0
!=ll1 3
nullll4 8
?mm 
Mathfmm 
.mm 
Minmm 
(mm  
m_WaveformTexturemm  1
.mm1 2
heightmm2 8
,mm8 9
rmm: ;
.mm; <
heightmm< B
-mmC D
$nummmE H
)mmH I
:nn 
rnn 
.nn 
heightnn 
;nn 
m_MonitorAreaRectpp !
=pp" #
newpp$ '
Rectpp( ,
(pp, -
Mathfqq 
.qq 
Floorqq #
(qq# $
rqq$ %
.qq% &
xqq& '
+qq( )
rqq* +
.qq+ ,
widthqq, 1
/qq2 3
$numqq4 6
-qq7 8
widthqq9 >
/qq? @
$numqqA C
)qqC D
,qqD E
Mathfrr 
.rr 
Floorrr #
(rr# $
rrr$ %
.rr% &
yrr& '
+rr( )
rrr* +
.rr+ ,
heightrr, 2
/rr3 4
$numrr5 7
-rr8 9
heightrr: @
/rrA B
$numrrC E
-rrF G
$numrrH J
)rrJ K
,rrK L
widthss 
,ss 
heightss %
)tt 
;tt 
ifvv 
(vv 
m_WaveformTexturevv %
!=vv& (
nullvv) -
)vv- .
{ww 

m_Materialxx 
.xx 
SetFloatxx '
(xx' (
$strxx( 3
,xx3 4
m_MonitorSettingsxx5 F
.xxF G
waveformExposurexxG W
)xxW X
;xxX Y
varzz 
	oldActivezz !
=zz" #
RenderTexturezz$ 1
.zz1 2
activezz2 8
;zz8 9
Graphics{{ 
.{{ 
Blit{{ !
({{! "
null{{" &
,{{& '
m_WaveformTexture{{( 9
,{{9 :

m_Material{{; E
,{{E F
$num{{G H
){{H I
;{{I J
RenderTexture|| !
.||! "
active||" (
=||) *
	oldActive||+ 4
;||4 5
Graphics~~ 
.~~ 
DrawTexture~~ (
(~~( )
m_MonitorAreaRect~~) :
,~~: ;
m_WaveformTexture~~< M
)~~M N
;~~N O
var
ÄÄ 
color
ÄÄ 
=
ÄÄ 
Color
ÄÄ  %
.
ÄÄ% &
white
ÄÄ& +
;
ÄÄ+ ,
const
ÅÅ 
float
ÅÅ 
	kTickSize
ÅÅ  )
=
ÅÅ* +
$num
ÅÅ, .
;
ÅÅ. /
var
ää 
A
ää 
=
ää 
new
ää 
Vector3
ää  '
(
ää' (
m_MonitorAreaRect
ää( 9
.
ää9 :
x
ää: ;
,
ää; <
m_MonitorAreaRect
ää= N
.
ääN O
y
ääO P
)
ääP Q
;
ääQ R
var
ãã 
E
ãã 
=
ãã 
new
ãã 
Vector3
ãã  '
(
ãã' (
A
ãã( )
.
ãã) *
x
ãã* +
+
ãã, -
m_MonitorAreaRect
ãã. ?
.
ãã? @
width
ãã@ E
+
ããF G
$num
ããH J
,
ããJ K
m_MonitorAreaRect
ããL ]
.
ãã] ^
y
ãã^ _
)
ãã_ `
;
ãã` a
var
åå 
I
åå 
=
åå 
new
åå 
Vector3
åå  '
(
åå' (
E
åå( )
.
åå) *
x
åå* +
,
åå+ ,
E
åå- .
.
åå. /
y
åå/ 0
+
åå1 2
m_MonitorAreaRect
åå3 D
.
ååD E
height
ååE K
+
ååL M
$num
ååN P
)
ååP Q
;
ååQ R
var
çç 
M
çç 
=
çç 
new
çç 
Vector3
çç  '
(
çç' (
A
çç( )
.
çç) *
x
çç* +
,
çç+ ,
I
çç- .
.
çç. /
y
çç/ 0
)
çç0 1
;
çç1 2
var
èè 
C
èè 
=
èè 
new
èè 
Vector3
èè  '
(
èè' (
A
èè( )
.
èè) *
x
èè* +
+
èè, -
(
èè. /
E
èè/ 0
.
èè0 1
x
èè1 2
-
èè3 4
A
èè5 6
.
èè6 7
x
èè7 8
)
èè8 9
/
èè: ;
$num
èè< >
,
èè> ?
A
èè@ A
.
èèA B
y
èèB C
)
èèC D
;
èèD E
var
êê 
G
êê 
=
êê 
new
êê 
Vector3
êê  '
(
êê' (
E
êê( )
.
êê) *
x
êê* +
,
êê+ ,
E
êê- .
.
êê. /
y
êê/ 0
+
êê1 2
(
êê3 4
I
êê4 5
.
êê5 6
y
êê6 7
-
êê8 9
E
êê: ;
.
êê; <
y
êê< =
)
êê= >
/
êê? @
$num
êêA C
)
êêC D
;
êêD E
var
ëë 
K
ëë 
=
ëë 
new
ëë 
Vector3
ëë  '
(
ëë' (
M
ëë( )
.
ëë) *
x
ëë* +
+
ëë, -
(
ëë. /
I
ëë/ 0
.
ëë0 1
x
ëë1 2
-
ëë3 4
M
ëë5 6
.
ëë6 7
x
ëë7 8
)
ëë8 9
/
ëë: ;
$num
ëë< >
,
ëë> ?
M
ëë@ A
.
ëëA B
y
ëëB C
)
ëëC D
;
ëëD E
var
íí 
O
íí 
=
íí 
new
íí 
Vector3
íí  '
(
íí' (
A
íí( )
.
íí) *
x
íí* +
,
íí+ ,
A
íí- .
.
íí. /
y
íí/ 0
+
íí1 2
(
íí3 4
M
íí4 5
.
íí5 6
y
íí6 7
-
íí8 9
A
íí: ;
.
íí; <
y
íí< =
)
íí= >
/
íí? @
$num
ííA C
)
ííC D
;
ííD E
var
îî 
P
îî 
=
îî 
new
îî 
Vector3
îî  '
(
îî' (
A
îî( )
.
îî) *
x
îî* +
,
îî+ ,
A
îî- .
.
îî. /
y
îî/ 0
+
îî1 2
(
îî3 4
O
îî4 5
.
îî5 6
y
îî6 7
-
îî8 9
A
îî: ;
.
îî; <
y
îî< =
)
îî= >
/
îî? @
$num
îîA C
)
îîC D
;
îîD E
var
ïï 
F
ïï 
=
ïï 
new
ïï 
Vector3
ïï  '
(
ïï' (
E
ïï( )
.
ïï) *
x
ïï* +
,
ïï+ ,
E
ïï- .
.
ïï. /
y
ïï/ 0
+
ïï1 2
(
ïï3 4
G
ïï4 5
.
ïï5 6
y
ïï6 7
-
ïï8 9
E
ïï: ;
.
ïï; <
y
ïï< =
)
ïï= >
/
ïï? @
$num
ïïA C
)
ïïC D
;
ïïD E
var
ññ 
N
ññ 
=
ññ 
new
ññ 
Vector3
ññ  '
(
ññ' (
A
ññ( )
.
ññ) *
x
ññ* +
,
ññ+ ,
O
ññ- .
.
ññ. /
y
ññ/ 0
+
ññ1 2
(
ññ3 4
M
ññ4 5
.
ññ5 6
y
ññ6 7
-
ññ8 9
O
ññ: ;
.
ññ; <
y
ññ< =
)
ññ= >
/
ññ? @
$num
ññA C
)
ññC D
;
ññD E
var
óó 
H
óó 
=
óó 
new
óó 
Vector3
óó  '
(
óó' (
E
óó( )
.
óó) *
x
óó* +
,
óó+ ,
G
óó- .
.
óó. /
y
óó/ 0
+
óó1 2
(
óó3 4
I
óó4 5
.
óó5 6
y
óó6 7
-
óó8 9
G
óó: ;
.
óó; <
y
óó< =
)
óó= >
/
óó? @
$num
óóA C
)
óóC D
;
óóD E
var
ôô 
B
ôô 
=
ôô 
new
ôô 
Vector3
ôô  '
(
ôô' (
A
ôô( )
.
ôô) *
x
ôô* +
+
ôô, -
(
ôô. /
C
ôô/ 0
.
ôô0 1
x
ôô1 2
-
ôô3 4
A
ôô5 6
.
ôô6 7
x
ôô7 8
)
ôô8 9
/
ôô: ;
$num
ôô< >
,
ôô> ?
A
ôô@ A
.
ôôA B
y
ôôB C
)
ôôC D
;
ôôD E
var
öö 
L
öö 
=
öö 
new
öö 
Vector3
öö  '
(
öö' (
M
öö( )
.
öö) *
x
öö* +
+
öö, -
(
öö. /
K
öö/ 0
.
öö0 1
x
öö1 2
-
öö3 4
M
öö5 6
.
öö6 7
x
öö7 8
)
öö8 9
/
öö: ;
$num
öö< >
,
öö> ?
M
öö@ A
.
ööA B
y
ööB C
)
ööC D
;
ööD E
var
õõ 
D
õõ 
=
õõ 
new
õõ 
Vector3
õõ  '
(
õõ' (
C
õõ( )
.
õõ) *
x
õõ* +
+
õõ, -
(
õõ. /
E
õõ/ 0
.
õõ0 1
x
õõ1 2
-
õõ3 4
C
õõ5 6
.
õõ6 7
x
õõ7 8
)
õõ8 9
/
õõ: ;
$num
õõ< >
,
õõ> ?
A
õõ@ A
.
õõA B
y
õõB C
)
õõC D
;
õõD E
var
úú 
J
úú 
=
úú 
new
úú 
Vector3
úú  '
(
úú' (
K
úú( )
.
úú) *
x
úú* +
+
úú, -
(
úú. /
I
úú/ 0
.
úú0 1
x
úú1 2
-
úú3 4
K
úú5 6
.
úú6 7
x
úú7 8
)
úú8 9
/
úú: ;
$num
úú< >
,
úú> ?
M
úú@ A
.
úúA B
y
úúB C
)
úúC D
;
úúD E
Handles
üü 
.
üü 
color
üü !
=
üü" #
color
üü$ )
;
üü) *
Handles
†† 
.
†† 
DrawLine
†† $
(
††$ %
A
††% &
,
††& '
E
††( )
)
††) *
;
††* +
Handles
°° 
.
°° 
DrawLine
°° $
(
°°$ %
E
°°% &
,
°°& '
I
°°( )
)
°°) *
;
°°* +
Handles
¢¢ 
.
¢¢ 
DrawLine
¢¢ $
(
¢¢$ %
I
¢¢% &
,
¢¢& '
M
¢¢( )
)
¢¢) *
;
¢¢* +
Handles
££ 
.
££ 
DrawLine
££ $
(
££$ %
M
££% &
,
££& '
new
££( +
Vector3
££, 3
(
££3 4
A
££4 5
.
££5 6
x
££6 7
,
££7 8
A
££9 :
.
££: ;
y
££; <
-
££= >
$num
££? A
)
££A B
)
££B C
;
££C D
Handles
¶¶ 
.
¶¶ 
DrawLine
¶¶ $
(
¶¶$ %
A
¶¶% &
,
¶¶& '
new
¶¶( +
Vector3
¶¶, 3
(
¶¶3 4
A
¶¶4 5
.
¶¶5 6
x
¶¶6 7
-
¶¶8 9
	kTickSize
¶¶: C
,
¶¶C D
A
¶¶E F
.
¶¶F G
y
¶¶G H
)
¶¶H I
)
¶¶I J
;
¶¶J K
Handles
ßß 
.
ßß 
DrawLine
ßß $
(
ßß$ %
P
ßß% &
,
ßß& '
new
ßß( +
Vector3
ßß, 3
(
ßß3 4
P
ßß4 5
.
ßß5 6
x
ßß6 7
-
ßß8 9
	kTickSize
ßß: C
,
ßßC D
P
ßßE F
.
ßßF G
y
ßßG H
)
ßßH I
)
ßßI J
;
ßßJ K
Handles
®® 
.
®® 
DrawLine
®® $
(
®®$ %
O
®®% &
,
®®& '
new
®®( +
Vector3
®®, 3
(
®®3 4
O
®®4 5
.
®®5 6
x
®®6 7
-
®®8 9
	kTickSize
®®: C
,
®®C D
O
®®E F
.
®®F G
y
®®G H
)
®®H I
)
®®I J
;
®®J K
Handles
©© 
.
©© 
DrawLine
©© $
(
©©$ %
N
©©% &
,
©©& '
new
©©( +
Vector3
©©, 3
(
©©3 4
N
©©4 5
.
©©5 6
x
©©6 7
-
©©8 9
	kTickSize
©©: C
,
©©C D
N
©©E F
.
©©F G
y
©©G H
)
©©H I
)
©©I J
;
©©J K
Handles
™™ 
.
™™ 
DrawLine
™™ $
(
™™$ %
M
™™% &
,
™™& '
new
™™( +
Vector3
™™, 3
(
™™3 4
M
™™4 5
.
™™5 6
x
™™6 7
-
™™8 9
	kTickSize
™™: C
,
™™C D
M
™™E F
.
™™F G
y
™™G H
)
™™H I
)
™™I J
;
™™J K
Handles
¨¨ 
.
¨¨ 
DrawLine
¨¨ $
(
¨¨$ %
E
¨¨% &
,
¨¨& '
new
¨¨( +
Vector3
¨¨, 3
(
¨¨3 4
E
¨¨4 5
.
¨¨5 6
x
¨¨6 7
+
¨¨8 9
	kTickSize
¨¨: C
,
¨¨C D
E
¨¨E F
.
¨¨F G
y
¨¨G H
)
¨¨H I
)
¨¨I J
;
¨¨J K
Handles
≠≠ 
.
≠≠ 
DrawLine
≠≠ $
(
≠≠$ %
F
≠≠% &
,
≠≠& '
new
≠≠( +
Vector3
≠≠, 3
(
≠≠3 4
F
≠≠4 5
.
≠≠5 6
x
≠≠6 7
+
≠≠8 9
	kTickSize
≠≠: C
,
≠≠C D
F
≠≠E F
.
≠≠F G
y
≠≠G H
)
≠≠H I
)
≠≠I J
;
≠≠J K
Handles
ÆÆ 
.
ÆÆ 
DrawLine
ÆÆ $
(
ÆÆ$ %
G
ÆÆ% &
,
ÆÆ& '
new
ÆÆ( +
Vector3
ÆÆ, 3
(
ÆÆ3 4
G
ÆÆ4 5
.
ÆÆ5 6
x
ÆÆ6 7
+
ÆÆ8 9
	kTickSize
ÆÆ: C
,
ÆÆC D
G
ÆÆE F
.
ÆÆF G
y
ÆÆG H
)
ÆÆH I
)
ÆÆI J
;
ÆÆJ K
Handles
ØØ 
.
ØØ 
DrawLine
ØØ $
(
ØØ$ %
H
ØØ% &
,
ØØ& '
new
ØØ( +
Vector3
ØØ, 3
(
ØØ3 4
H
ØØ4 5
.
ØØ5 6
x
ØØ6 7
+
ØØ8 9
	kTickSize
ØØ: C
,
ØØC D
H
ØØE F
.
ØØF G
y
ØØG H
)
ØØH I
)
ØØI J
;
ØØJ K
Handles
∞∞ 
.
∞∞ 
DrawLine
∞∞ $
(
∞∞$ %
I
∞∞% &
,
∞∞& '
new
∞∞( +
Vector3
∞∞, 3
(
∞∞3 4
I
∞∞4 5
.
∞∞5 6
x
∞∞6 7
+
∞∞8 9
	kTickSize
∞∞: C
,
∞∞C D
I
∞∞E F
.
∞∞F G
y
∞∞G H
)
∞∞H I
)
∞∞I J
;
∞∞J K
Handles
≥≥ 
.
≥≥ 
DrawLine
≥≥ $
(
≥≥$ %
A
≥≥% &
,
≥≥& '
new
≥≥( +
Vector3
≥≥, 3
(
≥≥3 4
A
≥≥4 5
.
≥≥5 6
x
≥≥6 7
,
≥≥7 8
A
≥≥9 :
.
≥≥: ;
y
≥≥; <
-
≥≥= >
	kTickSize
≥≥? H
)
≥≥H I
)
≥≥I J
;
≥≥J K
Handles
¥¥ 
.
¥¥ 
DrawLine
¥¥ $
(
¥¥$ %
B
¥¥% &
,
¥¥& '
new
¥¥( +
Vector3
¥¥, 3
(
¥¥3 4
B
¥¥4 5
.
¥¥5 6
x
¥¥6 7
,
¥¥7 8
B
¥¥9 :
.
¥¥: ;
y
¥¥; <
-
¥¥= >
	kTickSize
¥¥? H
)
¥¥H I
)
¥¥I J
;
¥¥J K
Handles
µµ 
.
µµ 
DrawLine
µµ $
(
µµ$ %
C
µµ% &
,
µµ& '
new
µµ( +
Vector3
µµ, 3
(
µµ3 4
C
µµ4 5
.
µµ5 6
x
µµ6 7
,
µµ7 8
C
µµ9 :
.
µµ: ;
y
µµ; <
-
µµ= >
	kTickSize
µµ? H
)
µµH I
)
µµI J
;
µµJ K
Handles
∂∂ 
.
∂∂ 
DrawLine
∂∂ $
(
∂∂$ %
D
∂∂% &
,
∂∂& '
new
∂∂( +
Vector3
∂∂, 3
(
∂∂3 4
D
∂∂4 5
.
∂∂5 6
x
∂∂6 7
,
∂∂7 8
D
∂∂9 :
.
∂∂: ;
y
∂∂; <
-
∂∂= >
	kTickSize
∂∂? H
)
∂∂H I
)
∂∂I J
;
∂∂J K
Handles
∑∑ 
.
∑∑ 
DrawLine
∑∑ $
(
∑∑$ %
E
∑∑% &
,
∑∑& '
new
∑∑( +
Vector3
∑∑, 3
(
∑∑3 4
E
∑∑4 5
.
∑∑5 6
x
∑∑6 7
,
∑∑7 8
E
∑∑9 :
.
∑∑: ;
y
∑∑; <
-
∑∑= >
	kTickSize
∑∑? H
)
∑∑H I
)
∑∑I J
;
∑∑J K
Handles
ππ 
.
ππ 
DrawLine
ππ $
(
ππ$ %
M
ππ% &
,
ππ& '
new
ππ( +
Vector3
ππ, 3
(
ππ3 4
M
ππ4 5
.
ππ5 6
x
ππ6 7
,
ππ7 8
M
ππ9 :
.
ππ: ;
y
ππ; <
+
ππ= >
	kTickSize
ππ? H
)
ππH I
)
ππI J
;
ππJ K
Handles
∫∫ 
.
∫∫ 
DrawLine
∫∫ $
(
∫∫$ %
L
∫∫% &
,
∫∫& '
new
∫∫( +
Vector3
∫∫, 3
(
∫∫3 4
L
∫∫4 5
.
∫∫5 6
x
∫∫6 7
,
∫∫7 8
L
∫∫9 :
.
∫∫: ;
y
∫∫; <
+
∫∫= >
	kTickSize
∫∫? H
)
∫∫H I
)
∫∫I J
;
∫∫J K
Handles
ªª 
.
ªª 
DrawLine
ªª $
(
ªª$ %
K
ªª% &
,
ªª& '
new
ªª( +
Vector3
ªª, 3
(
ªª3 4
K
ªª4 5
.
ªª5 6
x
ªª6 7
,
ªª7 8
K
ªª9 :
.
ªª: ;
y
ªª; <
+
ªª= >
	kTickSize
ªª? H
)
ªªH I
)
ªªI J
;
ªªJ K
Handles
ºº 
.
ºº 
DrawLine
ºº $
(
ºº$ %
J
ºº% &
,
ºº& '
new
ºº( +
Vector3
ºº, 3
(
ºº3 4
J
ºº4 5
.
ºº5 6
x
ºº6 7
,
ºº7 8
J
ºº9 :
.
ºº: ;
y
ºº; <
+
ºº= >
	kTickSize
ºº? H
)
ººH I
)
ººI J
;
ººJ K
Handles
ΩΩ 
.
ΩΩ 
DrawLine
ΩΩ $
(
ΩΩ$ %
I
ΩΩ% &
,
ΩΩ& '
new
ΩΩ( +
Vector3
ΩΩ, 3
(
ΩΩ3 4
I
ΩΩ4 5
.
ΩΩ5 6
x
ΩΩ6 7
,
ΩΩ7 8
I
ΩΩ9 :
.
ΩΩ: ;
y
ΩΩ; <
+
ΩΩ= >
	kTickSize
ΩΩ? H
)
ΩΩH I
)
ΩΩI J
;
ΩΩJ K
GUI
¿¿ 
.
¿¿ 
color
¿¿ 
=
¿¿ 
color
¿¿  %
;
¿¿% &
GUI
¡¡ 
.
¡¡ 
Label
¡¡ 
(
¡¡ 
new
¡¡ !
Rect
¡¡" &
(
¡¡& '
A
¡¡' (
.
¡¡( )
x
¡¡) *
-
¡¡+ ,
	kTickSize
¡¡- 6
-
¡¡7 8
$num
¡¡9 <
,
¡¡< =
A
¡¡> ?
.
¡¡? @
y
¡¡@ A
-
¡¡B C
$num
¡¡D G
,
¡¡G H
$num
¡¡I L
,
¡¡L M
$num
¡¡N Q
)
¡¡Q R
,
¡¡R S
$str
¡¡T Y
,
¡¡Y Z
FxStyles
¡¡[ c
.
¡¡c d
tickStyleRight
¡¡d r
)
¡¡r s
;
¡¡s t
GUI
¬¬ 
.
¬¬ 
Label
¬¬ 
(
¬¬ 
new
¬¬ !
Rect
¬¬" &
(
¬¬& '
O
¬¬' (
.
¬¬( )
x
¬¬) *
-
¬¬+ ,
	kTickSize
¬¬- 6
-
¬¬7 8
$num
¬¬9 <
,
¬¬< =
O
¬¬> ?
.
¬¬? @
y
¬¬@ A
-
¬¬B C
$num
¬¬D G
,
¬¬G H
$num
¬¬I L
,
¬¬L M
$num
¬¬N Q
)
¬¬Q R
,
¬¬R S
$str
¬¬T Y
,
¬¬Y Z
FxStyles
¬¬[ c
.
¬¬c d
tickStyleRight
¬¬d r
)
¬¬r s
;
¬¬s t
GUI
√√ 
.
√√ 
Label
√√ 
(
√√ 
new
√√ !
Rect
√√" &
(
√√& '
M
√√' (
.
√√( )
x
√√) *
-
√√+ ,
	kTickSize
√√- 6
-
√√7 8
$num
√√9 <
,
√√< =
M
√√> ?
.
√√? @
y
√√@ A
-
√√B C
$num
√√D G
,
√√G H
$num
√√I L
,
√√L M
$num
√√N Q
)
√√Q R
,
√√R S
$str
√√T Y
,
√√Y Z
FxStyles
√√[ c
.
√√c d
tickStyleRight
√√d r
)
√√r s
;
√√s t
GUI
≈≈ 
.
≈≈ 
Label
≈≈ 
(
≈≈ 
new
≈≈ !
Rect
≈≈" &
(
≈≈& '
E
≈≈' (
.
≈≈( )
x
≈≈) *
+
≈≈+ ,
	kTickSize
≈≈- 6
+
≈≈7 8
$num
≈≈9 ;
,
≈≈; <
E
≈≈= >
.
≈≈> ?
y
≈≈? @
-
≈≈A B
$num
≈≈C F
,
≈≈F G
$num
≈≈H K
,
≈≈K L
$num
≈≈M P
)
≈≈P Q
,
≈≈Q R
$str
≈≈S X
,
≈≈X Y
FxStyles
≈≈Z b
.
≈≈b c
tickStyleLeft
≈≈c p
)
≈≈p q
;
≈≈q r
GUI
∆∆ 
.
∆∆ 
Label
∆∆ 
(
∆∆ 
new
∆∆ !
Rect
∆∆" &
(
∆∆& '
G
∆∆' (
.
∆∆( )
x
∆∆) *
+
∆∆+ ,
	kTickSize
∆∆- 6
+
∆∆7 8
$num
∆∆9 ;
,
∆∆; <
G
∆∆= >
.
∆∆> ?
y
∆∆? @
-
∆∆A B
$num
∆∆C F
,
∆∆F G
$num
∆∆H K
,
∆∆K L
$num
∆∆M P
)
∆∆P Q
,
∆∆Q R
$str
∆∆S X
,
∆∆X Y
FxStyles
∆∆Z b
.
∆∆b c
tickStyleLeft
∆∆c p
)
∆∆p q
;
∆∆q r
GUI
«« 
.
«« 
Label
«« 
(
«« 
new
«« !
Rect
««" &
(
««& '
I
««' (
.
««( )
x
««) *
+
««+ ,
	kTickSize
««- 6
+
««7 8
$num
««9 ;
,
««; <
I
««= >
.
««> ?
y
««? @
-
««A B
$num
««C F
,
««F G
$num
««H K
,
««K L
$num
««M P
)
««P Q
,
««Q R
$str
««S X
,
««X Y
FxStyles
««Z b
.
««b c
tickStyleLeft
««c p
)
««p q
;
««q r
GUI
…… 
.
…… 
Label
…… 
(
…… 
new
…… !
Rect
……" &
(
……& '
M
……' (
.
……( )
x
……) *
-
……+ ,
$num
……- 0
,
……0 1
M
……2 3
.
……3 4
y
……4 5
+
……6 7
	kTickSize
……8 A
-
……B C
$num
……D F
,
……F G
$num
……H K
,
……K L
$num
……M P
)
……P Q
,
……Q R
$str
……S X
,
……X Y
FxStyles
……Z b
.
……b c
tickStyleCenter
……c r
)
……r s
;
……s t
GUI
   
.
   
Label
   
(
   
new
   !
Rect
  " &
(
  & '
K
  ' (
.
  ( )
x
  ) *
-
  + ,
$num
  - 0
,
  0 1
K
  2 3
.
  3 4
y
  4 5
+
  6 7
	kTickSize
  8 A
-
  B C
$num
  D F
,
  F G
$num
  H K
,
  K L
$num
  M P
)
  P Q
,
  Q R
$str
  S X
,
  X Y
FxStyles
  Z b
.
  b c
tickStyleCenter
  c r
)
  r s
;
  s t
GUI
ÀÀ 
.
ÀÀ 
Label
ÀÀ 
(
ÀÀ 
new
ÀÀ !
Rect
ÀÀ" &
(
ÀÀ& '
I
ÀÀ' (
.
ÀÀ( )
x
ÀÀ) *
-
ÀÀ+ ,
$num
ÀÀ- 0
,
ÀÀ0 1
I
ÀÀ2 3
.
ÀÀ3 4
y
ÀÀ4 5
+
ÀÀ6 7
	kTickSize
ÀÀ8 A
-
ÀÀB C
$num
ÀÀD F
,
ÀÀF G
$num
ÀÀH K
,
ÀÀK L
$num
ÀÀM P
)
ÀÀP Q
,
ÀÀQ R
$str
ÀÀS X
,
ÀÀX Y
FxStyles
ÀÀZ b
.
ÀÀb c
tickStyleCenter
ÀÀc r
)
ÀÀr s
;
ÀÀs t
}
ÃÃ 
}
ÕÕ 
}
ŒŒ 	
public
–– 
override
–– 
void
–– 
OnFrameData
–– (
(
––( )
RenderTexture
––) 6
source
––7 =
)
––= >
{
—— 	
if
““ 
(
““ 
Application
““ 
.
““ 
	isPlaying
““ %
&&
““& (
!
““) *
m_MonitorSettings
““* ;
.
““; <
refreshOnPlay
““< I
)
““I J
return
”” 
;
”” 
if
’’ 
(
’’ 
Mathf
’’ 
.
’’ 
Approximately
’’ #
(
’’# $
m_MonitorAreaRect
’’$ 5
.
’’5 6
width
’’6 ;
,
’’; <
$num
’’= >
)
’’> ?
||
’’@ B
Mathf
’’C H
.
’’H I
Approximately
’’I V
(
’’V W
m_MonitorAreaRect
’’W h
.
’’h i
height
’’i o
,
’’o p
$num
’’q r
)
’’r s
)
’’s t
return
÷÷ 
;
÷÷ 
float
ÿÿ 
ratio
ÿÿ 
=
ÿÿ 
(
ÿÿ 
float
ÿÿ  
)
ÿÿ  !
source
ÿÿ! '
.
ÿÿ' (
width
ÿÿ( -
/
ÿÿ. /
(
ÿÿ0 1
float
ÿÿ1 6
)
ÿÿ6 7
source
ÿÿ7 =
.
ÿÿ= >
height
ÿÿ> D
;
ÿÿD E
int
ŸŸ 
h
ŸŸ 
=
ŸŸ 
$num
ŸŸ 
;
ŸŸ 
int
⁄⁄ 
w
⁄⁄ 
=
⁄⁄ 
Mathf
⁄⁄ 
.
⁄⁄ 

FloorToInt
⁄⁄ $
(
⁄⁄$ %
h
⁄⁄% &
*
⁄⁄' (
ratio
⁄⁄) .
)
⁄⁄. /
;
⁄⁄/ 0
var
‹‹ 
rt
‹‹ 
=
‹‹ 
RenderTexture
‹‹ "
.
‹‹" #
GetTemporary
‹‹# /
(
‹‹/ 0
w
‹‹0 1
,
‹‹1 2
h
‹‹3 4
,
‹‹4 5
$num
‹‹6 7
,
‹‹7 8
source
‹‹9 ?
.
‹‹? @
format
‹‹@ F
)
‹‹F G
;
‹‹G H
Graphics
›› 
.
›› 
Blit
›› 
(
›› 
source
››  
,
››  !
rt
››" $
)
››$ %
;
››% &
ComputeWaveform
ﬁﬁ 
(
ﬁﬁ 
rt
ﬁﬁ 
)
ﬁﬁ 
;
ﬁﬁ  
m_BaseEditor
ﬂﬂ 
.
ﬂﬂ 
Repaint
ﬂﬂ  
(
ﬂﬂ  !
)
ﬂﬂ! "
;
ﬂﬂ" #
RenderTexture
‡‡ 
.
‡‡ 
ReleaseTemporary
‡‡ *
(
‡‡* +
rt
‡‡+ -
)
‡‡- .
;
‡‡. /
}
·· 	
void
„„ 
CreateBuffer
„„ 
(
„„ 
int
„„ 
width
„„ #
,
„„# $
int
„„% (
height
„„) /
)
„„/ 0
{
‰‰ 	
m_Buffer
ÂÂ 
=
ÂÂ 
new
ÂÂ 
ComputeBuffer
ÂÂ (
(
ÂÂ( )
width
ÂÂ) .
*
ÂÂ/ 0
height
ÂÂ1 7
,
ÂÂ7 8
sizeof
ÂÂ9 ?
(
ÂÂ? @
uint
ÂÂ@ D
)
ÂÂD E
<<
ÂÂF H
$num
ÂÂI J
)
ÂÂJ K
;
ÂÂK L
}
ÊÊ 	
void
ËË 
ComputeWaveform
ËË 
(
ËË 
RenderTexture
ËË *
source
ËË+ 1
)
ËË1 2
{
ÈÈ 	
if
ÍÍ 
(
ÍÍ 
m_Buffer
ÍÍ 
==
ÍÍ 
null
ÍÍ  
)
ÍÍ  !
{
ÎÎ 
CreateBuffer
ÏÏ 
(
ÏÏ 
source
ÏÏ #
.
ÏÏ# $
width
ÏÏ$ )
,
ÏÏ) *
source
ÏÏ+ 1
.
ÏÏ1 2
height
ÏÏ2 8
)
ÏÏ8 9
;
ÏÏ9 :
}
ÌÌ 
else
ÓÓ 
if
ÓÓ 
(
ÓÓ 
m_Buffer
ÓÓ 
.
ÓÓ 
count
ÓÓ #
!=
ÓÓ$ &
(
ÓÓ' (
source
ÓÓ( .
.
ÓÓ. /
width
ÓÓ/ 4
*
ÓÓ5 6
source
ÓÓ7 =
.
ÓÓ= >
height
ÓÓ> D
)
ÓÓD E
)
ÓÓE F
{
ÔÔ 
m_Buffer
 
.
 
Release
  
(
  !
)
! "
;
" #
CreateBuffer
ÒÒ 
(
ÒÒ 
source
ÒÒ #
.
ÒÒ# $
width
ÒÒ$ )
,
ÒÒ) *
source
ÒÒ+ 1
.
ÒÒ1 2
height
ÒÒ2 8
)
ÒÒ8 9
;
ÒÒ9 :
}
ÚÚ 
var
ÙÙ 
channels
ÙÙ 
=
ÙÙ 
m_MonitorSettings
ÙÙ ,
.
ÙÙ, -
	waveformY
ÙÙ- 6
?
ıı 
new
ıı 
Vector4
ıı 
(
ıı 
$num
ıı  
,
ıı  !
$num
ıı" $
,
ıı$ %
$num
ıı& (
,
ıı( )
$num
ıı* ,
)
ıı, -
:
ˆˆ 
new
ˆˆ 
Vector4
ˆˆ 
(
ˆˆ 
m_MonitorSettings
ˆˆ /
.
ˆˆ/ 0
	waveformR
ˆˆ0 9
?
ˆˆ: ;
$num
ˆˆ< >
:
ˆˆ? @
$num
ˆˆA C
,
ˆˆC D
m_MonitorSettings
ˆˆE V
.
ˆˆV W
	waveformG
ˆˆW `
?
ˆˆa b
$num
ˆˆc e
:
ˆˆf g
$num
ˆˆh j
,
ˆˆj k
m_MonitorSettings
ˆˆl }
.
ˆˆ} ~
	waveformBˆˆ~ á
?ˆˆà â
$numˆˆä å
:ˆˆç é
$numˆˆè ë
,ˆˆë í
$numˆˆì ï
)ˆˆï ñ
;ˆˆñ ó
var
¯¯ 
cs
¯¯ 
=
¯¯ 
m_ComputeShader
¯¯ $
;
¯¯$ %
int
˙˙ 
kernel
˙˙ 
=
˙˙ 
cs
˙˙ 
.
˙˙ 

FindKernel
˙˙ &
(
˙˙& '
$str
˙˙' 7
)
˙˙7 8
;
˙˙8 9
cs
˚˚ 
.
˚˚ 
	SetBuffer
˚˚ 
(
˚˚ 
kernel
˚˚ 
,
˚˚  
$str
˚˚! ,
,
˚˚, -
m_Buffer
˚˚. 6
)
˚˚6 7
;
˚˚7 8
cs
¸¸ 
.
¸¸ 
Dispatch
¸¸ 
(
¸¸ 
kernel
¸¸ 
,
¸¸ 
source
¸¸  &
.
¸¸& '
width
¸¸' ,
,
¸¸, -
$num
¸¸. /
,
¸¸/ 0
$num
¸¸1 2
)
¸¸2 3
;
¸¸3 4
kernel
˛˛ 
=
˛˛ 
cs
˛˛ 
.
˛˛ 

FindKernel
˛˛ "
(
˛˛" #
$str
˛˛# .
)
˛˛. /
;
˛˛/ 0
cs
ˇˇ 
.
ˇˇ 
	SetBuffer
ˇˇ 
(
ˇˇ 
kernel
ˇˇ 
,
ˇˇ  
$str
ˇˇ! ,
,
ˇˇ, -
m_Buffer
ˇˇ. 6
)
ˇˇ6 7
;
ˇˇ7 8
cs
ÄÄ 
.
ÄÄ 

SetTexture
ÄÄ 
(
ÄÄ 
kernel
ÄÄ  
,
ÄÄ  !
$str
ÄÄ" +
,
ÄÄ+ ,
source
ÄÄ- 3
)
ÄÄ3 4
;
ÄÄ4 5
cs
ÅÅ 
.
ÅÅ 
SetInt
ÅÅ 
(
ÅÅ 
$str
ÅÅ !
,
ÅÅ! "
GraphicsUtils
ÅÅ# 0
.
ÅÅ0 1 
isLinearColorSpace
ÅÅ1 C
?
ÅÅD E
$num
ÅÅF G
:
ÅÅH I
$num
ÅÅJ K
)
ÅÅK L
;
ÅÅL M
cs
ÇÇ 
.
ÇÇ 
	SetVector
ÇÇ 
(
ÇÇ 
$str
ÇÇ $
,
ÇÇ$ %
channels
ÇÇ& .
)
ÇÇ. /
;
ÇÇ/ 0
cs
ÉÉ 
.
ÉÉ 
Dispatch
ÉÉ 
(
ÉÉ 
kernel
ÉÉ 
,
ÉÉ 
source
ÉÉ  &
.
ÉÉ& '
width
ÉÉ' ,
,
ÉÉ, -
$num
ÉÉ. /
,
ÉÉ/ 0
$num
ÉÉ1 2
)
ÉÉ2 3
;
ÉÉ3 4
if
ÖÖ 
(
ÖÖ 
m_WaveformTexture
ÖÖ !
==
ÖÖ" $
null
ÖÖ% )
||
ÖÖ* ,
m_WaveformTexture
ÖÖ- >
.
ÖÖ> ?
width
ÖÖ? D
!=
ÖÖE G
source
ÖÖH N
.
ÖÖN O
width
ÖÖO T
||
ÖÖU W
m_WaveformTexture
ÖÖX i
.
ÖÖi j
height
ÖÖj p
!=
ÖÖq s
source
ÖÖt z
.
ÖÖz {
heightÖÖ{ Å
)ÖÖÅ Ç
{
ÜÜ 
GraphicsUtils
áá 
.
áá 
Destroy
áá %
(
áá% &
m_WaveformTexture
áá& 7
)
áá7 8
;
áá8 9
m_WaveformTexture
àà !
=
àà" #
new
àà$ '
RenderTexture
àà( 5
(
àà5 6
source
àà6 <
.
àà< =
width
àà= B
,
ààB C
source
ààD J
.
ààJ K
height
ààK Q
,
ààQ R
$num
ààS T
,
ààT U!
RenderTextureFormat
ààV i
.
àài j
ARGB32
ààj p
,
ààp q%
RenderTextureReadWriteààr à
.ààà â
Linearààâ è
)ààè ê
{
ââ 
	hideFlags
ää 
=
ää 
	HideFlags
ää  )
.
ää) *
DontSave
ää* 2
,
ää2 3
wrapMode
ãã 
=
ãã 
TextureWrapMode
ãã .
.
ãã. /
Clamp
ãã/ 4
,
ãã4 5

filterMode
åå 
=
åå  

FilterMode
åå! +
.
åå+ ,
Bilinear
åå, 4
}
çç 
;
çç 
}
éé 
if
êê 
(
êê 

m_Material
êê 
==
êê 
null
êê "
)
êê" #

m_Material
ëë 
=
ëë 
new
ëë  
Material
ëë! )
(
ëë) *
Shader
ëë* 0
.
ëë0 1
Find
ëë1 5
(
ëë5 6
$str
ëë6 _
)
ëë_ `
)
ëë` a
{
ëëb c
	hideFlags
ëëd m
=
ëën o
	HideFlags
ëëp y
.
ëëy z
DontSaveëëz Ç
}ëëÉ Ñ
;ëëÑ Ö

m_Material
ìì 
.
ìì 
	SetBuffer
ìì  
(
ìì  !
$str
ìì! ,
,
ìì, -
m_Buffer
ìì. 6
)
ìì6 7
;
ìì7 8

m_Material
îî 
.
îî 
	SetVector
îî  
(
îî  !
$str
îî! (
,
îî( )
new
îî* -
Vector2
îî. 5
(
îî5 6
m_WaveformTexture
îî6 G
.
îîG H
width
îîH M
,
îîM N
m_WaveformTexture
îîO `
.
îî` a
height
îîa g
)
îîg h
)
îîh i
;
îîi j

m_Material
ïï 
.
ïï 
	SetVector
ïï  
(
ïï  !
$str
ïï! ,
,
ïï, -
channels
ïï. 6
)
ïï6 7
;
ïï7 8
}
ññ 	
}
óó 
}òò Æ
¿D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\PostProcessingBehaviourEditor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
[ 
CustomEditor 
( 
typeof 
( #
PostProcessingBehaviour 0
)0 1
)1 2
]2 3
public 

class )
PostProcessingBehaviourEditor .
:/ 0
Editor1 7
{		 
SerializedProperty

 
	m_Profile

 $
;

$ %
public 
void 
OnEnable 
( 
) 
{ 	
	m_Profile 
= 
FindSetting #
(# $
($ %#
PostProcessingBehaviour% <
x= >
)> ?
=>@ B
xC D
.D E
profileE L
)L M
;M N
} 	
public 
override 
void 
OnInspectorGUI +
(+ ,
), -
{ 	
serializedObject 
. 
Update #
(# $
)$ %
;% &
EditorGUILayout 
. 
PropertyField )
() *
	m_Profile* 3
)3 4
;4 5
serializedObject 
. #
ApplyModifiedProperties 4
(4 5
)5 6
;6 7
} 	
SerializedProperty 
FindSetting &
<& '
T' (
,( )
TValue* 0
>0 1
(1 2

Expression2 <
<< =
Func= A
<A B
TB C
,C D
TValueE K
>K L
>L M
exprN R
)R S
{ 	
return 
serializedObject #
.# $
FindProperty$ 0
(0 1
ReflectionUtils1 @
.@ A
GetFieldPathA M
(M N
exprN R
)R S
)S T
;T U
} 	
} 
} ¸
∏D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\PostProcessingFactory.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
public 

class !
PostProcessingFactory &
{		 
[

 	
MenuItem

	 
(

 
$str

 9
,

9 :
priority

; C
=

D E
$num

F I
)

I J
]

J K
static 
void +
MenuCreatePostProcessingProfile 3
(3 4
)4 5
{ 	
var 
icon 
= 
EditorGUIUtility '
.' (
FindTexture( 3
(3 4
$str4 K
)K L
;L M
ProjectWindowUtil 
. 1
%StartNameEditingIfProjectWindowExists C
(C D
$numD E
,E F
ScriptableObjectG W
.W X
CreateInstanceX f
<f g*
DoCreatePostProcessingProfile	g Ñ
>
Ñ Ö
(
Ö Ü
)
Ü á
,
á à
$str
â ¨
,
¨ ≠
icon
Æ ≤
,
≤ ≥
null
¥ ∏
)
∏ π
;
π ∫
} 	
internal 
static !
PostProcessingProfile --
!CreatePostProcessingProfileAtPath. O
(O P
stringP V
pathW [
)[ \
{ 	
var 
profile 
= 
ScriptableObject *
.* +
CreateInstance+ 9
<9 :!
PostProcessingProfile: O
>O P
(P Q
)Q R
;R S
profile 
. 
name 
= 
Path 
.  
GetFileName  +
(+ ,
path, 0
)0 1
;1 2
profile 
. 
fog 
. 
enabled 
=  !
true" &
;& '
AssetDatabase 
. 
CreateAsset %
(% &
profile& -
,- .
path/ 3
)3 4
;4 5
return 
profile 
; 
} 	
} 
class 	)
DoCreatePostProcessingProfile
 '
:( )
EndNameEditAction* ;
{ 
public 
override 
void 
Action #
(# $
int$ '

instanceId( 2
,2 3
string4 :
pathName; C
,C D
stringE K
resourceFileL X
)X Y
{ 	!
PostProcessingProfile !
profile" )
=* +!
PostProcessingFactory, A
.A B-
!CreatePostProcessingProfileAtPathB c
(c d
pathNamed l
)l m
;m n
ProjectWindowUtil   
.   
ShowCreatedAsset   .
(  . /
profile  / 6
)  6 7
;  7 8
}!! 	
}"" 
}## Êà
∫D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\PostProcessingInspector.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{		 
[ 
CustomEditor 
( 
typeof 
( !
PostProcessingProfile .
). /
)/ 0
]0 1
public 

class #
PostProcessingInspector (
:) *
Editor+ 1
{ 
static 

GUIContent 
s_PreviewTitle (
=) *
new+ .

GUIContent/ 9
(9 :
$str: D
)D E
;E F!
PostProcessingProfile 
m_ConcreteTarget .
{ 	
get 
{ 
return 
target 
as  "!
PostProcessingProfile# 8
;8 9
}: ;
} 	
int 
m_CurrentMonitorID 
{ 	
get 
{ 
return 
m_ConcreteTarget )
.) *
monitors* 2
.2 3
currentMonitorID3 C
;C D
}E F
set 
{ 
m_ConcreteTarget "
." #
monitors# +
.+ ,
currentMonitorID, <
== >
value? D
;D E
}F G
} 	
List 
< !
PostProcessingMonitor "
>" #

m_Monitors$ .
;. /

GUIContent 
[ 
] 
m_MonitorNames #
;# $

Dictionary 
< %
PostProcessingModelEditor ,
,, -
PostProcessingModel. A
>A B
m_CustomEditorsC R
=S T
newU X

DictionaryY c
<c d%
PostProcessingModelEditord }
,} ~ 
PostProcessingModel	 í
>
í ì
(
ì î
)
î ï
;
ï ñ
public 
bool &
IsInteractivePreviewOpened .
{/ 0
get1 4
;4 5
private6 =
set> A
;A B
}C D
void!! 
OnEnable!! 
(!! 
)!! 
{"" 	
if## 
(## 
target## 
==## 
null## 
)## 
return$$ 
;$$ 
var'' 
assembly'' 
='' 
Assembly'' #
.''# $
GetAssembly''$ /
(''/ 0
typeof''0 6
(''6 7#
PostProcessingInspector''7 N
)''N O
)''O P
;''P Q
var)) 
editorTypes)) 
=)) 
assembly)) &
.))& '
GetTypes))' /
())/ 0
)))0 1
.** 
Where** 
(** 
x** 
=>** 
x** 
.** 
	IsDefined** '
(**' (
typeof**( .
(**. /.
"PostProcessingModelEditorAttribute**/ Q
)**Q R
,**R S
false**T Y
)**Y Z
)**Z [
;**[ \
var,, 
customEditors,, 
=,, 
new,,  #

Dictionary,,$ .
<,,. /
Type,,/ 3
,,,3 4%
PostProcessingModelEditor,,5 N
>,,N O
(,,O P
),,P Q
;,,Q R
foreach-- 
(-- 
var-- 
editor-- 
in--  "
editorTypes--# .
)--. /
{.. 
var// 
attr// 
=// 
(// .
"PostProcessingModelEditorAttribute// >
)//> ?
editor//? E
.//E F
GetCustomAttributes//F Y
(//Y Z
typeof//Z `
(//` a/
"PostProcessingModelEditorAttribute	//a É
)
//É Ñ
,
//Ñ Ö
false
//Ü ã
)
//ã å
[
//å ç
$num
//ç é
]
//é è
;
//è ê
var00 

effectType00 
=00  
attr00! %
.00% &
type00& *
;00* +
var11 
alwaysEnabled11 !
=11" #
attr11$ (
.11( )
alwaysEnabled11) 6
;116 7
var33 

editorInst33 
=33  
(33! "%
PostProcessingModelEditor33" ;
)33; <
	Activator33< E
.33E F
CreateInstance33F T
(33T U
editor33U [
)33[ \
;33\ ]

editorInst44 
.44 
alwaysEnabled44 (
=44) *
alwaysEnabled44+ 8
;448 9

editorInst55 
.55 
profile55 "
=55# $
target55% +
as55, .!
PostProcessingProfile55/ D
;55D E

editorInst66 
.66 
	inspector66 $
=66% &
this66' +
;66+ ,
customEditors77 
.77 
Add77 !
(77! "

effectType77" ,
,77, -

editorInst77. 8
)778 9
;779 :
}88 
var;; 
baseType;; 
=;; 
target;; !
.;;! "
GetType;;" )
(;;) *
);;* +
;;;+ ,
var<< 
property<< 
=<< 
serializedObject<< +
.<<+ ,
GetIterator<<, 7
(<<7 8
)<<8 9
;<<9 :
while>> 
(>> 
property>> 
.>> 
Next>>  
(>>  !
true>>! %
)>>% &
)>>& '
{?? 
if@@ 
(@@ 
!@@ 
property@@ 
.@@ 
hasChildren@@ )
)@@) *
continueAA 
;AA 
varCC 
typeCC 
=CC 
baseTypeCC #
;CC# $
varDD 
	srcObjectDD 
=DD 
ReflectionUtilsDD  /
.DD/ 0!
GetFieldValueFromPathDD0 E
(DDE F
serializedObjectDDF V
.DDV W
targetObjectDDW c
,DDc d
refDDe h
typeDDi m
,DDm n
propertyDDo w
.DDw x
propertyPath	DDx Ñ
)
DDÑ Ö
;
DDÖ Ü
ifFF 
(FF 
	srcObjectFF 
==FF  
nullFF! %
)FF% &
continueGG 
;GG %
PostProcessingModelEditorII )
editorII* 0
;II0 1
ifJJ 
(JJ 
customEditorsJJ !
.JJ! "
TryGetValueJJ" -
(JJ- .
typeJJ. 2
,JJ2 3
outJJ4 7
editorJJ8 >
)JJ> ?
)JJ? @
{KK 
varLL 
effectLL 
=LL  
(LL! "
PostProcessingModelLL" 5
)LL5 6
	srcObjectLL6 ?
;LL? @
ifNN 
(NN 
editorNN 
.NN 
alwaysEnabledNN ,
)NN, -
effectOO 
.OO 
enabledOO &
=OO' (
editorOO) /
.OO/ 0
alwaysEnabledOO0 =
;OO= >
m_CustomEditorsQQ #
.QQ# $
AddQQ$ '
(QQ' (
editorQQ( .
,QQ. /
effectQQ0 6
)QQ6 7
;QQ7 8
editorRR 
.RR 
targetRR !
=RR" #
effectRR$ *
;RR* +
editorSS 
.SS 
serializedPropertySS -
=SS. /
propertySS0 8
.SS8 9
CopySS9 =
(SS= >
)SS> ?
;SS? @
editorTT 
.TT 
OnPreEnableTT &
(TT& '
)TT' (
;TT( )
}UU 
}VV 

m_MonitorsYY 
=YY 
newYY 
ListYY !
<YY! "!
PostProcessingMonitorYY" 7
>YY7 8
(YY8 9
)YY9 :
;YY: ;
var[[ 
monitors[[ 
=[[ 
new[[ 
List[[ #
<[[# $!
PostProcessingMonitor[[$ 9
>[[9 :
{\\ 
new]] 
HistogramMonitor]] $
(]]$ %
)]]% &
,]]& '
new^^ 
WaveformMonitor^^ #
(^^# $
)^^$ %
,^^% &
new__ 
ParadeMonitor__ !
(__! "
)__" #
,__# $
new`` 
VectorscopeMonitor`` &
(``& '
)``' (
}aa 
;aa 
varcc 
monitorNamescc 
=cc 
newcc "
Listcc# '
<cc' (

GUIContentcc( 2
>cc2 3
(cc3 4
)cc4 5
;cc5 6
foreachee 
(ee 
varee 
monitoree  
inee! #
monitorsee$ ,
)ee, -
{ff 
ifgg 
(gg 
monitorgg 
.gg 
IsSupportedgg '
(gg' (
)gg( )
)gg) *
{hh 
monitorii 
.ii 
Initii  
(ii  !
m_ConcreteTargetii! 1
.ii1 2
monitorsii2 :
,ii: ;
thisii< @
)ii@ A
;iiA B

m_Monitorsjj 
.jj 
Addjj "
(jj" #
monitorjj# *
)jj* +
;jj+ ,
monitorNameskk  
.kk  !
Addkk! $
(kk$ %
monitorkk% ,
.kk, -
GetMonitorTitlekk- <
(kk< =
)kk= >
)kk> ?
;kk? @
}ll 
}mm 
m_MonitorNamesoo 
=oo 
monitorNamesoo )
.oo) *
ToArrayoo* 1
(oo1 2
)oo2 3
;oo3 4
ifqq 
(qq 

m_Monitorsqq 
.qq 
Countqq  
>qq! "
$numqq# $
)qq$ %
m_ConcreteTargetrr  
.rr  !
monitorsrr! )
.rr) * 
onFrameEndEditorOnlyrr* >
=rr? @

OnFrameEndrrA K
;rrK L
}ss 	
voiduu 
	OnDisableuu 
(uu 
)uu 
{vv 	
ifww 
(ww 
m_CustomEditorsww 
!=ww  "
nullww# '
)ww' (
{xx 
foreachyy 
(yy 
varyy 
editoryy #
inyy$ &
m_CustomEditorsyy' 6
.yy6 7
Keysyy7 ;
)yy; <
editorzz 
.zz 
	OnDisablezz $
(zz$ %
)zz% &
;zz& '
m_CustomEditors|| 
.||  
Clear||  %
(||% &
)||& '
;||' (
}}} 
if 
( 

m_Monitors 
!= 
null "
)" #
{
ÄÄ 
foreach
ÅÅ 
(
ÅÅ 
var
ÅÅ 
monitor
ÅÅ $
in
ÅÅ% '

m_Monitors
ÅÅ( 2
)
ÅÅ2 3
monitor
ÇÇ 
.
ÇÇ 
Dispose
ÇÇ #
(
ÇÇ# $
)
ÇÇ$ %
;
ÇÇ% &

m_Monitors
ÑÑ 
.
ÑÑ 
Clear
ÑÑ  
(
ÑÑ  !
)
ÑÑ! "
;
ÑÑ" #
}
ÖÖ 
if
áá 
(
áá 
m_ConcreteTarget
áá  
!=
áá! #
null
áá$ (
)
áá( )
m_ConcreteTarget
àà  
.
àà  !
monitors
àà! )
.
àà) *"
onFrameEndEditorOnly
àà* >
=
àà? @
null
ààA E
;
ààE F
}
ââ 	
void
ãã 

OnFrameEnd
ãã 
(
ãã 
RenderTexture
ãã %
source
ãã& ,
)
ãã, -
{
åå 	
if
çç 
(
çç 
!
çç (
IsInteractivePreviewOpened
çç +
)
çç+ ,
return
éé 
;
éé 
if
êê 
(
êê  
m_CurrentMonitorID
êê "
<
êê# $

m_Monitors
êê% /
.
êê/ 0
Count
êê0 5
)
êê5 6

m_Monitors
ëë 
[
ëë  
m_CurrentMonitorID
ëë -
]
ëë- .
.
ëë. /
OnFrameData
ëë/ :
(
ëë: ;
source
ëë; A
)
ëëA B
;
ëëB C(
IsInteractivePreviewOpened
ìì &
=
ìì' (
false
ìì) .
;
ìì. /
}
îî 	
public
ññ 
override
ññ 
void
ññ 
OnInspectorGUI
ññ +
(
ññ+ ,
)
ññ, -
{
óó 	
serializedObject
òò 
.
òò 
Update
òò #
(
òò# $
)
òò$ %
;
òò% &
var
õõ 
e
õõ 
=
õõ 
Event
õõ 
.
õõ 
current
õõ !
;
õõ! "
if
úú 
(
úú 
e
úú 
.
úú 
type
úú 
==
úú 
	EventType
úú #
.
úú# $
ValidateCommand
úú$ 3
&&
úú4 6
e
úú7 8
.
úú8 9
commandName
úú9 D
==
úúE G
$str
úúH [
)
úú[ \
{
ùù 
foreach
ûû 
(
ûû 
var
ûû 
editor
ûû #
in
ûû$ &
m_CustomEditors
ûû' 6
)
ûû6 7
editor
üü 
.
üü 
Value
üü  
.
üü  !

OnValidate
üü! +
(
üü+ ,
)
üü, -
;
üü- .
}
†† 
if
¢¢ 
(
¢¢ 
!
¢¢ 
m_ConcreteTarget
¢¢ !
.
¢¢! "

debugViews
¢¢" ,
.
¢¢, -
IsModeActive
¢¢- 9
(
¢¢9 :$
BuiltinDebugViewsModel
¢¢: P
.
¢¢P Q
Mode
¢¢Q U
.
¢¢U V
None
¢¢V Z
)
¢¢Z [
)
¢¢[ \
EditorGUILayout
££ 
.
££  
HelpBox
££  '
(
££' (
$str
££( |
,
££| }
MessageType££~ â
.££â ä
Info££ä é
)££é è
;££è ê
foreach
•• 
(
•• 
var
•• 
editor
•• 
in
••  "
m_CustomEditors
••# 2
)
••2 3
{
¶¶ 
	EditorGUI
ßß 
.
ßß 
BeginChangeCheck
ßß *
(
ßß* +
)
ßß+ ,
;
ßß, -
editor
©© 
.
©© 
Key
©© 
.
©© 
OnGUI
©©  
(
©©  !
)
©©! "
;
©©" #
if
´´ 
(
´´ 
	EditorGUI
´´ 
.
´´ 
EndChangeCheck
´´ ,
(
´´, -
)
´´- .
)
´´. /
editor
¨¨ 
.
¨¨ 
Value
¨¨  
.
¨¨  !

OnValidate
¨¨! +
(
¨¨+ ,
)
¨¨, -
;
¨¨- .
}
≠≠ 
serializedObject
ØØ 
.
ØØ %
ApplyModifiedProperties
ØØ 4
(
ØØ4 5
)
ØØ5 6
;
ØØ6 7
}
∞∞ 	
public
≤≤ 
override
≤≤ 

GUIContent
≤≤ "
GetPreviewTitle
≤≤# 2
(
≤≤2 3
)
≤≤3 4
{
≥≥ 	
return
¥¥ 
s_PreviewTitle
¥¥ !
;
¥¥! "
}
µµ 	
public
∑∑ 
override
∑∑ 
bool
∑∑ 
HasPreviewGUI
∑∑ *
(
∑∑* +
)
∑∑+ ,
{
∏∏ 	
return
ππ 
GraphicsUtils
ππ  
.
ππ  !
supportsDX11
ππ! -
&&
ππ. 0

m_Monitors
ππ1 ;
.
ππ; <
Count
ππ< A
>
ππB C
$num
ππD E
;
ππE F
}
∫∫ 	
public
ºº 
override
ºº 
void
ºº 
OnPreviewSettings
ºº .
(
ºº. /
)
ºº/ 0
{
ΩΩ 	
using
ææ 
(
ææ 
new
ææ 
EditorGUILayout
ææ &
.
ææ& '
HorizontalScope
ææ' 6
(
ææ6 7
)
ææ7 8
)
ææ8 9
{
øø 
if
¿¿ 
(
¿¿  
m_CurrentMonitorID
¿¿ &
<
¿¿' (

m_Monitors
¿¿) 3
.
¿¿3 4
Count
¿¿4 9
)
¿¿9 :

m_Monitors
¡¡ 
[
¡¡  
m_CurrentMonitorID
¡¡ 1
]
¡¡1 2
.
¡¡2 3
OnMonitorSettings
¡¡3 D
(
¡¡D E
)
¡¡E F
;
¡¡F G
	GUILayout
√√ 
.
√√ 
Space
√√ 
(
√√  
$num
√√  !
)
√√! "
;
√√" # 
m_CurrentMonitorID
ƒƒ "
=
ƒƒ# $
EditorGUILayout
ƒƒ% 4
.
ƒƒ4 5
Popup
ƒƒ5 :
(
ƒƒ: ; 
m_CurrentMonitorID
ƒƒ; M
,
ƒƒM N
m_MonitorNames
ƒƒO ]
,
ƒƒ] ^
FxStyles
ƒƒ_ g
.
ƒƒg h
preDropdown
ƒƒh s
,
ƒƒs t
	GUILayout
ƒƒu ~
.
ƒƒ~ 
MaxWidthƒƒ á
(ƒƒá à
$numƒƒà å
)ƒƒå ç
)ƒƒç é
;ƒƒé è
}
≈≈ 
}
∆∆ 	
public
»» 
override
»» 
void
»» %
OnInteractivePreviewGUI
»» 4
(
»»4 5
Rect
»»5 9
r
»»: ;
,
»»; <
GUIStyle
»»= E

background
»»F P
)
»»P Q
{
…… 	(
IsInteractivePreviewOpened
   &
=
  ' (
true
  ) -
;
  - .
if
ÃÃ 
(
ÃÃ  
m_CurrentMonitorID
ÃÃ "
<
ÃÃ# $

m_Monitors
ÃÃ% /
.
ÃÃ/ 0
Count
ÃÃ0 5
)
ÃÃ5 6

m_Monitors
ÕÕ 
[
ÕÕ  
m_CurrentMonitorID
ÕÕ -
]
ÕÕ- .
.
ÕÕ. /
OnMonitorGUI
ÕÕ/ ;
(
ÕÕ; <
r
ÕÕ< =
)
ÕÕ= >
;
ÕÕ> ?
}
ŒŒ 	
}
œœ 
}–– ˙/
ºD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\PostProcessingModelEditor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
public 

class %
PostProcessingModelEditor *
{		 
public

 
PostProcessingModel

 "
target

# )
{

* +
get

, /
;

/ 0
internal

1 9
set

: =
;

= >
}

? @
public 
SerializedProperty !
serializedProperty" 4
{5 6
get7 :
;: ;
internal< D
setE H
;H I
}J K
	protected 
SerializedProperty $
m_SettingsProperty% 7
;7 8
	protected 
SerializedProperty $
m_EnabledProperty% 6
;6 7
internal 
bool 
alwaysEnabled #
=$ %
false& +
;+ ,
internal !
PostProcessingProfile &
profile' .
;. /
internal #
PostProcessingInspector (
	inspector) 2
;2 3
internal 
void 
OnPreEnable !
(! "
)" #
{ 	
m_SettingsProperty 
=  
serializedProperty! 3
.3 4 
FindPropertyRelative4 H
(H I
$strI U
)U V
;V W
m_EnabledProperty 
= 
serializedProperty  2
.2 3 
FindPropertyRelative3 G
(G H
$strH S
)S T
;T U
OnEnable 
( 
) 
; 
} 	
public 
virtual 
void 
OnEnable $
($ %
)% &
{ 	
}	 

public 
virtual 
void 
	OnDisable %
(% &
)& '
{   	
}  	 

internal"" 
void"" 
OnGUI"" 
("" 
)"" 
{## 	
	GUILayout$$ 
.$$ 
Space$$ 
($$ 
$num$$ 
)$$ 
;$$ 
var&& 
display&& 
=&& 
alwaysEnabled&& '
?'' 
EditorGUIHelper'' !
.''! "
Header''" (
(''( )
serializedProperty'') ;
.''; <
displayName''< G
,''G H
m_SettingsProperty''I [
,''[ \
Reset''] b
)''b c
:(( 
EditorGUIHelper(( !
.((! "
Header((" (
(((( )
serializedProperty(() ;
.((; <
displayName((< G
,((G H
m_SettingsProperty((I [
,(([ \
m_EnabledProperty((] n
,((n o
Reset((p u
)((u v
;((v w
if** 
(** 
display** 
)** 
{++ 
	EditorGUI,, 
.,, 
indentLevel,, %
++,,% '
;,,' (
using-- 
(-- 
new-- 
	EditorGUI-- $
.--$ %
DisabledGroupScope--% 7
(--7 8
!--8 9
m_EnabledProperty--9 J
.--J K
	boolValue--K T
)--T U
)--U V
{.. 
OnInspectorGUI// "
(//" #
)//# $
;//$ %
}00 
	EditorGUI11 
.11 
indentLevel11 %
--11% '
;11' (
}22 
}33 	
void55 
Reset55 
(55 
)55 
{66 	
var77 
obj77 
=77 
serializedProperty77 (
.77( )
serializedObject77) 9
;779 :
Undo88 
.88 
RecordObject88 
(88 
obj88 !
.88! "
targetObject88" .
,88. /
$str880 7
)887 8
;888 9
target99 
.99 
Reset99 
(99 
)99 
;99 
EditorUtility:: 
.:: 
SetDirty:: "
(::" #
obj::# &
.::& '
targetObject::' 3
)::3 4
;::4 5
};; 	
public== 
virtual== 
void== 
OnInspectorGUI== *
(==* +
)==+ ,
{>> 	
}>>	 

public@@ 
void@@ 
Repaint@@ 
(@@ 
)@@ 
{AA 	
	inspectorBB 
.BB 
RepaintBB 
(BB 
)BB 
;BB  
}CC 	
	protectedEE 
SerializedPropertyEE $
FindSettingEE% 0
<EE0 1
TEE1 2
,EE2 3
TValueEE4 :
>EE: ;
(EE; <

ExpressionEE< F
<EEF G
FuncEEG K
<EEK L
TEEL M
,EEM N
TValueEEO U
>EEU V
>EEV W
exprEEX \
)EE\ ]
{FF 	
returnGG 
m_SettingsPropertyGG %
.GG% & 
FindPropertyRelativeGG& :
(GG: ;
ReflectionUtilsGG; J
.GGJ K
GetFieldPathGGK W
(GGW X
exprGGX \
)GG\ ]
)GG] ^
;GG^ _
}HH 	
	protectedJJ 
SerializedPropertyJJ $
FindSettingJJ% 0
<JJ0 1
TJJ1 2
,JJ2 3
TValueJJ4 :
>JJ: ;
(JJ; <
SerializedPropertyJJ< N
propJJO S
,JJS T

ExpressionJJU _
<JJ_ `
FuncJJ` d
<JJd e
TJJe f
,JJf g
TValueJJh n
>JJn o
>JJo p
exprJJq u
)JJu v
{KK 	
returnLL 
propLL 
.LL  
FindPropertyRelativeLL ,
(LL, -
ReflectionUtilsLL- <
.LL< =
GetFieldPathLL= I
(LLI J
exprLLJ N
)LLN O
)LLO P
;LLP Q
}MM 	
}NN 
}OO “
∏D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\PostProcessingMonitor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
public 

abstract 
class !
PostProcessingMonitor /
:0 1
IDisposable2 =
{		 
	protected

 
MonitorSettings

 !
m_MonitorSettings

" 3
;

3 4
	protected #
PostProcessingInspector )
m_BaseEditor* 6
;6 7
public 
void 
Init 
( 
MonitorSettings (
monitorSettings) 8
,8 9#
PostProcessingInspector: Q

baseEditorR \
)\ ]
{ 	
m_MonitorSettings 
= 
monitorSettings  /
;/ 0
m_BaseEditor 
= 

baseEditor %
;% &
} 	
public 
abstract 
bool 
IsSupported (
(( )
)) *
;* +
public 
abstract 

GUIContent "
GetMonitorTitle# 2
(2 3
)3 4
;4 5
public 
virtual 
void 
OnMonitorSettings -
(- .
). /
{ 	
}	 

public 
abstract 
void 
OnMonitorGUI )
() *
Rect* .
r/ 0
)0 1
;1 2
public 
virtual 
void 
OnFrameData '
(' (
RenderTexture( 5
source6 <
)< =
{ 	
}	 

public 
virtual 
void 
Dispose #
(# $
)$ %
{   	
}  	 

}!! 
}"" ﬁ
øD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\PropertyDrawers\GetSetDrawer.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
[  
CustomPropertyDrawer 
( 
typeof  
(  !
GetSetAttribute! 0
)0 1
)1 2
]2 3
sealed 

class 
GetSetDrawer 
: 
PropertyDrawer  .
{ 
public		 
override		 
void		 
OnGUI		 "
(		" #
Rect		# '
position		( 0
,		0 1
SerializedProperty		2 D
property		E M
,		M N

GUIContent		O Y
label		Z _
)		_ `
{

 	
var 
	attribute 
= 
( 
GetSetAttribute ,
), -
base- 1
.1 2
	attribute2 ;
;; <
	EditorGUI 
. 
BeginChangeCheck &
(& '
)' (
;( )
	EditorGUI 
. 
PropertyField #
(# $
position$ ,
,, -
property. 6
,6 7
label8 =
)= >
;> ?
if 
( 
	EditorGUI 
. 
EndChangeCheck (
(( )
)) *
)* +
{ 
	attribute 
. 
dirty 
=  !
true" &
;& '
} 
else 
if 
( 
	attribute 
. 
dirty $
)$ %
{ 
var 
parent 
= 
ReflectionUtils ,
., -
GetParentObject- <
(< =
property= E
.E F
propertyPathF R
,R S
propertyT \
.\ ]
serializedObject] m
.m n
targetObjectn z
)z {
;{ |
var 
type 
= 
parent !
.! "
GetType" )
() *
)* +
;+ ,
var 
info 
= 
type 
.  
GetProperty  +
(+ ,
	attribute, 5
.5 6
name6 :
): ;
;; <
if 
( 
info 
== 
null  
)  !
Debug 
. 
LogError "
(" #
$str# =
+> ?
	attribute@ I
.I J
nameJ N
+O P
$strQ U
)U V
;V W
else 
info 
. 
SetValue !
(! "
parent" (
,( )
	fieldInfo* 3
.3 4
GetValue4 <
(< =
parent= C
)C D
,D E
nullF J
)J K
;K L
	attribute   
.   
dirty   
=    !
false  " '
;  ' (
}!! 
}"" 	
}## 
}$$ °
ºD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\PropertyDrawers\MinDrawer.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
[  
CustomPropertyDrawer 
( 
typeof  
(  !
UnityEngine! ,
., -
PostProcessing- ;
.; <
MinAttribute< H
)H I
)I J
]J K
sealed 

class 
	MinDrawer 
: 
PropertyDrawer +
{ 
public		 
override		 
void		 
OnGUI		 "
(		" #
Rect		# '
position		( 0
,		0 1
SerializedProperty		2 D
property		E M
,		M N

GUIContent		O Y
label		Z _
)		_ `
{

 	
UnityEngine 
. 
PostProcessing &
.& '
MinAttribute' 3
	attribute4 =
=> ?
(@ A
UnityEngineA L
.L M
PostProcessingM [
.[ \
MinAttribute\ h
)h i
basei m
.m n
	attributen w
;w x
if 
( 
property 
. 
propertyType %
==& ("
SerializedPropertyType) ?
.? @
Integer@ G
)G H
{ 
int 
v 
= 
	EditorGUI !
.! "
IntField" *
(* +
position+ 3
,3 4
label5 :
,: ;
property< D
.D E
intValueE M
)M N
;N O
property 
. 
intValue !
=" #
($ %
int% (
)( )
Mathf) .
.. /
Max/ 2
(2 3
v3 4
,4 5
	attribute6 ?
.? @
min@ C
)C D
;D E
} 
else 
if 
( 
property 
. 
propertyType *
==+ -"
SerializedPropertyType. D
.D E
FloatE J
)J K
{ 
float 
v 
= 
	EditorGUI #
.# $

FloatField$ .
(. /
position/ 7
,7 8
label9 >
,> ?
property@ H
.H I

floatValueI S
)S T
;T U
property 
. 

floatValue #
=$ %
Mathf& +
.+ ,
Max, /
(/ 0
v0 1
,1 2
	attribute3 <
.< =
min= @
)@ A
;A B
} 
else 
{ 
	EditorGUI 
. 

LabelField $
($ %
position% -
,- .
label/ 4
.4 5
text5 9
,9 :
$str; W
)W X
;X Y
} 
} 	
} 
} ÜÚ
«D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\PropertyDrawers\TrackballGroupDrawer.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
[  
CustomPropertyDrawer 
( 
typeof  
(  !#
TrackballGroupAttribute! 8
)8 9
)9 :
]: ;
sealed		 

class		  
TrackballGroupDrawer		 %
:		& '
PropertyDrawer		( 6
{

 
static 
Material 

s_Material "
;" #
const 
int 
k_MinWheelSize  
=! "
$num# %
;% &
const 
int 
k_MaxWheelSize  
=! "
$num# &
;& '
bool 
m_ResetState 
; 
static 

Dictionary 
< 
string  
,  !

MethodInfo" ,
>, -
m_TrackballMethods. @
=A B
newC F

DictionaryG Q
<Q R
stringR X
,X Y

MethodInfoZ d
>d e
(e f
)f g
;g h
internal 
static 
int 
m_Size "
{ 	
get 
{ 
int 
size 
= 
Mathf  
.  !

FloorToInt! +
(+ ,
EditorGUIUtility, <
.< =
currentViewWidth= M
/N O
$numP R
)R S
-T U
$numV X
;X Y
size 
= 
Mathf 
. 
Clamp "
(" #
size# '
,' (
k_MinWheelSize) 7
,7 8
k_MaxWheelSize9 G
)G H
;H I
return 
size 
; 
} 
} 	
public 
override 
void 
OnGUI "
(" #
Rect# '
position( 0
,0 1
SerializedProperty2 D
propertyE M
,M N

GUIContentO Y
labelZ _
)_ `
{   	
if!! 
(!! 

s_Material!! 
==!! 
null!! "
)!!" #

s_Material"" 
="" 
new""  
Material""! )
("") *
Shader""* 0
.""0 1
Find""1 5
(""5 6
$str""6 S
)""S T
)""T U
{""V W
	hideFlags""X a
=""b c
	HideFlags""d m
.""m n
HideAndDontSave""n }
}""~ 
;	"" Ä
position$$ 
=$$ 
new$$ 
Rect$$ 
($$  
position$$  (
.$$( )
x$$) *
,$$* +
position$$, 4
.$$4 5
y$$5 6
,$$6 7
position$$8 @
.$$@ A
width$$A F
/$$G H
$num$$I K
,$$K L
position$$M U
.$$U V
height$$V \
)$$\ ]
;$$] ^
int%% 
size%% 
=%% 
m_Size%% 
;%% 
position&& 
.&& 
x&& 
+=&& 
$num&& 
;&& 
var(( 

enumerator(( 
=(( 
property(( %
.((% &
GetEnumerator((& 3
(((3 4
)((4 5
;((5 6
while)) 
()) 

enumerator)) 
.)) 
MoveNext)) &
())& '
)))' (
)))( )
{** 
var++ 
prop++ 
=++ 

enumerator++ %
.++% &
Current++& -
as++. 0
SerializedProperty++1 C
;++C D
if,, 
(,, 
prop,, 
==,, 
null,,  
||,,! #
prop,,$ (
.,,( )
propertyType,,) 5
!=,,6 8"
SerializedPropertyType,,9 O
.,,O P
Color,,P U
),,U V
continue-- 
;-- 

OnWheelGUI// 
(// 
position// #
,//# $
size//% )
,//) *
prop//+ /
./// 0
Copy//0 4
(//4 5
)//5 6
)//6 7
;//7 8
position00 
.00 
x00 
+=00 
position00 &
.00& '
width00' ,
;00, -
}11 
}22 	
void44 

OnWheelGUI44 
(44 
Rect44 
position44 %
,44% &
int44' *
size44+ /
,44/ 0
SerializedProperty441 C
property44D L
)44L M
{55 	
if66 
(66 
Event66 
.66 
current66 
.66 
type66 "
==66# %
	EventType66& /
.66/ 0
Layout660 6
)666 7
return77 
;77 
var99 
value99 
=99 
property99  
.99  !

colorValue99! +
;99+ ,
float:: 
offset:: 
=:: 
value::  
.::  !
a::! "
;::" #
var<< 
wheelDrawArea<< 
=<< 
position<<  (
;<<( )
wheelDrawArea== 
.== 
height==  
===! "
size==# '
;==' (
if?? 
(?? 
wheelDrawArea?? 
.?? 
width?? #
>??$ %
wheelDrawArea??& 3
.??3 4
height??4 :
)??: ;
{@@ 
wheelDrawAreaAA 
.AA 
xAA 
+=AA  "
(AA# $
wheelDrawAreaAA$ 1
.AA1 2
widthAA2 7
-AA8 9
wheelDrawAreaAA: G
.AAG H
heightAAH N
)AAN O
/AAP Q
$numAAR V
;AAV W
wheelDrawAreaBB 
.BB 
widthBB #
=BB$ %
positionBB& .
.BB. /
heightBB/ 5
;BB5 6
}CC 
wheelDrawAreaEE 
.EE 
widthEE 
=EE  !
wheelDrawAreaEE" /
.EE/ 0
heightEE0 6
;EE6 7
floatGG 
hsizeGG 
=GG 
sizeGG 
/GG  
$numGG! #
;GG# $
floatHH 
radiusHH 
=HH 
$numHH  
*HH! "
sizeHH# '
;HH' (
Vector3II 
hsvII 
;II 
ColorJJ 
.JJ 
RGBToHSVJJ 
(JJ 
valueJJ  
,JJ  !
outJJ" %
hsvJJ& )
.JJ) *
xJJ* +
,JJ+ ,
outJJ- 0
hsvJJ1 4
.JJ4 5
yJJ5 6
,JJ6 7
outJJ8 ;
hsvJJ< ?
.JJ? @
zJJ@ A
)JJA B
;JJB C
ifLL 
(LL 
EventLL 
.LL 
currentLL 
.LL 
typeLL "
==LL# %
	EventTypeLL& /
.LL/ 0
RepaintLL0 7
)LL7 8
{MM 
floatNN 
scaleNN 
=NN 
EditorGUIUtilityNN .
.NN. /
pixelsPerPointNN/ =
;NN= >
varQQ 
oldRTQQ 
=QQ 
RenderTextureQQ )
.QQ) *
activeQQ* 0
;QQ0 1
varRR 
rtRR 
=RR 
RenderTextureRR &
.RR& '
GetTemporaryRR' 3
(RR3 4
(RR4 5
intRR5 8
)RR8 9
(RR9 :
sizeRR: >
*RR? @
scaleRRA F
)RRF G
,RRG H
(RRI J
intRRJ M
)RRM N
(RRN O
sizeRRO S
*RRT U
scaleRRV [
)RR[ \
,RR\ ]
$numRR^ _
,RR_ `
RenderTextureFormatRRa t
.RRt u
ARGB32RRu {
,RR{ |#
RenderTextureReadWrite	RR} ì
.
RRì î
Linear
RRî ö
)
RRö õ
;
RRõ ú

s_MaterialSS 
.SS 
SetFloatSS #
(SS# $
$strSS$ -
,SS- .
offsetSS/ 5
)SS5 6
;SS6 7

s_MaterialTT 
.TT 
SetFloatTT #
(TT# $
$strTT$ 4
,TT4 5
GUITT6 9
.TT9 :
enabledTT: A
?TTB C
$numTTD F
:TTG H
$numTTI M
)TTM N
;TTN O

s_MaterialUU 
.UU 
	SetVectorUU $
(UU$ %
$strUU% 2
,UU2 3
newUU4 7
Vector2UU8 ?
(UU? @
sizeUU@ D
*UUE F
scaleUUG L
,UUL M
sizeUUN R
*UUS T
scaleUUU Z
/UU[ \
$numUU] _
)UU_ `
)UU` a
;UUa b
GraphicsVV 
.VV 
BlitVV 
(VV 
nullVV "
,VV" #
rtVV$ &
,VV& '

s_MaterialVV( 2
,VV2 3
EditorGUIUtilityVV4 D
.VVD E
	isProSkinVVE N
?VVO P
$numVVQ R
:VVS T
$numVVU V
)VVV W
;VVW X
RenderTextureWW 
.WW 
activeWW $
=WW% &
oldRTWW' ,
;WW, -
GUIYY 
.YY 
DrawTextureYY 
(YY  
wheelDrawAreaYY  -
,YY- .
rtYY/ 1
)YY1 2
;YY2 3
RenderTextureZZ 
.ZZ 
ReleaseTemporaryZZ .
(ZZ. /
rtZZ/ 1
)ZZ1 2
;ZZ2 3
var]] 
thumbPos]] 
=]] 
Vector2]] &
.]]& '
zero]]' +
;]]+ ,
float^^ 
theta^^ 
=^^ 
hsv^^ !
.^^! "
x^^" #
*^^$ %
(^^& '
Mathf^^' ,
.^^, -
PI^^- /
*^^0 1
$num^^2 4
)^^4 5
;^^5 6
float__ 
len__ 
=__ 
hsv__ 
.__  
y__  !
*__" #
radius__$ *
;__* +
thumbPos`` 
.`` 
x`` 
=`` 
Mathf`` "
.``" #
Cos``# &
(``& '
theta``' ,
+``- .
(``/ 0
Mathf``0 5
.``5 6
PI``6 8
/``9 :
$num``; =
)``= >
)``> ?
;``? @
thumbPosaa 
.aa 
yaa 
=aa 
Mathfaa "
.aa" #
Sinaa# &
(aa& '
thetaaa' ,
-aa- .
(aa/ 0
Mathfaa0 5
.aa5 6
PIaa6 8
/aa9 :
$numaa; =
)aa= >
)aa> ?
;aa? @
thumbPosbb 
*=bb 
lenbb 
;bb  
varcc 
	thumbSizecc 
=cc 
FxStylescc  (
.cc( )
wheelThumbSizecc) 7
;cc7 8
vardd 

thumbSizeHdd 
=dd  
	thumbSizedd! *
/dd+ ,
$numdd- /
;dd/ 0
FxStylesee 
.ee 

wheelThumbee #
.ee# $
Drawee$ (
(ee( )
newee) ,
Rectee- 1
(ee1 2
wheelDrawAreaee2 ?
.ee? @
xee@ A
+eeB C
hsizeeeD I
+eeJ K
thumbPoseeL T
.eeT U
xeeU V
-eeW X

thumbSizeHeeY c
.eec d
xeed e
,eee f
wheelDrawAreaeeg t
.eet u
yeeu v
+eew x
hsizeeey ~
+	ee Ä
thumbPos
eeÅ â
.
eeâ ä
y
eeä ã
-
eeå ç

thumbSizeH
eeé ò
.
eeò ô
y
eeô ö
,
eeö õ
	thumbSize
eeú •
.
ee• ¶
x
ee¶ ß
,
eeß ®
	thumbSize
ee© ≤
.
ee≤ ≥
y
ee≥ ¥
)
ee¥ µ
,
eeµ ∂
false
ee∑ º
,
eeº Ω
false
eeæ √
,
ee√ ƒ
false
ee≈  
,
ee  À
false
eeÃ —
)
ee— “
;
ee“ ”
}ff 
varhh 
boundshh 
=hh 
wheelDrawAreahh &
;hh& '
boundsii 
.ii 
xii 
+=ii 
hsizeii 
-ii 
radiusii  &
;ii& '
boundsjj 
.jj 
yjj 
+=jj 
hsizejj 
-jj 
radiusjj  &
;jj& '
boundskk 
.kk 
widthkk 
=kk 
boundskk !
.kk! "
heightkk" (
=kk) *
radiuskk+ 1
*kk2 3
$numkk4 6
;kk6 7
hsvll 
=ll 
GetInputll 
(ll 
boundsll !
,ll! "
hsvll# &
,ll& '
radiusll( .
)ll. /
;ll/ 0
valuemm 
=mm 
Colormm 
.mm 
HSVToRGBmm "
(mm" #
hsvmm# &
.mm& '
xmm' (
,mm( )
hsvmm* -
.mm- .
ymm. /
,mm/ 0
$nummm1 3
)mm3 4
;mm4 5
valuenn 
.nn 
ann 
=nn 
offsetnn 
;nn 
positionqq 
=qq 
wheelDrawAreaqq $
;qq$ %
floatrr 
oldXrr 
=rr 
positionrr !
.rr! "
xrr" #
;rr# $
floatss 
oldWss 
=ss 
positionss !
.ss! "
widthss" '
;ss' (
positiontt 
.tt 
ytt 
+=tt 
positiontt "
.tt" #
heighttt# )
+tt* +
$numtt, .
;tt. /
positionuu 
.uu 
xuu 
+=uu 
(uu 
positionuu #
.uu# $
widthuu$ )
-uu* +
(uu, -
positionuu- 5
.uu5 6
widthuu6 ;
*uu< =
$numuu> C
)uuC D
)uuD E
/uuF G
$numuuH J
;uuJ K
positionvv 
.vv 
widthvv 
=vv 
positionvv %
.vv% &
widthvv& +
*vv, -
$numvv. 3
;vv3 4
positionww 
.ww 
heightww 
=ww 
EditorGUIUtilityww .
.ww. /
singleLineHeightww/ ?
;ww? @
valuexx 
.xx 
axx 
=xx 
GUIxx 
.xx 
HorizontalSliderxx *
(xx* +
positionxx+ 3
,xx3 4
valuexx5 :
.xx: ;
axx; <
,xx< =
-xx> ?
$numxx? A
,xxA B
$numxxC E
)xxE F
;xxF G
var{{ 
data{{ 
={{ 
Vector3{{ 
.{{ 
zero{{ #
;{{# $
if}} 
(}} 
TryGetDisplayValue}} "
(}}" #
value}}# (
,}}( )
property}}* 2
,}}2 3
out}}4 7
data}}8 <
)}}< =
)}}= >
{~~ 
position 
. 
x 
= 
oldX !
;! "
position
ÄÄ 
.
ÄÄ 
y
ÄÄ 
+=
ÄÄ 
position
ÄÄ &
.
ÄÄ& '
height
ÄÄ' -
;
ÄÄ- .
position
ÅÅ 
.
ÅÅ 
width
ÅÅ 
=
ÅÅ  
oldW
ÅÅ! %
/
ÅÅ& '
$num
ÅÅ( *
;
ÅÅ* +
using
ÉÉ 
(
ÉÉ 
new
ÉÉ 
	EditorGUI
ÉÉ $
.
ÉÉ$ % 
DisabledGroupScope
ÉÉ% 7
(
ÉÉ7 8
true
ÉÉ8 <
)
ÉÉ< =
)
ÉÉ= >
{
ÑÑ 
GUI
ÖÖ 
.
ÖÖ 
Label
ÖÖ 
(
ÖÖ 
position
ÖÖ &
,
ÖÖ& '
data
ÖÖ( ,
.
ÖÖ, -
x
ÖÖ- .
.
ÖÖ. /
ToString
ÖÖ/ 7
(
ÖÖ7 8
$str
ÖÖ8 <
)
ÖÖ< =
,
ÖÖ= >
EditorStyles
ÖÖ? K
.
ÖÖK L#
centeredGreyMiniLabel
ÖÖL a
)
ÖÖa b
;
ÖÖb c
position
ÜÜ 
.
ÜÜ 
x
ÜÜ 
+=
ÜÜ !
position
ÜÜ" *
.
ÜÜ* +
width
ÜÜ+ 0
;
ÜÜ0 1
GUI
áá 
.
áá 
Label
áá 
(
áá 
position
áá &
,
áá& '
data
áá( ,
.
áá, -
y
áá- .
.
áá. /
ToString
áá/ 7
(
áá7 8
$str
áá8 <
)
áá< =
,
áá= >
EditorStyles
áá? K
.
ááK L#
centeredGreyMiniLabel
ááL a
)
ááa b
;
ááb c
position
àà 
.
àà 
x
àà 
+=
àà !
position
àà" *
.
àà* +
width
àà+ 0
;
àà0 1
GUI
ââ 
.
ââ 
Label
ââ 
(
ââ 
position
ââ &
,
ââ& '
data
ââ( ,
.
ââ, -
z
ââ- .
.
ââ. /
ToString
ââ/ 7
(
ââ7 8
$str
ââ8 <
)
ââ< =
,
ââ= >
EditorStyles
ââ? K
.
ââK L#
centeredGreyMiniLabel
ââL a
)
ââa b
;
ââb c
position
ää 
.
ää 
x
ää 
+=
ää !
position
ää" *
.
ää* +
width
ää+ 0
;
ää0 1
}
ãã 
}
åå 
position
èè 
.
èè 
x
èè 
=
èè 
oldX
èè 
;
èè 
position
êê 
.
êê 
y
êê 
+=
êê 
position
êê "
.
êê" #
height
êê# )
;
êê) *
position
ëë 
.
ëë 
width
ëë 
=
ëë 
oldW
ëë !
;
ëë! "
GUI
íí 
.
íí 
Label
íí 
(
íí 
position
íí 
,
íí 
property
íí  (
.
íí( )
displayName
íí) 4
,
íí4 5
EditorStyles
íí6 B
.
ííB C#
centeredGreyMiniLabel
ííC X
)
ííX Y
;
ííY Z
if
îî 
(
îî 
m_ResetState
îî 
)
îî 
{
ïï 
value
ññ 
=
ññ 
Color
ññ 
.
ññ 
clear
ññ #
;
ññ# $
m_ResetState
óó 
=
óó 
false
óó $
;
óó$ %
}
òò 
property
öö 
.
öö 

colorValue
öö 
=
öö  !
value
öö" '
;
öö' (
}
õõ 	
bool
ùù  
TryGetDisplayValue
ùù 
(
ùù  
Color
ùù  %
color
ùù& +
,
ùù+ , 
SerializedProperty
ùù- ?
property
ùù@ H
,
ùùH I
out
ùùJ M
Vector3
ùùN U
output
ùùV \
)
ùù\ ]
{
ûû 	
output
üü 
=
üü 
Vector3
üü 
.
üü 
zero
üü !
;
üü! "

MethodInfo
†† 
method
†† 
;
†† 
if
¢¢ 
(
¢¢ 
!
¢¢  
m_TrackballMethods
¢¢ #
.
¢¢# $
TryGetValue
¢¢$ /
(
¢¢/ 0
property
¢¢0 8
.
¢¢8 9
name
¢¢9 =
,
¢¢= >
out
¢¢? B
method
¢¢C I
)
¢¢I J
)
¢¢J K
{
££ 
var
§§ 
field
§§ 
=
§§ 
ReflectionUtils
§§ +
.
§§+ ,"
GetFieldInfoFromPath
§§, @
(
§§@ A
property
§§A I
.
§§I J
serializedObject
§§J Z
.
§§Z [
targetObject
§§[ g
,
§§g h
property
§§i q
.
§§q r
propertyPath
§§r ~
)
§§~ 
;§§ Ä
if
¶¶ 
(
¶¶ 
!
¶¶ 
field
¶¶ 
.
¶¶ 
	IsDefined
¶¶ $
(
¶¶$ %
typeof
¶¶% +
(
¶¶+ , 
TrackballAttribute
¶¶, >
)
¶¶> ?
,
¶¶? @
false
¶¶A F
)
¶¶F G
)
¶¶G H
return
ßß 
false
ßß  
;
ßß  !
var
©© 
attr
©© 
=
©© 
(
©©  
TrackballAttribute
©© .
)
©©. /
field
©©/ 4
.
©©4 5!
GetCustomAttributes
©©5 H
(
©©H I
typeof
©©I O
(
©©O P 
TrackballAttribute
©©P b
)
©©b c
,
©©c d
false
©©e j
)
©©j k
[
©©k l
$num
©©l m
]
©©m n
;
©©n o
const
™™ 
BindingFlags
™™ "
flags
™™# (
=
™™) *
BindingFlags
™™+ 7
.
™™7 8
Public
™™8 >
|
™™? @
BindingFlags
™™A M
.
™™M N
	NonPublic
™™N W
|
™™X Y
BindingFlags
™™Z f
.
™™f g
Instance
™™g o
|
™™p q
BindingFlags
™™r ~
.
™™~ 
Static™™ Ö
;™™Ö Ü
method
´´ 
=
´´ 
typeof
´´ 
(
´´  #
ColorGradingComponent
´´  5
)
´´5 6
.
´´6 7
	GetMethod
´´7 @
(
´´@ A
attr
´´A E
.
´´E F
method
´´F L
,
´´L M
flags
´´N S
)
´´S T
;
´´T U 
m_TrackballMethods
¨¨ "
.
¨¨" #
Add
¨¨# &
(
¨¨& '
property
¨¨' /
.
¨¨/ 0
name
¨¨0 4
,
¨¨4 5
method
¨¨6 <
)
¨¨< =
;
¨¨= >
}
≠≠ 
if
ØØ 
(
ØØ 
method
ØØ 
==
ØØ 
null
ØØ 
)
ØØ 
return
∞∞ 
false
∞∞ 
;
∞∞ 
output
≤≤ 
=
≤≤ 
(
≤≤ 
Vector3
≤≤ 
)
≤≤ 
method
≤≤ $
.
≤≤$ %
Invoke
≤≤% +
(
≤≤+ ,
property
≤≤, 4
.
≤≤4 5
serializedObject
≤≤5 E
.
≤≤E F
targetObject
≤≤F R
,
≤≤R S
new
≤≤T W
object
≤≤X ^
[
≤≤^ _
]
≤≤_ `
{
≤≤a b
color
≤≤c h
}
≤≤i j
)
≤≤j k
;
≤≤k l
return
≥≥ 
true
≥≥ 
;
≥≥ 
}
¥¥ 	
static
∂∂ 
readonly
∂∂ 
int
∂∂ 
k_ThumbHash
∂∂ '
=
∂∂( )
$str
∂∂* ;
.
∂∂; <
GetHashCode
∂∂< G
(
∂∂G H
)
∂∂H I
;
∂∂I J
Vector3
∏∏ 
GetInput
∏∏ 
(
∏∏ 
Rect
∏∏ 
bounds
∏∏ $
,
∏∏$ %
Vector3
∏∏& -
hsv
∏∏. 1
,
∏∏1 2
float
∏∏3 8
radius
∏∏9 ?
)
∏∏? @
{
ππ 	
var
∫∫ 
e
∫∫ 
=
∫∫ 
Event
∫∫ 
.
∫∫ 
current
∫∫ !
;
∫∫! "
var
ªª 
id
ªª 
=
ªª 

GUIUtility
ªª 
.
ªª  
GetControlID
ªª  ,
(
ªª, -
k_ThumbHash
ªª- 8
,
ªª8 9
	FocusType
ªª: C
.
ªªC D
Passive
ªªD K
,
ªªK L
bounds
ªªM S
)
ªªS T
;
ªªT U
var
ΩΩ 
mousePos
ΩΩ 
=
ΩΩ 
e
ΩΩ 
.
ΩΩ 
mousePosition
ΩΩ *
;
ΩΩ* +
var
ææ 
relativePos
ææ 
=
ææ 
mousePos
ææ &
-
ææ' (
new
ææ) ,
Vector2
ææ- 4
(
ææ4 5
bounds
ææ5 ;
.
ææ; <
x
ææ< =
,
ææ= >
bounds
ææ? E
.
ææE F
y
ææF G
)
ææG H
;
ææH I
if
¿¿ 
(
¿¿ 
e
¿¿ 
.
¿¿ 
type
¿¿ 
==
¿¿ 
	EventType
¿¿ #
.
¿¿# $
	MouseDown
¿¿$ -
&&
¿¿. 0

GUIUtility
¿¿1 ;
.
¿¿; <

hotControl
¿¿< F
==
¿¿G I
$num
¿¿J K
&&
¿¿L N
bounds
¿¿O U
.
¿¿U V
Contains
¿¿V ^
(
¿¿^ _
mousePos
¿¿_ g
)
¿¿g h
)
¿¿h i
{
¡¡ 
if
¬¬ 
(
¬¬ 
e
¬¬ 
.
¬¬ 
button
¬¬ 
==
¬¬ 
$num
¬¬  !
)
¬¬! "
{
√√ 
var
ƒƒ 
center
ƒƒ 
=
ƒƒ  
new
ƒƒ! $
Vector2
ƒƒ% ,
(
ƒƒ, -
bounds
ƒƒ- 3
.
ƒƒ3 4
x
ƒƒ4 5
+
ƒƒ6 7
radius
ƒƒ8 >
,
ƒƒ> ?
bounds
ƒƒ@ F
.
ƒƒF G
y
ƒƒG H
+
ƒƒI J
radius
ƒƒK Q
)
ƒƒQ R
;
ƒƒR S
float
≈≈ 
dist
≈≈ 
=
≈≈  
Vector2
≈≈! (
.
≈≈( )
Distance
≈≈) 1
(
≈≈1 2
center
≈≈2 8
,
≈≈8 9
mousePos
≈≈: B
)
≈≈B C
;
≈≈C D
if
«« 
(
«« 
dist
«« 
<=
«« 
radius
««  &
)
««& '
{
»» 
e
…… 
.
…… 
Use
…… 
(
…… 
)
…… 
;
……  #
GetWheelHueSaturation
   -
(
  - .
relativePos
  . 9
.
  9 :
x
  : ;
,
  ; <
relativePos
  = H
.
  H I
y
  I J
,
  J K
radius
  L R
,
  R S
out
  T W
hsv
  X [
.
  [ \
x
  \ ]
,
  ] ^
out
  _ b
hsv
  c f
.
  f g
y
  g h
)
  h i
;
  i j

GUIUtility
ÀÀ "
.
ÀÀ" #

hotControl
ÀÀ# -
=
ÀÀ. /
id
ÀÀ0 2
;
ÀÀ2 3
GUI
ÃÃ 
.
ÃÃ 
changed
ÃÃ #
=
ÃÃ$ %
true
ÃÃ& *
;
ÃÃ* +
}
ÕÕ 
}
ŒŒ 
else
œœ 
if
œœ 
(
œœ 
e
œœ 
.
œœ 
button
œœ !
==
œœ" $
$num
œœ% &
)
œœ& '
{
–– 
e
—— 
.
—— 
Use
—— 
(
—— 
)
—— 
;
—— 
GUI
““ 
.
““ 
changed
““ 
=
““  !
true
““" &
;
““& '
m_ResetState
””  
=
””! "
true
””# '
;
””' (
}
‘‘ 
}
’’ 
else
÷÷ 
if
÷÷ 
(
÷÷ 
e
÷÷ 
.
÷÷ 
type
÷÷ 
==
÷÷ 
	EventType
÷÷ (
.
÷÷( )
	MouseDrag
÷÷) 2
&&
÷÷3 5
e
÷÷6 7
.
÷÷7 8
button
÷÷8 >
==
÷÷? A
$num
÷÷B C
&&
÷÷D F

GUIUtility
÷÷G Q
.
÷÷Q R

hotControl
÷÷R \
==
÷÷] _
id
÷÷` b
)
÷÷b c
{
◊◊ 
e
ÿÿ 
.
ÿÿ 
Use
ÿÿ 
(
ÿÿ 
)
ÿÿ 
;
ÿÿ 
GUI
ŸŸ 
.
ŸŸ 
changed
ŸŸ 
=
ŸŸ 
true
ŸŸ "
;
ŸŸ" ##
GetWheelHueSaturation
⁄⁄ %
(
⁄⁄% &
relativePos
⁄⁄& 1
.
⁄⁄1 2
x
⁄⁄2 3
,
⁄⁄3 4
relativePos
⁄⁄5 @
.
⁄⁄@ A
y
⁄⁄A B
,
⁄⁄B C
radius
⁄⁄D J
,
⁄⁄J K
out
⁄⁄L O
hsv
⁄⁄P S
.
⁄⁄S T
x
⁄⁄T U
,
⁄⁄U V
out
⁄⁄W Z
hsv
⁄⁄[ ^
.
⁄⁄^ _
y
⁄⁄_ `
)
⁄⁄` a
;
⁄⁄a b
}
€€ 
else
‹‹ 
if
‹‹ 
(
‹‹ 
e
‹‹ 
.
‹‹ 
rawType
‹‹ 
==
‹‹ !
	EventType
‹‹" +
.
‹‹+ ,
MouseUp
‹‹, 3
&&
‹‹4 6
e
‹‹7 8
.
‹‹8 9
button
‹‹9 ?
==
‹‹@ B
$num
‹‹C D
&&
‹‹E G

GUIUtility
‹‹H R
.
‹‹R S

hotControl
‹‹S ]
==
‹‹^ `
id
‹‹a c
)
‹‹c d
{
›› 
e
ﬁﬁ 
.
ﬁﬁ 
Use
ﬁﬁ 
(
ﬁﬁ 
)
ﬁﬁ 
;
ﬁﬁ 

GUIUtility
ﬂﬂ 
.
ﬂﬂ 

hotControl
ﬂﬂ %
=
ﬂﬂ& '
$num
ﬂﬂ( )
;
ﬂﬂ) *
}
‡‡ 
return
‚‚ 
hsv
‚‚ 
;
‚‚ 
}
„„ 	
void
ÂÂ #
GetWheelHueSaturation
ÂÂ "
(
ÂÂ" #
float
ÂÂ# (
x
ÂÂ) *
,
ÂÂ* +
float
ÂÂ, 1
y
ÂÂ2 3
,
ÂÂ3 4
float
ÂÂ5 :
radius
ÂÂ; A
,
ÂÂA B
out
ÂÂC F
float
ÂÂG L
hue
ÂÂM P
,
ÂÂP Q
out
ÂÂR U
float
ÂÂV [

saturation
ÂÂ\ f
)
ÂÂf g
{
ÊÊ 	
float
ÁÁ 
dx
ÁÁ 
=
ÁÁ 
(
ÁÁ 
x
ÁÁ 
-
ÁÁ 
radius
ÁÁ "
)
ÁÁ" #
/
ÁÁ$ %
radius
ÁÁ& ,
;
ÁÁ, -
float
ËË 
dy
ËË 
=
ËË 
(
ËË 
y
ËË 
-
ËË 
radius
ËË "
)
ËË" #
/
ËË$ %
radius
ËË& ,
;
ËË, -
float
ÈÈ 
d
ÈÈ 
=
ÈÈ 
Mathf
ÈÈ 
.
ÈÈ 
Sqrt
ÈÈ  
(
ÈÈ  !
dx
ÈÈ! #
*
ÈÈ$ %
dx
ÈÈ& (
+
ÈÈ) *
dy
ÈÈ+ -
*
ÈÈ. /
dy
ÈÈ0 2
)
ÈÈ2 3
;
ÈÈ3 4
hue
ÍÍ 
=
ÍÍ 
Mathf
ÍÍ 
.
ÍÍ 
Atan2
ÍÍ 
(
ÍÍ 
dx
ÍÍ  
,
ÍÍ  !
-
ÍÍ" #
dy
ÍÍ# %
)
ÍÍ% &
;
ÍÍ& '
hue
ÎÎ 
=
ÎÎ 
$num
ÎÎ 
-
ÎÎ 
(
ÎÎ 
(
ÎÎ 
hue
ÎÎ 
>
ÎÎ 
$num
ÎÎ  
)
ÎÎ  !
?
ÎÎ" #
hue
ÎÎ$ '
:
ÎÎ( )
(
ÎÎ* +
Mathf
ÎÎ+ 0
.
ÎÎ0 1
PI
ÎÎ1 3
*
ÎÎ4 5
$num
ÎÎ6 8
)
ÎÎ8 9
+
ÎÎ: ;
hue
ÎÎ< ?
)
ÎÎ? @
/
ÎÎA B
(
ÎÎC D
Mathf
ÎÎD I
.
ÎÎI J
PI
ÎÎJ L
*
ÎÎM N
$num
ÎÎO Q
)
ÎÎQ R
;
ÎÎR S

saturation
ÏÏ 
=
ÏÏ 
Mathf
ÏÏ 
.
ÏÏ 
Clamp01
ÏÏ &
(
ÏÏ& '
d
ÏÏ' (
)
ÏÏ( )
;
ÏÏ) *
}
ÌÌ 	
public
ÔÔ 
override
ÔÔ 
float
ÔÔ 
GetPropertyHeight
ÔÔ /
(
ÔÔ/ 0 
SerializedProperty
ÔÔ0 B
property
ÔÔC K
,
ÔÔK L

GUIContent
ÔÔM W
label
ÔÔX ]
)
ÔÔ] ^
{
 	
return
ÒÒ 
m_Size
ÒÒ 
+
ÒÒ 
$num
ÒÒ 
*
ÒÒ  
$num
ÒÒ! #
+
ÒÒ$ %
EditorGUIUtility
ÒÒ& 6
.
ÒÒ6 7
singleLineHeight
ÒÒ7 G
*
ÒÒH I
$num
ÒÒJ L
;
ÒÒL M
}
ÚÚ 	
}
ÛÛ 
}ÙÙ ‘º
¥D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Utils\CurveEditor.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
public 

sealed 
class 
CurveEditor #
{ 
enum 
EditMode 
{ 	
None 
, 
Moving 
, 
TangentEdit 
} 	
enum 
Tangent 
{ 	
In 
, 
Out 
} 	
public 
struct 
Settings 
{ 	
public 
Rect 
bounds 
; 
public 

RectOffset 
padding %
;% &
public 
Color 
selectionColor '
;' (
public 
float  
curvePickingDistance -
;- .
public   
float   #
keyTimeClampingDistance   0
;  0 1
public"" 
static"" 
Settings"" "
defaultSettings""# 2
{## 
get$$ 
{%% 
return&& 
new&& 
Settings&& '
{'' 
bounds(( 
=((  
new((! $
Rect((% )
((() *
$num((* ,
,((, -
$num((. 0
,((0 1
$num((2 4
,((4 5
$num((6 8
)((8 9
,((9 :
padding)) 
=))  !
new))" %

RectOffset))& 0
())0 1
$num))1 3
,))3 4
$num))5 7
,))7 8
$num))9 ;
,)); <
$num))= ?
)))? @
,))@ A
selectionColor** &
=**' (
Color**) .
.**. /
yellow**/ 5
,**5 6 
curvePickingDistance++ ,
=++- .
$num++/ 1
,++1 2#
keyTimeClampingDistance,, /
=,,0 1
$num,,2 7
}-- 
;-- 
}.. 
}// 
}00 	
public22 
struct22 

CurveState22  
{33 	
public44 
bool44 
visible44 
;44  
public55 
bool55 
editable55  
;55  !
public66 
uint66 
minPointCount66 %
;66% &
public77 
float77  
zeroKeyConstantValue77 -
;77- .
public88 
Color88 
color88 
;88 
public99 
float99 
width99 
;99 
public:: 
float:: 
handleWidth:: $
;::$ %
public;; 
bool;; "
showNonEditableHandles;; .
;;;. /
public<< 
bool<< &
onlyShowHandlesOnSelection<< 2
;<<2 3
public== 
bool== 
loopInBounds== $
;==$ %
public?? 
static?? 

CurveState?? $
defaultState??% 1
{@@ 
getAA 
{BB 
returnCC 
newCC 

CurveStateCC )
{DD 
visibleEE 
=EE  !
trueEE" &
,EE& '
editableFF  
=FF! "
trueFF# '
,FF' (
minPointCountGG %
=GG& '
$numGG( )
,GG) * 
zeroKeyConstantValueHH ,
=HH- .
$numHH/ 1
,HH1 2
colorII 
=II 
ColorII  %
.II% &
whiteII& +
,II+ ,
widthJJ 
=JJ 
$numJJ  "
,JJ" #
handleWidthKK #
=KK$ %
$numKK& (
,KK( )"
showNonEditableHandlesLL .
=LL/ 0
trueLL1 5
,LL5 6&
onlyShowHandlesOnSelectionMM 2
=MM3 4
falseMM5 :
,MM: ;
loopInBoundsNN $
=NN% &
falseNN' ,
}OO 
;OO 
}PP 
}QQ 
}RR 	
publicTT 
structTT 
	SelectionTT 
{UU 	
publicVV 
SerializedPropertyVV %
curveVV& +
;VV+ ,
publicWW 
intWW 
keyframeIndexWW $
;WW$ %
publicXX 
KeyframeXX 
?XX 
keyframeXX %
;XX% &
publicZZ 
	SelectionZZ 
(ZZ 
SerializedPropertyZZ /
curveZZ0 5
,ZZ5 6
intZZ7 :
keyframeIndexZZ; H
,ZZH I
KeyframeZZJ R
?ZZR S
keyframeZZT \
)ZZ\ ]
{[[ 
this\\ 
.\\ 
curve\\ 
=\\ 
curve\\ "
;\\" #
this]] 
.]] 
keyframeIndex]] "
=]]# $
keyframeIndex]]% 2
;]]2 3
this^^ 
.^^ 
keyframe^^ 
=^^ 
keyframe^^  (
;^^( )
}__ 
}`` 	
internalbb 
structbb 

MenuActionbb "
{cc 	
internaldd 
SerializedPropertydd '
curvedd( -
;dd- .
internalee 
intee 
indexee 
;ee 
internalff 
Vector3ff 
positionff %
;ff% &
internalhh 

MenuActionhh 
(hh  
SerializedPropertyhh  2
curvehh3 8
)hh8 9
{ii 
thisjj 
.jj 
curvejj 
=jj 
curvejj "
;jj" #
thiskk 
.kk 
indexkk 
=kk 
-kk 
$numkk 
;kk  
thisll 
.ll 
positionll 
=ll 
Vector3ll  '
.ll' (
zeroll( ,
;ll, -
}mm 
internaloo 

MenuActionoo 
(oo  
SerializedPropertyoo  2
curveoo3 8
,oo8 9
intoo: =
indexoo> C
)ooC D
{pp 
thisqq 
.qq 
curveqq 
=qq 
curveqq "
;qq" #
thisrr 
.rr 
indexrr 
=rr 
indexrr "
;rr" #
thisss 
.ss 
positionss 
=ss 
Vector3ss  '
.ss' (
zeross( ,
;ss, -
}tt 
internalvv 

MenuActionvv 
(vv  
SerializedPropertyvv  2
curvevv3 8
,vv8 9
Vector3vv: A
positionvvB J
)vvJ K
{ww 
thisxx 
.xx 
curvexx 
=xx 
curvexx "
;xx" #
thisyy 
.yy 
indexyy 
=yy 
-yy 
$numyy 
;yy  
thiszz 
.zz 
positionzz 
=zz 
positionzz  (
;zz( )
}{{ 
}|| 	
public
ÄÄ 
Settings
ÄÄ 
settings
ÄÄ  
{
ÄÄ! "
get
ÄÄ# &
;
ÄÄ& '
private
ÄÄ( /
set
ÄÄ0 3
;
ÄÄ3 4
}
ÄÄ5 6

Dictionary
ÇÇ 
<
ÇÇ  
SerializedProperty
ÇÇ %
,
ÇÇ% &

CurveState
ÇÇ' 1
>
ÇÇ1 2
m_Curves
ÇÇ3 ;
;
ÇÇ; <
Rect
ÉÉ 
m_CurveArea
ÉÉ 
;
ÉÉ  
SerializedProperty
ÖÖ 
m_SelectedCurve
ÖÖ *
;
ÖÖ* +
int
ÜÜ %
m_SelectedKeyframeIndex
ÜÜ #
=
ÜÜ$ %
-
ÜÜ& '
$num
ÜÜ' (
;
ÜÜ( )
EditMode
àà 

m_EditMode
àà 
=
àà 
EditMode
àà &
.
àà& '
None
àà' +
;
àà+ ,
Tangent
ââ 
m_TangentEditMode
ââ !
;
ââ! "
bool
ãã 
m_Dirty
ãã 
;
ãã 
public
èè 
CurveEditor
èè 
(
èè 
)
èè 
:
êê 
this
êê 
(
êê 
Settings
êê 
.
êê 
defaultSettings
êê +
)
êê+ ,
{
ëë 	
}
ëë	 

public
ìì 
CurveEditor
ìì 
(
ìì 
Settings
ìì #
settings
ìì$ ,
)
ìì, -
{
îî 	
this
ïï 
.
ïï 
settings
ïï 
=
ïï 
settings
ïï $
;
ïï$ %
m_Curves
ññ 
=
ññ 
new
ññ 

Dictionary
ññ %
<
ññ% & 
SerializedProperty
ññ& 8
,
ññ8 9

CurveState
ññ: D
>
ññD E
(
ññE F
)
ññF G
;
ññG H
}
óó 	
public
úú 
void
úú 
Add
úú 
(
úú 
params
úú  
SerializedProperty
úú 1
[
úú1 2
]
úú2 3
curves
úú4 :
)
úú: ;
{
ùù 	
foreach
ûû 
(
ûû 
var
ûû 
curve
ûû 
in
ûû !
curves
ûû" (
)
ûû( )
Add
üü 
(
üü 
curve
üü 
,
üü 

CurveState
üü %
.
üü% &
defaultState
üü& 2
)
üü2 3
;
üü3 4
}
†† 	
public
¢¢ 
void
¢¢ 
Add
¢¢ 
(
¢¢  
SerializedProperty
¢¢ *
curve
¢¢+ 0
)
¢¢0 1
{
££ 	
Add
§§ 
(
§§ 
curve
§§ 
,
§§ 

CurveState
§§ !
.
§§! "
defaultState
§§" .
)
§§. /
;
§§/ 0
}
•• 	
public
ßß 
void
ßß 
Add
ßß 
(
ßß  
SerializedProperty
ßß *
curve
ßß+ 0
,
ßß0 1

CurveState
ßß2 <
state
ßß= B
)
ßßB C
{
®® 	
var
™™ 
	animCurve
™™ 
=
™™ 
curve
™™ !
.
™™! "!
animationCurveValue
™™" 5
;
™™5 6
if
´´ 
(
´´ 
	animCurve
´´ 
==
´´ 
null
´´ !
)
´´! "
throw
¨¨ 
new
¨¨ 
ArgumentException
¨¨ +
(
¨¨+ ,
$str
¨¨, 3
)
¨¨3 4
;
¨¨4 5
if
ÆÆ 
(
ÆÆ 
m_Curves
ÆÆ 
.
ÆÆ 
ContainsKey
ÆÆ $
(
ÆÆ$ %
curve
ÆÆ% *
)
ÆÆ* +
)
ÆÆ+ ,
Debug
ØØ 
.
ØØ 

LogWarning
ØØ  
(
ØØ  !
$str
ØØ! M
)
ØØM N
;
ØØN O
m_Curves
±± 
.
±± 
Add
±± 
(
±± 
curve
±± 
,
±± 
state
±±  %
)
±±% &
;
±±& '
}
≤≤ 	
public
¥¥ 
void
¥¥ 
Remove
¥¥ 
(
¥¥  
SerializedProperty
¥¥ -
curve
¥¥. 3
)
¥¥3 4
{
µµ 	
m_Curves
∂∂ 
.
∂∂ 
Remove
∂∂ 
(
∂∂ 
curve
∂∂ !
)
∂∂! "
;
∂∂" #
}
∑∑ 	
public
ππ 
void
ππ 
	RemoveAll
ππ 
(
ππ 
)
ππ 
{
∫∫ 	
m_Curves
ªª 
.
ªª 
Clear
ªª 
(
ªª 
)
ªª 
;
ªª 
}
ºº 	
public
ææ 

CurveState
ææ 
GetCurveState
ææ '
(
ææ' ( 
SerializedProperty
ææ( :
curve
ææ; @
)
ææ@ A
{
øø 	

CurveState
¿¿ 
state
¿¿ 
;
¿¿ 
if
¡¡ 
(
¡¡ 
!
¡¡ 
m_Curves
¡¡ 
.
¡¡ 
TryGetValue
¡¡ %
(
¡¡% &
curve
¡¡& +
,
¡¡+ ,
out
¡¡- 0
state
¡¡1 6
)
¡¡6 7
)
¡¡7 8
throw
¬¬ 
new
¬¬ "
KeyNotFoundException
¬¬ .
(
¬¬. /
$str
¬¬/ 6
)
¬¬6 7
;
¬¬7 8
return
ƒƒ 
state
ƒƒ 
;
ƒƒ 
}
≈≈ 	
public
«« 
void
«« 
SetCurveState
«« !
(
««! " 
SerializedProperty
««" 4
curve
««5 :
,
««: ;

CurveState
««< F
state
««G L
)
««L M
{
»» 	
if
…… 
(
…… 
!
…… 
m_Curves
…… 
.
…… 
ContainsKey
…… %
(
……% &
curve
……& +
)
……+ ,
)
……, -
throw
   
new
   "
KeyNotFoundException
   .
(
  . /
$str
  / 6
)
  6 7
;
  7 8
m_Curves
ÃÃ 
[
ÃÃ 
curve
ÃÃ 
]
ÃÃ 
=
ÃÃ 
state
ÃÃ #
;
ÃÃ# $
}
ÕÕ 	
public
œœ 
	Selection
œœ 
GetSelection
œœ %
(
œœ% &
)
œœ& '
{
–– 	
Keyframe
—— 
?
—— 
key
—— 
=
—— 
null
——  
;
——  !
if
““ 
(
““ %
m_SelectedKeyframeIndex
““ '
>
““( )
-
““* +
$num
““+ ,
)
““, -
{
”” 
var
‘‘ 
curve
‘‘ 
=
‘‘ 
m_SelectedCurve
‘‘ +
.
‘‘+ ,!
animationCurveValue
‘‘, ?
;
‘‘? @
if
÷÷ 
(
÷÷ %
m_SelectedKeyframeIndex
÷÷ +
>=
÷÷, .
curve
÷÷/ 4
.
÷÷4 5
length
÷÷5 ;
)
÷÷; <%
m_SelectedKeyframeIndex
◊◊ +
=
◊◊, -
-
◊◊. /
$num
◊◊/ 0
;
◊◊0 1
else
ÿÿ 
key
ŸŸ 
=
ŸŸ 
curve
ŸŸ 
[
ŸŸ  %
m_SelectedKeyframeIndex
ŸŸ  7
]
ŸŸ7 8
;
ŸŸ8 9
}
⁄⁄ 
return
‹‹ 
new
‹‹ 
	Selection
‹‹  
(
‹‹  !
m_SelectedCurve
‹‹! 0
,
‹‹0 1%
m_SelectedKeyframeIndex
‹‹2 I
,
‹‹I J
key
‹‹K N
)
‹‹N O
;
‹‹O P
}
›› 	
public
ﬂﬂ 
void
ﬂﬂ 
SetKeyframe
ﬂﬂ 
(
ﬂﬂ   
SerializedProperty
ﬂﬂ  2
curve
ﬂﬂ3 8
,
ﬂﬂ8 9
int
ﬂﬂ: =
keyframeIndex
ﬂﬂ> K
,
ﬂﬂK L
Keyframe
ﬂﬂM U
keyframe
ﬂﬂV ^
)
ﬂﬂ^ _
{
‡‡ 	
var
·· 
	animCurve
·· 
=
·· 
curve
·· !
.
··! "!
animationCurveValue
··" 5
;
··5 6
SetKeyframe
‚‚ 
(
‚‚ 
	animCurve
‚‚ !
,
‚‚! "
keyframeIndex
‚‚# 0
,
‚‚0 1
keyframe
‚‚2 :
)
‚‚: ;
;
‚‚; <
	SaveCurve
„„ 
(
„„ 
curve
„„ 
,
„„ 
	animCurve
„„ &
)
„„& '
;
„„' (
}
‰‰ 	
public
ÊÊ 
bool
ÊÊ 
OnGUI
ÊÊ 
(
ÊÊ 
Rect
ÊÊ 
rect
ÊÊ #
)
ÊÊ# $
{
ÁÁ 	
if
ËË 
(
ËË 
Event
ËË 
.
ËË 
current
ËË 
.
ËË 
type
ËË "
==
ËË# %
	EventType
ËË& /
.
ËË/ 0
Repaint
ËË0 7
)
ËË7 8
m_Dirty
ÈÈ 
=
ÈÈ 
false
ÈÈ 
;
ÈÈ  
GUI
ÎÎ 
.
ÎÎ 
	BeginClip
ÎÎ 
(
ÎÎ 
rect
ÎÎ 
)
ÎÎ 
;
ÎÎ  
{
ÏÏ 
var
ÌÌ 
area
ÌÌ 
=
ÌÌ 
new
ÌÌ 
Rect
ÌÌ #
(
ÌÌ# $
Vector2
ÌÌ$ +
.
ÌÌ+ ,
zero
ÌÌ, 0
,
ÌÌ0 1
rect
ÌÌ2 6
.
ÌÌ6 7
size
ÌÌ7 ;
)
ÌÌ; <
;
ÌÌ< =
m_CurveArea
ÓÓ 
=
ÓÓ 
settings
ÓÓ &
.
ÓÓ& '
padding
ÓÓ' .
.
ÓÓ. /
Remove
ÓÓ/ 5
(
ÓÓ5 6
area
ÓÓ6 :
)
ÓÓ: ;
;
ÓÓ; <
foreach
 
(
 
var
 
curve
 "
in
# %
m_Curves
& .
)
. /

OnCurveGUI
ÒÒ 
(
ÒÒ 
area
ÒÒ #
,
ÒÒ# $
curve
ÒÒ% *
.
ÒÒ* +
Key
ÒÒ+ .
,
ÒÒ. /
curve
ÒÒ0 5
.
ÒÒ5 6
Value
ÒÒ6 ;
)
ÒÒ; <
;
ÒÒ< =
OnGeneralUI
ÛÛ 
(
ÛÛ 
area
ÛÛ  
)
ÛÛ  !
;
ÛÛ! "
}
ÙÙ 
GUI
ıı 
.
ıı 
EndClip
ıı 
(
ıı 
)
ıı 
;
ıı 
return
˜˜ 
m_Dirty
˜˜ 
;
˜˜ 
}
¯¯ 	
void
˛˛ 

OnCurveGUI
˛˛ 
(
˛˛ 
Rect
˛˛ 
rect
˛˛ !
,
˛˛! " 
SerializedProperty
˛˛# 5
curve
˛˛6 ;
,
˛˛; <

CurveState
˛˛= G
state
˛˛H M
)
˛˛M N
{
ˇˇ 	
if
ÅÅ 
(
ÅÅ 
!
ÅÅ 
state
ÅÅ 
.
ÅÅ 
visible
ÅÅ 
)
ÅÅ 
return
ÇÇ 
;
ÇÇ 
var
ÑÑ 
	animCurve
ÑÑ 
=
ÑÑ 
curve
ÑÑ !
.
ÑÑ! "!
animationCurveValue
ÑÑ" 5
;
ÑÑ5 6
var
ÖÖ 
keys
ÖÖ 
=
ÖÖ 
	animCurve
ÖÖ  
.
ÖÖ  !
keys
ÖÖ! %
;
ÖÖ% &
var
ÜÜ 
length
ÜÜ 
=
ÜÜ 
keys
ÜÜ 
.
ÜÜ 
Length
ÜÜ $
;
ÜÜ$ %
var
ää 
color
ää 
=
ää 
state
ää 
.
ää 
color
ää #
;
ää# $
if
ãã 
(
ãã 
!
ãã 
state
ãã 
.
ãã 
editable
ãã 
)
ãã  
color
åå 
.
åå 
a
åå 
*=
åå 
$num
åå 
;
åå  
Handles
éé 
.
éé 
color
éé 
=
éé 
color
éé !
;
éé! "
var
èè 
bounds
èè 
=
èè 
settings
èè !
.
èè! "
bounds
èè" (
;
èè( )
if
ëë 
(
ëë 
length
ëë 
==
ëë 
$num
ëë 
)
ëë 
{
íí 
var
ìì 
p1
ìì 
=
ìì 
CurveToCanvas
ìì &
(
ìì& '
new
ìì' *
Vector3
ìì+ 2
(
ìì2 3
bounds
ìì3 9
.
ìì9 :
xMin
ìì: >
,
ìì> ?
state
ìì@ E
.
ììE F"
zeroKeyConstantValue
ììF Z
)
ììZ [
)
ìì[ \
;
ìì\ ]
var
îî 
p2
îî 
=
îî 
CurveToCanvas
îî &
(
îî& '
new
îî' *
Vector3
îî+ 2
(
îî2 3
bounds
îî3 9
.
îî9 :
xMax
îî: >
,
îî> ?
state
îî@ E
.
îîE F"
zeroKeyConstantValue
îîF Z
)
îîZ [
)
îî[ \
;
îî\ ]
Handles
ïï 
.
ïï 
DrawAAPolyLine
ïï &
(
ïï& '
state
ïï' ,
.
ïï, -
width
ïï- 2
,
ïï2 3
p1
ïï4 6
,
ïï6 7
p2
ïï8 :
)
ïï: ;
;
ïï; <
}
ññ 
else
óó 
if
óó 
(
óó 
length
óó 
==
óó 
$num
óó  
)
óó  !
{
òò 
var
ôô 
p1
ôô 
=
ôô 
CurveToCanvas
ôô &
(
ôô& '
new
ôô' *
Vector3
ôô+ 2
(
ôô2 3
bounds
ôô3 9
.
ôô9 :
xMin
ôô: >
,
ôô> ?
keys
ôô@ D
[
ôôD E
$num
ôôE F
]
ôôF G
.
ôôG H
value
ôôH M
)
ôôM N
)
ôôN O
;
ôôO P
var
öö 
p2
öö 
=
öö 
CurveToCanvas
öö &
(
öö& '
new
öö' *
Vector3
öö+ 2
(
öö2 3
bounds
öö3 9
.
öö9 :
xMax
öö: >
,
öö> ?
keys
öö@ D
[
ööD E
$num
ööE F
]
ööF G
.
ööG H
value
ööH M
)
ööM N
)
ööN O
;
ööO P
Handles
õõ 
.
õõ 
DrawAAPolyLine
õõ &
(
õõ& '
state
õõ' ,
.
õõ, -
width
õõ- 2
,
õõ2 3
p1
õõ4 6
,
õõ6 7
p2
õõ8 :
)
õõ: ;
;
õõ; <
}
úú 
else
ùù 
{
ûû 
var
üü 
prevKey
üü 
=
üü 
keys
üü "
[
üü" #
$num
üü# $
]
üü$ %
;
üü% &
for
†† 
(
†† 
int
†† 
k
†† 
=
†† 
$num
†† 
;
†† 
k
††  !
<
††" #
length
††$ *
;
††* +
k
††, -
++
††- /
)
††/ 0
{
°° 
var
¢¢ 
key
¢¢ 
=
¢¢ 
keys
¢¢ "
[
¢¢" #
k
¢¢# $
]
¢¢$ %
;
¢¢% &
var
££ 
pts
££ 
=
££ 
BezierSegment
££ +
(
££+ ,
prevKey
££, 3
,
££3 4
key
££5 8
)
££8 9
;
££9 :
if
•• 
(
•• 
float
•• 
.
•• 

IsInfinity
•• (
(
••( )
prevKey
••) 0
.
••0 1

outTangent
••1 ;
)
••; <
||
••= ?
float
••@ E
.
••E F

IsInfinity
••F P
(
••P Q
key
••Q T
.
••T U
	inTangent
••U ^
)
••^ _
)
••_ `
{
¶¶ 
var
ßß 
s
ßß 
=
ßß 
HardSegment
ßß  +
(
ßß+ ,
prevKey
ßß, 3
,
ßß3 4
key
ßß5 8
)
ßß8 9
;
ßß9 :
Handles
®® 
.
®®  
DrawAAPolyLine
®®  .
(
®®. /
state
®®/ 4
.
®®4 5
width
®®5 :
,
®®: ;
s
®®< =
[
®®= >
$num
®®> ?
]
®®? @
,
®®@ A
s
®®B C
[
®®C D
$num
®®D E
]
®®E F
,
®®F G
s
®®H I
[
®®I J
$num
®®J K
]
®®K L
)
®®L M
;
®®M N
}
©© 
else
™™ 
Handles
™™  
.
™™  !

DrawBezier
™™! +
(
™™+ ,
pts
™™, /
[
™™/ 0
$num
™™0 1
]
™™1 2
,
™™2 3
pts
™™4 7
[
™™7 8
$num
™™8 9
]
™™9 :
,
™™: ;
pts
™™< ?
[
™™? @
$num
™™@ A
]
™™A B
,
™™B C
pts
™™D G
[
™™G H
$num
™™H I
]
™™I J
,
™™J K
color
™™L Q
,
™™Q R
null
™™S W
,
™™W X
state
™™Y ^
.
™™^ _
width
™™_ d
)
™™d e
;
™™e f
prevKey
¨¨ 
=
¨¨ 
key
¨¨ !
;
¨¨! "
}
≠≠ 
if
∞∞ 
(
∞∞ 
keys
∞∞ 
[
∞∞ 
$num
∞∞ 
]
∞∞ 
.
∞∞ 
time
∞∞  
>
∞∞! "
bounds
∞∞# )
.
∞∞) *
xMin
∞∞* .
)
∞∞. /
{
±± 
if
≤≤ 
(
≤≤ 
state
≤≤ 
.
≤≤ 
loopInBounds
≤≤ *
)
≤≤* +
{
≥≥ 
var
¥¥ 
p1
¥¥ 
=
¥¥  
keys
¥¥! %
[
¥¥% &
length
¥¥& ,
-
¥¥- .
$num
¥¥/ 0
]
¥¥0 1
;
¥¥1 2
p1
µµ 
.
µµ 
time
µµ 
-=
µµ  "
settings
µµ# +
.
µµ+ ,
bounds
µµ, 2
.
µµ2 3
width
µµ3 8
;
µµ8 9
var
∂∂ 
p2
∂∂ 
=
∂∂  
keys
∂∂! %
[
∂∂% &
$num
∂∂& '
]
∂∂' (
;
∂∂( )
var
∑∑ 
pts
∑∑ 
=
∑∑  !
BezierSegment
∑∑" /
(
∑∑/ 0
p1
∑∑0 2
,
∑∑2 3
p2
∑∑4 6
)
∑∑6 7
;
∑∑7 8
if
ππ 
(
ππ 
float
ππ !
.
ππ! "

IsInfinity
ππ" ,
(
ππ, -
p1
ππ- /
.
ππ/ 0

outTangent
ππ0 :
)
ππ: ;
||
ππ< >
float
ππ? D
.
ππD E

IsInfinity
ππE O
(
ππO P
p2
ππP R
.
ππR S
	inTangent
ππS \
)
ππ\ ]
)
ππ] ^
{
∫∫ 
var
ªª 
s
ªª  !
=
ªª" #
HardSegment
ªª$ /
(
ªª/ 0
p1
ªª0 2
,
ªª2 3
p2
ªª4 6
)
ªª6 7
;
ªª7 8
Handles
ºº #
.
ºº# $
DrawAAPolyLine
ºº$ 2
(
ºº2 3
state
ºº3 8
.
ºº8 9
width
ºº9 >
,
ºº> ?
s
ºº@ A
[
ººA B
$num
ººB C
]
ººC D
,
ººD E
s
ººF G
[
ººG H
$num
ººH I
]
ººI J
,
ººJ K
s
ººL M
[
ººM N
$num
ººN O
]
ººO P
)
ººP Q
;
ººQ R
}
ΩΩ 
else
ææ 
Handles
ææ $
.
ææ$ %

DrawBezier
ææ% /
(
ææ/ 0
pts
ææ0 3
[
ææ3 4
$num
ææ4 5
]
ææ5 6
,
ææ6 7
pts
ææ8 ;
[
ææ; <
$num
ææ< =
]
ææ= >
,
ææ> ?
pts
ææ@ C
[
ææC D
$num
ææD E
]
ææE F
,
ææF G
pts
ææH K
[
ææK L
$num
ææL M
]
ææM N
,
ææN O
color
ææP U
,
ææU V
null
ææW [
,
ææ[ \
state
ææ] b
.
ææb c
width
ææc h
)
ææh i
;
ææi j
}
øø 
else
¿¿ 
{
¡¡ 
var
¬¬ 
p1
¬¬ 
=
¬¬  
CurveToCanvas
¬¬! .
(
¬¬. /
new
¬¬/ 2
Vector3
¬¬3 :
(
¬¬: ;
bounds
¬¬; A
.
¬¬A B
xMin
¬¬B F
,
¬¬F G
keys
¬¬H L
[
¬¬L M
$num
¬¬M N
]
¬¬N O
.
¬¬O P
value
¬¬P U
)
¬¬U V
)
¬¬V W
;
¬¬W X
var
√√ 
p2
√√ 
=
√√  
CurveToCanvas
√√! .
(
√√. /
keys
√√/ 3
[
√√3 4
$num
√√4 5
]
√√5 6
)
√√6 7
;
√√7 8
Handles
ƒƒ 
.
ƒƒ  
DrawAAPolyLine
ƒƒ  .
(
ƒƒ. /
state
ƒƒ/ 4
.
ƒƒ4 5
width
ƒƒ5 :
,
ƒƒ: ;
p1
ƒƒ< >
,
ƒƒ> ?
p2
ƒƒ@ B
)
ƒƒB C
;
ƒƒC D
}
≈≈ 
}
∆∆ 
if
»» 
(
»» 
keys
»» 
[
»» 
length
»» 
-
»»  !
$num
»»" #
]
»»# $
.
»»$ %
time
»»% )
<
»»* +
bounds
»», 2
.
»»2 3
xMax
»»3 7
)
»»7 8
{
…… 
if
   
(
   
state
   
.
   
loopInBounds
   *
)
  * +
{
ÀÀ 
var
ÃÃ 
p1
ÃÃ 
=
ÃÃ  
keys
ÃÃ! %
[
ÃÃ% &
length
ÃÃ& ,
-
ÃÃ- .
$num
ÃÃ/ 0
]
ÃÃ0 1
;
ÃÃ1 2
var
ÕÕ 
p2
ÕÕ 
=
ÕÕ  
keys
ÕÕ! %
[
ÕÕ% &
$num
ÕÕ& '
]
ÕÕ' (
;
ÕÕ( )
p2
ŒŒ 
.
ŒŒ 
time
ŒŒ 
+=
ŒŒ  "
settings
ŒŒ# +
.
ŒŒ+ ,
bounds
ŒŒ, 2
.
ŒŒ2 3
width
ŒŒ3 8
;
ŒŒ8 9
var
œœ 
pts
œœ 
=
œœ  !
BezierSegment
œœ" /
(
œœ/ 0
p1
œœ0 2
,
œœ2 3
p2
œœ4 6
)
œœ6 7
;
œœ7 8
if
—— 
(
—— 
float
—— !
.
——! "

IsInfinity
——" ,
(
——, -
p1
——- /
.
——/ 0

outTangent
——0 :
)
——: ;
||
——< >
float
——? D
.
——D E

IsInfinity
——E O
(
——O P
p2
——P R
.
——R S
	inTangent
——S \
)
——\ ]
)
——] ^
{
““ 
var
”” 
s
””  !
=
””" #
HardSegment
””$ /
(
””/ 0
p1
””0 2
,
””2 3
p2
””4 6
)
””6 7
;
””7 8
Handles
‘‘ #
.
‘‘# $
DrawAAPolyLine
‘‘$ 2
(
‘‘2 3
state
‘‘3 8
.
‘‘8 9
width
‘‘9 >
,
‘‘> ?
s
‘‘@ A
[
‘‘A B
$num
‘‘B C
]
‘‘C D
,
‘‘D E
s
‘‘F G
[
‘‘G H
$num
‘‘H I
]
‘‘I J
,
‘‘J K
s
‘‘L M
[
‘‘M N
$num
‘‘N O
]
‘‘O P
)
‘‘P Q
;
‘‘Q R
}
’’ 
else
÷÷ 
Handles
÷÷ $
.
÷÷$ %

DrawBezier
÷÷% /
(
÷÷/ 0
pts
÷÷0 3
[
÷÷3 4
$num
÷÷4 5
]
÷÷5 6
,
÷÷6 7
pts
÷÷8 ;
[
÷÷; <
$num
÷÷< =
]
÷÷= >
,
÷÷> ?
pts
÷÷@ C
[
÷÷C D
$num
÷÷D E
]
÷÷E F
,
÷÷F G
pts
÷÷H K
[
÷÷K L
$num
÷÷L M
]
÷÷M N
,
÷÷N O
color
÷÷P U
,
÷÷U V
null
÷÷W [
,
÷÷[ \
state
÷÷] b
.
÷÷b c
width
÷÷c h
)
÷÷h i
;
÷÷i j
}
◊◊ 
else
ÿÿ 
{
ŸŸ 
var
⁄⁄ 
p1
⁄⁄ 
=
⁄⁄  
CurveToCanvas
⁄⁄! .
(
⁄⁄. /
keys
⁄⁄/ 3
[
⁄⁄3 4
length
⁄⁄4 :
-
⁄⁄; <
$num
⁄⁄= >
]
⁄⁄> ?
)
⁄⁄? @
;
⁄⁄@ A
var
€€ 
p2
€€ 
=
€€  
CurveToCanvas
€€! .
(
€€. /
new
€€/ 2
Vector3
€€3 :
(
€€: ;
bounds
€€; A
.
€€A B
xMax
€€B F
,
€€F G
keys
€€H L
[
€€L M
length
€€M S
-
€€T U
$num
€€V W
]
€€W X
.
€€X Y
value
€€Y ^
)
€€^ _
)
€€_ `
;
€€` a
Handles
‹‹ 
.
‹‹  
DrawAAPolyLine
‹‹  .
(
‹‹. /
state
‹‹/ 4
.
‹‹4 5
width
‹‹5 :
,
‹‹: ;
p1
‹‹< >
,
‹‹> ?
p2
‹‹@ B
)
‹‹B C
;
‹‹C D
}
›› 
}
ﬁﬁ 
}
ﬂﬂ 
bool
‚‚ &
isCurrentlySelectedCurve
‚‚ )
=
‚‚* +
curve
‚‚, 1
==
‚‚2 4
m_SelectedCurve
‚‚5 D
;
‚‚D E
if
‰‰ 
(
‰‰ &
isCurrentlySelectedCurve
‰‰ (
&&
‰‰) +%
m_SelectedKeyframeIndex
‰‰, C
>=
‰‰D F
length
‰‰G M
)
‰‰M N%
m_SelectedKeyframeIndex
ÂÂ '
=
ÂÂ( )
-
ÂÂ* +
$num
ÂÂ+ ,
;
ÂÂ, -
for
ËË 
(
ËË 
int
ËË 
k
ËË 
=
ËË 
$num
ËË 
;
ËË 
k
ËË 
<
ËË 
length
ËË  &
;
ËË& '
k
ËË( )
++
ËË) +
)
ËË+ ,
{
ÈÈ 
bool
ÍÍ )
isCurrentlySelectedKeyframe
ÍÍ 0
=
ÍÍ1 2
k
ÍÍ3 4
==
ÍÍ5 7%
m_SelectedKeyframeIndex
ÍÍ8 O
;
ÍÍO P
var
ÎÎ 
e
ÎÎ 
=
ÎÎ 
Event
ÎÎ 
.
ÎÎ 
current
ÎÎ %
;
ÎÎ% &
var
ÌÌ 
pos
ÌÌ 
=
ÌÌ 
CurveToCanvas
ÌÌ '
(
ÌÌ' (
keys
ÌÌ( ,
[
ÌÌ, -
k
ÌÌ- .
]
ÌÌ. /
)
ÌÌ/ 0
;
ÌÌ0 1
var
ÓÓ 
hitRect
ÓÓ 
=
ÓÓ 
new
ÓÓ !
Rect
ÓÓ" &
(
ÓÓ& '
pos
ÓÓ' *
.
ÓÓ* +
x
ÓÓ+ ,
-
ÓÓ- .
$num
ÓÓ/ 1
,
ÓÓ1 2
pos
ÓÓ3 6
.
ÓÓ6 7
y
ÓÓ7 8
-
ÓÓ9 :
$num
ÓÓ; =
,
ÓÓ= >
$num
ÓÓ? B
,
ÓÓB C
$num
ÓÓD G
)
ÓÓG H
;
ÓÓH I
var
ÔÔ 
offset
ÔÔ 
=
ÔÔ &
isCurrentlySelectedCurve
ÔÔ 5
?
 
new
 

RectOffset
 $
(
$ %
$num
% &
,
& '
$num
( )
,
) *
$num
+ ,
,
, -
$num
. /
)
/ 0
:
ÒÒ 
new
ÒÒ 

RectOffset
ÒÒ $
(
ÒÒ$ %
$num
ÒÒ% &
,
ÒÒ& '
$num
ÒÒ( )
,
ÒÒ) *
$num
ÒÒ+ ,
,
ÒÒ, -
$num
ÒÒ. /
)
ÒÒ/ 0
;
ÒÒ0 1
var
ÛÛ 

outTangent
ÛÛ 
=
ÛÛ  
pos
ÛÛ! $
+
ÛÛ% &"
CurveTangentToCanvas
ÛÛ' ;
(
ÛÛ; <
keys
ÛÛ< @
[
ÛÛ@ A
k
ÛÛA B
]
ÛÛB C
.
ÛÛC D

outTangent
ÛÛD N
)
ÛÛN O
.
ÛÛO P

normalized
ÛÛP Z
*
ÛÛ[ \
$num
ÛÛ] `
;
ÛÛ` a
var
ÙÙ 
	inTangent
ÙÙ 
=
ÙÙ 
pos
ÙÙ  #
-
ÙÙ$ %"
CurveTangentToCanvas
ÙÙ& :
(
ÙÙ: ;
keys
ÙÙ; ?
[
ÙÙ? @
k
ÙÙ@ A
]
ÙÙA B
.
ÙÙB C
	inTangent
ÙÙC L
)
ÙÙL M
.
ÙÙM N

normalized
ÙÙN X
*
ÙÙY Z
$num
ÙÙ[ ^
;
ÙÙ^ _
var
ıı 
inTangentHitRect
ıı $
=
ıı% &
new
ıı' *
Rect
ıı+ /
(
ıı/ 0
	inTangent
ıı0 9
.
ıı9 :
x
ıı: ;
-
ıı< =
$num
ıı> @
,
ıı@ A
	inTangent
ııB K
.
ııK L
y
ııL M
-
ııN O
$num
ııP R
,
ııR S
$num
ııT W
,
ııW X
$num
ııY \
)
ıı\ ]
;
ıı] ^
var
ˆˆ 
outTangentHitrect
ˆˆ %
=
ˆˆ& '
new
ˆˆ( +
Rect
ˆˆ, 0
(
ˆˆ0 1

outTangent
ˆˆ1 ;
.
ˆˆ; <
x
ˆˆ< =
-
ˆˆ> ?
$num
ˆˆ@ B
,
ˆˆB C

outTangent
ˆˆD N
.
ˆˆN O
y
ˆˆO P
-
ˆˆQ R
$num
ˆˆS U
,
ˆˆU V
$num
ˆˆW Z
,
ˆˆZ [
$num
ˆˆ\ _
)
ˆˆ_ `
;
ˆˆ` a
if
˘˘ 
(
˘˘ 
state
˘˘ 
.
˘˘ $
showNonEditableHandles
˘˘ 0
)
˘˘0 1
{
˙˙ 
if
˚˚ 
(
˚˚ 
e
˚˚ 
.
˚˚ 
type
˚˚ 
==
˚˚ !
	EventType
˚˚" +
.
˚˚+ ,
Repaint
˚˚, 3
)
˚˚3 4
{
¸¸ 
var
˝˝ 
selectedColor
˝˝ )
=
˝˝* +
(
˝˝, -&
isCurrentlySelectedCurve
˝˝- E
&&
˝˝F H)
isCurrentlySelectedKeyframe
˝˝I d
)
˝˝d e
?
˛˛ 
settings
˛˛ &
.
˛˛& '
selectionColor
˛˛' 5
:
ˇˇ 
state
ˇˇ #
.
ˇˇ# $
color
ˇˇ$ )
;
ˇˇ) *
	EditorGUI
ÇÇ !
.
ÇÇ! "
DrawRect
ÇÇ" *
(
ÇÇ* +
offset
ÇÇ+ 1
.
ÇÇ1 2
Remove
ÇÇ2 8
(
ÇÇ8 9
hitRect
ÇÇ9 @
)
ÇÇ@ A
,
ÇÇA B
selectedColor
ÇÇC P
)
ÇÇP Q
;
ÇÇQ R
if
ÖÖ 
(
ÖÖ &
isCurrentlySelectedCurve
ÖÖ 4
&&
ÖÖ5 7
(
ÖÖ8 9
!
ÖÖ9 :
state
ÖÖ: ?
.
ÖÖ? @(
onlyShowHandlesOnSelection
ÖÖ@ Z
||
ÖÖ[ ]
(
ÖÖ^ _
state
ÖÖ_ d
.
ÖÖd e(
onlyShowHandlesOnSelection
ÖÖe 
&&ÖÖÄ Ç+
isCurrentlySelectedKeyframeÖÖÉ û
)ÖÖû ü
)ÖÖü †
)ÖÖ† °
{
ÜÜ 
Handles
áá #
.
áá# $
color
áá$ )
=
áá* +
selectedColor
áá, 9
;
áá9 :
if
ââ 
(
ââ  
k
ââ  !
>
ââ" #
$num
ââ$ %
||
ââ& (
state
ââ) .
.
ââ. /
loopInBounds
ââ/ ;
)
ââ; <
{
ää 
Handles
ãã  '
.
ãã' (
DrawAAPolyLine
ãã( 6
(
ãã6 7
state
ãã7 <
.
ãã< =
handleWidth
ãã= H
,
ããH I
pos
ããJ M
,
ããM N
	inTangent
ããO X
)
ããX Y
;
ããY Z
	EditorGUI
åå  )
.
åå) *
DrawRect
åå* 2
(
åå2 3
offset
åå3 9
.
åå9 :
Remove
åå: @
(
åå@ A
inTangentHitRect
ååA Q
)
ååQ R
,
ååR S
selectedColor
ååT a
)
ååa b
;
ååb c
}
çç 
if
èè 
(
èè  
k
èè  !
<
èè" #
length
èè$ *
-
èè+ ,
$num
èè- .
||
èè/ 1
state
èè2 7
.
èè7 8
loopInBounds
èè8 D
)
èèD E
{
êê 
Handles
ëë  '
.
ëë' (
DrawAAPolyLine
ëë( 6
(
ëë6 7
state
ëë7 <
.
ëë< =
handleWidth
ëë= H
,
ëëH I
pos
ëëJ M
,
ëëM N

outTangent
ëëO Y
)
ëëY Z
;
ëëZ [
	EditorGUI
íí  )
.
íí) *
DrawRect
íí* 2
(
íí2 3
offset
íí3 9
.
íí9 :
Remove
íí: @
(
íí@ A
outTangentHitrect
ííA R
)
ííR S
,
ííS T
selectedColor
ííU b
)
ííb c
;
ííc d
}
ìì 
}
îî 
}
ïï 
}
ññ 
if
ôô 
(
ôô 
state
ôô 
.
ôô 
editable
ôô "
)
ôô" #
{
öö 
if
úú 
(
úú 

m_EditMode
úú "
==
úú# %
EditMode
úú& .
.
úú. /
Moving
úú/ 5
&&
úú6 8
e
úú9 :
.
úú: ;
type
úú; ?
==
úú@ B
	EventType
úúC L
.
úúL M
	MouseDrag
úúM V
&&
úúW Y&
isCurrentlySelectedCurve
úúZ r
&&
úús u*
isCurrentlySelectedKeyframeúúv ë
)úúë í
{
ùù 
EditMoveKeyframe
ûû (
(
ûû( )
	animCurve
ûû) 2
,
ûû2 3
keys
ûû4 8
,
ûû8 9
k
ûû: ;
)
ûû; <
;
ûû< =
}
üü 
if
¢¢ 
(
¢¢ 

m_EditMode
¢¢ "
==
¢¢# %
EditMode
¢¢& .
.
¢¢. /
TangentEdit
¢¢/ :
&&
¢¢; =
e
¢¢> ?
.
¢¢? @
type
¢¢@ D
==
¢¢E G
	EventType
¢¢H Q
.
¢¢Q R
	MouseDrag
¢¢R [
&&
¢¢\ ^&
isCurrentlySelectedCurve
¢¢_ w
&&
¢¢x z*
isCurrentlySelectedKeyframe¢¢{ ñ
)¢¢ñ ó
{
££ 
bool
§§ 
alreadyBroken
§§ *
=
§§+ ,
!
§§- .
(
§§. /
Mathf
§§/ 4
.
§§4 5
Approximately
§§5 B
(
§§B C
keys
§§C G
[
§§G H
k
§§H I
]
§§I J
.
§§J K
	inTangent
§§K T
,
§§T U
keys
§§V Z
[
§§Z [
k
§§[ \
]
§§\ ]
.
§§] ^

outTangent
§§^ h
)
§§h i
||
§§j l
(
§§m n
float
§§n s
.
§§s t

IsInfinity
§§t ~
(
§§~ 
keys§§ É
[§§É Ñ
k§§Ñ Ö
]§§Ö Ü
.§§Ü á
	inTangent§§á ê
)§§ê ë
&&§§í î
float§§ï ö
.§§ö õ

IsInfinity§§õ •
(§§• ¶
keys§§¶ ™
[§§™ ´
k§§´ ¨
]§§¨ ≠
.§§≠ Æ

outTangent§§Æ ∏
)§§∏ π
)§§π ∫
)§§∫ ª
;§§ª º
EditMoveTangent
•• '
(
••' (
	animCurve
••( 1
,
••1 2
keys
••3 7
,
••7 8
k
••9 :
,
••: ;
m_TangentEditMode
••< M
,
••M N
e
••O P
.
••P Q
shift
••Q V
||
••W Y
!
••Z [
(
••[ \
alreadyBroken
••\ i
||
••j l
e
••m n
.
••n o
control
••o v
)
••v w
)
••w x
;
••x y
}
¶¶ 
if
©© 
(
©© 
e
©© 
.
©© 
type
©© 
==
©© !
	EventType
©©" +
.
©©+ ,
	MouseDown
©©, 5
&&
©©6 8
rect
©©9 =
.
©©= >
Contains
©©> F
(
©©F G
e
©©G H
.
©©H I
mousePosition
©©I V
)
©©V W
)
©©W X
{
™™ 
if
´´ 
(
´´ 
hitRect
´´ #
.
´´# $
Contains
´´$ ,
(
´´, -
e
´´- .
.
´´. /
mousePosition
´´/ <
)
´´< =
)
´´= >
{
¨¨ 
if
≠≠ 
(
≠≠  
e
≠≠  !
.
≠≠! "
button
≠≠" (
==
≠≠) +
$num
≠≠, -
)
≠≠- .
{
ÆÆ 
SelectKeyframe
ØØ  .
(
ØØ. /
curve
ØØ/ 4
,
ØØ4 5
k
ØØ6 7
)
ØØ7 8
;
ØØ8 9

m_EditMode
∞∞  *
=
∞∞+ ,
EditMode
∞∞- 5
.
∞∞5 6
Moving
∞∞6 <
;
∞∞< =
e
±±  !
.
±±! "
Use
±±" %
(
±±% &
)
±±& '
;
±±' (
}
≤≤ 
else
≥≥  
if
≥≥! #
(
≥≥$ %
e
≥≥% &
.
≥≥& '
button
≥≥' -
==
≥≥. 0
$num
≥≥1 2
)
≥≥2 3
{
¥¥ 
var
∂∂  #
menu
∂∂$ (
=
∂∂) *
new
∂∂+ .
GenericMenu
∂∂/ :
(
∂∂: ;
)
∂∂; <
;
∂∂< =
menu
∑∑  $
.
∑∑$ %
AddItem
∑∑% ,
(
∑∑, -
new
∑∑- 0

GUIContent
∑∑1 ;
(
∑∑; <
$str
∑∑< H
)
∑∑H I
,
∑∑I J
false
∑∑K P
,
∑∑P Q
(
∑∑R S
x
∑∑S T
)
∑∑T U
=>
∑∑V X
{
∏∏  !
var
ππ$ '
action
ππ( .
=
ππ/ 0
(
ππ1 2

MenuAction
ππ2 <
)
ππ< =
x
ππ= >
;
ππ> ?
var
∫∫$ '

curveValue
∫∫( 2
=
∫∫3 4
action
∫∫5 ;
.
∫∫; <
curve
∫∫< A
.
∫∫A B!
animationCurveValue
∫∫B U
;
∫∫U V
action
ªª$ *
.
ªª* +
curve
ªª+ 0
.
ªª0 1
serializedObject
ªª1 A
.
ªªA B
Update
ªªB H
(
ªªH I
)
ªªI J
;
ªªJ K
RemoveKeyframe
ºº$ 2
(
ºº2 3

curveValue
ºº3 =
,
ºº= >
action
ºº? E
.
ººE F
index
ººF K
)
ººK L
;
ººL M%
m_SelectedKeyframeIndex
ΩΩ$ ;
=
ΩΩ< =
-
ΩΩ> ?
$num
ΩΩ? @
;
ΩΩ@ A
	SaveCurve
ææ$ -
(
ææ- .
action
ææ. 4
.
ææ4 5
curve
ææ5 :
,
ææ: ;

curveValue
ææ< F
)
ææF G
;
ææG H
action
øø$ *
.
øø* +
curve
øø+ 0
.
øø0 1
serializedObject
øø1 A
.
øøA B%
ApplyModifiedProperties
øøB Y
(
øøY Z
)
øøZ [
;
øø[ \
}
¿¿  !
,
¿¿! "
new
¿¿# &

MenuAction
¿¿' 1
(
¿¿1 2
curve
¿¿2 7
,
¿¿7 8
k
¿¿9 :
)
¿¿: ;
)
¿¿; <
;
¿¿< =
menu
¡¡  $
.
¡¡$ %
ShowAsContext
¡¡% 2
(
¡¡2 3
)
¡¡3 4
;
¡¡4 5
e
¬¬  !
.
¬¬! "
Use
¬¬" %
(
¬¬% &
)
¬¬& '
;
¬¬' (
}
√√ 
}
ƒƒ 
}
≈≈ 
if
»» 
(
»» 
e
»» 
.
»» 
type
»» 
==
»» !
	EventType
»»" +
.
»»+ ,
	MouseDown
»», 5
&&
»»6 8
rect
»»9 =
.
»»= >
Contains
»»> F
(
»»F G
e
»»G H
.
»»H I
mousePosition
»»I V
)
»»V W
)
»»W X
{
…… 
if
   
(
   
inTangentHitRect
   ,
.
  , -
Contains
  - 5
(
  5 6
e
  6 7
.
  7 8
mousePosition
  8 E
)
  E F
&&
  G I
(
  J K
k
  K L
>
  M N
$num
  O P
||
  Q S
state
  T Y
.
  Y Z
loopInBounds
  Z f
)
  f g
)
  g h
{
ÀÀ 
SelectKeyframe
ÃÃ *
(
ÃÃ* +
curve
ÃÃ+ 0
,
ÃÃ0 1
k
ÃÃ2 3
)
ÃÃ3 4
;
ÃÃ4 5

m_EditMode
ÕÕ &
=
ÕÕ' (
EditMode
ÕÕ) 1
.
ÕÕ1 2
TangentEdit
ÕÕ2 =
;
ÕÕ= >
m_TangentEditMode
ŒŒ -
=
ŒŒ. /
Tangent
ŒŒ0 7
.
ŒŒ7 8
In
ŒŒ8 :
;
ŒŒ: ;
e
œœ 
.
œœ 
Use
œœ !
(
œœ! "
)
œœ" #
;
œœ# $
}
–– 
else
—— 
if
—— 
(
——  !
outTangentHitrect
——! 2
.
——2 3
Contains
——3 ;
(
——; <
e
——< =
.
——= >
mousePosition
——> K
)
——K L
&&
——M O
(
——P Q
k
——Q R
<
——S T
length
——U [
-
——\ ]
$num
——^ _
||
——` b
state
——c h
.
——h i
loopInBounds
——i u
)
——u v
)
——v w
{
““ 
SelectKeyframe
”” *
(
””* +
curve
””+ 0
,
””0 1
k
””2 3
)
””3 4
;
””4 5

m_EditMode
‘‘ &
=
‘‘' (
EditMode
‘‘) 1
.
‘‘1 2
TangentEdit
‘‘2 =
;
‘‘= >
m_TangentEditMode
’’ -
=
’’. /
Tangent
’’0 7
.
’’7 8
Out
’’8 ;
;
’’; <
e
÷÷ 
.
÷÷ 
Use
÷÷ !
(
÷÷! "
)
÷÷" #
;
÷÷# $
}
◊◊ 
}
ÿÿ 
if
€€ 
(
€€ 
e
€€ 
.
€€ 
rawType
€€ !
==
€€" $
	EventType
€€% .
.
€€. /
MouseUp
€€/ 6
&&
€€7 9

m_EditMode
€€: D
!=
€€E G
EditMode
€€H P
.
€€P Q
None
€€Q U
)
€€U V
{
‹‹ 

m_EditMode
›› "
=
››# $
EditMode
››% -
.
››- .
None
››. 2
;
››2 3
}
ﬁﬁ 
{
·· 
EditorGUIUtility
‚‚ (
.
‚‚( )
AddCursorRect
‚‚) 6
(
‚‚6 7
hitRect
‚‚7 >
,
‚‚> ?
MouseCursor
‚‚@ K
.
‚‚K L
	MoveArrow
‚‚L U
)
‚‚U V
;
‚‚V W
if
‰‰ 
(
‰‰ 
k
‰‰ 
>
‰‰ 
$num
‰‰  !
||
‰‰" $
state
‰‰% *
.
‰‰* +
loopInBounds
‰‰+ 7
)
‰‰7 8
EditorGUIUtility
ÂÂ ,
.
ÂÂ, -
AddCursorRect
ÂÂ- :
(
ÂÂ: ;
inTangentHitRect
ÂÂ; K
,
ÂÂK L
MouseCursor
ÂÂM X
.
ÂÂX Y
RotateArrow
ÂÂY d
)
ÂÂd e
;
ÂÂe f
if
ÁÁ 
(
ÁÁ 
k
ÁÁ 
<
ÁÁ 
length
ÁÁ  &
-
ÁÁ' (
$num
ÁÁ) *
||
ÁÁ+ -
state
ÁÁ. 3
.
ÁÁ3 4
loopInBounds
ÁÁ4 @
)
ÁÁ@ A
EditorGUIUtility
ËË ,
.
ËË, -
AddCursorRect
ËË- :
(
ËË: ;
outTangentHitrect
ËË; L
,
ËËL M
MouseCursor
ËËN Y
.
ËËY Z
RotateArrow
ËËZ e
)
ËËe f
;
ËËf g
}
ÈÈ 
}
ÍÍ 
}
ÎÎ 
Handles
ÌÌ 
.
ÌÌ 
color
ÌÌ 
=
ÌÌ 
Color
ÌÌ !
.
ÌÌ! "
white
ÌÌ" '
;
ÌÌ' (
	SaveCurve
ÓÓ 
(
ÓÓ 
curve
ÓÓ 
,
ÓÓ 
	animCurve
ÓÓ &
)
ÓÓ& '
;
ÓÓ' (
}
ÔÔ 	
void
ÒÒ 
OnGeneralUI
ÒÒ 
(
ÒÒ 
Rect
ÒÒ 
rect
ÒÒ "
)
ÒÒ" #
{
ÚÚ 	
var
ÛÛ 
e
ÛÛ 
=
ÛÛ 
Event
ÛÛ 
.
ÛÛ 
current
ÛÛ !
;
ÛÛ! "
if
ˆˆ 
(
ˆˆ 
e
ˆˆ 
.
ˆˆ 
type
ˆˆ 
==
ˆˆ 
	EventType
ˆˆ #
.
ˆˆ# $
	MouseDown
ˆˆ$ -
)
ˆˆ- .
{
˜˜ 
GUI
¯¯ 
.
¯¯ 
FocusControl
¯¯  
(
¯¯  !
null
¯¯! %
)
¯¯% &
;
¯¯& '
m_SelectedCurve
˘˘ 
=
˘˘  !
null
˘˘" &
;
˘˘& '%
m_SelectedKeyframeIndex
˙˙ '
=
˙˙( )
-
˙˙* +
$num
˙˙+ ,
;
˙˙, -
bool
˚˚ 
used
˚˚ 
=
˚˚ 
false
˚˚ !
;
˚˚! "
var
˝˝ 
hit
˝˝ 
=
˝˝ 
CanvasToCurve
˝˝ '
(
˝˝' (
e
˝˝( )
.
˝˝) *
mousePosition
˝˝* 7
)
˝˝7 8
;
˝˝8 9
float
˛˛ 
curvePickValue
˛˛ $
=
˛˛% &
CurveToCanvas
˛˛' 4
(
˛˛4 5
hit
˛˛5 8
)
˛˛8 9
.
˛˛9 :
y
˛˛: ;
;
˛˛; <
foreach
ÅÅ 
(
ÅÅ 
var
ÅÅ 
curve
ÅÅ "
in
ÅÅ# %
m_Curves
ÅÅ& .
)
ÅÅ. /
{
ÇÇ 
if
ÉÉ 
(
ÉÉ 
!
ÉÉ 
curve
ÉÉ 
.
ÉÉ 
Value
ÉÉ $
.
ÉÉ$ %
editable
ÉÉ% -
||
ÉÉ. 0
!
ÉÉ1 2
curve
ÉÉ2 7
.
ÉÉ7 8
Value
ÉÉ8 =
.
ÉÉ= >
visible
ÉÉ> E
)
ÉÉE F
continue
ÑÑ  
;
ÑÑ  !
var
ÜÜ 
prop
ÜÜ 
=
ÜÜ 
curve
ÜÜ $
.
ÜÜ$ %
Key
ÜÜ% (
;
ÜÜ( )
var
áá 
state
áá 
=
áá 
curve
áá  %
.
áá% &
Value
áá& +
;
áá+ ,
var
àà 
	animCurve
àà !
=
àà" #
prop
àà$ (
.
àà( )!
animationCurveValue
àà) <
;
àà< =
float
ââ 
hitY
ââ 
=
ââ  
	animCurve
ââ! *
.
ââ* +
length
ââ+ 1
==
ââ2 4
$num
ââ5 6
?
ää 
state
ää 
.
ää  "
zeroKeyConstantValue
ää  4
:
ãã 
	animCurve
ãã #
.
ãã# $
Evaluate
ãã$ ,
(
ãã, -
hit
ãã- 0
.
ãã0 1
x
ãã1 2
)
ãã2 3
;
ãã3 4
var
çç 
curvePos
çç  
=
çç! "
CurveToCanvas
çç# 0
(
çç0 1
new
çç1 4
Vector3
çç5 <
(
çç< =
hit
çç= @
.
çç@ A
x
ççA B
,
ççB C
hitY
ççD H
)
ççH I
)
ççI J
;
ççJ K
if
èè 
(
èè 
Mathf
èè 
.
èè 
Abs
èè !
(
èè! "
curvePos
èè" *
.
èè* +
y
èè+ ,
-
èè- .
curvePickValue
èè/ =
)
èè= >
<
èè? @
settings
èèA I
.
èèI J"
curvePickingDistance
èèJ ^
)
èè^ _
{
êê 
m_SelectedCurve
ëë '
=
ëë( )
prop
ëë* .
;
ëë. /
if
ìì 
(
ìì 
e
ìì 
.
ìì 

clickCount
ìì (
==
ìì) +
$num
ìì, -
&&
ìì. 0
e
ìì1 2
.
ìì2 3
button
ìì3 9
==
ìì: <
$num
ìì= >
)
ìì> ?
{
îî  
EditCreateKeyframe
ññ .
(
ññ. /
	animCurve
ññ/ 8
,
ññ8 9
hit
ññ: =
,
ññ= >
true
ññ? C
,
ññC D
state
ññE J
.
ññJ K"
zeroKeyConstantValue
ññK _
)
ññ_ `
;
ññ` a
	SaveCurve
óó %
(
óó% &
prop
óó& *
,
óó* +
	animCurve
óó, 5
)
óó5 6
;
óó6 7
}
òò 
else
ôô 
if
ôô 
(
ôô  !
e
ôô! "
.
ôô" #
button
ôô# )
==
ôô* ,
$num
ôô- .
)
ôô. /
{
öö 
var
úú 
menu
úú  $
=
úú% &
new
úú' *
GenericMenu
úú+ 6
(
úú6 7
)
úú7 8
;
úú8 9
menu
ùù  
.
ùù  !
AddItem
ùù! (
(
ùù( )
new
ùù) ,

GUIContent
ùù- 7
(
ùù7 8
$str
ùù8 A
)
ùùA B
,
ùùB C
false
ùùD I
,
ùùI J
(
ùùK L
x
ùùL M
)
ùùM N
=>
ùùO Q
{
ûû 
var
üü  #
action
üü$ *
=
üü+ ,
(
üü- .

MenuAction
üü. 8
)
üü8 9
x
üü9 :
;
üü: ;
var
††  #

curveValue
††$ .
=
††/ 0
action
††1 7
.
††7 8
curve
††8 =
.
††= >!
animationCurveValue
††> Q
;
††Q R
action
°°  &
.
°°& '
curve
°°' ,
.
°°, -
serializedObject
°°- =
.
°°= >
Update
°°> D
(
°°D E
)
°°E F
;
°°F G 
EditCreateKeyframe
¢¢  2
(
¢¢2 3

curveValue
¢¢3 =
,
¢¢= >
hit
¢¢? B
,
¢¢B C
true
¢¢D H
,
¢¢H I
$num
¢¢J L
)
¢¢L M
;
¢¢M N
	SaveCurve
££  )
(
££) *
action
££* 0
.
££0 1
curve
££1 6
,
££6 7

curveValue
££8 B
)
££B C
;
££C D
action
§§  &
.
§§& '
curve
§§' ,
.
§§, -
serializedObject
§§- =
.
§§= >%
ApplyModifiedProperties
§§> U
(
§§U V
)
§§V W
;
§§W X
}
•• 
,
•• 
new
•• "

MenuAction
••# -
(
••- .
prop
••. 2
,
••2 3
hit
••4 7
)
••7 8
)
••8 9
;
••9 :
menu
¶¶  
.
¶¶  !
ShowAsContext
¶¶! .
(
¶¶. /
)
¶¶/ 0
;
¶¶0 1
e
ßß 
.
ßß 
Use
ßß !
(
ßß! "
)
ßß" #
;
ßß# $
used
®®  
=
®®! "
true
®®# '
;
®®' (
}
©© 
}
™™ 
}
´´ 
if
≠≠ 
(
≠≠ 
e
≠≠ 
.
≠≠ 

clickCount
≠≠  
==
≠≠! #
$num
≠≠$ %
&&
≠≠& (
e
≠≠) *
.
≠≠* +
button
≠≠+ 1
==
≠≠2 4
$num
≠≠5 6
&&
≠≠7 9
m_SelectedCurve
≠≠: I
==
≠≠J L
null
≠≠M Q
)
≠≠Q R
{
ÆÆ 
foreach
∞∞ 
(
∞∞ 
var
∞∞  
curve
∞∞! &
in
∞∞' )
m_Curves
∞∞* 2
)
∞∞2 3
{
±± 
if
≤≤ 
(
≤≤ 
!
≤≤ 
curve
≤≤ "
.
≤≤" #
Value
≤≤# (
.
≤≤( )
editable
≤≤) 1
||
≤≤2 4
!
≤≤5 6
curve
≤≤6 ;
.
≤≤; <
Value
≤≤< A
.
≤≤A B
visible
≤≤B I
)
≤≤I J
continue
≥≥ $
;
≥≥$ %
var
µµ 
prop
µµ  
=
µµ! "
curve
µµ# (
.
µµ( )
Key
µµ) ,
;
µµ, -
var
∂∂ 
state
∂∂ !
=
∂∂" #
curve
∂∂$ )
.
∂∂) *
Value
∂∂* /
;
∂∂/ 0
var
∑∑ 
	animCurve
∑∑ %
=
∑∑& '
prop
∑∑( ,
.
∑∑, -!
animationCurveValue
∑∑- @
;
∑∑@ A 
EditCreateKeyframe
∏∏ *
(
∏∏* +
	animCurve
∏∏+ 4
,
∏∏4 5
hit
∏∏6 9
,
∏∏9 :
e
∏∏; <
.
∏∏< =
alt
∏∏= @
,
∏∏@ A
state
∏∏B G
.
∏∏G H"
zeroKeyConstantValue
∏∏H \
)
∏∏\ ]
;
∏∏] ^
	SaveCurve
ππ !
(
ππ! "
prop
ππ" &
,
ππ& '
	animCurve
ππ( 1
)
ππ1 2
;
ππ2 3
}
∫∫ 
}
ªª 
else
ºº 
if
ºº 
(
ºº 
!
ºº 
used
ºº 
&&
ºº !
e
ºº" #
.
ºº# $
button
ºº$ *
==
ºº+ -
$num
ºº. /
)
ºº/ 0
{
ΩΩ 
var
øø 
menu
øø 
=
øø 
new
øø "
GenericMenu
øø# .
(
øø. /
)
øø/ 0
;
øø0 1
menu
¿¿ 
.
¿¿ 
AddItem
¿¿  
(
¿¿  !
new
¿¿! $

GUIContent
¿¿% /
(
¿¿/ 0
$str
¿¿0 E
)
¿¿E F
,
¿¿F G
false
¿¿H M
,
¿¿M N
(
¿¿O P
)
¿¿P Q
=>
¿¿R T
ContextMenuAddKey
¿¿U f
(
¿¿f g
hit
¿¿g j
,
¿¿j k
false
¿¿l q
)
¿¿q r
)
¿¿r s
;
¿¿s t
menu
¡¡ 
.
¡¡ 
AddItem
¡¡  
(
¡¡  !
new
¡¡! $

GUIContent
¡¡% /
(
¡¡/ 0
$str
¡¡0 C
)
¡¡C D
,
¡¡D E
false
¡¡F K
,
¡¡K L
(
¡¡M N
)
¡¡N O
=>
¡¡P R
ContextMenuAddKey
¡¡S d
(
¡¡d e
hit
¡¡e h
,
¡¡h i
true
¡¡j n
)
¡¡n o
)
¡¡o p
;
¡¡p q
menu
¬¬ 
.
¬¬ 
ShowAsContext
¬¬ &
(
¬¬& '
)
¬¬' (
;
¬¬( )
}
√√ 
e
≈≈ 
.
≈≈ 
Use
≈≈ 
(
≈≈ 
)
≈≈ 
;
≈≈ 
}
∆∆ 
if
…… 
(
…… 
e
…… 
.
…… 
type
…… 
==
…… 
	EventType
…… #
.
……# $
KeyDown
……$ +
&&
……, .
(
……/ 0
e
……0 1
.
……1 2
keyCode
……2 9
==
……: <
KeyCode
……= D
.
……D E
Delete
……E K
||
……L N
e
……O P
.
……P Q
keyCode
……Q X
==
……Y [
KeyCode
……\ c
.
……c d
	Backspace
……d m
)
……m n
)
……n o
{
   
if
ÀÀ 
(
ÀÀ %
m_SelectedKeyframeIndex
ÀÀ +
!=
ÀÀ, .
-
ÀÀ/ 0
$num
ÀÀ0 1
&&
ÀÀ2 4
m_SelectedCurve
ÀÀ5 D
!=
ÀÀE G
null
ÀÀH L
)
ÀÀL M
{
ÃÃ 
var
ÕÕ 
	animCurve
ÕÕ !
=
ÕÕ" #
m_SelectedCurve
ÕÕ$ 3
.
ÕÕ3 4!
animationCurveValue
ÕÕ4 G
;
ÕÕG H
var
ŒŒ 
length
ŒŒ 
=
ŒŒ  
	animCurve
ŒŒ! *
.
ŒŒ* +
length
ŒŒ+ 1
;
ŒŒ1 2
if
–– 
(
–– 
m_Curves
––  
[
––  !
m_SelectedCurve
––! 0
]
––0 1
.
––1 2
minPointCount
––2 ?
<
––@ A
length
––B H
&&
––I K
length
––L R
>=
––S U
$num
––V W
)
––W X
{
——  
EditDeleteKeyframe
““ *
(
““* +
	animCurve
““+ 4
,
““4 5%
m_SelectedKeyframeIndex
““6 M
)
““M N
;
““N O%
m_SelectedKeyframeIndex
”” /
=
””0 1
-
””2 3
$num
””3 4
;
””4 5
	SaveCurve
‘‘ !
(
‘‘! "
m_SelectedCurve
‘‘" 1
,
‘‘1 2
	animCurve
‘‘3 <
)
‘‘< =
;
‘‘= >
}
’’ 
e
◊◊ 
.
◊◊ 
Use
◊◊ 
(
◊◊ 
)
◊◊ 
;
◊◊ 
}
ÿÿ 
}
ŸŸ 
}
⁄⁄ 	
void
‹‹ 
	SaveCurve
‹‹ 
(
‹‹  
SerializedProperty
‹‹ )
prop
‹‹* .
,
‹‹. /
AnimationCurve
‹‹0 >
curve
‹‹? D
)
‹‹D E
{
›› 	
prop
ﬁﬁ 
.
ﬁﬁ !
animationCurveValue
ﬁﬁ $
=
ﬁﬁ% &
curve
ﬁﬁ' ,
;
ﬁﬁ, -
}
ﬂﬂ 	
void
·· 

Invalidate
·· 
(
·· 
)
·· 
{
‚‚ 	
m_Dirty
„„ 
=
„„ 
true
„„ 
;
„„ 
}
‰‰ 	
void
ÍÍ 
SelectKeyframe
ÍÍ 
(
ÍÍ  
SerializedProperty
ÍÍ .
curve
ÍÍ/ 4
,
ÍÍ4 5
int
ÍÍ6 9
keyframeIndex
ÍÍ: G
)
ÍÍG H
{
ÎÎ 	%
m_SelectedKeyframeIndex
ÏÏ #
=
ÏÏ$ %
keyframeIndex
ÏÏ& 3
;
ÏÏ3 4
m_SelectedCurve
ÌÌ 
=
ÌÌ 
curve
ÌÌ #
;
ÌÌ# $

Invalidate
ÓÓ 
(
ÓÓ 
)
ÓÓ 
;
ÓÓ 
}
ÔÔ 	
void
ÒÒ 
ContextMenuAddKey
ÒÒ 
(
ÒÒ 
Vector3
ÒÒ &
hit
ÒÒ' *
,
ÒÒ* +
bool
ÒÒ, 0
createOnCurve
ÒÒ1 >
)
ÒÒ> ?
{
ÚÚ 	
SerializedObject
ÛÛ 
serializedObject
ÛÛ -
=
ÛÛ. /
null
ÛÛ0 4
;
ÛÛ4 5
foreach
ıı 
(
ıı 
var
ıı 
curve
ıı 
in
ıı !
m_Curves
ıı" *
)
ıı* +
{
ˆˆ 
if
˜˜ 
(
˜˜ 
!
˜˜ 
curve
˜˜ 
.
˜˜ 
Value
˜˜  
.
˜˜  !
editable
˜˜! )
||
˜˜* ,
!
˜˜- .
curve
˜˜. 3
.
˜˜3 4
Value
˜˜4 9
.
˜˜9 :
visible
˜˜: A
)
˜˜A B
continue
¯¯ 
;
¯¯ 
var
˙˙ 
prop
˙˙ 
=
˙˙ 
curve
˙˙  
.
˙˙  !
Key
˙˙! $
;
˙˙$ %
var
˚˚ 
state
˚˚ 
=
˚˚ 
curve
˚˚ !
.
˚˚! "
Value
˚˚" '
;
˚˚' (
if
˝˝ 
(
˝˝ 
serializedObject
˝˝ $
==
˝˝% '
null
˝˝( ,
)
˝˝, -
{
˛˛ 
serializedObject
ˇˇ $
=
ˇˇ% &
prop
ˇˇ' +
.
ˇˇ+ ,
serializedObject
ˇˇ, <
;
ˇˇ< =
serializedObject
ÄÄ $
.
ÄÄ$ %
Update
ÄÄ% +
(
ÄÄ+ ,
)
ÄÄ, -
;
ÄÄ- .
}
ÅÅ 
var
ÉÉ 
	animCurve
ÉÉ 
=
ÉÉ 
prop
ÉÉ  $
.
ÉÉ$ %!
animationCurveValue
ÉÉ% 8
;
ÉÉ8 9 
EditCreateKeyframe
ÑÑ "
(
ÑÑ" #
	animCurve
ÑÑ# ,
,
ÑÑ, -
hit
ÑÑ. 1
,
ÑÑ1 2
createOnCurve
ÑÑ3 @
,
ÑÑ@ A
state
ÑÑB G
.
ÑÑG H"
zeroKeyConstantValue
ÑÑH \
)
ÑÑ\ ]
;
ÑÑ] ^
	SaveCurve
ÖÖ 
(
ÖÖ 
prop
ÖÖ 
,
ÖÖ 
	animCurve
ÖÖ  )
)
ÖÖ) *
;
ÖÖ* +
}
ÜÜ 
if
àà 
(
àà 
serializedObject
àà  
!=
àà! #
null
àà$ (
)
àà( )
serializedObject
ââ  
.
ââ  !%
ApplyModifiedProperties
ââ! 8
(
ââ8 9
)
ââ9 :
;
ââ: ;

Invalidate
ãã 
(
ãã 
)
ãã 
;
ãã 
}
åå 	
void
éé  
EditCreateKeyframe
éé 
(
éé  
AnimationCurve
éé  .
curve
éé/ 4
,
éé4 5
Vector3
éé6 =
position
éé> F
,
ééF G
bool
ééH L
createOnCurve
ééM Z
,
ééZ [
float
éé\ a"
zeroKeyConstantValue
ééb v
)
éév w
{
èè 	
float
êê 
tangent
êê 
=
êê 
EvaluateTangent
êê +
(
êê+ ,
curve
êê, 1
,
êê1 2
position
êê3 ;
.
êê; <
x
êê< =
)
êê= >
;
êê> ?
if
íí 
(
íí 
createOnCurve
íí 
)
íí 
{
ìì 
position
îî 
.
îî 
y
îî 
=
îî 
curve
îî "
.
îî" #
length
îî# )
==
îî* ,
$num
îî- .
?
ïï "
zeroKeyConstantValue
ïï *
:
ññ 
curve
ññ 
.
ññ 
Evaluate
ññ $
(
ññ$ %
position
ññ% -
.
ññ- .
x
ññ. /
)
ññ/ 0
;
ññ0 1
}
óó 
AddKeyframe
ôô 
(
ôô 
curve
ôô 
,
ôô 
new
ôô "
Keyframe
ôô# +
(
ôô+ ,
position
ôô, 4
.
ôô4 5
x
ôô5 6
,
ôô6 7
position
ôô8 @
.
ôô@ A
y
ôôA B
,
ôôB C
tangent
ôôD K
,
ôôK L
tangent
ôôM T
)
ôôT U
)
ôôU V
;
ôôV W
}
öö 	
void
úú  
EditDeleteKeyframe
úú 
(
úú  
AnimationCurve
úú  .
curve
úú/ 4
,
úú4 5
int
úú6 9
keyframeIndex
úú: G
)
úúG H
{
ùù 	
RemoveKeyframe
ûû 
(
ûû 
curve
ûû  
,
ûû  !
keyframeIndex
ûû" /
)
ûû/ 0
;
ûû0 1
}
üü 	
void
°° 
AddKeyframe
°° 
(
°° 
AnimationCurve
°° '
curve
°°( -
,
°°- .
Keyframe
°°/ 7
newValue
°°8 @
)
°°@ A
{
¢¢ 	
curve
££ 
.
££ 
AddKey
££ 
(
££ 
newValue
££ !
)
££! "
;
££" #

Invalidate
§§ 
(
§§ 
)
§§ 
;
§§ 
}
•• 	
void
ßß 
RemoveKeyframe
ßß 
(
ßß 
AnimationCurve
ßß *
curve
ßß+ 0
,
ßß0 1
int
ßß2 5
keyframeIndex
ßß6 C
)
ßßC D
{
®® 	
curve
©© 
.
©© 
	RemoveKey
©© 
(
©© 
keyframeIndex
©© )
)
©©) *
;
©©* +

Invalidate
™™ 
(
™™ 
)
™™ 
;
™™ 
}
´´ 	
void
≠≠ 
SetKeyframe
≠≠ 
(
≠≠ 
AnimationCurve
≠≠ '
curve
≠≠( -
,
≠≠- .
int
≠≠/ 2
keyframeIndex
≠≠3 @
,
≠≠@ A
Keyframe
≠≠B J
newValue
≠≠K S
)
≠≠S T
{
ÆÆ 	
var
ØØ 
keys
ØØ 
=
ØØ 
curve
ØØ 
.
ØØ 
keys
ØØ !
;
ØØ! "
if
±± 
(
±± 
keyframeIndex
±± 
>
±± 
$num
±±  !
)
±±! "
newValue
≤≤ 
.
≤≤ 
time
≤≤ 
=
≤≤ 
Mathf
≤≤  %
.
≤≤% &
Max
≤≤& )
(
≤≤) *
keys
≤≤* .
[
≤≤. /
keyframeIndex
≤≤/ <
-
≤≤= >
$num
≤≤? @
]
≤≤@ A
.
≤≤A B
time
≤≤B F
+
≤≤G H
settings
≤≤I Q
.
≤≤Q R%
keyTimeClampingDistance
≤≤R i
,
≤≤i j
newValue
≤≤k s
.
≤≤s t
time
≤≤t x
)
≤≤x y
;
≤≤y z
if
¥¥ 
(
¥¥ 
keyframeIndex
¥¥ 
<
¥¥ 
keys
¥¥  $
.
¥¥$ %
Length
¥¥% +
-
¥¥, -
$num
¥¥. /
)
¥¥/ 0
newValue
µµ 
.
µµ 
time
µµ 
=
µµ 
Mathf
µµ  %
.
µµ% &
Min
µµ& )
(
µµ) *
keys
µµ* .
[
µµ. /
keyframeIndex
µµ/ <
+
µµ= >
$num
µµ? @
]
µµ@ A
.
µµA B
time
µµB F
-
µµG H
settings
µµI Q
.
µµQ R%
keyTimeClampingDistance
µµR i
,
µµi j
newValue
µµk s
.
µµs t
time
µµt x
)
µµx y
;
µµy z
curve
∑∑ 
.
∑∑ 
MoveKey
∑∑ 
(
∑∑ 
keyframeIndex
∑∑ '
,
∑∑' (
newValue
∑∑) 1
)
∑∑1 2
;
∑∑2 3

Invalidate
∏∏ 
(
∏∏ 
)
∏∏ 
;
∏∏ 
}
ππ 	
void
ªª 
EditMoveKeyframe
ªª 
(
ªª 
AnimationCurve
ªª ,
curve
ªª- 2
,
ªª2 3
Keyframe
ªª4 <
[
ªª< =
]
ªª= >
keys
ªª? C
,
ªªC D
int
ªªE H
keyframeIndex
ªªI V
)
ªªV W
{
ºº 	
var
ΩΩ 
key
ΩΩ 
=
ΩΩ 
CanvasToCurve
ΩΩ #
(
ΩΩ# $
Event
ΩΩ$ )
.
ΩΩ) *
current
ΩΩ* 1
.
ΩΩ1 2
mousePosition
ΩΩ2 ?
)
ΩΩ? @
;
ΩΩ@ A
float
ææ 
inTgt
ææ 
=
ææ 
keys
ææ 
[
ææ 
keyframeIndex
ææ ,
]
ææ, -
.
ææ- .
	inTangent
ææ. 7
;
ææ7 8
float
øø 
outTgt
øø 
=
øø 
keys
øø 
[
øø  
keyframeIndex
øø  -
]
øø- .
.
øø. /

outTangent
øø/ 9
;
øø9 :
SetKeyframe
¿¿ 
(
¿¿ 
curve
¿¿ 
,
¿¿ 
keyframeIndex
¿¿ ,
,
¿¿, -
new
¿¿. 1
Keyframe
¿¿2 :
(
¿¿: ;
key
¿¿; >
.
¿¿> ?
x
¿¿? @
,
¿¿@ A
key
¿¿B E
.
¿¿E F
y
¿¿F G
,
¿¿G H
inTgt
¿¿I N
,
¿¿N O
outTgt
¿¿P V
)
¿¿V W
)
¿¿W X
;
¿¿X Y
}
¡¡ 	
void
√√ 
EditMoveTangent
√√ 
(
√√ 
AnimationCurve
√√ +
curve
√√, 1
,
√√1 2
Keyframe
√√3 ;
[
√√; <
]
√√< =
keys
√√> B
,
√√B C
int
√√D G
keyframeIndex
√√H U
,
√√U V
Tangent
√√W ^
targetTangent
√√_ l
,
√√l m
bool
√√n r
linkTangents
√√s 
)√√ Ä
{
ƒƒ 	
var
≈≈ 
pos
≈≈ 
=
≈≈ 
CanvasToCurve
≈≈ #
(
≈≈# $
Event
≈≈$ )
.
≈≈) *
current
≈≈* 1
.
≈≈1 2
mousePosition
≈≈2 ?
)
≈≈? @
;
≈≈@ A
float
«« 
time
«« 
=
«« 
keys
«« 
[
«« 
keyframeIndex
«« +
]
««+ ,
.
««, -
time
««- 1
;
««1 2
float
»» 
value
»» 
=
»» 
keys
»» 
[
»» 
keyframeIndex
»» ,
]
»», -
.
»»- .
value
»». 3
;
»»3 4
pos
   
-=
   
new
   
Vector3
   
(
   
time
   #
,
  # $
value
  % *
)
  * +
;
  + ,
if
ÃÃ 
(
ÃÃ 
targetTangent
ÃÃ 
==
ÃÃ  
Tangent
ÃÃ! (
.
ÃÃ( )
In
ÃÃ) +
&&
ÃÃ, .
pos
ÃÃ/ 2
.
ÃÃ2 3
x
ÃÃ3 4
>
ÃÃ5 6
$num
ÃÃ7 9
)
ÃÃ9 :
pos
ÕÕ 
.
ÕÕ 
x
ÕÕ 
=
ÕÕ 
$num
ÕÕ 
;
ÕÕ 
if
œœ 
(
œœ 
targetTangent
œœ 
==
œœ  
Tangent
œœ! (
.
œœ( )
Out
œœ) ,
&&
œœ- /
pos
œœ0 3
.
œœ3 4
x
œœ4 5
<
œœ6 7
$num
œœ8 :
)
œœ: ;
pos
–– 
.
–– 
x
–– 
=
–– 
$num
–– 
;
–– 
float
““ 
tangent
““ 
;
““ 
if
‘‘ 
(
‘‘ 
Mathf
‘‘ 
.
‘‘ 
Approximately
‘‘ #
(
‘‘# $
pos
‘‘$ '
.
‘‘' (
x
‘‘( )
,
‘‘) *
$num
‘‘+ -
)
‘‘- .
)
‘‘. /
tangent
’’ 
=
’’ 
pos
’’ 
.
’’ 
y
’’ 
<
’’  !
$num
’’" $
?
’’% &
float
’’' ,
.
’’, -
PositiveInfinity
’’- =
:
’’> ?
float
’’@ E
.
’’E F
NegativeInfinity
’’F V
;
’’V W
else
÷÷ 
tangent
◊◊ 
=
◊◊ 
pos
◊◊ 
.
◊◊ 
y
◊◊ 
/
◊◊  !
pos
◊◊" %
.
◊◊% &
x
◊◊& '
;
◊◊' (
float
ŸŸ 
	inTangent
ŸŸ 
=
ŸŸ 
keys
ŸŸ "
[
ŸŸ" #
keyframeIndex
ŸŸ# 0
]
ŸŸ0 1
.
ŸŸ1 2
	inTangent
ŸŸ2 ;
;
ŸŸ; <
float
⁄⁄ 

outTangent
⁄⁄ 
=
⁄⁄ 
keys
⁄⁄ #
[
⁄⁄# $
keyframeIndex
⁄⁄$ 1
]
⁄⁄1 2
.
⁄⁄2 3

outTangent
⁄⁄3 =
;
⁄⁄= >
if
‹‹ 
(
‹‹ 
targetTangent
‹‹ 
==
‹‹  
Tangent
‹‹! (
.
‹‹( )
In
‹‹) +
||
‹‹, .
linkTangents
‹‹/ ;
)
‹‹; <
	inTangent
›› 
=
›› 
tangent
›› #
;
››# $
if
ﬁﬁ 
(
ﬁﬁ 
targetTangent
ﬁﬁ 
==
ﬁﬁ  
Tangent
ﬁﬁ! (
.
ﬁﬁ( )
Out
ﬁﬁ) ,
||
ﬁﬁ- /
linkTangents
ﬁﬁ0 <
)
ﬁﬁ< =

outTangent
ﬂﬂ 
=
ﬂﬂ 
tangent
ﬂﬂ $
;
ﬂﬂ$ %
SetKeyframe
·· 
(
·· 
curve
·· 
,
·· 
keyframeIndex
·· ,
,
··, -
new
··. 1
Keyframe
··2 :
(
··: ;
time
··; ?
,
··? @
value
··A F
,
··F G
	inTangent
··H Q
,
··Q R

outTangent
··S ]
)
··] ^
)
··^ _
;
··_ `
}
‚‚ 	
Vector3
ËË 
CurveToCanvas
ËË 
(
ËË 
Keyframe
ËË &
keyframe
ËË' /
)
ËË/ 0
{
ÈÈ 	
return
ÍÍ 
CurveToCanvas
ÍÍ  
(
ÍÍ  !
new
ÍÍ! $
Vector3
ÍÍ% ,
(
ÍÍ, -
keyframe
ÍÍ- 5
.
ÍÍ5 6
time
ÍÍ6 :
,
ÍÍ: ;
keyframe
ÍÍ< D
.
ÍÍD E
value
ÍÍE J
)
ÍÍJ K
)
ÍÍK L
;
ÍÍL M
}
ÎÎ 	
Vector3
ÌÌ 
CurveToCanvas
ÌÌ 
(
ÌÌ 
Vector3
ÌÌ %
position
ÌÌ& .
)
ÌÌ. /
{
ÓÓ 	
var
ÔÔ 
bounds
ÔÔ 
=
ÔÔ 
settings
ÔÔ !
.
ÔÔ! "
bounds
ÔÔ" (
;
ÔÔ( )
var
 
output
 
=
 
new
 
Vector3
 $
(
$ %
(
% &
position
& .
.
. /
x
/ 0
-
1 2
bounds
3 9
.
9 :
x
: ;
)
; <
/
= >
(
? @
bounds
@ F
.
F G
xMax
G K
-
L M
bounds
N T
.
T U
x
U V
)
V W
,
W X
(
Y Z
position
Z b
.
b c
y
c d
-
e f
bounds
g m
.
m n
y
n o
)
o p
/
q r
(
s t
bounds
t z
.
z {
yMax
{ 
-Ä Å
boundsÇ à
.à â
yâ ä
)ä ã
)ã å
;å ç
output
ÒÒ 
.
ÒÒ 
x
ÒÒ 
=
ÒÒ 
output
ÒÒ 
.
ÒÒ 
x
ÒÒ 
*
ÒÒ  !
(
ÒÒ" #
m_CurveArea
ÒÒ# .
.
ÒÒ. /
xMax
ÒÒ/ 3
-
ÒÒ4 5
m_CurveArea
ÒÒ6 A
.
ÒÒA B
xMin
ÒÒB F
)
ÒÒF G
+
ÒÒH I
m_CurveArea
ÒÒJ U
.
ÒÒU V
xMin
ÒÒV Z
;
ÒÒZ [
output
ÚÚ 
.
ÚÚ 
y
ÚÚ 
=
ÚÚ 
(
ÚÚ 
$num
ÚÚ 
-
ÚÚ 
output
ÚÚ #
.
ÚÚ# $
y
ÚÚ$ %
)
ÚÚ% &
*
ÚÚ' (
(
ÚÚ) *
m_CurveArea
ÚÚ* 5
.
ÚÚ5 6
yMax
ÚÚ6 :
-
ÚÚ; <
m_CurveArea
ÚÚ= H
.
ÚÚH I
yMin
ÚÚI M
)
ÚÚM N
+
ÚÚO P
m_CurveArea
ÚÚQ \
.
ÚÚ\ ]
yMin
ÚÚ] a
;
ÚÚa b
return
ÛÛ 
output
ÛÛ 
;
ÛÛ 
}
ÙÙ 	
Vector3
ˆˆ 
CanvasToCurve
ˆˆ 
(
ˆˆ 
Vector3
ˆˆ %
position
ˆˆ& .
)
ˆˆ. /
{
˜˜ 	
var
¯¯ 
bounds
¯¯ 
=
¯¯ 
settings
¯¯ !
.
¯¯! "
bounds
¯¯" (
;
¯¯( )
var
˘˘ 
output
˘˘ 
=
˘˘ 
position
˘˘ !
;
˘˘! "
output
˙˙ 
.
˙˙ 
x
˙˙ 
=
˙˙ 
(
˙˙ 
output
˙˙ 
.
˙˙ 
x
˙˙  
-
˙˙! "
m_CurveArea
˙˙# .
.
˙˙. /
xMin
˙˙/ 3
)
˙˙3 4
/
˙˙5 6
(
˙˙7 8
m_CurveArea
˙˙8 C
.
˙˙C D
xMax
˙˙D H
-
˙˙I J
m_CurveArea
˙˙K V
.
˙˙V W
xMin
˙˙W [
)
˙˙[ \
;
˙˙\ ]
output
˚˚ 
.
˚˚ 
y
˚˚ 
=
˚˚ 
(
˚˚ 
output
˚˚ 
.
˚˚ 
y
˚˚  
-
˚˚! "
m_CurveArea
˚˚# .
.
˚˚. /
yMin
˚˚/ 3
)
˚˚3 4
/
˚˚5 6
(
˚˚7 8
m_CurveArea
˚˚8 C
.
˚˚C D
yMax
˚˚D H
-
˚˚I J
m_CurveArea
˚˚K V
.
˚˚V W
yMin
˚˚W [
)
˚˚[ \
;
˚˚\ ]
output
¸¸ 
.
¸¸ 
x
¸¸ 
=
¸¸ 
Mathf
¸¸ 
.
¸¸ 
Lerp
¸¸ !
(
¸¸! "
bounds
¸¸" (
.
¸¸( )
x
¸¸) *
,
¸¸* +
bounds
¸¸, 2
.
¸¸2 3
xMax
¸¸3 7
,
¸¸7 8
output
¸¸9 ?
.
¸¸? @
x
¸¸@ A
)
¸¸A B
;
¸¸B C
output
˝˝ 
.
˝˝ 
y
˝˝ 
=
˝˝ 
Mathf
˝˝ 
.
˝˝ 
Lerp
˝˝ !
(
˝˝! "
bounds
˝˝" (
.
˝˝( )
yMax
˝˝) -
,
˝˝- .
bounds
˝˝/ 5
.
˝˝5 6
y
˝˝6 7
,
˝˝7 8
output
˝˝9 ?
.
˝˝? @
y
˝˝@ A
)
˝˝A B
;
˝˝B C
return
˛˛ 
output
˛˛ 
;
˛˛ 
}
ˇˇ 	
Vector3
ÅÅ "
CurveTangentToCanvas
ÅÅ $
(
ÅÅ$ %
float
ÅÅ% *
tangent
ÅÅ+ 2
)
ÅÅ2 3
{
ÇÇ 	
if
ÉÉ 
(
ÉÉ 
!
ÉÉ 
float
ÉÉ 
.
ÉÉ 

IsInfinity
ÉÉ !
(
ÉÉ! "
tangent
ÉÉ" )
)
ÉÉ) *
)
ÉÉ* +
{
ÑÑ 
var
ÖÖ 
bounds
ÖÖ 
=
ÖÖ 
settings
ÖÖ %
.
ÖÖ% &
bounds
ÖÖ& ,
;
ÖÖ, -
float
ÜÜ 
ratio
ÜÜ 
=
ÜÜ 
(
ÜÜ 
m_CurveArea
ÜÜ *
.
ÜÜ* +
width
ÜÜ+ 0
/
ÜÜ1 2
m_CurveArea
ÜÜ3 >
.
ÜÜ> ?
height
ÜÜ? E
)
ÜÜE F
/
ÜÜG H
(
ÜÜI J
(
ÜÜJ K
bounds
ÜÜK Q
.
ÜÜQ R
xMax
ÜÜR V
-
ÜÜW X
bounds
ÜÜY _
.
ÜÜ_ `
x
ÜÜ` a
)
ÜÜa b
/
ÜÜc d
(
ÜÜe f
bounds
ÜÜf l
.
ÜÜl m
yMax
ÜÜm q
-
ÜÜr s
bounds
ÜÜt z
.
ÜÜz {
y
ÜÜ{ |
)
ÜÜ| }
)
ÜÜ} ~
;
ÜÜ~ 
return
áá 
new
áá 
Vector3
áá "
(
áá" #
$num
áá# %
,
áá% &
-
áá' (
tangent
áá( /
/
áá0 1
ratio
áá2 7
)
áá7 8
.
áá8 9

normalized
áá9 C
;
ááC D
}
àà 
return
ää 
float
ää 
.
ää  
IsPositiveInfinity
ää +
(
ää+ ,
tangent
ää, 3
)
ää3 4
?
ää5 6
Vector3
ää7 >
.
ää> ?
up
ää? A
:
ääB C
Vector3
ääD K
.
ääK L
down
ääL P
;
ääP Q
}
ãã 	
Vector3
çç 
[
çç 
]
çç 
BezierSegment
çç 
(
çç  
Keyframe
çç  (
start
çç) .
,
çç. /
Keyframe
çç0 8
end
çç9 <
)
çç< =
{
éé 	
var
èè 
segment
èè 
=
èè 
new
èè 
Vector3
èè %
[
èè% &
$num
èè& '
]
èè' (
;
èè( )
segment
ëë 
[
ëë 
$num
ëë 
]
ëë 
=
ëë 
CurveToCanvas
ëë &
(
ëë& '
new
ëë' *
Vector3
ëë+ 2
(
ëë2 3
start
ëë3 8
.
ëë8 9
time
ëë9 =
,
ëë= >
start
ëë? D
.
ëëD E
value
ëëE J
)
ëëJ K
)
ëëK L
;
ëëL M
segment
íí 
[
íí 
$num
íí 
]
íí 
=
íí 
CurveToCanvas
íí &
(
íí& '
new
íí' *
Vector3
íí+ 2
(
íí2 3
end
íí3 6
.
íí6 7
time
íí7 ;
,
íí; <
end
íí= @
.
íí@ A
value
ííA F
)
ííF G
)
ííG H
;
ííH I
float
îî 
middle
îî 
=
îî 
start
îî !
.
îî! "
time
îî" &
+
îî' (
(
îî) *
(
îî* +
end
îî+ .
.
îî. /
time
îî/ 3
-
îî4 5
start
îî6 ;
.
îî; <
time
îî< @
)
îî@ A
*
îîB C
$num
îîD M
)
îîM N
;
îîN O
float
ïï 
middle2
ïï 
=
ïï 
start
ïï !
.
ïï! "
time
ïï" &
+
ïï' (
(
ïï) *
(
ïï* +
end
ïï+ .
.
ïï. /
time
ïï/ 3
-
ïï4 5
start
ïï6 ;
.
ïï; <
time
ïï< @
)
ïï@ A
*
ïïB C
$num
ïïD M
)
ïïM N
;
ïïN O
segment
óó 
[
óó 
$num
óó 
]
óó 
=
óó 
CurveToCanvas
óó &
(
óó& '
new
óó' *
Vector3
óó+ 2
(
óó2 3
middle
óó3 9
,
óó9 :
ProjectTangent
óó; I
(
óóI J
start
óóJ O
.
óóO P
time
óóP T
,
óóT U
start
óóV [
.
óó[ \
value
óó\ a
,
óóa b
start
óóc h
.
óóh i

outTangent
óói s
,
óós t
middle
óóu {
)
óó{ |
)
óó| }
)
óó} ~
;
óó~ 
segment
òò 
[
òò 
$num
òò 
]
òò 
=
òò 
CurveToCanvas
òò &
(
òò& '
new
òò' *
Vector3
òò+ 2
(
òò2 3
middle2
òò3 :
,
òò: ;
ProjectTangent
òò< J
(
òòJ K
end
òòK N
.
òòN O
time
òòO S
,
òòS T
end
òòU X
.
òòX Y
value
òòY ^
,
òò^ _
end
òò` c
.
òòc d
	inTangent
òòd m
,
òòm n
middle2
òòo v
)
òòv w
)
òòw x
)
òòx y
;
òòy z
return
öö 
segment
öö 
;
öö 
}
õõ 	
Vector3
ùù 
[
ùù 
]
ùù 
HardSegment
ùù 
(
ùù 
Keyframe
ùù &
start
ùù' ,
,
ùù, -
Keyframe
ùù. 6
end
ùù7 :
)
ùù: ;
{
ûû 	
var
üü 
segment
üü 
=
üü 
new
üü 
Vector3
üü %
[
üü% &
$num
üü& '
]
üü' (
;
üü( )
segment
°° 
[
°° 
$num
°° 
]
°° 
=
°° 
CurveToCanvas
°° &
(
°°& '
start
°°' ,
)
°°, -
;
°°- .
segment
¢¢ 
[
¢¢ 
$num
¢¢ 
]
¢¢ 
=
¢¢ 
CurveToCanvas
¢¢ &
(
¢¢& '
new
¢¢' *
Vector3
¢¢+ 2
(
¢¢2 3
end
¢¢3 6
.
¢¢6 7
time
¢¢7 ;
,
¢¢; <
start
¢¢= B
.
¢¢B C
value
¢¢C H
)
¢¢H I
)
¢¢I J
;
¢¢J K
segment
££ 
[
££ 
$num
££ 
]
££ 
=
££ 
CurveToCanvas
££ &
(
££& '
end
££' *
)
££* +
;
££+ ,
return
•• 
segment
•• 
;
•• 
}
¶¶ 	
float
®® 
ProjectTangent
®® 
(
®® 
float
®® "

inPosition
®®# -
,
®®- .
float
®®/ 4
inValue
®®5 <
,
®®< =
float
®®> C
	inTangent
®®D M
,
®®M N
float
®®O T
projPosition
®®U a
)
®®a b
{
©© 	
return
™™ 
inValue
™™ 
+
™™ 
(
™™ 
(
™™ 
projPosition
™™ +
-
™™, -

inPosition
™™. 8
)
™™8 9
*
™™: ;
	inTangent
™™< E
)
™™E F
;
™™F G
}
´´ 	
float
≠≠ 
EvaluateTangent
≠≠ 
(
≠≠ 
AnimationCurve
≠≠ ,
curve
≠≠- 2
,
≠≠2 3
float
≠≠4 9
time
≠≠: >
)
≠≠> ?
{
ÆÆ 	
int
ØØ 
prev
ØØ 
=
ØØ 
-
ØØ 
$num
ØØ 
,
ØØ 
next
ØØ 
=
ØØ  !
$num
ØØ" #
;
ØØ# $
for
∞∞ 
(
∞∞ 
int
∞∞ 
i
∞∞ 
=
∞∞ 
$num
∞∞ 
;
∞∞ 
i
∞∞ 
<
∞∞ 
curve
∞∞  %
.
∞∞% &
keys
∞∞& *
.
∞∞* +
Length
∞∞+ 1
;
∞∞1 2
i
∞∞3 4
++
∞∞4 6
)
∞∞6 7
{
±± 
if
≤≤ 
(
≤≤ 
time
≤≤ 
>
≤≤ 
curve
≤≤  
.
≤≤  !
keys
≤≤! %
[
≤≤% &
i
≤≤& '
]
≤≤' (
.
≤≤( )
time
≤≤) -
)
≤≤- .
{
≥≥ 
prev
¥¥ 
=
¥¥ 
i
¥¥ 
;
¥¥ 
next
µµ 
=
µµ 
i
µµ 
+
µµ 
$num
µµ  
;
µµ  !
}
∂∂ 
else
∑∑ 
break
∑∑ 
;
∑∑ 
}
∏∏ 
if
∫∫ 
(
∫∫ 
next
∫∫ 
==
∫∫ 
$num
∫∫ 
)
∫∫ 
return
ªª 
$num
ªª 
;
ªª 
if
ΩΩ 
(
ΩΩ 
prev
ΩΩ 
==
ΩΩ 
curve
ΩΩ 
.
ΩΩ 
keys
ΩΩ "
.
ΩΩ" #
Length
ΩΩ# )
-
ΩΩ* +
$num
ΩΩ, -
)
ΩΩ- .
return
ææ 
$num
ææ 
;
ææ 
const
¿¿ 
float
¿¿ 
kD
¿¿ 
=
¿¿ 
$num
¿¿ "
;
¿¿" #
float
¡¡ 
tp
¡¡ 
=
¡¡ 
Mathf
¡¡ 
.
¡¡ 
Max
¡¡  
(
¡¡  !
time
¡¡! %
-
¡¡& '
kD
¡¡( *
,
¡¡* +
curve
¡¡, 1
.
¡¡1 2
keys
¡¡2 6
[
¡¡6 7
prev
¡¡7 ;
]
¡¡; <
.
¡¡< =
time
¡¡= A
)
¡¡A B
;
¡¡B C
float
¬¬ 
tn
¬¬ 
=
¬¬ 
Mathf
¬¬ 
.
¬¬ 
Min
¬¬  
(
¬¬  !
time
¬¬! %
+
¬¬& '
kD
¬¬( *
,
¬¬* +
curve
¬¬, 1
.
¬¬1 2
keys
¬¬2 6
[
¬¬6 7
next
¬¬7 ;
]
¬¬; <
.
¬¬< =
time
¬¬= A
)
¬¬A B
;
¬¬B C
float
ƒƒ 
vp
ƒƒ 
=
ƒƒ 
curve
ƒƒ 
.
ƒƒ 
Evaluate
ƒƒ %
(
ƒƒ% &
tp
ƒƒ& (
)
ƒƒ( )
;
ƒƒ) *
float
≈≈ 
vn
≈≈ 
=
≈≈ 
curve
≈≈ 
.
≈≈ 
Evaluate
≈≈ %
(
≈≈% &
tn
≈≈& (
)
≈≈( )
;
≈≈) *
if
«« 
(
«« 
Mathf
«« 
.
«« 
Approximately
«« #
(
««# $
tn
««$ &
,
««& '
tp
««( *
)
««* +
)
««+ ,
return
»» 
(
»» 
vn
»» 
-
»» 
vp
»» 
>
»»  !
$num
»»" $
)
»»$ %
?
»»& '
float
»»( -
.
»»- .
PositiveInfinity
»». >
:
»»? @
float
»»A F
.
»»F G
NegativeInfinity
»»G W
;
»»W X
return
   
(
   
vn
   
-
   
vp
   
)
   
/
   
(
    
tn
    "
-
  # $
tp
  % '
)
  ' (
;
  ( )
}
ÀÀ 	
}
ŒŒ 
}œœ √Ω
∏D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Utils\EditorGUIHelper.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{		 
public

 

static

 
class

 
EditorGUIHelper

 '
{ 
static 
EditorGUIHelper 
( 
)  
{ 	
s_GUIContentCache 
= 
new  #

Dictionary$ .
<. /
string/ 5
,5 6

GUIContent7 A
>A B
(B C
)C D
;D E
} 	
static 

Dictionary 
< 
string  
,  !

GUIContent" ,
>, -
s_GUIContentCache. ?
;? @
public 
static 

GUIContent  

GetContent! +
(+ ,
string, 2
textAndTooltip3 A
)A B
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
textAndTooltip% 3
)3 4
)4 5
return 

GUIContent !
.! "
none" &
;& '

GUIContent 
content 
; 
if 
( 
! 
s_GUIContentCache "
." #
TryGetValue# .
(. /
textAndTooltip/ =
,= >
out? B
contentC J
)J K
)K L
{ 
var 
s 
= 
textAndTooltip &
.& '
Split' ,
(, -
$char- 0
)0 1
;1 2
content 
= 
new 

GUIContent (
(( )
s) *
[* +
$num+ ,
], -
)- .
;. /
if!! 
(!! 
s!! 
.!! 
Length!! 
>!! 
$num!!  
&&!!! #
!!!$ %
string!!% +
.!!+ ,
IsNullOrEmpty!!, 9
(!!9 :
s!!: ;
[!!; <
$num!!< =
]!!= >
)!!> ?
)!!? @
content"" 
."" 
tooltip"" #
=""$ %
s""& '
[""' (
$num""( )
]"") *
;""* +
s_GUIContentCache$$ !
.$$! "
Add$$" %
($$% &
textAndTooltip$$& 4
,$$4 5
content$$6 =
)$$= >
;$$> ?
}%% 
return'' 
content'' 
;'' 
}(( 	
public,, 
static,, 
bool,, 
Header,, !
(,,! "
string,," (
title,,) .
,,,. /
SerializedProperty,,0 B
group,,C H
,,,H I
Action,,J P
resetAction,,Q \
),,\ ]
{-- 	
var.. 
rect.. 
=.. 
GUILayoutUtility.. '
...' (
GetRect..( /
(../ 0
$num..0 3
,..3 4
$num..5 8
,..8 9
FxStyles..: B
...B C
header..C I
)..I J
;..J K
GUI// 
.// 
Box// 
(// 
rect// 
,// 
title// 
,//  
FxStyles//! )
.//) *
header//* 0
)//0 1
;//1 2
var11 
display11 
=11 
group11 
==11  "
null11# '
||11( *
group11+ 0
.110 1

isExpanded111 ;
;11; <
var33 
foldoutRect33 
=33 
new33 !
Rect33" &
(33& '
rect33' +
.33+ ,
x33, -
+33. /
$num330 2
,332 3
rect334 8
.338 9
y339 :
+33; <
$num33= ?
,33? @
$num33A D
,33D E
$num33F I
)33I J
;33J K
var44 
e44 
=44 
Event44 
.44 
current44 !
;44! "
var66 
	popupRect66 
=66 
new66 
Rect66  $
(66$ %
rect66% )
.66) *
x66* +
+66, -
rect66. 2
.662 3
width663 8
-669 :
FxStyles66; C
.66C D
paneOptionsIcon66D S
.66S T
width66T Y
-66Z [
$num66\ ^
,66^ _
rect66` d
.66d e
y66e f
+66g h
FxStyles66i q
.66q r
paneOptionsIcon	66r Å
.
66Å Ç
height
66Ç à
/
66â ä
$num
66ã ç
+
66é è
$num
66ê í
,
66í ì
FxStyles
66î ú
.
66ú ù
paneOptionsIcon
66ù ¨
.
66¨ ≠
width
66≠ ≤
,
66≤ ≥
FxStyles
66¥ º
.
66º Ω
paneOptionsIcon
66Ω Ã
.
66Ã Õ
height
66Õ ”
)
66” ‘
;
66‘ ’
GUI77 
.77 
DrawTexture77 
(77 
	popupRect77 %
,77% &
FxStyles77' /
.77/ 0
paneOptionsIcon770 ?
)77? @
;77@ A
if99 
(99 
e99 
.99 
type99 
==99 
	EventType99 #
.99# $
Repaint99$ +
)99+ ,
FxStyles:: 
.:: 
headerFoldout:: &
.::& '
Draw::' +
(::+ ,
foldoutRect::, 7
,::7 8
false::9 >
,::> ?
false::@ E
,::E F
display::G N
,::N O
false::P U
)::U V
;::V W
if<< 
(<< 
e<< 
.<< 
type<< 
==<< 
	EventType<< #
.<<# $
	MouseDown<<$ -
)<<- .
{== 
if>> 
(>> 
	popupRect>> 
.>> 
Contains>> &
(>>& '
e>>' (
.>>( )
mousePosition>>) 6
)>>6 7
)>>7 8
{?? 
var@@ 
popup@@ 
=@@ 
new@@  #
GenericMenu@@$ /
(@@/ 0
)@@0 1
;@@1 2
popupAA 
.AA 
AddItemAA !
(AA! "

GetContentAA" ,
(AA, -
$strAA- 4
)AA4 5
,AA5 6
falseAA7 <
,AA< =
(AA> ?
)AA? @
=>AAA C
resetActionAAD O
(AAO P
)AAP Q
)AAQ R
;AAR S
popupBB 
.BB 
AddSeparatorBB &
(BB& '
stringBB' -
.BB- .
EmptyBB. 3
)BB3 4
;BB4 5
popupCC 
.CC 
AddItemCC !
(CC! "

GetContentCC" ,
(CC, -
$strCC- <
)CC< =
,CC= >
falseCC? D
,CCD E
(CCF G
)CCG H
=>CCI K
CopySettingsCCL X
(CCX Y
groupCCY ^
)CC^ _
)CC_ `
;CC` a
ifEE 
(EE 
CanPasteEE  
(EE  !
groupEE! &
)EE& '
)EE' (
popupFF 
.FF 
AddItemFF %
(FF% &

GetContentFF& 0
(FF0 1
$strFF1 A
)FFA B
,FFB C
falseFFD I
,FFI J
(FFK L
)FFL M
=>FFN P
PasteSettingsFFQ ^
(FF^ _
groupFF_ d
)FFd e
)FFe f
;FFf g
elseGG 
popupHH 
.HH 
AddDisabledItemHH -
(HH- .

GetContentHH. 8
(HH8 9
$strHH9 I
)HHI J
)HHJ K
;HHK L
popupJJ 
.JJ 
ShowAsContextJJ '
(JJ' (
)JJ( )
;JJ) *
}KK 
elseLL 
ifLL 
(LL 
rectLL 
.LL 
ContainsLL &
(LL& '
eLL' (
.LL( )
mousePositionLL) 6
)LL6 7
&&LL8 :
groupLL; @
!=LLA C
nullLLD H
)LLH I
{MM 
displayNN 
=NN 
!NN 
displayNN &
;NN& '
ifPP 
(PP 
groupPP 
!=PP  
nullPP! %
)PP% &
groupQQ 
.QQ 

isExpandedQQ (
=QQ) *
!QQ+ ,
groupQQ, 1
.QQ1 2

isExpandedQQ2 <
;QQ< =
eSS 
.SS 
UseSS 
(SS 
)SS 
;SS 
}TT 
}UU 
returnWW 
displayWW 
;WW 
}XX 	
publicZZ 
staticZZ 
boolZZ 
HeaderZZ !
(ZZ! "
stringZZ" (
titleZZ) .
,ZZ. /
SerializedPropertyZZ0 B
groupZZC H
,ZZH I
SerializedPropertyZZJ \
enabledFieldZZ] i
,ZZi j
ActionZZk q
resetActionZZr }
)ZZ} ~
{[[ 	
var\\ 
field\\ 
=\\ 
ReflectionUtils\\ '
.\\' ( 
GetFieldInfoFromPath\\( <
(\\< =
enabledField\\= I
.\\I J
serializedObject\\J Z
.\\Z [
targetObject\\[ g
,\\g h
enabledField\\i u
.\\u v
propertyPath	\\v Ç
)
\\Ç É
;
\\É Ñ
object]] 
parent]] 
=]] 
null]]  
;]]  !
PropertyInfo^^ 
prop^^ 
=^^ 
null^^  $
;^^$ %
if`` 
(`` 
field`` 
!=`` 
null`` 
&&``  
field``! &
.``& '
	IsDefined``' 0
(``0 1
typeof``1 7
(``7 8
GetSetAttribute``8 G
)``G H
,``H I
false``J O
)``O P
)``P Q
{aa 
varbb 
attrbb 
=bb 
(bb 
GetSetAttributebb +
)bb+ ,
fieldbb, 1
.bb1 2
GetCustomAttributesbb2 E
(bbE F
typeofbbF L
(bbL M
GetSetAttributebbM \
)bb\ ]
,bb] ^
falsebb_ d
)bbd e
[bbe f
$numbbf g
]bbg h
;bbh i
parentcc 
=cc 
ReflectionUtilscc (
.cc( )
GetParentObjectcc) 8
(cc8 9
enabledFieldcc9 E
.ccE F
propertyPathccF R
,ccR S
enabledFieldccT `
.cc` a
serializedObjectcca q
.ccq r
targetObjectccr ~
)cc~ 
;	cc Ä
propdd 
=dd 
parentdd 
.dd 
GetTypedd %
(dd% &
)dd& '
.dd' (
GetPropertydd( 3
(dd3 4
attrdd4 8
.dd8 9
namedd9 =
)dd= >
;dd> ?
}ee 
vargg 
displaygg 
=gg 
groupgg 
==gg  "
nullgg# '
||gg( *
groupgg+ 0
.gg0 1

isExpandedgg1 ;
;gg; <
varhh 
enabledhh 
=hh 
enabledFieldhh &
.hh& '
	boolValuehh' 0
;hh0 1
varjj 
rectjj 
=jj 
GUILayoutUtilityjj '
.jj' (
GetRectjj( /
(jj/ 0
$numjj0 3
,jj3 4
$numjj5 8
,jj8 9
FxStylesjj: B
.jjB C
headerjjC I
)jjI J
;jjJ K
GUIkk 
.kk 
Boxkk 
(kk 
rectkk 
,kk 
titlekk 
,kk  
FxStyleskk! )
.kk) *
headerkk* 0
)kk0 1
;kk1 2
varmm 

toggleRectmm 
=mm 
newmm  
Rectmm! %
(mm% &
rectmm& *
.mm* +
xmm+ ,
+mm- .
$nummm/ 1
,mm1 2
rectmm3 7
.mm7 8
ymm8 9
+mm: ;
$nummm< >
,mm> ?
$nummm@ C
,mmC D
$nummmE H
)mmH I
;mmI J
varnn 
enn 
=nn 
Eventnn 
.nn 
currentnn !
;nn! "
varpp 
	popupRectpp 
=pp 
newpp 
Rectpp  $
(pp$ %
rectpp% )
.pp) *
xpp* +
+pp, -
rectpp. 2
.pp2 3
widthpp3 8
-pp9 :
FxStylespp; C
.ppC D
paneOptionsIconppD S
.ppS T
widthppT Y
-ppZ [
$numpp\ ^
,pp^ _
rectpp` d
.ppd e
yppe f
+ppg h
FxStylesppi q
.ppq r
paneOptionsIcon	ppr Å
.
ppÅ Ç
height
ppÇ à
/
ppâ ä
$num
ppã ç
+
ppé è
$num
ppê í
,
ppí ì
FxStyles
ppî ú
.
ppú ù
paneOptionsIcon
ppù ¨
.
pp¨ ≠
width
pp≠ ≤
,
pp≤ ≥
FxStyles
pp¥ º
.
ppº Ω
paneOptionsIcon
ppΩ Ã
.
ppÃ Õ
height
ppÕ ”
)
pp” ‘
;
pp‘ ’
GUIqq 
.qq 
DrawTextureqq 
(qq 
	popupRectqq %
,qq% &
FxStylesqq' /
.qq/ 0
paneOptionsIconqq0 ?
)qq? @
;qq@ A
ifss 
(ss 
ess 
.ss 
typess 
==ss 
	EventTypess #
.ss# $
Repaintss$ +
)ss+ ,
FxStylestt 
.tt 
headerCheckboxtt '
.tt' (
Drawtt( ,
(tt, -

toggleRecttt- 7
,tt7 8
falsett9 >
,tt> ?
falsett@ E
,ttE F
enabledttG N
,ttN O
falsettP U
)ttU V
;ttV W
ifvv 
(vv 
evv 
.vv 
typevv 
==vv 
	EventTypevv #
.vv# $
	MouseDownvv$ -
)vv- .
{ww 
constxx 
floatxx 
kOffsetxx #
=xx$ %
$numxx& (
;xx( )

toggleRectyy 
.yy 
xyy 
-=yy 
kOffsetyy  '
;yy' (

toggleRectzz 
.zz 
yzz 
-=zz 
kOffsetzz  '
;zz' (

toggleRect{{ 
.{{ 
width{{  
+={{! #
kOffset{{$ +
*{{, -
$num{{. 0
;{{0 1

toggleRect|| 
.|| 
height|| !
+=||" $
kOffset||% ,
*||- .
$num||/ 1
;||1 2
if~~ 
(~~ 

toggleRect~~ 
.~~ 
Contains~~ '
(~~' (
e~~( )
.~~) *
mousePosition~~* 7
)~~7 8
)~~8 9
{ 
enabledField
ÄÄ  
.
ÄÄ  !
	boolValue
ÄÄ! *
=
ÄÄ+ ,
!
ÄÄ- .
enabledField
ÄÄ. :
.
ÄÄ: ;
	boolValue
ÄÄ; D
;
ÄÄD E
if
ÇÇ 
(
ÇÇ 
prop
ÇÇ 
!=
ÇÇ 
null
ÇÇ  $
)
ÇÇ$ %
prop
ÉÉ 
.
ÉÉ 
SetValue
ÉÉ %
(
ÉÉ% &
parent
ÉÉ& ,
,
ÉÉ, -
enabledField
ÉÉ. :
.
ÉÉ: ;
	boolValue
ÉÉ; D
,
ÉÉD E
null
ÉÉF J
)
ÉÉJ K
;
ÉÉK L
e
ÖÖ 
.
ÖÖ 
Use
ÖÖ 
(
ÖÖ 
)
ÖÖ 
;
ÖÖ 
}
ÜÜ 
else
áá 
if
áá 
(
áá 
	popupRect
áá "
.
áá" #
Contains
áá# +
(
áá+ ,
e
áá, -
.
áá- .
mousePosition
áá. ;
)
áá; <
)
áá< =
{
àà 
var
ââ 
popup
ââ 
=
ââ 
new
ââ  #
GenericMenu
ââ$ /
(
ââ/ 0
)
ââ0 1
;
ââ1 2
popup
ää 
.
ää 
AddItem
ää !
(
ää! "

GetContent
ää" ,
(
ää, -
$str
ää- 4
)
ää4 5
,
ää5 6
false
ää7 <
,
ää< =
(
ää> ?
)
ää? @
=>
ääA C
resetAction
ääD O
(
ääO P
)
ääP Q
)
ääQ R
;
ääR S
popup
ãã 
.
ãã 
AddSeparator
ãã &
(
ãã& '
string
ãã' -
.
ãã- .
Empty
ãã. 3
)
ãã3 4
;
ãã4 5
popup
åå 
.
åå 
AddItem
åå !
(
åå! "

GetContent
åå" ,
(
åå, -
$str
åå- <
)
åå< =
,
åå= >
false
åå? D
,
ååD E
(
ååF G
)
ååG H
=>
ååI K
CopySettings
ååL X
(
ååX Y
group
ååY ^
)
åå^ _
)
åå_ `
;
åå` a
if
éé 
(
éé 
CanPaste
éé  
(
éé  !
group
éé! &
)
éé& '
)
éé' (
popup
èè 
.
èè 
AddItem
èè %
(
èè% &

GetContent
èè& 0
(
èè0 1
$str
èè1 A
)
èèA B
,
èèB C
false
èèD I
,
èèI J
(
èèK L
)
èèL M
=>
èèN P
PasteSettings
èèQ ^
(
èè^ _
group
èè_ d
)
èèd e
)
èèe f
;
èèf g
else
êê 
popup
ëë 
.
ëë 
AddDisabledItem
ëë -
(
ëë- .

GetContent
ëë. 8
(
ëë8 9
$str
ëë9 I
)
ëëI J
)
ëëJ K
;
ëëK L
popup
ìì 
.
ìì 
ShowAsContext
ìì '
(
ìì' (
)
ìì( )
;
ìì) *
}
îî 
else
ïï 
if
ïï 
(
ïï 
rect
ïï 
.
ïï 
Contains
ïï &
(
ïï& '
e
ïï' (
.
ïï( )
mousePosition
ïï) 6
)
ïï6 7
&&
ïï8 :
group
ïï; @
!=
ïïA C
null
ïïD H
)
ïïH I
{
ññ 
display
óó 
=
óó 
!
óó 
display
óó &
;
óó& '
group
òò 
.
òò 

isExpanded
òò $
=
òò% &
!
òò' (
group
òò( -
.
òò- .

isExpanded
òò. 8
;
òò8 9
e
ôô 
.
ôô 
Use
ôô 
(
ôô 
)
ôô 
;
ôô 
}
öö 
}
õõ 
return
ùù 
display
ùù 
;
ùù 
}
ûû 	
static
†† 
void
†† 
CopySettings
††  
(
††  ! 
SerializedProperty
††! 3
settings
††4 <
)
††< =
{
°° 	
var
¢¢ 
t
¢¢ 
=
¢¢ 
typeof
¢¢ 
(
¢¢ #
PostProcessingProfile
¢¢ 0
)
¢¢0 1
;
¢¢1 2
var
££ 
settingsStruct
££ 
=
££  
ReflectionUtils
££! 0
.
££0 1#
GetFieldValueFromPath
££1 F
(
££F G
settings
££G O
.
££O P
serializedObject
££P `
.
££` a
targetObject
££a m
,
££m n
ref
££o r
t
££s t
,
££t u
settings
££v ~
.
££~ 
propertyPath££ ã
)££ã å
;££å ç
var
§§ 
serializedString
§§  
=
§§! "
t
§§# $
.
§§$ %
ToString
§§% -
(
§§- .
)
§§. /
+
§§0 1
$char
§§2 5
+
§§6 7
JsonUtility
§§8 C
.
§§C D
ToJson
§§D J
(
§§J K
settingsStruct
§§K Y
)
§§Y Z
;
§§Z [
EditorGUIUtility
•• 
.
•• 
systemCopyBuffer
•• -
=
••. /
serializedString
••0 @
;
••@ A
}
¶¶ 	
static
®® 
bool
®® 
CanPaste
®® 
(
®®  
SerializedProperty
®® /
settings
®®0 8
)
®®8 9
{
©© 	
var
™™ 
data
™™ 
=
™™ 
EditorGUIUtility
™™ '
.
™™' (
systemCopyBuffer
™™( 8
;
™™8 9
if
¨¨ 
(
¨¨ 
string
¨¨ 
.
¨¨ 
IsNullOrEmpty
¨¨ $
(
¨¨$ %
data
¨¨% )
)
¨¨) *
)
¨¨* +
return
≠≠ 
false
≠≠ 
;
≠≠ 
var
ØØ 
parts
ØØ 
=
ØØ 
data
ØØ 
.
ØØ 
Split
ØØ "
(
ØØ" #
$char
ØØ# &
)
ØØ& '
;
ØØ' (
if
±± 
(
±± 
string
±± 
.
±± 
IsNullOrEmpty
±± $
(
±±$ %
parts
±±% *
[
±±* +
$num
±±+ ,
]
±±, -
)
±±- .
)
±±. /
return
≤≤ 
false
≤≤ 
;
≤≤ 
var
¥¥ 
field
¥¥ 
=
¥¥ 
ReflectionUtils
¥¥ '
.
¥¥' ("
GetFieldInfoFromPath
¥¥( <
(
¥¥< =
settings
¥¥= E
.
¥¥E F
serializedObject
¥¥F V
.
¥¥V W
targetObject
¥¥W c
,
¥¥c d
settings
¥¥e m
.
¥¥m n
propertyPath
¥¥n z
)
¥¥z {
;
¥¥{ |
return
µµ 
parts
µµ 
[
µµ 
$num
µµ 
]
µµ 
==
µµ 
field
µµ $
.
µµ$ %
	FieldType
µµ% .
.
µµ. /
ToString
µµ/ 7
(
µµ7 8
)
µµ8 9
;
µµ9 :
}
∂∂ 	
static
∏∏ 
void
∏∏ 
PasteSettings
∏∏ !
(
∏∏! " 
SerializedProperty
∏∏" 4
settings
∏∏5 =
)
∏∏= >
{
ππ 	
Undo
∫∫ 
.
∫∫ 
RecordObject
∫∫ 
(
∫∫ 
settings
∫∫ &
.
∫∫& '
serializedObject
∫∫' 7
.
∫∫7 8
targetObject
∫∫8 D
,
∫∫D E
$str
∫∫F ]
)
∫∫] ^
;
∫∫^ _
var
ªª 
field
ªª 
=
ªª 
ReflectionUtils
ªª '
.
ªª' ("
GetFieldInfoFromPath
ªª( <
(
ªª< =
settings
ªª= E
.
ªªE F
serializedObject
ªªF V
.
ªªV W
targetObject
ªªW c
,
ªªc d
settings
ªªe m
.
ªªm n
propertyPath
ªªn z
)
ªªz {
;
ªª{ |
var
ºº 
json
ºº 
=
ºº 
EditorGUIUtility
ºº '
.
ºº' (
systemCopyBuffer
ºº( 8
.
ºº8 9
	Substring
ºº9 B
(
ººB C
field
ººC H
.
ººH I
	FieldType
ººI R
.
ººR S
ToString
ººS [
(
ºº[ \
)
ºº\ ]
.
ºº] ^
Length
ºº^ d
+
ººe f
$num
ººg h
)
ººh i
;
ººi j
var
ΩΩ 
obj
ΩΩ 
=
ΩΩ 
JsonUtility
ΩΩ !
.
ΩΩ! "
FromJson
ΩΩ" *
(
ΩΩ* +
json
ΩΩ+ /
,
ΩΩ/ 0
field
ΩΩ1 6
.
ΩΩ6 7
	FieldType
ΩΩ7 @
)
ΩΩ@ A
;
ΩΩA B
var
ææ 
parent
ææ 
=
ææ 
ReflectionUtils
ææ (
.
ææ( )
GetParentObject
ææ) 8
(
ææ8 9
settings
ææ9 A
.
ææA B
propertyPath
ææB N
,
ææN O
settings
ææP X
.
ææX Y
serializedObject
ææY i
.
ææi j
targetObject
ææj v
)
ææv w
;
ææw x
field
øø 
.
øø 
SetValue
øø 
(
øø 
parent
øø !
,
øø! "
obj
øø# &
,
øø& '
BindingFlags
øø( 4
.
øø4 5
Public
øø5 ;
|
øø< =
BindingFlags
øø> J
.
øøJ K
	NonPublic
øøK T
|
øøU V
BindingFlags
øøW c
.
øøc d
Instance
øød l
,
øøl m
null
øøn r
,
øør s
CultureInfo
øøt 
.øø Ä
CurrentCultureøøÄ é
)øøé è
;øøè ê
}
¿¿ 	
}
¡¡ 
}¬¬ Ã
∏D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Utils\EditorResources.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
static 

class 
EditorResources  
{ 
static		 
string		 !
m_EditorResourcesPath		 +
=		, -
string		. 4
.		4 5
Empty		5 :
;		: ;
internal 
static 
string 
editorResourcesPath 2
{ 	
get 
{ 
if 
( 
string 
. 
IsNullOrEmpty (
(( )!
m_EditorResourcesPath) >
)> ?
)? @
{ 
string 
path 
;  
if 
( (
SearchForEditorResourcesPath 4
(4 5
out5 8
path9 =
)= >
)> ?!
m_EditorResourcesPath -
=. /
path0 4
;4 5
else 
Debug 
. 
LogError &
(& '
$str	' é
)
é è
;
è ê
} 
return !
m_EditorResourcesPath ,
;, -
} 
} 	
internal 
static 
T 
Load 
< 
T  
>  !
(! "
string" (
name) -
)- .
where 
T 
: 
UnityObject !
{ 	
return   
AssetDatabase    
.    !
LoadAssetAtPath  ! 0
<  0 1
T  1 2
>  2 3
(  3 4
editorResourcesPath  4 G
+  H I
name  J N
)  N O
;  O P
}!! 	
static## 
bool## (
SearchForEditorResourcesPath## 0
(##0 1
out##1 4
string##5 ;
path##< @
)##@ A
{$$ 	
path%% 
=%% 
string%% 
.%% 
Empty%% 
;%%  
string'' 
	searchStr'' 
='' 
$str'' B
;''B C
string(( 
str(( 
=(( 
null(( 
;(( 
foreach** 
(** 
var** 
	assetPath** "
in**# %
AssetDatabase**& 3
.**3 4
GetAllAssetPaths**4 D
(**D E
)**E F
)**F G
{++ 
if,, 
(,, 
	assetPath,, 
.,, 
Contains,, &
(,,& '
	searchStr,,' 0
),,0 1
),,1 2
{-- 
str.. 
=.. 
	assetPath.. #
;..# $
break// 
;// 
}00 
}11 
if33 
(33 
str33 
==33 
null33 
)33 
return44 
false44 
;44 
path66 
=66 
str66 
.66 
	Substring66  
(66  !
$num66! "
,66" #
str66$ '
.66' (
LastIndexOf66( 3
(663 4
	searchStr664 =
)66= >
+66? @
	searchStr66A J
.66J K
Length66K Q
)66Q R
;66R S
return77 
true77 
;77 
}88 	
}99 
}:: óJ
±D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Utils\FxStyles.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
public 

static 
class 
FxStyles  
{ 
public 
static 
GUIStyle 
tickStyleRight -
;- .
public 
static 
GUIStyle 
tickStyleLeft ,
;, -
public		 
static		 
GUIStyle		 
tickStyleCenter		 .
;		. /
public 
static 
GUIStyle 
	preSlider (
;( )
public 
static 
GUIStyle 
preSliderThumb -
;- .
public 
static 
GUIStyle 
	preButton (
;( )
public 
static 
GUIStyle 
preDropdown *
;* +
public 
static 
GUIStyle 
preLabel '
;' (
public 
static 
GUIStyle 
hueCenterCursor .
;. /
public 
static 
GUIStyle 
hueRangeCursor -
;- .
public 
static 
GUIStyle 
centeredBoldLabel 0
;0 1
public 
static 
GUIStyle 

wheelThumb )
;) *
public 
static 
Vector2 
wheelThumbSize ,
;, -
public 
static 
GUIStyle 
header %
;% &
public 
static 
GUIStyle 
headerCheckbox -
;- .
public 
static 
GUIStyle 
headerFoldout ,
;, -
public 
static 
	Texture2D 
playIcon  (
;( )
public 
static 
	Texture2D 
checkerIcon  +
;+ ,
public 
static 
	Texture2D 
paneOptionsIcon  /
;/ 0
public   
static   
GUIStyle   
centeredMiniLabel   0
;  0 1
static"" 
FxStyles"" 
("" 
)"" 
{## 	
tickStyleRight$$ 
=$$ 
new$$  
GUIStyle$$! )
($$) *
$str$$* 1
)$$1 2
{%% 
	alignment&& 
=&& 

TextAnchor&& &
.&&& '
MiddleRight&&' 2
,&&2 3
fontSize'' 
='' 
$num'' 
}(( 
;(( 
tickStyleLeft** 
=** 
new** 
GUIStyle**  (
(**( )
$str**) 0
)**0 1
{++ 
	alignment,, 
=,, 

TextAnchor,, &
.,,& '

MiddleLeft,,' 1
,,,1 2
fontSize-- 
=-- 
$num-- 
}.. 
;.. 
tickStyleCenter00 
=00 
new00 !
GUIStyle00" *
(00* +
$str00+ 2
)002 3
{11 
	alignment22 
=22 

TextAnchor22 &
.22& '
MiddleCenter22' 3
,223 4
fontSize33 
=33 
$num33 
}44 
;44 
	preSlider66 
=66 
new66 
GUIStyle66 $
(66$ %
$str66% 0
)660 1
;661 2
preSliderThumb77 
=77 
new77  
GUIStyle77! )
(77) *
$str77* :
)77: ;
;77; <
	preButton88 
=88 
new88 
GUIStyle88 $
(88$ %
$str88% 0
)880 1
;881 2
preDropdown99 
=99 
new99 
GUIStyle99 &
(99& '
$str99' 4
)994 5
;995 6
preLabel;; 
=;; 
new;; 
GUIStyle;; #
(;;# $
$str;;$ 3
);;3 4
;;;4 5
hueCenterCursor== 
=== 
new== !
GUIStyle==" *
(==* +
$str==+ ?
)==? @
{>> 
normal?? 
=?? 
{?? 

background?? %
=??& '
(??( )
	Texture2D??) 2
)??2 3
EditorGUIUtility??3 C
.??C D
LoadRequired??D P
(??P Q
$str	??Q Å
)
??Å Ç
}
??É Ñ
,
??Ñ Ö

fixedWidth@@ 
=@@ 
$num@@ 
,@@ 
fixedHeightAA 
=AA 
$numAA 
}BB 
;BB 
hueRangeCursorDD 
=DD 
newDD  
GUIStyleDD! )
(DD) *
hueCenterCursorDD* 9
)DD9 :
{EE 
normalFF 
=FF 
{FF 

backgroundFF %
=FF& '
(FF( )
	Texture2DFF) 2
)FF2 3
EditorGUIUtilityFF3 C
.FFC D
LoadRequiredFFD P
(FFP Q
$str	FFQ Ü
)
FFÜ á
}
FFà â
}GG 
;GG 

wheelThumbII 
=II 
newII 
GUIStyleII %
(II% &
$strII& :
)II: ;
;II; <
centeredBoldLabelKK 
=KK 
newKK  #
GUIStyleKK$ ,
(KK, -
GUIKK- 0
.KK0 1
skinKK1 5
.KK5 6
GetStyleKK6 >
(KK> ?
$strKK? F
)KKF G
)KKG H
{LL 
	alignmentMM 
=MM 

TextAnchorMM &
.MM& '
UpperCenterMM' 2
,MM2 3
	fontStyleNN 
=NN 
	FontStyleNN %
.NN% &
BoldNN& *
}OO 
;OO 
centeredMiniLabelQQ 
=QQ 
newQQ  #
GUIStyleQQ$ ,
(QQ, -
EditorStylesQQ- 9
.QQ9 :!
centeredGreyMiniLabelQQ: O
)QQO P
{RR 
	alignmentSS 
=SS 

TextAnchorSS &
.SS& '
UpperCenterSS' 2
}TT 
;TT 
wheelThumbSizeVV 
=VV 
newVV  
Vector2VV! (
(VV( )
!WW 
MathfWW 
.WW 
ApproximatelyWW (
(WW( )

wheelThumbWW) 3
.WW3 4

fixedWidthWW4 >
,WW> ?
$numWW@ B
)WWB C
?WWD E

wheelThumbWWF P
.WWP Q

fixedWidthWWQ [
:WW\ ]

wheelThumbWW^ h
.WWh i
paddingWWi p
.WWp q

horizontalWWq {
,WW{ |
!XX 
MathfXX 
.XX 
ApproximatelyXX (
(XX( )

wheelThumbXX) 3
.XX3 4
fixedHeightXX4 ?
,XX? @
$numXXA C
)XXC D
?XXE F

wheelThumbXXG Q
.XXQ R
fixedHeightXXR ]
:XX^ _

wheelThumbXX` j
.XXj k
paddingXXk r
.XXr s
verticalXXs {
)YY 
;YY 
header[[ 
=[[ 
new[[ 
GUIStyle[[ !
([[! "
$str[[" 7
)[[7 8
{\\ 
font]] 
=]] 
(]] 
new]] 
GUIStyle]] $
(]]$ %
$str]]% ,
)]], -
)]]- .
.]]. /
font]]/ 3
,]]3 4
border^^ 
=^^ 
new^^ 

RectOffset^^ '
(^^' (
$num^^( *
,^^* +
$num^^, -
,^^- .
$num^^/ 0
,^^0 1
$num^^2 3
)^^3 4
,^^4 5
fixedHeight__ 
=__ 
$num__  
,__  !
contentOffset`` 
=`` 
new``  #
Vector2``$ +
(``+ ,
$num``, /
,``/ 0
-``1 2
$num``2 4
)``4 5
}aa 
;aa 
headerCheckboxcc 
=cc 
newcc  
GUIStylecc! )
(cc) *
$strcc* =
)cc= >
;cc> ?
headerFoldoutdd 
=dd 
newdd 
GUIStyledd  (
(dd( )
$strdd) 2
)dd2 3
;dd3 4
playIconff 
=ff 
(ff 
	Texture2Dff !
)ff! "
EditorGUIUtilityff" 2
.ff2 3
LoadRequiredff3 ?
(ff? @
$strff@ r
)ffr s
;ffs t
checkerIcongg 
=gg 
(gg 
	Texture2Dgg $
)gg$ %
EditorGUIUtilitygg% 5
.gg5 6
LoadRequiredgg6 B
(ggB C
$strggC [
)gg[ \
;gg\ ]
ifii 
(ii 
EditorGUIUtilityii  
.ii  !
	isProSkinii! *
)ii* +
paneOptionsIconjj 
=jj  !
(jj" #
	Texture2Djj# ,
)jj, -
EditorGUIUtilityjj- =
.jj= >
LoadRequiredjj> J
(jjJ K
$strjjK {
)jj{ |
;jj| }
elsekk 
paneOptionsIconll 
=ll  !
(ll" #
	Texture2Dll# ,
)ll, -
EditorGUIUtilityll- =
.ll= >
LoadRequiredll> J
(llJ K
$strllK |
)ll| }
;ll} ~
}mm 	
}nn 
}oo ®V
∏D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Utils\ReflectionUtils.cs
	namespace 	
UnityEditor
 
. 
PostProcessing $
{ 
public		 

static		 
class		 
ReflectionUtils		 '
{

 
static 

Dictionary 
< 
KeyValuePair &
<& '
object' -
,- .
string/ 5
>5 6
,6 7
	FieldInfo8 A
>A B 
s_FieldInfoFromPathsC W
=X Y
newZ ]

Dictionary^ h
<h i
KeyValuePairi u
<u v
objectv |
,| }
string	~ Ñ
>
Ñ Ö
,
Ö Ü
	FieldInfo
á ê
>
ê ë
(
ë í
)
í ì
;
ì î
public 
static 
	FieldInfo  
GetFieldInfoFromPath  4
(4 5
object5 ;
source< B
,B C
stringD J
pathK O
)O P
{ 	
	FieldInfo 
field 
= 
null "
;" #
var 
kvp 
= 
new 
KeyValuePair &
<& '
object' -
,- .
string/ 5
>5 6
(6 7
source7 =
,= >
path? C
)C D
;D E
if 
( 
!  
s_FieldInfoFromPaths %
.% &
TryGetValue& 1
(1 2
kvp2 5
,5 6
out7 :
field; @
)@ A
)A B
{ 
var 
splittedPath  
=! "
path# '
.' (
Split( -
(- .
$char. 1
)1 2
;2 3
var 
type 
= 
source !
.! "
GetType" )
() *
)* +
;+ ,
foreach 
( 
var 
t 
in !
splittedPath" .
). /
{ 
field 
= 
type  
.  !
GetField! )
() *
t* +
,+ ,
BindingFlags- 9
.9 :
	NonPublic: C
|D E
BindingFlagsF R
.R S
PublicS Y
|Z [
BindingFlags\ h
.h i
Instancei q
)q r
;r s
if 
( 
field 
==  
null! %
)% &
break 
; 
type 
= 
field  
.  !
	FieldType! *
;* +
}  
s_FieldInfoFromPaths!! $
.!!$ %
Add!!% (
(!!( )
kvp!!) ,
,!!, -
field!!. 3
)!!3 4
;!!4 5
}"" 
return$$ 
field$$ 
;$$ 
}%% 	
public'' 
static'' 
string'' 
GetFieldPath'' )
<'') *
T''* +
,''+ ,
TValue''- 3
>''3 4
(''4 5

Expression''5 ?
<''? @
Func''@ D
<''D E
T''E F
,''F G
TValue''H N
>''N O
>''O P
expr''Q U
)''U V
{(( 	
MemberExpression)) 
me)) 
;))  
switch** 
(** 
expr** 
.** 
Body** 
.** 
NodeType** &
)**& '
{++ 
case,, 
ExpressionType,, #
.,,# $
Convert,,$ +
:,,+ ,
case-- 
ExpressionType-- #
.--# $
ConvertChecked--$ 2
:--2 3
var.. 
ue.. 
=.. 
expr.. !
...! "
Body.." &
as..' )
UnaryExpression..* 9
;..9 :
me// 
=// 
(// 
ue// 
!=// 
null//  $
?//% &
ue//' )
.//) *
Operand//* 1
://2 3
null//4 8
)//8 9
as//: <
MemberExpression//= M
;//M N
break00 
;00 
default11 
:11 
me22 
=22 
expr22 
.22 
Body22 "
as22# %
MemberExpression22& 6
;226 7
break33 
;33 
}44 
var66 
members66 
=66 
new66 
List66 "
<66" #
string66# )
>66) *
(66* +
)66+ ,
;66, -
while77 
(77 
me77 
!=77 
null77 
)77 
{88 
members99 
.99 
Add99 
(99 
me99 
.99 
Member99 %
.99% &
Name99& *
)99* +
;99+ ,
me:: 
=:: 
me:: 
.:: 

Expression:: "
as::# %
MemberExpression::& 6
;::6 7
};; 
var== 
sb== 
=== 
new== 
StringBuilder== &
(==& '
)==' (
;==( )
for>> 
(>> 
int>> 
i>> 
=>> 
members>>  
.>>  !
Count>>! &
->>' (
$num>>) *
;>>* +
i>>, -
>=>>. 0
$num>>1 2
;>>2 3
i>>4 5
-->>5 7
)>>7 8
{?? 
sb@@ 
.@@ 
Append@@ 
(@@ 
members@@ !
[@@! "
i@@" #
]@@# $
)@@$ %
;@@% &
ifAA 
(AA 
iAA 
>AA 
$numAA 
)AA 
sbAA 
.AA 
AppendAA $
(AA$ %
$charAA% (
)AA( )
;AA) *
}BB 
returnDD 
sbDD 
.DD 
ToStringDD 
(DD 
)DD  
;DD  !
}EE 	
publicGG 
staticGG 
objectGG 
GetFieldValueGG *
(GG* +
objectGG+ 1
sourceGG2 8
,GG8 9
stringGG: @
nameGGA E
)GGE F
{HH 	
varII 
typeII 
=II 
sourceII 
.II 
GetTypeII %
(II% &
)II& '
;II' (
whileKK 
(KK 
typeKK 
!=KK 
nullKK 
)KK  
{LL 
varMM 
fMM 
=MM 
typeMM 
.MM 
GetFieldMM %
(MM% &
nameMM& *
,MM* +
BindingFlagsMM, 8
.MM8 9
	NonPublicMM9 B
|MMC D
BindingFlagsMME Q
.MMQ R
PublicMMR X
|MMY Z
BindingFlagsMM[ g
.MMg h
InstanceMMh p
)MMp q
;MMq r
ifNN 
(NN 
fNN 
!=NN 
nullNN 
)NN 
returnOO 
fOO 
.OO 
GetValueOO %
(OO% &
sourceOO& ,
)OO, -
;OO- .
typeQQ 
=QQ 
typeQQ 
.QQ 
BaseTypeQQ $
;QQ$ %
}RR 
returnTT 
nullTT 
;TT 
}UU 	
publicWW 
staticWW 
objectWW !
GetFieldValueFromPathWW 2
(WW2 3
objectWW3 9
sourceWW: @
,WW@ A
refWWB E
TypeWWF J
baseTypeWWK S
,WWS T
stringWWU [
pathWW\ `
)WW` a
{XX 	
varYY 
splittedPathYY 
=YY 
pathYY #
.YY# $
SplitYY$ )
(YY) *
$charYY* -
)YY- .
;YY. /
objectZZ 
	srcObjectZZ 
=ZZ 
sourceZZ %
;ZZ% &
foreach\\ 
(\\ 
var\\ 
t\\ 
in\\ 
splittedPath\\ *
)\\* +
{]] 
var^^ 
	fieldInfo^^ 
=^^ 
baseType^^  (
.^^( )
GetField^^) 1
(^^1 2
t^^2 3
,^^3 4
BindingFlags^^5 A
.^^A B
	NonPublic^^B K
|^^L M
BindingFlags^^N Z
.^^Z [
Public^^[ a
|^^b c
BindingFlags^^d p
.^^p q
Instance^^q y
)^^y z
;^^z {
if`` 
(`` 
	fieldInfo`` 
==``  
null``! %
)``% &
{aa 
baseTypebb 
=bb 
nullbb #
;bb# $
breakcc 
;cc 
}dd 
baseTypeff 
=ff 
	fieldInfoff $
.ff$ %
	FieldTypeff% .
;ff. /
	srcObjectgg 
=gg 
GetFieldValuegg )
(gg) *
	srcObjectgg* 3
,gg3 4
tgg5 6
)gg6 7
;gg7 8
}hh 
returnjj 
baseTypejj 
==jj 
nulljj #
?kk 
nullkk 
:ll 
	srcObjectll 
;ll 
}mm 	
publicoo 
staticoo 
objectoo 
GetParentObjectoo ,
(oo, -
stringoo- 3
pathoo4 8
,oo8 9
objectoo: @
objooA D
)ooD E
{pp 	
varqq 
fieldsqq 
=qq 
pathqq 
.qq 
Splitqq #
(qq# $
$charqq$ '
)qq' (
;qq( )
ifss 
(ss 
fieldsss 
.ss 
Lengthss 
==ss  
$numss! "
)ss" #
returntt 
objtt 
;tt 
varvv 
infovv 
=vv 
objvv 
.vv 
GetTypevv "
(vv" #
)vv# $
.vv$ %
GetFieldvv% -
(vv- .
fieldsvv. 4
[vv4 5
$numvv5 6
]vv6 7
,vv7 8
BindingFlagsvv9 E
.vvE F
PublicvvF L
|vvM N
BindingFlagsvvO [
.vv[ \
	NonPublicvv\ e
|vvf g
BindingFlagsvvh t
.vvt u
Instancevvu }
)vv} ~
;vv~ 
objww 
=ww 
infoww 
.ww 
GetValueww 
(ww  
objww  #
)ww# $
;ww$ %
returnyy 
GetParentObjectyy "
(yy" #
stringyy# )
.yy) *
Joinyy* .
(yy. /
$stryy/ 2
,yy2 3
fieldsyy4 :
,yy: ;
$numyy< =
,yy= >
fieldsyy? E
.yyE F
LengthyyF L
-yyM N
$numyyO P
)yyP Q
,yyQ R
objyyS V
)yyV W
;yyW X
}zz 	
}{{ 
}|| 