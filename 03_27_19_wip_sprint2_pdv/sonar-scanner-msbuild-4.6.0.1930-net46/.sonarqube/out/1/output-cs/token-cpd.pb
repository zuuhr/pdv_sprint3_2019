�
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Attributes\PostProcessingModelEditorAttribute.cs
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
} �%
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\AmbientOcclusionModelEditor.cs
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
}** �3
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\AntialiasingModelEditor.cs
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
Warning	22 �
)
22� �
;
22� �
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
}GG ��
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\BloomModelEditor.cs
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
�� 
bloom
�� 
=
�� 
(
�� 

BloomModel
�� #
)
��# $
target
��$ *
;
��* +
m_RangeX
�� 
=
�� 
$num
�� 
;
�� 
m_RangeY
�� 
=
�� 
$num
�� 
;
�� 
m_GraphThreshold
�� 
=
�� 
bloom
�� $
.
��$ %
settings
��% -
.
��- .
bloom
��. 3
.
��3 4
thresholdLinear
��4 C
;
��C D
m_GraphKnee
�� 
=
�� 
bloom
�� 
.
��  
settings
��  (
.
��( )
bloom
��) .
.
��. /
softKnee
��/ 7
*
��8 9
m_GraphThreshold
��: J
+
��K L
$num
��M R
;
��R S
m_GraphIntensity
�� 
=
�� 
Mathf
�� $
.
��$ %
Min
��% (
(
��( )
bloom
��) .
.
��. /
settings
��/ 7
.
��7 8
bloom
��8 =
.
��= >
	intensity
��> G
,
��G H
$num
��I L
)
��L M
;
��M N
}
�� 	
public
�� 
void
�� 
	DrawGraph
�� 
(
�� 
)
�� 
{
�� 	
using
�� 
(
�� 
new
�� 
	GUILayout
��  
.
��  !
HorizontalScope
��! 0
(
��0 1
)
��1 2
)
��2 3
{
�� 
	GUILayout
�� 
.
�� 
Space
�� 
(
��  
	EditorGUI
��  )
.
��) *
indentLevel
��* 5
*
��6 7
$num
��8 ;
)
��; <
;
��< =
m_RectGraph
�� 
=
�� 
GUILayoutUtility
�� .
.
��. /
GetRect
��/ 6
(
��6 7
$num
��7 :
,
��: ;
$num
��< >
)
��> ?
;
��? @
}
�� 
DrawRect
�� 
(
�� 
$num
�� 
,
�� 
$num
�� 
,
�� 
m_RangeX
�� #
,
��# $
m_RangeY
��% -
,
��- .
$num
��/ 3
,
��3 4
$num
��5 9
)
��9 :
;
��: ;
DrawRect
�� 
(
�� 
m_GraphThreshold
�� %
-
��& '
m_GraphKnee
��( 3
,
��3 4
$num
��5 6
,
��6 7
m_GraphThreshold
��8 H
+
��I J
m_GraphKnee
��K V
,
��V W
m_RangeY
��X `
,
��` a
$num
��b g
,
��g h
-
��i j
$num
��j k
)
��k l
;
��l m
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
m_RangeY
��  (
;
��( )
i
��* +
++
��+ -
)
��- .
DrawLine
�� 
(
�� 
$num
�� 
,
�� 
i
�� 
,
�� 
m_RangeX
�� '
,
��' (
i
��) *
,
��* +
$num
��, 0
)
��0 1
;
��1 2
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
m_RangeX
��  (
;
��( )
i
��* +
++
��+ -
)
��- .
DrawLine
�� 
(
�� 
i
�� 
,
�� 
$num
�� 
,
�� 
i
��  
,
��  !
m_RangeY
��" *
,
��* +
$num
��, 0
)
��0 1
;
��1 2
Handles
�� 
.
�� 
Label
�� 
(
�� 
PointInRect
�� 
(
�� 
$num
�� 
,
�� 
m_RangeY
�� '
)
��' (
+
��) *
Vector3
��+ 2
.
��2 3
right
��3 8
,
��8 9
$str
�� .
,
��. /
EditorStyles
��0 <
.
��< =
	miniLabel
��= F
)
�� 
;
�� 
DrawLine
�� 
(
�� 
m_GraphThreshold
�� %
,
��% &
$num
��' (
,
��( )
m_GraphThreshold
��* :
,
��: ;
m_RangeY
��< D
,
��D E
$num
��F J
)
��J K
;
��K L
var
�� 
vcount
�� 
=
�� 
$num
�� 
;
�� 
while
�� 
(
�� 
vcount
�� 
<
�� 
k_CurveResolution
�� -
)
��- .
{
�� 
var
�� 
x
�� 
=
�� 
m_RangeX
��  
*
��! "
vcount
��# )
/
��* +
(
��, -
k_CurveResolution
��- >
-
��? @
$num
��A B
)
��B C
;
��C D
var
�� 
y
�� 
=
�� 
ResponseFunction
�� (
(
��( )
x
��) *
)
��* +
;
��+ ,
if
�� 
(
�� 
y
�� 
<
�� 
m_RangeY
��  
)
��  !
{
�� 
m_CurveVertices
�� #
[
��# $
vcount
��$ *
++
��* ,
]
��, -
=
��. /
PointInRect
��0 ;
(
��; <
x
��< =
,
��= >
y
��? @
)
��@ A
;
��A B
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
vcount
�� 
>
��  
$num
��! "
)
��" #
{
�� 
var
�� 
v1
�� 
=
��  
m_CurveVertices
��! 0
[
��0 1
vcount
��1 7
-
��8 9
$num
��: ;
]
��; <
;
��< =
var
�� 
v2
�� 
=
��  
m_CurveVertices
��! 0
[
��0 1
vcount
��1 7
-
��8 9
$num
��: ;
]
��; <
;
��< =
var
�� 
clip
��  
=
��! "
(
��# $
m_RectGraph
��$ /
.
��/ 0
y
��0 1
-
��2 3
v1
��4 6
.
��6 7
y
��7 8
)
��8 9
/
��: ;
(
��< =
v2
��= ?
.
��? @
y
��@ A
-
��B C
v1
��D F
.
��F G
y
��G H
)
��H I
;
��I J
m_CurveVertices
�� '
[
��' (
vcount
��( .
-
��/ 0
$num
��1 2
]
��2 3
=
��4 5
v1
��6 8
+
��9 :
(
��; <
v2
��< >
-
��? @
v1
��A C
)
��C D
*
��E F
clip
��G K
;
��K L
}
�� 
break
�� 
;
�� 
}
�� 
}
�� 
if
�� 
(
�� 
vcount
�� 
>
�� 
$num
�� 
)
�� 
{
�� 
Handles
�� 
.
�� 
color
�� 
=
�� 
Color
��  %
.
��% &
white
��& +
*
��, -
$num
��. 2
;
��2 3
Handles
�� 
.
�� 
DrawAAPolyLine
�� &
(
��& '
$num
��' +
,
��+ ,
vcount
��- 3
,
��3 4
m_CurveVertices
��5 D
)
��D E
;
��E F
}
�� 
}
�� 	
}
�� 
}�� �_
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\BuiltinDebugViewsEditor.cs
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
Warning	KKz �
)
KK� �
;
KK� �
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
)	VV �
;
VV� �
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
;	\\ �
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
enabled	__y �
,
__� �
$str
__� �
)
__� �
;
__� �
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
Warning	ggz �
)
gg� �
;
gg� �
}hh 	
}ii 
}jj �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\ChromaticAberrationEditor.cs
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
}		 �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\ColorGradingModelEditor.cs
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
�� 
=
�� 
new
��  "
ChannelMixerSettings
��! 5
{
�� 
channels
�� 
=
�� 
new
�� 
[
�� 
]
��  
{
�� 
FindSetting
�� 
(
��  
(
��  !
Settings
��! )
x
��* +
)
��+ ,
=>
��- /
x
��0 1
.
��1 2
channelMixer
��2 >
.
��> ?
red
��? B
)
��B C
,
��C D
FindSetting
�� 
(
��  
(
��  !
Settings
��! )
x
��* +
)
��+ ,
=>
��- /
x
��0 1
.
��1 2
channelMixer
��2 >
.
��> ?
green
��? D
)
��D E
,
��E F
FindSetting
�� 
(
��  
(
��  !
Settings
��! )
x
��* +
)
��+ ,
=>
��- /
x
��0 1
.
��1 2
channelMixer
��2 >
.
��> ?
blue
��? C
)
��C D
}
�� 
,
�� #
currentEditingChannel
�� %
=
��& '
FindSetting
��( 3
(
��3 4
(
��4 5
Settings
��5 =
x
��> ?
)
��? @
=>
��A C
x
��D E
.
��E F
channelMixer
��F R
.
��R S#
currentEditingChannel
��S h
)
��h i
}
�� 
;
�� 
m_ColorWheels
�� 
=
�� 
new
�� !
ColorWheelsSettings
��  3
{
�� 
mode
�� 
=
��	 

FindSetting
�� 
(
�� 
(
�� 
Settings
��  
x
��! "
)
��" #
=>
��$ &
x
��' (
.
��( )
colorWheels
��) 4
.
��4 5
mode
��5 9
)
��9 :
,
��: ;
log
�� 
=
�� 
FindSetting
�� !
(
��! "
(
��" #
Settings
��# +
x
��, -
)
��- .
=>
��/ 1
x
��2 3
.
��3 4
colorWheels
��4 ?
.
��? @
log
��@ C
)
��C D
,
��D E
linear
�� 
=
�� 
FindSetting
�� $
(
��$ %
(
��% &
Settings
��& .
x
��/ 0
)
��0 1
=>
��2 4
x
��5 6
.
��6 7
colorWheels
��7 B
.
��B C
linear
��C I
)
��I J
}
�� 
;
�� 
m_Curves
�� 
=
�� 
new
�� 
CurvesSettings
�� )
{
�� 
master
�� 
=
�� 
FindSetting
�� $
(
��$ %
(
��% &
Settings
��& .
x
��/ 0
)
��0 1
=>
��2 4
x
��5 6
.
��6 7
curves
��7 =
.
��= >
master
��> D
.
��D E
curve
��E J
)
��J K
,
��K L
red
�� 
=
�� 
FindSetting
�� !
(
��! "
(
��" #
Settings
��# +
x
��, -
)
��- .
=>
��/ 1
x
��2 3
.
��3 4
curves
��4 :
.
��: ;
red
��; >
.
��> ?
curve
��? D
)
��D E
,
��E F
green
�� 
=
�� 
FindSetting
�� #
(
��# $
(
��$ %
Settings
��% -
x
��. /
)
��/ 0
=>
��1 3
x
��4 5
.
��5 6
curves
��6 <
.
��< =
green
��= B
.
��B C
curve
��C H
)
��H I
,
��I J
blue
�� 
=
�� 
FindSetting
�� "
(
��" #
(
��# $
Settings
��$ ,
x
��- .
)
��. /
=>
��0 2
x
��3 4
.
��4 5
curves
��5 ;
.
��; <
blue
��< @
.
��@ A
curve
��A F
)
��F G
,
��G H
hueVShue
�� 
=
�� 
FindSetting
�� &
(
��& '
(
��' (
Settings
��( 0
x
��1 2
)
��2 3
=>
��4 6
x
��7 8
.
��8 9
curves
��9 ?
.
��? @
hueVShue
��@ H
.
��H I
curve
��I N
)
��N O
,
��O P
hueVSsat
�� 
=
�� 
FindSetting
�� &
(
��& '
(
��' (
Settings
��( 0
x
��1 2
)
��2 3
=>
��4 6
x
��7 8
.
��8 9
curves
��9 ?
.
��? @
hueVSsat
��@ H
.
��H I
curve
��I N
)
��N O
,
��O P
satVSsat
�� 
=
�� 
FindSetting
�� &
(
��& '
(
��' (
Settings
��( 0
x
��1 2
)
��2 3
=>
��4 6
x
��7 8
.
��8 9
curves
��9 ?
.
��? @
satVSsat
��@ H
.
��H I
curve
��I N
)
��N O
,
��O P
lumVSsat
�� 
=
�� 
FindSetting
�� &
(
��& '
(
��' (
Settings
��( 0
x
��1 2
)
��2 3
=>
��4 6
x
��7 8
.
��8 9
curves
��9 ?
.
��? @
lumVSsat
��@ H
.
��H I
curve
��I N
)
��N O
,
��O P!
currentEditingCurve
�� #
=
��$ %
FindSetting
��& 1
(
��1 2
(
��2 3
Settings
��3 ;
x
��< =
)
��= >
=>
��? A
x
��B C
.
��C D
curves
��D J
.
��J K#
e_CurrentEditingCurve
��K `
)
��` a
,
��a b
curveY
�� 
=
�� 
FindSetting
�� $
(
��$ %
(
��% &
Settings
��& .
x
��/ 0
)
��0 1
=>
��2 4
x
��5 6
.
��6 7
curves
��7 =
.
��= >
e_CurveY
��> F
)
��F G
,
��G H
curveR
�� 
=
�� 
FindSetting
�� $
(
��$ %
(
��% &
Settings
��& .
x
��/ 0
)
��0 1
=>
��2 4
x
��5 6
.
��6 7
curves
��7 =
.
��= >
e_CurveR
��> F
)
��F G
,
��G H
curveG
�� 
=
�� 
FindSetting
�� $
(
��$ %
(
��% &
Settings
��& .
x
��/ 0
)
��0 1
=>
��2 4
x
��5 6
.
��6 7
curves
��7 =
.
��= >
e_CurveG
��> F
)
��F G
,
��G H
curveB
�� 
=
�� 
FindSetting
�� $
(
��$ %
(
��% &
Settings
��& .
x
��/ 0
)
��0 1
=>
��2 4
x
��5 6
.
��6 7
curves
��7 =
.
��= >
e_CurveB
��> F
)
��F G
}
�� 
;
�� 
m_CurveDict
�� 
=
�� 
new
�� 

Dictionary
�� (
<
��( ) 
SerializedProperty
��) ;
,
��; <
Color
��= B
>
��B C
(
��C D
)
��D E
;
��E F
var
�� 
settings
�� 
=
�� 
CurveEditor
�� &
.
��& '
Settings
��' /
.
��/ 0
defaultSettings
��0 ?
;
��? @
m_CurveEditor
�� 
=
�� 
new
�� 
CurveEditor
��  +
(
��+ ,
settings
��, 4
)
��4 5
;
��5 6
AddCurve
�� 
(
�� 
m_Curves
�� 
.
�� 
master
�� $
,
��$ %
new
��( +
Color
��, 1
(
��1 2
$num
��2 4
,
��4 5
$num
��6 8
,
��8 9
$num
��: <
)
��< =
,
��= >
$num
��? @
,
��@ A
false
��B G
)
��G H
;
��H I
AddCurve
�� 
(
�� 
m_Curves
�� 
.
�� 
red
�� !
,
��! "
new
��( +
Color
��, 1
(
��1 2
$num
��2 4
,
��4 5
$num
��6 8
,
��8 9
$num
��: <
)
��< =
,
��= >
$num
��? @
,
��@ A
false
��B G
)
��G H
;
��H I
AddCurve
�� 
(
�� 
m_Curves
�� 
.
�� 
green
�� #
,
��# $
new
��( +
Color
��, 1
(
��1 2
$num
��2 4
,
��4 5
$num
��6 8
,
��8 9
$num
��: <
)
��< =
,
��= >
$num
��? @
,
��@ A
false
��B G
)
��G H
;
��H I
AddCurve
�� 
(
�� 
m_Curves
�� 
.
�� 
blue
�� "
,
��" #
new
��( +
Color
��, 1
(
��1 2
$num
��2 4
,
��4 5
$num
��6 :
,
��: ;
$num
��< >
)
��> ?
,
��? @
$num
��A B
,
��B C
false
��D I
)
��I J
;
��J K
AddCurve
�� 
(
�� 
m_Curves
�� 
.
�� 
hueVShue
�� &
,
��& '
new
��( +
Color
��, 1
(
��1 2
$num
��2 4
,
��4 5
$num
��6 8
,
��8 9
$num
��: <
)
��< =
,
��= >
$num
��? @
,
��@ A
true
��B F
)
��F G
;
��G H
AddCurve
�� 
(
�� 
m_Curves
�� 
.
�� 
hueVSsat
�� &
,
��& '
new
��( +
Color
��, 1
(
��1 2
$num
��2 4
,
��4 5
$num
��6 8
,
��8 9
$num
��: <
)
��< =
,
��= >
$num
��? @
,
��@ A
true
��B F
)
��F G
;
��G H
AddCurve
�� 
(
�� 
m_Curves
�� 
.
�� 
satVSsat
�� &
,
��& '
new
��( +
Color
��, 1
(
��1 2
$num
��2 4
,
��4 5
$num
��6 8
,
��8 9
$num
��: <
)
��< =
,
��= >
$num
��? @
,
��@ A
false
��B G
)
��G H
;
��H I
AddCurve
�� 
(
�� 
m_Curves
�� 
.
�� 
lumVSsat
�� &
,
��& '
new
��( +
Color
��, 1
(
��1 2
$num
��2 4
,
��4 5
$num
��6 8
,
��8 9
$num
��: <
)
��< =
,
��= >
$num
��? @
,
��@ A
false
��B G
)
��G H
;
��H I
}
�� 	
void
�� 
AddCurve
�� 
(
��  
SerializedProperty
�� (
prop
��) -
,
��- .
Color
��/ 4
color
��5 :
,
��: ;
uint
��< @
minPointCount
��A N
,
��N O
bool
��P T
loop
��U Y
)
��Y Z
{
�� 	
var
�� 
state
�� 
=
�� 
CurveEditor
�� #
.
��# $

CurveState
��$ .
.
��. /
defaultState
��/ ;
;
��; <
state
�� 
.
�� 
color
�� 
=
�� 
color
�� 
;
��  
state
�� 
.
�� 
visible
�� 
=
�� 
false
�� !
;
��! "
state
�� 
.
�� 
minPointCount
�� 
=
��  !
minPointCount
��" /
;
��/ 0
state
�� 
.
�� (
onlyShowHandlesOnSelection
�� ,
=
��- .
true
��/ 3
;
��3 4
state
�� 
.
�� "
zeroKeyConstantValue
�� &
=
��' (
$num
��) -
;
��- .
state
�� 
.
�� 
loopInBounds
�� 
=
��  
loop
��! %
;
��% &
m_CurveEditor
�� 
.
�� 
Add
�� 
(
�� 
prop
�� "
,
��" #
state
��$ )
)
��) *
;
��* +
m_CurveDict
�� 
.
�� 
Add
�� 
(
�� 
prop
��  
,
��  !
color
��" '
)
��' (
;
��( )
}
�� 	
public
�� 
override
�� 
void
�� 
	OnDisable
�� &
(
��& '
)
��' (
{
�� 	
m_CurveEditor
�� 
.
�� 
	RemoveAll
�� #
(
��# $
)
��$ %
;
��% &
}
�� 	
public
�� 
override
�� 
void
�� 
OnInspectorGUI
�� +
(
��+ ,
)
��, -
{
�� 	
DoGUIFor
�� 
(
�� 
$str
�� "
,
��" #
DoTonemappingGUI
��$ 4
)
��4 5
;
��5 6
EditorGUILayout
�� 
.
�� 
Space
�� !
(
��! "
)
��" #
;
��# $
DoGUIFor
�� 
(
�� 
$str
�� 
,
�� 

DoBasicGUI
�� (
)
��( )
;
��) *
EditorGUILayout
�� 
.
�� 
Space
�� !
(
��! "
)
��" #
;
��# $
DoGUIFor
�� 
(
�� 
$str
�� $
,
��$ %
DoChannelMixerGUI
��& 7
)
��7 8
;
��8 9
EditorGUILayout
�� 
.
�� 
Space
�� !
(
��! "
)
��" #
;
��# $
DoGUIFor
�� 
(
�� 
$str
�� !
,
��! "
DoColorWheelsGUI
��# 3
)
��3 4
;
��4 5
EditorGUILayout
�� 
.
�� 
Space
�� !
(
��! "
)
��" #
;
��# $
DoGUIFor
�� 
(
�� 
$str
�� %
,
��% &
DoCurvesGUI
��' 2
)
��2 3
;
��3 4
}
�� 	
void
�� 
DoGUIFor
�� 
(
�� 
string
�� 
title
�� "
,
��" #
Action
��$ *
func
��+ /
)
��/ 0
{
�� 	
EditorGUILayout
�� 
.
�� 

LabelField
�� &
(
��& '
title
��' ,
,
��, -
EditorStyles
��. :
.
��: ;
	boldLabel
��; D
)
��D E
;
��E F
	EditorGUI
�� 
.
�� 
indentLevel
�� !
++
��! #
;
��# $
func
�� 
(
�� 
)
�� 
;
�� 
	EditorGUI
�� 
.
�� 
indentLevel
�� !
--
��! #
;
��# $
}
�� 	
void
�� 
DoTonemappingGUI
�� 
(
�� 
)
�� 
{
�� 	
int
�� 
tid
�� 
=
�� 
EditorGUILayout
�� %
.
��% &
Popup
��& +
(
��+ ,
EditorGUIHelper
��, ;
.
��; <

GetContent
��< F
(
��F G
$str
��G S
)
��S T
,
��T U
m_Tonemapping
��V c
.
��c d

tonemapper
��d n
.
��n o
intValue
��o w
,
��w x
s_Tonemappers��y �
)��� �
;��� �
if
�� 
(
�� 
tid
�� 
==
�� 
(
�� 
int
�� 
)
�� 

Tonemapper
�� &
.
��& '
Neutral
��' .
)
��. /
{
�� )
DrawNeutralTonemappingCurve
�� (
(
��( )
)
��) *
;
��* +
EditorGUILayout
�� 
.
��  
PropertyField
��  -
(
��- .
m_Tonemapping
��. ;
.
��; <
neutralBlackIn
��< J
,
��J K
EditorGUIHelper
��L [
.
��[ \

GetContent
��\ f
(
��f g
$str
��g q
)
��q r
)
��r s
;
��s t
EditorGUILayout
�� 
.
��  
PropertyField
��  -
(
��- .
m_Tonemapping
��. ;
.
��; <
neutralWhiteIn
��< J
,
��J K
EditorGUIHelper
��L [
.
��[ \

GetContent
��\ f
(
��f g
$str
��g q
)
��q r
)
��r s
;
��s t
EditorGUILayout
�� 
.
��  
PropertyField
��  -
(
��- .
m_Tonemapping
��. ;
.
��; <
neutralBlackOut
��< K
,
��K L
EditorGUIHelper
��M \
.
��\ ]

GetContent
��] g
(
��g h
$str
��h s
)
��s t
)
��t u
;
��u v
EditorGUILayout
�� 
.
��  
PropertyField
��  -
(
��- .
m_Tonemapping
��. ;
.
��; <
neutralWhiteOut
��< K
,
��K L
EditorGUIHelper
��M \
.
��\ ]

GetContent
��] g
(
��g h
$str
��h s
)
��s t
)
��t u
;
��u v
EditorGUILayout
�� 
.
��  
PropertyField
��  -
(
��- .
m_Tonemapping
��. ;
.
��; <
neutralWhiteLevel
��< M
,
��M N
EditorGUIHelper
��O ^
.
��^ _

GetContent
��_ i
(
��i j
$str
��j w
)
��w x
)
��x y
;
��y z
EditorGUILayout
�� 
.
��  
PropertyField
��  -
(
��- .
m_Tonemapping
��. ;
.
��; <
neutralWhiteClip
��< L
,
��L M
EditorGUIHelper
��N ]
.
��] ^

GetContent
��^ h
(
��h i
$str
��i u
)
��u v
)
��v w
;
��w x
}
�� 
m_Tonemapping
�� 
.
�� 

tonemapper
�� $
.
��$ %
intValue
��% -
=
��. /
tid
��0 3
;
��3 4
}
�� 	
void
�� 	)
DrawNeutralTonemappingCurve
��
 %
(
��% &
)
��& '
{
�� 
using
�� 
(
�� 
new
�� 
	GUILayout
��  
.
��  !
HorizontalScope
��! 0
(
��0 1
)
��1 2
)
��2 3
{
�� 
	GUILayout
�� 
.
�� 
Space
�� 
(
��  
	EditorGUI
��  )
.
��) *
indentLevel
��* 5
*
��6 7
$num
��8 ;
)
��; <
;
��< = 
m_NeutralCurveRect
�� "
=
��# $
GUILayoutUtility
��% 5
.
��5 6
GetRect
��6 =
(
��= >
$num
��> A
,
��A B
$num
��C E
)
��E F
;
��F G
}
�� 
m_RectVertices
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
PointInRect
�� "
(
��" #
$num
��0 2
,
��2 3
$num
��A C
)
��C D
;
��D E
m_RectVertices
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
PointInRect
��  +
(
��+ ,
k_NeutralRangeX
��, ;
,
��; <
$num
��J L
)
��L M
;
��M N
m_RectVertices
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
PointInRect
��  +
(
��+ ,
k_NeutralRangeX
��, ;
,
��; <
k_NeutralRangeY
��= L
)
��L M
;
��M N
m_RectVertices
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
PointInRect
��  +
(
��+ ,
$num
��9 ;
,
��; <
k_NeutralRangeY
��= L
)
��L M
;
��M N
Handles
�� 
.
�� +
DrawSolidRectangleWithOutline
�� 1
(
��1 2
m_RectVertices
�� 
,
�� 
Color
�� 
.
�� 
white
�� 
*
�� 
$num
�� "
,
��" #
Color
�� 
.
�� 
white
�� 
*
�� 
$num
�� "
)
�� 
;
�� 
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
k_NeutralRangeY
��  /
;
��/ 0
i
��1 2
++
��2 4
)
��4 5
DrawLine
�� 
(
�� 
$num
�� 
,
�� 
i
�� 
,
�� 
k_NeutralRangeX
�� .
,
��. /
i
��0 1
,
��1 2
$num
��3 7
)
��7 8
;
��8 9
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
k_NeutralRangeX
��  /
;
��/ 0
i
��1 2
++
��2 4
)
��4 5
DrawLine
�� 
(
�� 
i
�� 
,
�� 
$num
�� 
,
�� 
i
��  
,
��  !
k_NeutralRangeY
��" 1
,
��1 2
$num
��3 7
)
��7 8
;
��8 9
Handles
�� 
.
�� 
Label
�� 
(
�� 
PointInRect
�� 
(
�� 
$num
�� 
,
�� 
k_NeutralRangeY
�� .
)
��. /
+
��0 1
Vector3
��2 9
.
��9 :
right
��: ?
,
��? @
$str
�� $
,
��$ %
EditorStyles
��& 2
.
��2 3
	miniLabel
��3 <
)
�� 
;
�� 
var
�� 
tonemap
�� 
=
�� 
(
�� 
(
�� 
ColorGradingModel
�� -
)
��- .
target
��. 4
)
��4 5
.
��5 6
settings
��6 >
.
��> ?
tonemapping
��? J
;
��J K
const
�� 
float
�� 
scaleFactor
�� 
=
�� 
$num
��  #
;
��# $
const
�� 
float
�� 
scaleFactorHalf
�� '
=
��( )
scaleFactor
��* 5
*
��6 7
$num
��8 <
;
��< =
float
�� 
inBlack
�� 
=
�� 
tonemap
�� #
.
��# $
neutralBlackIn
��$ 2
*
��3 4
scaleFactor
��5 @
+
��A B
$num
��C E
;
��E F
float
�� 
outBlack
�� 
=
�� 
tonemap
�� $
.
��$ %
neutralBlackOut
��% 4
*
��5 6
scaleFactorHalf
��7 F
+
��G H
$num
��I K
;
��K L
float
�� 
inWhite
�� 
=
�� 
tonemap
�� #
.
��# $
neutralWhiteIn
��$ 2
/
��3 4
scaleFactor
��5 @
;
��@ A
float
�� 
outWhite
�� 
=
�� 
$num
�� 
-
��  !
tonemap
��" )
.
��) *
neutralWhiteOut
��* 9
/
��: ;
scaleFactor
��< G
;
��G H
float
�� 

blackRatio
�� 
=
�� 
inBlack
�� &
/
��' (
outBlack
��) 1
;
��1 2
float
�� 

whiteRatio
�� 
=
�� 
inWhite
�� &
/
��' (
outWhite
��) 1
;
��1 2
const
�� 
float
�� 
a
�� 
=
�� 
$num
��  
;
��  !
float
�� 
b
�� 
=
�� 
Mathf
�� 
.
�� 
Max
�� 
(
��  
$num
��  "
,
��" #
Mathf
��$ )
.
��) *
LerpUnclamped
��* 7
(
��7 8
$num
��8 =
,
��= >
$num
��? D
,
��D E

blackRatio
��F P
)
��P Q
)
��Q R
;
��R S
float
�� 
c
�� 
=
�� 
Mathf
�� 
.
�� 
LerpUnclamped
�� )
(
��) *
$num
��* /
,
��/ 0
$num
��1 6
,
��6 7

whiteRatio
��8 B
)
��B C
;
��C D
float
�� 
d
�� 
=
�� 
Mathf
�� 
.
�� 
Max
�� 
(
��  
$num
��  "
,
��" #
Mathf
��$ )
.
��) *
LerpUnclamped
��* 7
(
��7 8
$num
��8 =
,
��= >
$num
��? D
,
��D E

blackRatio
��F P
)
��P Q
)
��Q R
;
��R S
const
�� 
float
�� 
e
�� 
=
�� 
$num
�� !
;
��! "
const
�� 
float
�� 
f
�� 
=
�� 
$num
�� !
;
��! "
float
�� 

whiteLevel
�� 
=
�� 
tonemap
��  
.
��  !
neutralWhiteLevel
��! 2
;
��2 3
float
�� 
	whiteClip
�� 
=
�� 
tonemap
�� 
.
��  
neutralWhiteClip
��  0
/
��1 2
scaleFactorHalf
��3 B
;
��B C
var
�� 
vcount
�� 
=
�� 
$num
�� 
;
�� 
while
�� 
(
�� 
vcount
�� 
<
�� 
k_CurveResolution
�� -
)
��- .
{
�� 
float
�� 
x
�� 
=
�� 
k_NeutralRangeX
�� )
*
��* +
vcount
��, 2
/
��3 4
(
��5 6
k_CurveResolution
��6 G
-
��H I
$num
��J K
)
��K L
;
��L M
float
�� 
y
�� 
=
�� 
NeutralTonemap
�� (
(
��( )
x
��) *
,
��* +
a
��, -
,
��- .
b
��/ 0
,
��0 1
c
��2 3
,
��3 4
d
��5 6
,
��6 7
e
��8 9
,
��9 :
f
��; <
,
��< =

whiteLevel
��> H
,
��H I
	whiteClip
��J S
)
��S T
;
��T U
if
�� 
(
�� 
y
�� 
<
�� 
k_NeutralRangeY
�� '
)
��' (
{
�� 
m_CurveVertices
�� #
[
��# $
vcount
��$ *
++
��* ,
]
��, -
=
��. /
PointInRect
��0 ;
(
��; <
x
��< =
,
��= >
y
��? @
)
��@ A
;
��A B
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
vcount
�� 
>
��  
$num
��! "
)
��" #
{
�� 
var
�� 
v1
�� 
=
��  
m_CurveVertices
��! 0
[
��0 1
vcount
��1 7
-
��8 9
$num
��: ;
]
��; <
;
��< =
var
�� 
v2
�� 
=
��  
m_CurveVertices
��! 0
[
��0 1
vcount
��1 7
-
��8 9
$num
��: ;
]
��; <
;
��< =
var
�� 
clip
��  
=
��! "
(
��# $ 
m_NeutralCurveRect
��$ 6
.
��6 7
y
��7 8
-
��9 :
v1
��; =
.
��= >
y
��> ?
)
��? @
/
��A B
(
��C D
v2
��D F
.
��F G
y
��G H
-
��I J
v1
��K M
.
��M N
y
��N O
)
��O P
;
��P Q
m_CurveVertices
�� '
[
��' (
vcount
��( .
-
��/ 0
$num
��1 2
]
��2 3
=
��4 5
v1
��6 8
+
��9 :
(
��; <
v2
��< >
-
��? @
v1
��A C
)
��C D
*
��E F
clip
��G K
;
��K L
}
�� 
break
�� 
;
�� 
}
�� 
}
�� 
if
�� 
(
�� 
vcount
�� 
>
�� 
$num
�� 
)
�� 
{
�� 
Handles
�� 
.
�� 
color
�� 
=
�� 
Color
��  %
.
��% &
white
��& +
*
��, -
$num
��. 2
;
��2 3
Handles
�� 
.
�� 
DrawAAPolyLine
�� &
(
��& '
$num
��' +
,
��+ ,
vcount
��- 3
,
��3 4
m_CurveVertices
��5 D
)
��D E
;
��E F
}
�� 
}
�� 
void
�� 
DrawLine
�� 
(
�� 
float
�� 
x1
�� 
,
�� 
float
�� 
y1
��  "
,
��" #
float
��$ )
x2
��* ,
,
��, -
float
��. 3
y2
��4 6
,
��6 7
float
��8 =
	grayscale
��> G
)
��G H
{
�� 	
m_LineVertices
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
PointInRect
��  +
(
��+ ,
x1
��, .
,
��. /
y1
��0 2
)
��2 3
;
��3 4
m_LineVertices
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
PointInRect
��  +
(
��+ ,
x2
��, .
,
��. /
y2
��0 2
)
��2 3
;
��3 4
Handles
�� 
.
�� 
color
�� 
=
�� 
Color
�� !
.
��! "
white
��" '
*
��( )
	grayscale
��* 3
;
��3 4
Handles
�� 
.
�� 
DrawAAPolyLine
�� "
(
��" #
$num
��# %
,
��% &
m_LineVertices
��' 5
)
��5 6
;
��6 7
}
�� 	
Vector3
�� 	
PointInRect
��
 
(
�� 
float
�� 
x
�� 
,
�� 
float
�� $
y
��% &
)
��& '
{
�� 	
x
�� 
=
�� 
Mathf
�� 
.
�� 
Lerp
�� 
(
��  
m_NeutralCurveRect
�� -
.
��- .
x
��. /
,
��/ 0 
m_NeutralCurveRect
��1 C
.
��C D
xMax
��D H
,
��H I
x
��J K
/
��L M
k_NeutralRangeX
��N ]
)
��] ^
;
��^ _
y
�� 
=
�� 
Mathf
�� 
.
�� 
Lerp
�� 
(
��  
m_NeutralCurveRect
�� -
.
��- .
yMax
��. 2
,
��2 3 
m_NeutralCurveRect
��4 F
.
��F G
y
��G H
,
��H I
y
��J K
/
��L M
k_NeutralRangeY
��N ]
)
��] ^
;
��^ _
return
�� 
new
�� 
Vector3
�� 
(
�� 
x
��  
,
��  !
y
��" #
,
��# $
$num
��% &
)
��& '
;
��' (
}
�� 	
float
�� 
NeutralCurve
�� 
(
�� 
float
�� 
x
�� 
,
�� 
float
�� #
a
��$ %
,
��% &
float
��' ,
b
��- .
,
��. /
float
��0 5
c
��6 7
,
��7 8
float
��9 >
d
��? @
,
��@ A
float
��B G
e
��H I
,
��I J
float
��K P
f
��Q R
)
��R S
{
�� 
return
�� 	
(
��
 
(
�� 
x
�� 
*
�� 
(
�� 
a
�� 
*
�� 
x
�� 
+
�� 
c
�� 
*
�� 
b
�� 
)
�� 
+
��  !
d
��" #
*
��$ %
e
��& '
)
��' (
/
��) *
(
��+ ,
x
��, -
*
��. /
(
��0 1
a
��1 2
*
��3 4
x
��5 6
+
��7 8
b
��9 :
)
��: ;
+
��< =
d
��> ?
*
��@ A
f
��B C
)
��C D
)
��D E
-
��F G
e
��H I
/
��J K
f
��L M
;
��M N
}
�� 
float
�� 

NeutralTonemap
�� 
(
�� 
float
�� 
x
��  !
,
��! "
float
��# (
a
��) *
,
��* +
float
��, 1
b
��2 3
,
��3 4
float
��5 :
c
��; <
,
��< =
float
��> C
d
��D E
,
��E F
float
��G L
e
��M N
,
��N O
float
��P U
f
��V W
,
��W X
float
��Y ^

whiteLevel
��_ i
,
��i j
float
��k p
	whiteClip
��q z
)
��z {
{
�� 
x
�� 
=
�� 
Mathf
�� 
.
�� 
Max
�� 
(
�� 
$num
�� 
,
�� 
x
�� 
)
�� 
;
�� 
float
�� 

whiteScale
��	 
=
�� 
$num
�� 
/
�� 
NeutralCurve
�� '
(
��' (

whiteLevel
��( 2
,
��2 3
a
��4 5
,
��5 6
b
��7 8
,
��8 9
c
��: ;
,
��; <
d
��= >
,
��> ?
e
��@ A
,
��A B
f
��C D
)
��D E
;
��E F
x
�� 
=
�� 
NeutralCurve
�� 
(
�� 
x
�� 
*
�� 

whiteScale
�� "
,
��" #
a
��$ %
,
��% &
b
��' (
,
��( )
c
��* +
,
��+ ,
d
��- .
,
��. /
e
��0 1
,
��1 2
f
��3 4
)
��4 5
;
��5 6
x
�� 
*=
�� 

whiteScale
�� 
;
�� 
x
�� 
/=
�� 
	whiteClip
�� 
;
�� 
return
�� 	
x
��
 
;
�� 
}
�� 
void
�� 

DoBasicGUI
�� 
(
�� 
)
�� 
{
�� 	
EditorGUILayout
�� 
.
�� 
PropertyField
�� )
(
��) *
m_Basic
��* 1
.
��1 2
exposure
��2 :
,
��: ;
EditorGUIHelper
��< K
.
��K L

GetContent
��L V
(
��V W
$str
��W k
)
��k l
)
��l m
;
��m n
EditorGUILayout
�� 
.
�� 
PropertyField
�� )
(
��) *
m_Basic
��* 1
.
��1 2
temperature
��2 =
)
��= >
;
��> ?
EditorGUILayout
�� 
.
�� 
PropertyField
�� )
(
��) *
m_Basic
��* 1
.
��1 2
tint
��2 6
)
��6 7
;
��7 8
EditorGUILayout
�� 
.
�� 
PropertyField
�� )
(
��) *
m_Basic
��* 1
.
��1 2
hueShift
��2 :
)
��: ;
;
��; <
EditorGUILayout
�� 
.
�� 
PropertyField
�� )
(
��) *
m_Basic
��* 1
.
��1 2

saturation
��2 <
)
��< =
;
��= >
EditorGUILayout
�� 
.
�� 
PropertyField
�� )
(
��) *
m_Basic
��* 1
.
��1 2
contrast
��2 :
)
��: ;
;
��; <
}
�� 	
void
�� 
DoChannelMixerGUI
�� 
(
�� 
)
��  
{
�� 	
int
�� 
currentChannel
�� 
=
��  
m_ChannelMixer
��! /
.
��/ 0#
currentEditingChannel
��0 E
.
��E F
intValue
��F N
;
��N O
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� &
(
��& '
)
��' (
;
��( )
{
�� 
using
�� 
(
�� 
new
�� 
EditorGUILayout
�� *
.
��* +
HorizontalScope
��+ :
(
��: ;
)
��; <
)
��< =
{
�� 
EditorGUILayout
�� #
.
��# $
PrefixLabel
��$ /
(
��/ 0
$str
��0 9
)
��9 :
;
��: ;
if
�� 
(
�� 
	GUILayout
�� !
.
��! "
Toggle
��" (
(
��( )
currentChannel
��) 7
==
��8 :
$num
��; <
,
��< =
EditorGUIHelper
��> M
.
��M N

GetContent
��N X
(
��X Y
$str
��Y r
)
��r s
,
��s t
EditorStyles��u �
.��� �
miniButtonLeft��� �
)��� �
)��� �
currentChannel��� �
=��� �
$num��� �
;��� �
if
�� 
(
�� 
	GUILayout
�� !
.
��! "
Toggle
��" (
(
��( )
currentChannel
��) 7
==
��8 :
$num
��; <
,
��< =
EditorGUIHelper
��> M
.
��M N

GetContent
��N X
(
��X Y
$str
��Y v
)
��v w
,
��w x
EditorStyles��y �
.��� �
miniButtonMid��� �
)��� �
)��� �
currentChannel��� �
=��� �
$num��� �
;��� �
if
�� 
(
�� 
	GUILayout
�� !
.
��! "
Toggle
��" (
(
��( )
currentChannel
��) 7
==
��8 :
$num
��; <
,
��< =
EditorGUIHelper
��> M
.
��M N

GetContent
��N X
(
��X Y
$str
��Y t
)
��t u
,
��u v
EditorStyles��w �
.��� �
miniButtonRight��� �
)��� �
)��� �
currentChannel��� �
=��� �
$num��� �
;��� �
}
�� 
}
�� 
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� (
(
��( )
)
��) *
)
��* +
{
�� 
GUI
�� 
.
�� 
FocusControl
��  
(
��  !
null
��! %
)
��% &
;
��& '
}
�� 
var
�� 
serializedChannel
�� !
=
��" #
m_ChannelMixer
��$ 2
.
��2 3
channels
��3 ;
[
��; <
currentChannel
��< J
]
��J K
;
��K L
m_ChannelMixer
�� 
.
�� #
currentEditingChannel
�� 0
.
��0 1
intValue
��1 9
=
��: ;
currentChannel
��< J
;
��J K
var
�� 
v
�� 
=
�� 
serializedChannel
�� %
.
��% &
vector3Value
��& 2
;
��2 3
v
�� 
.
�� 
x
�� 
=
�� 
EditorGUILayout
�� !
.
��! "
Slider
��" (
(
��( )
EditorGUIHelper
��) 8
.
��8 9

GetContent
��9 C
(
��C D
$str��D �
)��� �
,��� �
v��� �
.��� �
x��� �
,��� �
-��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
v
�� 
.
�� 
y
�� 
=
�� 
EditorGUILayout
�� !
.
��! "
Slider
��" (
(
��( )
EditorGUIHelper
��) 8
.
��8 9

GetContent
��9 C
(
��C D
$str��D �
)��� �
,��� �
v��� �
.��� �
y��� �
,��� �
-��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
v
�� 
.
�� 
z
�� 
=
�� 
EditorGUILayout
�� !
.
��! "
Slider
��" (
(
��( )
EditorGUIHelper
��) 8
.
��8 9

GetContent
��9 C
(
��C D
$str��D �
)��� �
,��� �
v��� �
.��� �
z��� �
,��� �
-��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
serializedChannel
�� 
.
�� 
vector3Value
�� *
=
��+ ,
v
��- .
;
��. /
}
�� 	
void
�� 
DoColorWheelsGUI
�� 
(
�� 
)
�� 
{
�� 	
int
��	 
	wheelMode
�� 
=
�� 
m_ColorWheels
�� &
.
��& '
mode
��' +
.
��+ ,
intValue
��, 4
;
��4 5
using
��	 
(
�� 
new
�� 
EditorGUILayout
�� #
.
��# $
HorizontalScope
��$ 3
(
��3 4
)
��4 5
)
��5 6
{
��	 

	GUILayout
��
 
.
�� 
Space
�� 
(
�� 
$num
�� 
)
�� 
;
�� 
if
��
 
(
�� 
	GUILayout
�� 
.
�� 
Toggle
�� 
(
�� 
	wheelMode
�� (
==
��) +
(
��, -
int
��- 0
)
��0 1
ColorWheelMode
��1 ?
.
��? @
Linear
��@ F
,
��F G
$str
��H P
,
��P Q
EditorStyles
��R ^
.
��^ _
miniButtonLeft
��_ m
)
��m n
)
��n o
	wheelMode
��p y
=
��z {
(
��| }
int��} �
)��� �
ColorWheelMode��� �
.��� �
Linear��� �
;��� �
if
��
 
(
�� 
	GUILayout
�� 
.
�� 
Toggle
�� 
(
�� 
	wheelMode
�� (
==
��) +
(
��, -
int
��- 0
)
��0 1
ColorWheelMode
��1 ?
.
��? @
Log
��@ C
,
��C D
$str
��E J
,
��J K
EditorStyles
��L X
.
��X Y
miniButtonRight
��Y h
)
��h i
)
��i j
	wheelMode
��k t
=
��u v
(
��w x
int
��x {
)
��{ |
ColorWheelMode��| �
.��� �
Log��� �
;��� �
}
��	 

m_ColorWheels
��	 
.
�� 
mode
�� 
.
�� 
intValue
�� $
=
��% &
	wheelMode
��' 0
;
��0 1
EditorGUILayout
��	 
.
�� 
Space
�� 
(
�� 
)
��  
;
��  !
if
��	 
(
�� 
	wheelMode
�� 
==
�� 
(
�� 
int
�� 
)
�� 
ColorWheelMode
�� -
.
��- .
Linear
��. 4
)
��4 5
{
��	 

EditorGUILayout
��
 
.
�� 
PropertyField
�� '
(
��' (
m_ColorWheels
��( 5
.
��5 6
linear
��6 <
)
��< =
;
��= >
WheelSetTitle
��
 
(
�� 
GUILayoutUtility
�� (
.
��( )
GetLastRect
��) 4
(
��4 5
)
��5 6
,
��6 7
$str
��8 I
)
��I J
;
��J K
}
��	 

else
�� 
if
�� 

(
�� 
	wheelMode
�� 
==
�� 
(
�� 
int
�� 
)
�� 
ColorWheelMode
�� ,
.
��, -
Log
��- 0
)
��0 1
{
�� 
EditorGUILayout
�� 
.
�� 
PropertyField
�� !
(
��! "
m_ColorWheels
��" /
.
��/ 0
log
��0 3
)
��3 4
;
��4 5
WheelSetTitle
�� 
(
�� 
GUILayoutUtility
�� "
.
��" #
GetLastRect
��# .
(
��. /
)
��/ 0
,
��0 1
$str
��2 @
)
��@ A
;
��A B
}
�� 
}
�� 	
static
�� 
void
�� 
WheelSetTitle
�� !
(
��! "
Rect
��" &
position
��' /
,
��/ 0
string
��1 7
label
��8 =
)
��= >
{
�� 	
var
�� 
matrix
�� 
=
�� 
GUI
�� 
.
�� 
matrix
�� #
;
��# $
var
�� 
rect
�� 
=
�� 
new
�� 
Rect
�� 
(
��  
position
��  (
.
��( )
x
��) *
-
��+ ,
$num
��- 0
,
��0 1
position
��2 :
.
��: ;
y
��; <
,
��< ="
TrackballGroupDrawer
��> R
.
��R S
m_Size
��S Y
,
��Y Z"
TrackballGroupDrawer
��[ o
.
��o p
m_Size
��p v
)
��v w
;
��w x

GUIUtility
�� 
.
�� 
RotateAroundPivot
�� (
(
��( )
-
��) *
$num
��* -
,
��- .
rect
��/ 3
.
��3 4
center
��4 :
)
��: ;
;
��; <
GUI
�� 
.
�� 
Label
�� 
(
�� 
rect
�� 
,
�� 
label
�� !
,
��! "
FxStyles
��# +
.
��+ ,
centeredMiniLabel
��, =
)
��= >
;
��> ?
GUI
�� 
.
�� 
matrix
�� 
=
�� 
matrix
�� 
;
��  
}
�� 	
void
��  
ResetVisibleCurves
�� 
(
��  
)
��  !
{
�� 	
foreach
�� 
(
�� 
var
�� 
curve
�� 
in
�� !
m_CurveDict
��" -
)
��- .
{
�� 
var
�� 
state
�� 
=
�� 
m_CurveEditor
�� )
.
��) *
GetCurveState
��* 7
(
��7 8
curve
��8 =
.
��= >
Key
��> A
)
��A B
;
��B C
state
�� 
.
�� 
visible
�� 
=
�� 
false
��  %
;
��% &
m_CurveEditor
�� 
.
�� 
SetCurveState
�� +
(
��+ ,
curve
��, 1
.
��1 2
Key
��2 5
,
��5 6
state
��7 <
)
��< =
;
��= >
}
�� 
}
�� 	
void
�� 
SetCurveVisible
�� 
(
��  
SerializedProperty
�� /
prop
��0 4
)
��4 5
{
�� 	
var
�� 
state
�� 
=
�� 
m_CurveEditor
�� %
.
��% &
GetCurveState
��& 3
(
��3 4
prop
��4 8
)
��8 9
;
��9 :
state
�� 
.
�� 
visible
�� 
=
�� 
true
��  
;
��  !
m_CurveEditor
�� 
.
�� 
SetCurveState
�� '
(
��' (
prop
��( ,
,
��, -
state
��. 3
)
��3 4
;
��4 5
}
�� 	
bool
�� 
SpecialToggle
�� 
(
�� 
bool
�� 
value
��  %
,
��% &
string
��' -
name
��. 2
,
��2 3
out
��4 7
bool
��8 <
rightClicked
��= I
)
��I J
{
�� 	
var
�� 
rect
�� 
=
�� 
GUILayoutUtility
�� '
.
��' (
GetRect
��( /
(
��/ 0
EditorGUIHelper
��0 ?
.
��? @

GetContent
��@ J
(
��J K
name
��K O
)
��O P
,
��P Q
EditorStyles
��R ^
.
��^ _
toolbarButton
��_ l
)
��l m
;
��m n
var
�� 
e
�� 
=
�� 
Event
�� 
.
�� 
current
�� !
;
��! "
rightClicked
�� 
=
�� 
(
�� 
e
�� 
.
�� 
type
�� "
==
��# %
	EventType
��& /
.
��/ 0
MouseUp
��0 7
&&
��8 :
rect
��; ?
.
��? @
Contains
��@ H
(
��H I
e
��I J
.
��J K
mousePosition
��K X
)
��X Y
&&
��Z \
e
��] ^
.
��^ _
button
��_ e
==
��f h
$num
��i j
)
��j k
;
��k l
return
�� 
GUI
�� 
.
�� 
Toggle
�� 
(
�� 
rect
�� "
,
��" #
value
��$ )
,
��) *
name
��+ /
,
��/ 0
EditorStyles
��1 =
.
��= >
toolbarButton
��> K
)
��K L
;
��L M
}
�� 	
static
�� 
Material
�� 
s_MaterialSpline
�� (
;
��( )
void
�� 
DoCurvesGUI
�� 
(
�� 
)
�� 
{
�� 	
EditorGUILayout
�� 
.
�� 
Space
�� !
(
��! "
)
��" #
;
��# $
	EditorGUI
�� 
.
�� 
indentLevel
�� !
-=
��" $
$num
��% &
;
��& ' 
ResetVisibleCurves
�� 
(
�� 
)
��  
;
��  !
using
�� 
(
�� 
new
�� 
	EditorGUI
��  
.
��  ! 
DisabledGroupScope
��! 3
(
��3 4 
serializedProperty
��4 F
.
��F G
serializedObject
��G W
.
��W X&
isEditingMultipleObjects
��X p
)
��p q
)
��q r
{
�� 
int
�� 
curveEditingId
�� "
=
��# $
$num
��% &
;
��& '
using
�� 
(
�� 
new
�� 
	GUILayout
�� $
.
��$ %
HorizontalScope
��% 4
(
��4 5
EditorStyles
��5 A
.
��A B
toolbar
��B I
)
��I J
)
��J K
{
�� 
curveEditingId
�� "
=
��# $
EditorGUILayout
��% 4
.
��4 5
Popup
��5 :
(
��: ;
m_Curves
��; C
.
��C D!
currentEditingCurve
��D W
.
��W X
intValue
��X `
,
��` a
s_Curves
��b j
,
��j k
EditorStyles
��l x
.
��x y
toolbarPopup��y �
,��� �
	GUILayout��� �
.��� �
MaxWidth��� �
(��� �
$num��� �
)��� �
)��� �
;��� �
bool
�� 
y
�� 
=
�� 
false
�� "
,
��" #
r
��$ %
=
��& '
false
��( -
,
��- .
g
��/ 0
=
��1 2
false
��3 8
,
��8 9
b
��: ;
=
��< =
false
��> C
;
��C D
if
�� 
(
�� 
curveEditingId
�� &
==
��' )
$num
��* +
)
��+ ,
{
�� 
EditorGUILayout
�� '
.
��' (
Space
��( -
(
��- .
)
��. /
;
��/ 0
bool
�� 
rightClickedY
�� *
,
��* +
rightClickedR
��, 9
,
��9 :
rightClickedG
��; H
,
��H I
rightClickedB
��J W
;
��W X
y
�� 
=
�� 
SpecialToggle
�� )
(
��) *
m_Curves
��* 2
.
��2 3
curveY
��3 9
.
��9 :
	boolValue
��: C
,
��C D
$str
��E H
,
��H I
out
��J M
rightClickedY
��N [
)
��[ \
;
��\ ]
r
�� 
=
�� 
SpecialToggle
�� )
(
��) *
m_Curves
��* 2
.
��2 3
curveR
��3 9
.
��9 :
	boolValue
��: C
,
��C D
$str
��E H
,
��H I
out
��J M
rightClickedR
��N [
)
��[ \
;
��\ ]
g
�� 
=
�� 
SpecialToggle
�� )
(
��) *
m_Curves
��* 2
.
��2 3
curveG
��3 9
.
��9 :
	boolValue
��: C
,
��C D
$str
��E H
,
��H I
out
��J M
rightClickedG
��N [
)
��[ \
;
��\ ]
b
�� 
=
�� 
SpecialToggle
�� )
(
��) *
m_Curves
��* 2
.
��2 3
curveB
��3 9
.
��9 :
	boolValue
��: C
,
��C D
$str
��E H
,
��H I
out
��J M
rightClickedB
��N [
)
��[ \
;
��\ ]
if
�� 
(
�� 
!
�� 
y
�� 
&&
�� !
!
��" #
r
��# $
&&
��% '
!
��( )
g
��) *
&&
��+ -
!
��. /
b
��/ 0
)
��0 1
{
�� 
r
�� 
=
�� 
g
��  !
=
��" #
b
��$ %
=
��& '
false
��( -
;
��- .
y
�� 
=
�� 
true
��  $
;
��$ %
}
�� 
if
�� 
(
�� 
rightClickedY
�� )
||
��* ,
rightClickedR
��- :
||
��; =
rightClickedG
��> K
||
��L N
rightClickedB
��O \
)
��\ ]
{
�� 
y
�� 
=
�� 
rightClickedY
��  -
;
��- .
r
�� 
=
�� 
rightClickedR
��  -
;
��- .
g
�� 
=
�� 
rightClickedG
��  -
;
��- .
b
�� 
=
�� 
rightClickedB
��  -
;
��- .
}
�� 
if
�� 
(
�� 
y
�� 
)
�� 
SetCurveVisible
�� .
(
��. /
m_Curves
��/ 7
.
��7 8
master
��8 >
)
��> ?
;
��? @
if
�� 
(
�� 
r
�� 
)
�� 
SetCurveVisible
�� .
(
��. /
m_Curves
��/ 7
.
��7 8
red
��8 ;
)
��; <
;
��< =
if
�� 
(
�� 
g
�� 
)
�� 
SetCurveVisible
�� .
(
��. /
m_Curves
��/ 7
.
��7 8
green
��8 =
)
��= >
;
��> ?
if
�� 
(
�� 
b
�� 
)
�� 
SetCurveVisible
�� .
(
��. /
m_Curves
��/ 7
.
��7 8
blue
��8 <
)
��< =
;
��= >
m_Curves
��  
.
��  !
curveY
��! '
.
��' (
	boolValue
��( 1
=
��2 3
y
��4 5
;
��5 6
m_Curves
��  
.
��  !
curveR
��! '
.
��' (
	boolValue
��( 1
=
��2 3
r
��4 5
;
��5 6
m_Curves
��  
.
��  !
curveG
��! '
.
��' (
	boolValue
��( 1
=
��2 3
g
��4 5
;
��5 6
m_Curves
��  
.
��  !
curveB
��! '
.
��' (
	boolValue
��( 1
=
��2 3
b
��4 5
;
��5 6
}
�� 
else
�� 
{
�� 
switch
�� 
(
��  
curveEditingId
��  .
)
��. /
{
�� 
case
��  
$num
��! "
:
��" #
SetCurveVisible
��$ 3
(
��3 4
m_Curves
��4 <
.
��< =
hueVShue
��= E
)
��E F
;
��F G
break
��  %
;
��% &
case
��  
$num
��! "
:
��" #
SetCurveVisible
��$ 3
(
��3 4
m_Curves
��4 <
.
��< =
hueVSsat
��= E
)
��E F
;
��F G
break
��  %
;
��% &
case
��  
$num
��! "
:
��" #
SetCurveVisible
��$ 3
(
��3 4
m_Curves
��4 <
.
��< =
satVSsat
��= E
)
��E F
;
��F G
break
��  %
;
��% &
case
��  
$num
��! "
:
��" #
SetCurveVisible
��$ 3
(
��3 4
m_Curves
��4 <
.
��< =
lumVSsat
��= E
)
��E F
;
��F G
break
��  %
;
��% &
}
�� 
}
�� 
	GUILayout
�� 
.
�� 
FlexibleSpace
�� +
(
��+ ,
)
��, -
;
��- .
if
�� 
(
�� 
	GUILayout
�� !
.
��! "
Button
��" (
(
��( )
$str
��) 0
,
��0 1
EditorStyles
��2 >
.
��> ?
toolbarButton
��? L
)
��L M
)
��M N
{
�� 
switch
�� 
(
��  
curveEditingId
��  .
)
��. /
{
�� 
case
��  
$num
��! "
:
��" #
if
��  "
(
��# $
y
��$ %
)
��% &
m_Curves
��' /
.
��/ 0
master
��0 6
.
��6 7!
animationCurveValue
��7 J
=
��K L
AnimationCurve
��M [
.
��[ \
Linear
��\ b
(
��b c
$num
��c e
,
��e f
$num
��g i
,
��i j
$num
��k m
,
��m n
$num
��o q
)
��q r
;
��r s
if
��  "
(
��# $
r
��$ %
)
��% &
m_Curves
��' /
.
��/ 0
red
��0 3
.
��3 4!
animationCurveValue
��4 G
=
��K L
AnimationCurve
��M [
.
��[ \
Linear
��\ b
(
��b c
$num
��c e
,
��e f
$num
��g i
,
��i j
$num
��k m
,
��m n
$num
��o q
)
��q r
;
��r s
if
��  "
(
��# $
g
��$ %
)
��% &
m_Curves
��' /
.
��/ 0
green
��0 5
.
��5 6!
animationCurveValue
��6 I
=
��K L
AnimationCurve
��M [
.
��[ \
Linear
��\ b
(
��b c
$num
��c e
,
��e f
$num
��g i
,
��i j
$num
��k m
,
��m n
$num
��o q
)
��q r
;
��r s
if
��  "
(
��# $
b
��$ %
)
��% &
m_Curves
��' /
.
��/ 0
blue
��0 4
.
��4 5!
animationCurveValue
��5 H
=
��K L
AnimationCurve
��M [
.
��[ \
Linear
��\ b
(
��b c
$num
��c e
,
��e f
$num
��g i
,
��i j
$num
��k m
,
��m n
$num
��o q
)
��q r
;
��r s
break
��  %
;
��% &
case
��  
$num
��! "
:
��" #
m_Curves
��$ ,
.
��, -
hueVShue
��- 5
.
��5 6!
animationCurveValue
��6 I
=
��J K
new
��L O
AnimationCurve
��P ^
(
��^ _
)
��_ `
;
��` a
break
��  %
;
��% &
case
��  
$num
��! "
:
��" #
m_Curves
��$ ,
.
��, -
hueVSsat
��- 5
.
��5 6!
animationCurveValue
��6 I
=
��J K
new
��L O
AnimationCurve
��P ^
(
��^ _
)
��_ `
;
��` a
break
��  %
;
��% &
case
��  
$num
��! "
:
��" #
m_Curves
��$ ,
.
��, -
satVSsat
��- 5
.
��5 6!
animationCurveValue
��6 I
=
��J K
new
��L O
AnimationCurve
��P ^
(
��^ _
)
��_ `
;
��` a
break
��  %
;
��% &
case
��  
$num
��! "
:
��" #
m_Curves
��$ ,
.
��, -
lumVSsat
��- 5
.
��5 6!
animationCurveValue
��6 I
=
��J K
new
��L O
AnimationCurve
��P ^
(
��^ _
)
��_ `
;
��` a
break
��  %
;
��% &
}
�� 
}
�� 
m_Curves
�� 
.
�� !
currentEditingCurve
�� 0
.
��0 1
intValue
��1 9
=
��: ;
curveEditingId
��< J
;
��J K
}
�� 
var
�� 
settings
�� 
=
�� 
m_CurveEditor
�� ,
.
��, -
settings
��- 5
;
��5 6
var
�� 
rect
�� 
=
�� 
GUILayoutUtility
�� +
.
��+ ,
GetAspectRect
��, 9
(
��9 :
$num
��: <
)
��< =
;
��= >
var
�� 
	innerRect
�� 
=
�� 
settings
��  (
.
��( )
padding
��) 0
.
��0 1
Remove
��1 7
(
��7 8
rect
��8 <
)
��< =
;
��= >
if
�� 
(
�� 
Event
�� 
.
�� 
current
�� !
.
��! "
type
��" &
==
��' )
	EventType
��* 3
.
��3 4
Repaint
��4 ;
)
��; <
{
�� 
	EditorGUI
�� 
.
�� 
DrawRect
�� &
(
��& '
rect
��' +
,
��+ ,
new
��- 0
Color
��1 6
(
��6 7
$num
��7 <
,
��< =
$num
��> C
,
��C D
$num
��E J
,
��J K
$num
��L N
)
��N O
)
��O P
;
��P Q
if
�� 
(
�� 
s_MaterialSpline
�� (
==
��) +
null
��, 0
)
��0 1
s_MaterialSpline
�� (
=
��) *
new
��+ .
Material
��/ 7
(
��7 8
Shader
��8 >
.
��> ?
Find
��? C
(
��C D
$str
��D h
)
��h i
)
��i j
{
��k l
	hideFlags
��m v
=
��w x
	HideFlags��y �
.��� �
HideAndDontSave��� �
}��� �
;��� �
if
�� 
(
�� 
curveEditingId
�� &
==
��' )
$num
��* +
||
��, .
curveEditingId
��/ =
==
��> @
$num
��A B
)
��B C#
DrawBackgroundTexture
�� -
(
��- .
	innerRect
��. 7
,
��7 8
$num
��9 :
)
��: ;
;
��; <
else
�� 
if
�� 
(
�� 
curveEditingId
�� +
==
��, .
$num
��/ 0
||
��1 3
curveEditingId
��4 B
==
��C E
$num
��F G
)
��G H#
DrawBackgroundTexture
�� -
(
��- .
	innerRect
��. 7
,
��7 8
$num
��9 :
)
��: ;
;
��; <
Handles
�� 
.
�� 
color
�� !
=
��" #
Color
��$ )
.
��) *
white
��* /
;
��/ 0
Handles
�� 
.
�� +
DrawSolidRectangleWithOutline
�� 9
(
��9 :
	innerRect
��: C
,
��C D
Color
��E J
.
��J K
clear
��K P
,
��P Q
new
��R U
Color
��V [
(
��[ \
$num
��\ `
,
��` a
$num
��b f
,
��f g
$num
��h l
,
��l m
$num
��n r
)
��r s
)
��s t
;
��t u
Handles
�� 
.
�� 
color
�� !
=
��" #
new
��$ '
Color
��( -
(
��- .
$num
��. 0
,
��0 1
$num
��2 4
,
��4 5
$num
��6 8
,
��8 9
$num
��: ?
)
��? @
;
��@ A
int
�� 
hLines
�� 
=
��  
(
��! "
int
��" %
)
��% &
Mathf
��& +
.
��+ ,
Sqrt
��, 0
(
��0 1
	innerRect
��1 :
.
��: ;
width
��; @
)
��@ A
;
��A B
int
�� 
vLines
�� 
=
��  
(
��! "
int
��" %
)
��% &
(
��& '
hLines
��' -
/
��. /
(
��0 1
	innerRect
��1 :
.
��: ;
width
��; @
/
��A B
	innerRect
��C L
.
��L M
height
��M S
)
��S T
)
��T U
;
��U V
int
�� 

gridOffset
�� "
=
��# $
Mathf
��% *
.
��* +

FloorToInt
��+ 5
(
��5 6
	innerRect
��6 ?
.
��? @
width
��@ E
/
��F G
hLines
��H N
)
��N O
;
��O P
int
�� 
gridPadding
�� #
=
��$ %
(
��& '
(
��' (
int
��( +
)
��+ ,
(
��, -
	innerRect
��- 6
.
��6 7
width
��7 <
)
��< =
%
��> ?
hLines
��@ F
)
��F G
/
��H I
$num
��J K
;
��K L
for
�� 
(
�� 
int
�� 
i
�� 
=
��  
$num
��! "
;
��" #
i
��$ %
<
��& '
hLines
��( .
;
��. /
i
��0 1
++
��1 3
)
��3 4
{
�� 
var
�� 
offset
�� "
=
��# $
i
��% &
*
��' (
Vector2
��) 0
.
��0 1
right
��1 6
*
��7 8

gridOffset
��9 C
;
��C D
offset
�� 
.
�� 
x
��  
+=
��! #
gridPadding
��$ /
;
��/ 0
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
	innerRect
��) 2
.
��2 3
position
��3 ;
+
��< =
offset
��> D
,
��D E
new
��F I
Vector2
��J Q
(
��Q R
	innerRect
��R [
.
��[ \
x
��\ ]
,
��] ^
	innerRect
��_ h
.
��h i
yMax
��i m
-
��n o
$num
��p q
)
��q r
+
��s t
offset
��u {
)
��{ |
;
��| }
}
�� 

gridOffset
�� 
=
��  
Mathf
��! &
.
��& '

FloorToInt
��' 1
(
��1 2
	innerRect
��2 ;
.
��; <
height
��< B
/
��C D
vLines
��E K
)
��K L
;
��L M
gridPadding
�� 
=
��  !
(
��" #
(
��# $
int
��$ '
)
��' (
(
��( )
	innerRect
��) 2
.
��2 3
height
��3 9
)
��9 :
%
��; <
vLines
��= C
)
��C D
/
��E F
$num
��G H
;
��H I
for
�� 
(
�� 
int
�� 
i
�� 
=
��  
$num
��! "
;
��" #
i
��$ %
<
��& '
vLines
��( .
;
��. /
i
��0 1
++
��1 3
)
��3 4
{
�� 
var
�� 
offset
�� "
=
��# $
i
��% &
*
��' (
Vector2
��) 0
.
��0 1
up
��1 3
*
��4 5

gridOffset
��6 @
;
��@ A
offset
�� 
.
�� 
y
��  
+=
��! #
gridPadding
��$ /
;
��/ 0
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
	innerRect
��) 2
.
��2 3
position
��3 ;
+
��< =
offset
��> D
,
��D E
new
��F I
Vector2
��J Q
(
��Q R
	innerRect
��R [
.
��[ \
xMax
��\ `
-
��a b
$num
��c d
,
��d e
	innerRect
��f o
.
��o p
y
��p q
)
��q r
+
��s t
offset
��u {
)
��{ |
;
��| }
}
�� 
}
�� 
if
�� 
(
�� 
m_CurveEditor
�� !
.
��! "
OnGUI
��" '
(
��' (
rect
��( ,
)
��, -
)
��- .
{
�� 
Repaint
�� 
(
�� 
)
�� 
;
�� 
GUI
�� 
.
�� 
changed
�� 
=
��  !
true
��" &
;
��& '
}
�� 
if
�� 
(
�� 
Event
�� 
.
�� 
current
�� !
.
��! "
type
��" &
==
��' )
	EventType
��* 3
.
��3 4
Repaint
��4 ;
)
��; <
{
�� 
Handles
�� 
.
�� 
color
�� !
=
��" #
Color
��$ )
.
��) *
black
��* /
;
��/ 0
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
new
��% (
Vector2
��) 0
(
��0 1
rect
��1 5
.
��5 6
x
��6 7
,
��7 8
rect
��9 =
.
��= >
y
��> ?
-
��@ A
$num
��B E
)
��E F
,
��F G
new
��H K
Vector2
��L S
(
��S T
rect
��T X
.
��X Y
xMax
��Y ]
,
��] ^
rect
��_ c
.
��c d
y
��d e
-
��f g
$num
��h k
)
��k l
)
��l m
;
��m n
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
new
��% (
Vector2
��) 0
(
��0 1
rect
��1 5
.
��5 6
x
��6 7
,
��7 8
rect
��9 =
.
��= >
y
��> ?
-
��@ A
$num
��B E
)
��E F
,
��F G
new
��H K
Vector2
��L S
(
��S T
rect
��T X
.
��X Y
x
��Y Z
,
��Z [
rect
��\ `
.
��` a
yMax
��a e
)
��e f
)
��f g
;
��g h
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
new
��% (
Vector2
��) 0
(
��0 1
rect
��1 5
.
��5 6
x
��6 7
,
��7 8
rect
��9 =
.
��= >
yMax
��> B
)
��B C
,
��C D
new
��E H
Vector2
��I P
(
��P Q
rect
��Q U
.
��U V
xMax
��V Z
,
��Z [
rect
��\ `
.
��` a
yMax
��a e
)
��e f
)
��f g
;
��g h
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
new
��% (
Vector2
��) 0
(
��0 1
rect
��1 5
.
��5 6
xMax
��6 :
,
��: ;
rect
��< @
.
��@ A
yMax
��A E
)
��E F
,
��F G
new
��H K
Vector2
��L S
(
��S T
rect
��T X
.
��X Y
xMax
��Y ]
,
��] ^
rect
��_ c
.
��c d
y
��d e
-
��f g
$num
��h k
)
��k l
)
��l m
;
��m n
var
�� 
	selection
�� !
=
��" #
m_CurveEditor
��$ 1
.
��1 2
GetSelection
��2 >
(
��> ?
)
��? @
;
��@ A
if
�� 
(
�� 
	selection
�� !
.
��! "
curve
��" '
!=
��( *
null
��+ /
&&
��0 2
	selection
��3 <
.
��< =
keyframeIndex
��= J
>
��K L
-
��M N
$num
��N O
)
��O P
{
�� 
var
�� 
key
�� 
=
��  !
	selection
��" +
.
��+ ,
keyframe
��, 4
.
��4 5
Value
��5 :
;
��: ;
var
�� 
infoRect
�� $
=
��% &
	innerRect
��' 0
;
��0 1
infoRect
��  
.
��  !
x
��! "
+=
��# %
$num
��& (
;
��( )
infoRect
��  
.
��  !
width
��! &
=
��' (
$num
��) -
;
��- .
infoRect
��  
.
��  !
height
��! '
=
��( )
$num
��* -
;
��- .
GUI
�� 
.
�� 
Label
�� !
(
��! "
infoRect
��" *
,
��* +
string
��, 2
.
��2 3
Format
��3 9
(
��9 :
$str
��: D
,
��D E
key
��F I
.
��I J
time
��J N
.
��N O
ToString
��O W
(
��W X
$str
��X \
)
��\ ]
,
��] ^
key
��_ b
.
��b c
value
��c h
.
��h i
ToString
��i q
(
��q r
$str
��r v
)
��v w
)
��w x
,
��x y
FxStyles��z �
.��� �
preLabel��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 
EditorGUILayout
�� 
.
�� 
Space
�� !
(
��! "
)
��" #
;
��# $
	EditorGUI
�� 
.
�� 
indentLevel
�� !
+=
��" $
$num
��% &
;
��& '
}
�� 	
void
�� #
DrawBackgroundTexture
�� "
(
��" #
Rect
��# '
rect
��( ,
,
��, -
int
��. 1
pass
��2 6
)
��6 7
{
�� 	
float
�� 
scale
�� 
=
�� 
EditorGUIUtility
�� *
.
��* +
pixelsPerPoint
��+ 9
;
��9 :
var
�� 
oldRt
�� 
=
�� 
RenderTexture
�� %
.
��% &
active
��& ,
;
��, -
var
�� 
rt
�� 
=
�� 
RenderTexture
�� "
.
��" #
GetTemporary
��# /
(
��/ 0
Mathf
��0 5
.
��5 6
	CeilToInt
��6 ?
(
��? @
rect
��@ D
.
��D E
width
��E J
*
��K L
scale
��M R
)
��R S
,
��S T
Mathf
��U Z
.
��Z [
	CeilToInt
��[ d
(
��d e
rect
��e i
.
��i j
height
��j p
*
��q r
scale
��s x
)
��x y
,
��y z
$num
��{ |
,
��| }"
RenderTextureFormat��~ �
.��� �
ARGB32��� �
,��� �&
RenderTextureReadWrite��� �
.��� �
Linear��� �
)��� �
;��� �
s_MaterialSpline
�� 
.
�� 
SetFloat
�� %
(
��% &
$str
��& 6
,
��6 7
GUI
��8 ;
.
��; <
enabled
��< C
?
��D E
$num
��F H
:
��I J
$num
��K O
)
��O P
;
��P Q
s_MaterialSpline
�� 
.
�� 
SetFloat
�� %
(
��% &
$str
��& 5
,
��5 6
EditorGUIUtility
��7 G
.
��G H
pixelsPerPoint
��H V
)
��V W
;
��W X
Graphics
�� 
.
�� 
Blit
�� 
(
�� 
null
�� 
,
�� 
rt
��  "
,
��" #
s_MaterialSpline
��$ 4
,
��4 5
pass
��6 :
)
��: ;
;
��; <
RenderTexture
�� 
.
�� 
active
��  
=
��! "
oldRt
��# (
;
��( )
GUI
�� 
.
�� 
DrawTexture
�� 
(
�� 
rect
��  
,
��  !
rt
��" $
)
��$ %
;
��% &
RenderTexture
�� 
.
�� 
ReleaseTemporary
�� *
(
��* +
rt
��+ -
)
��- .
;
��. /
}
�� 	
}
�� 
}�� �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\DefaultPostFxModelEditor.cs
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
} �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\DepthOfFieldModelEditor.cs
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
}%% �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\DitheringModelEditor.cs
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
} �K
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\EyeAdaptationModelEditor.cs
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
$str	))( �
,
))� �
MessageType
))� �
.
))� �
Warning
))� �
)
))� �
;
))� �
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
$str	77D �
)
77� �
,
77� �
ref
77� �
low
77� �
,
77� �
ref
77� �
high
77� �
,
77� �
$num
77� �
,
77� �
$num
77� �
)
77� �
;
77� �
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
}VV �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\FogModelEditor.cs
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
$str	$ �
,
� �
MessageType
� �
.
� �
Info
� �
)
� �
;
� �
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
} �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\GrainModelEditor.cs
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
} ��
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\MotionBlurModelEditor.cs
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
�� 
DrawDisc
�� 
(
�� 
Vector2
�� !
center
��" (
,
��( )
float
��* /
radius
��0 6
,
��6 7
Color
��8 =
fill
��> B
)
��B C
{
�� 
Handles
�� 
.
�� 
color
�� 
=
�� 
fill
��  $
;
��$ %
Handles
�� 
.
�� 
DrawSolidDisc
�� %
(
��% &
center
��& ,
,
��, -
Vector3
��. 5
.
��5 6
forward
��6 =
,
��= >
radius
��? E
)
��E F
;
��F G
}
�� 
void
�� 
DrawArc
�� 
(
�� 
Vector2
��  
center
��! '
,
��' (
float
��) .
radius
��/ 5
,
��5 6
float
��7 <
angle
��= B
,
��B C
Color
��D I
fill
��J N
)
��N O
{
�� 
var
�� 
start
�� 
=
�� 
new
�� 
Vector2
��  '
(
��' (
-
�� 
Mathf
�� 
.
�� 
Cos
�� "
(
��" #
Mathf
��# (
.
��( )
Deg2Rad
��) 0
*
��1 2
angle
��3 8
/
��9 :
$num
��; =
)
��= >
,
��> ?
Mathf
�� 
.
�� 
Sin
�� !
(
��! "
Mathf
��" '
.
��' (
Deg2Rad
��( /
*
��0 1
angle
��2 7
/
��8 9
$num
��: <
)
��< =
)
�� 
;
�� 
Handles
�� 
.
�� 
color
�� 
=
�� 
fill
��  $
;
��$ %
Handles
�� 
.
�� 
DrawSolidArc
�� $
(
��$ %
center
��% +
,
��+ ,
Vector3
��- 4
.
��4 5
forward
��5 <
,
��< =
start
��> C
,
��C D
angle
��E J
,
��J K
radius
��L R
)
��R S
;
��S T
}
�� 
void
�� 
DrawRect
�� 
(
�� 
Vector2
�� !
origin
��" (
,
��( )
Vector2
��* 1
size
��2 6
,
��6 7
Color
��8 =
color
��> C
)
��C D
{
�� 
var
�� 
p0
�� 
=
�� 
origin
�� 
;
��  
var
�� 
p1
�� 
=
�� 
origin
�� 
+
��  !
size
��" &
;
��& '
m_RectVertices
�� 
[
�� 
$num
��  
]
��  !
=
��" #
p0
��$ &
;
��& '
m_RectVertices
�� 
[
�� 
$num
��  
]
��  !
=
��" #
new
��$ '
Vector2
��( /
(
��/ 0
p1
��0 2
.
��2 3
x
��3 4
,
��4 5
p0
��6 8
.
��8 9
y
��9 :
)
��: ;
;
��; <
m_RectVertices
�� 
[
�� 
$num
��  
]
��  !
=
��" #
p1
��$ &
;
��& '
m_RectVertices
�� 
[
�� 
$num
��  
]
��  !
=
��" #
new
��$ '
Vector2
��( /
(
��/ 0
p0
��0 2
.
��2 3
x
��3 4
,
��4 5
p1
��6 8
.
��8 9
y
��9 :
)
��: ;
;
��; <
Handles
�� 
.
�� 
color
�� 
=
�� 
Color
��  %
.
��% &
white
��& +
;
��+ ,
Handles
�� 
.
�� +
DrawSolidRectangleWithOutline
�� 5
(
��5 6
m_RectVertices
��6 D
,
��D E
color
��F K
,
��K L
Color
��M R
.
��R S
clear
��S X
)
��X Y
;
��Y Z
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
OnEnable
�� %
(
��% &
)
��& '
{
�� 	
m_ShutterAngle
�� 
=
�� 
FindSetting
�� (
(
��( )
(
��) *
Settings
��* 2
x
��3 4
)
��4 5
=>
��6 8
x
��9 :
.
��: ;
shutterAngle
��; G
)
��G H
;
��H I
m_SampleCount
�� 
=
�� 
FindSetting
�� '
(
��' (
(
��( )
Settings
��) 1
x
��2 3
)
��3 4
=>
��5 7
x
��8 9
.
��9 :
sampleCount
��: E
)
��E F
;
��F G
m_FrameBlending
�� 
=
�� 
FindSetting
�� )
(
��) *
(
��* +
Settings
��+ 3
x
��4 5
)
��5 6
=>
��7 9
x
��: ;
.
��; <
frameBlending
��< I
)
��I J
;
��J K
}
�� 	
public
�� 
override
�� 
void
�� 
OnInspectorGUI
�� +
(
��+ ,
)
��, -
{
�� 	
if
�� 
(
�� 
m_GraphDrawer
�� 
==
��  
null
��! %
)
��% &
m_GraphDrawer
�� 
=
�� 
new
��  #
GraphDrawer
��$ /
(
��/ 0
)
��0 1
;
��1 2
EditorGUILayout
�� 
.
�� 

LabelField
�� &
(
��& '
$str
��' A
,
��A B
EditorStyles
��C O
.
��O P
	boldLabel
��P Y
)
��Y Z
;
��Z [
	EditorGUI
�� 
.
�� 
indentLevel
�� !
++
��! #
;
��# $
m_GraphDrawer
�� 
.
�� 
DrawShutterGraph
�� *
(
��* +
m_ShutterAngle
��+ 9
.
��9 :

floatValue
��: D
)
��D E
;
��E F
EditorGUILayout
�� 
.
�� 
PropertyField
�� )
(
��) *
m_ShutterAngle
��* 8
)
��8 9
;
��9 :
EditorGUILayout
�� 
.
�� 
PropertyField
�� )
(
��) *
m_SampleCount
��* 7
)
��7 8
;
��8 9
	EditorGUI
�� 
.
�� 
indentLevel
�� !
--
��! #
;
��# $
EditorGUILayout
�� 
.
�� 
Space
�� !
(
��! "
)
��" #
;
��# $
EditorGUILayout
�� 
.
�� 

LabelField
�� &
(
��& '
$str
��' @
,
��@ A
EditorStyles
��B N
.
��N O
	boldLabel
��O X
)
��X Y
;
��Y Z
	EditorGUI
�� 
.
�� 
indentLevel
�� !
++
��! #
;
��# $
float
�� 
fbValue
�� 
=
�� 
m_FrameBlending
�� +
.
��+ ,

floatValue
��, 6
;
��6 7
m_GraphDrawer
�� 
.
�� 
DrawBlendingGraph
�� +
(
��+ ,
fbValue
��, 3
)
��3 4
;
��4 5
EditorGUILayout
�� 
.
�� 
PropertyField
�� )
(
��) *
m_FrameBlending
��* 9
)
��9 :
;
��: ;
if
�� 
(
�� 
fbValue
�� 
>
�� 
$num
�� 
)
�� 
EditorGUILayout
�� 
.
��  
HelpBox
��  '
(
��' (
$str
��( 
,�� �
MessageType��� �
.��� �
Info��� �
)��� �
;��� �
	EditorGUI
�� 
.
�� 
indentLevel
�� !
--
��! #
;
��# $
}
�� 	
}
�� 
}�� �T
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\ScreenSpaceReflectionModelEditor.cs
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
}dd �.
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\UserLutModelEditor.cs
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
}WW �J
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Models\VignetteModelEditor.cs
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
}vv ��
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Monitors\HistogramMonitor.cs
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
$str	66^ �
)
66� �
,
66� �
FxStyles
66� �
.
66� �
	preButton
66� �
)
66� �
;
66� �
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
�� 
.
��  
DrawLine
��  (
(
��( )
A
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
A
��8 9
.
��9 :
x
��: ;
-
��< =
	kTickSize
��> G
,
��G H
A
��I J
.
��J K
y
��K L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
N
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
N
��8 9
.
��9 :
x
��: ;
-
��< =
	kTickSize
��> G
,
��G H
N
��I J
.
��J K
y
��K L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
M
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
M
��8 9
.
��9 :
x
��: ;
-
��< =
	kTickSize
��> G
,
��G H
M
��I J
.
��J K
y
��K L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
L
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
L
��8 9
.
��9 :
x
��: ;
-
��< =
	kTickSize
��> G
,
��G H
L
��I J
.
��J K
y
��K L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
E
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
E
��8 9
.
��9 :
x
��: ;
+
��< =
	kTickSize
��> G
,
��G H
E
��I J
.
��J K
y
��K L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
F
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
F
��8 9
.
��9 :
x
��: ;
+
��< =
	kTickSize
��> G
,
��G H
F
��I J
.
��J K
y
��K L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
G
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
G
��8 9
.
��9 :
x
��: ;
+
��< =
	kTickSize
��> G
,
��G H
G
��I J
.
��J K
y
��K L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
H
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
H
��8 9
.
��9 :
x
��: ;
+
��< =
	kTickSize
��> G
,
��G H
H
��I J
.
��J K
y
��K L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
A
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
A
��8 9
.
��9 :
x
��: ;
,
��; <
A
��= >
.
��> ?
y
��? @
-
��A B
	kTickSize
��C L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
B
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
B
��8 9
.
��9 :
x
��: ;
,
��; <
B
��= >
.
��> ?
y
��? @
-
��A B
	kTickSize
��C L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
C
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
C
��8 9
.
��9 :
x
��: ;
,
��; <
C
��= >
.
��> ?
y
��? @
-
��A B
	kTickSize
��C L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
D
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
D
��8 9
.
��9 :
x
��: ;
,
��; <
D
��= >
.
��> ?
y
��? @
-
��A B
	kTickSize
��C L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
E
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
E
��8 9
.
��9 :
x
��: ;
,
��; <
E
��= >
.
��> ?
y
��? @
-
��A B
	kTickSize
��C L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
L
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
L
��8 9
.
��9 :
x
��: ;
,
��; <
L
��= >
.
��> ?
y
��? @
+
��A B
	kTickSize
��C L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
K
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
K
��8 9
.
��9 :
x
��: ;
,
��; <
K
��= >
.
��> ?
y
��? @
+
��A B
	kTickSize
��C L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
J
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
J
��8 9
.
��9 :
x
��: ;
,
��; <
J
��= >
.
��> ?
y
��? @
+
��A B
	kTickSize
��C L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
I
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
I
��8 9
.
��9 :
x
��: ;
,
��; <
I
��= >
.
��> ?
y
��? @
+
��A B
	kTickSize
��C L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
H
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
H
��8 9
.
��9 :
x
��: ;
,
��; <
H
��= >
.
��> ?
y
��? @
+
��A B
	kTickSize
��C L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
N
��) *
,
��* +
F
��, -
)
��- .
;
��. /
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
M
��) *
,
��* +
G
��, -
)
��- .
;
��. /
GUI
�� 
.
�� 
color
�� !
=
��" #
color
��$ )
;
��) *
GUI
�� 
.
�� 
Label
�� !
(
��! "
new
��" %
Rect
��& *
(
��* +
L
��+ ,
.
��, -
x
��- .
-
��/ 0
$num
��1 4
,
��4 5
L
��6 7
.
��7 8
y
��8 9
+
��: ;
	kTickSize
��< E
-
��F G
$num
��H J
,
��J K
$num
��L O
,
��O P
$num
��Q T
)
��T U
,
��U V
$str
��W \
,
��\ ]
FxStyles
��^ f
.
��f g
tickStyleCenter
��g v
)
��v w
;
��w x
GUI
�� 
.
�� 
Label
�� !
(
��! "
new
��" %
Rect
��& *
(
��* +
J
��+ ,
.
��, -
x
��- .
-
��/ 0
$num
��1 4
,
��4 5
J
��6 7
.
��7 8
y
��8 9
+
��: ;
	kTickSize
��< E
-
��F G
$num
��H J
,
��J K
$num
��L O
,
��O P
$num
��Q T
)
��T U
,
��U V
$str
��W \
,
��\ ]
FxStyles
��^ f
.
��f g
tickStyleCenter
��g v
)
��v w
;
��w x
GUI
�� 
.
�� 
Label
�� !
(
��! "
new
��" %
Rect
��& *
(
��* +
H
��+ ,
.
��, -
x
��- .
-
��/ 0
$num
��1 4
,
��4 5
H
��6 7
.
��7 8
y
��8 9
+
��: ;
	kTickSize
��< E
-
��F G
$num
��H J
,
��J K
$num
��L O
,
��O P
$num
��Q T
)
��T U
,
��U V
$str
��W \
,
��\ ]
FxStyles
��^ f
.
��f g
tickStyleCenter
��g v
)
��v w
;
��w x
}
�� 
else
�� 
{
�� 
var
�� 
A
�� 
=
�� 
new
��  #
Vector3
��$ +
(
��+ ,
m_MonitorAreaRect
��, =
.
��= >
x
��> ?
,
��? @
m_MonitorAreaRect
��A R
.
��R S
y
��S T
)
��T U
;
��U V
var
�� 
E
�� 
=
�� 
new
��  #
Vector3
��$ +
(
��+ ,
A
��, -
.
��- .
x
��. /
+
��0 1
m_MonitorAreaRect
��2 C
.
��C D
width
��D I
+
��J K
$num
��L N
,
��N O
m_MonitorAreaRect
��P a
.
��a b
y
��b c
)
��c d
;
��d e
var
�� 
I
�� 
=
�� 
new
��  #
Vector3
��$ +
(
��+ ,
E
��, -
.
��- .
x
��. /
,
��/ 0
E
��1 2
.
��2 3
y
��3 4
+
��5 6
m_MonitorAreaRect
��7 H
.
��H I
height
��I O
+
��P Q
$num
��R T
)
��T U
;
��U V
var
�� 
M
�� 
=
�� 
new
��  #
Vector3
��$ +
(
��+ ,
A
��, -
.
��- .
x
��. /
,
��/ 0
I
��1 2
.
��2 3
y
��3 4
)
��4 5
;
��5 6
var
�� 
C
�� 
=
�� 
new
��  #
Vector3
��$ +
(
��+ ,
A
��, -
.
��- .
x
��. /
+
��0 1
(
��2 3
E
��3 4
.
��4 5
x
��5 6
-
��7 8
A
��9 :
.
��: ;
x
��; <
)
��< =
/
��> ?
$num
��@ B
,
��B C
A
��D E
.
��E F
y
��F G
)
��G H
;
��H I
var
�� 
G
�� 
=
�� 
new
��  #
Vector3
��$ +
(
��+ ,
E
��, -
.
��- .
x
��. /
,
��/ 0
E
��1 2
.
��2 3
y
��3 4
+
��5 6
(
��7 8
I
��8 9
.
��9 :
y
��: ;
-
��< =
E
��> ?
.
��? @
y
��@ A
)
��A B
/
��C D
$num
��E G
)
��G H
;
��H I
var
�� 
K
�� 
=
�� 
new
��  #
Vector3
��$ +
(
��+ ,
M
��, -
.
��- .
x
��. /
+
��0 1
(
��2 3
I
��3 4
.
��4 5
x
��5 6
-
��7 8
M
��9 :
.
��: ;
x
��; <
)
��< =
/
��> ?
$num
��@ B
,
��B C
M
��D E
.
��E F
y
��F G
)
��G H
;
��H I
var
�� 
O
�� 
=
�� 
new
��  #
Vector3
��$ +
(
��+ ,
A
��, -
.
��- .
x
��. /
,
��/ 0
A
��1 2
.
��2 3
y
��3 4
+
��5 6
(
��7 8
M
��8 9
.
��9 :
y
��: ;
-
��< =
A
��> ?
.
��? @
y
��@ A
)
��A B
/
��C D
$num
��E G
)
��G H
;
��H I
var
�� 
P
�� 
=
�� 
new
��  #
Vector3
��$ +
(
��+ ,
A
��, -
.
��- .
x
��. /
,
��/ 0
A
��1 2
.
��2 3
y
��3 4
+
��5 6
(
��7 8
O
��8 9
.
��9 :
y
��: ;
-
��< =
A
��> ?
.
��? @
y
��@ A
)
��A B
/
��C D
$num
��E G
)
��G H
;
��H I
var
�� 
F
�� 
=
�� 
new
��  #
Vector3
��$ +
(
��+ ,
E
��, -
.
��- .
x
��. /
,
��/ 0
E
��1 2
.
��2 3
y
��3 4
+
��5 6
(
��7 8
G
��8 9
.
��9 :
y
��: ;
-
��< =
E
��> ?
.
��? @
y
��@ A
)
��A B
/
��C D
$num
��E G
)
��G H
;
��H I
var
�� 
N
�� 
=
�� 
new
��  #
Vector3
��$ +
(
��+ ,
A
��, -
.
��- .
x
��. /
,
��/ 0
O
��1 2
.
��2 3
y
��3 4
+
��5 6
(
��7 8
M
��8 9
.
��9 :
y
��: ;
-
��< =
O
��> ?
.
��? @
y
��@ A
)
��A B
/
��C D
$num
��E G
)
��G H
;
��H I
var
�� 
H
�� 
=
�� 
new
��  #
Vector3
��$ +
(
��+ ,
E
��, -
.
��- .
x
��. /
,
��/ 0
G
��1 2
.
��2 3
y
��3 4
+
��5 6
(
��7 8
I
��8 9
.
��9 :
y
��: ;
-
��< =
G
��> ?
.
��? @
y
��@ A
)
��A B
/
��C D
$num
��E G
)
��G H
;
��H I
var
�� 
B
�� 
=
�� 
new
��  #
Vector3
��$ +
(
��+ ,
A
��, -
.
��- .
x
��. /
+
��0 1
(
��2 3
C
��3 4
.
��4 5
x
��5 6
-
��7 8
A
��9 :
.
��: ;
x
��; <
)
��< =
/
��> ?
$num
��@ B
,
��B C
A
��D E
.
��E F
y
��F G
)
��G H
;
��H I
var
�� 
L
�� 
=
�� 
new
��  #
Vector3
��$ +
(
��+ ,
M
��, -
.
��- .
x
��. /
+
��0 1
(
��2 3
K
��3 4
.
��4 5
x
��5 6
-
��7 8
M
��9 :
.
��: ;
x
��; <
)
��< =
/
��> ?
$num
��@ B
,
��B C
M
��D E
.
��E F
y
��F G
)
��G H
;
��H I
var
�� 
D
�� 
=
�� 
new
��  #
Vector3
��$ +
(
��+ ,
C
��, -
.
��- .
x
��. /
+
��0 1
(
��2 3
E
��3 4
.
��4 5
x
��5 6
-
��7 8
C
��9 :
.
��: ;
x
��; <
)
��< =
/
��> ?
$num
��@ B
,
��B C
A
��D E
.
��E F
y
��F G
)
��G H
;
��H I
var
�� 
J
�� 
=
�� 
new
��  #
Vector3
��$ +
(
��+ ,
K
��, -
.
��- .
x
��. /
+
��0 1
(
��2 3
I
��3 4
.
��4 5
x
��5 6
-
��7 8
K
��9 :
.
��: ;
x
��; <
)
��< =
/
��> ?
$num
��@ B
,
��B C
M
��D E
.
��E F
y
��F G
)
��G H
;
��H I
Handles
�� 
.
��  
color
��  %
=
��& '
color
��( -
;
��- .
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
A
��) *
,
��* +
E
��, -
)
��- .
;
��. /
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
E
��) *
,
��* +
I
��, -
)
��- .
;
��. /
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
I
��) *
,
��* +
M
��, -
)
��- .
;
��. /
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
M
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
A
��8 9
.
��9 :
x
��: ;
,
��; <
A
��= >
.
��> ?
y
��? @
-
��A B
$num
��C E
)
��E F
)
��F G
;
��G H
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
A
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
A
��8 9
.
��9 :
x
��: ;
-
��< =
	kTickSize
��> G
,
��G H
A
��I J
.
��J K
y
��K L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
P
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
P
��8 9
.
��9 :
x
��: ;
-
��< =
	kTickSize
��> G
,
��G H
P
��I J
.
��J K
y
��K L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
O
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
O
��8 9
.
��9 :
x
��: ;
-
��< =
	kTickSize
��> G
,
��G H
O
��I J
.
��J K
y
��K L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
N
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
N
��8 9
.
��9 :
x
��: ;
-
��< =
	kTickSize
��> G
,
��G H
N
��I J
.
��J K
y
��K L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
M
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
M
��8 9
.
��9 :
x
��: ;
-
��< =
	kTickSize
��> G
,
��G H
M
��I J
.
��J K
y
��K L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
E
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
E
��8 9
.
��9 :
x
��: ;
+
��< =
	kTickSize
��> G
,
��G H
E
��I J
.
��J K
y
��K L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
F
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
F
��8 9
.
��9 :
x
��: ;
+
��< =
	kTickSize
��> G
,
��G H
F
��I J
.
��J K
y
��K L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
G
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
G
��8 9
.
��9 :
x
��: ;
+
��< =
	kTickSize
��> G
,
��G H
G
��I J
.
��J K
y
��K L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
H
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
H
��8 9
.
��9 :
x
��: ;
+
��< =
	kTickSize
��> G
,
��G H
H
��I J
.
��J K
y
��K L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
I
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
I
��8 9
.
��9 :
x
��: ;
+
��< =
	kTickSize
��> G
,
��G H
I
��I J
.
��J K
y
��K L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
A
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
A
��8 9
.
��9 :
x
��: ;
,
��; <
A
��= >
.
��> ?
y
��? @
-
��A B
	kTickSize
��C L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
B
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
B
��8 9
.
��9 :
x
��: ;
,
��; <
B
��= >
.
��> ?
y
��? @
-
��A B
	kTickSize
��C L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
C
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
C
��8 9
.
��9 :
x
��: ;
,
��; <
C
��= >
.
��> ?
y
��? @
-
��A B
	kTickSize
��C L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
D
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
D
��8 9
.
��9 :
x
��: ;
,
��; <
D
��= >
.
��> ?
y
��? @
-
��A B
	kTickSize
��C L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
E
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
E
��8 9
.
��9 :
x
��: ;
,
��; <
E
��= >
.
��> ?
y
��? @
-
��A B
	kTickSize
��C L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
M
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
M
��8 9
.
��9 :
x
��: ;
,
��; <
M
��= >
.
��> ?
y
��? @
+
��A B
	kTickSize
��C L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
L
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
L
��8 9
.
��9 :
x
��: ;
,
��; <
L
��= >
.
��> ?
y
��? @
+
��A B
	kTickSize
��C L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
K
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
K
��8 9
.
��9 :
x
��: ;
,
��; <
K
��= >
.
��> ?
y
��? @
+
��A B
	kTickSize
��C L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
J
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
J
��8 9
.
��9 :
x
��: ;
,
��; <
J
��= >
.
��> ?
y
��? @
+
��A B
	kTickSize
��C L
)
��L M
)
��M N
;
��N O
Handles
�� 
.
��  
DrawLine
��  (
(
��( )
I
��) *
,
��* +
new
��, /
Vector3
��0 7
(
��7 8
I
��8 9
.
��9 :
x
��: ;
,
��; <
I
��= >
.
��> ?
y
��? @
+
��A B
	kTickSize
��C L
)
��L M
)
��M N
;
��N O
GUI
�� 
.
�� 
color
�� !
=
��" #
color
��$ )
;
��) *
GUI
�� 
.
�� 
Label
�� !
(
��! "
new
��" %
Rect
��& *
(
��* +
A
��+ ,
.
��, -
x
��- .
-
��/ 0
	kTickSize
��1 :
-
��; <
$num
��= @
,
��@ A
A
��B C
.
��C D
y
��D E
-
��F G
$num
��H K
,
��K L
$num
��M P
,
��P Q
$num
��R U
)
��U V
,
��V W
$str
��X ]
,
��] ^
FxStyles
��_ g
.
��g h
tickStyleRight
��h v
)
��v w
;
��w x
GUI
�� 
.
�� 
Label
�� !
(
��! "
new
��" %
Rect
��& *
(
��* +
O
��+ ,
.
��, -
x
��- .
-
��/ 0
	kTickSize
��1 :
-
��; <
$num
��= @
,
��@ A
O
��B C
.
��C D
y
��D E
-
��F G
$num
��H K
,
��K L
$num
��M P
,
��P Q
$num
��R U
)
��U V
,
��V W
$str
��X ]
,
��] ^
FxStyles
��_ g
.
��g h
tickStyleRight
��h v
)
��v w
;
��w x
GUI
�� 
.
�� 
Label
�� !
(
��! "
new
��" %
Rect
��& *
(
��* +
M
��+ ,
.
��, -
x
��- .
-
��/ 0
	kTickSize
��1 :
-
��; <
$num
��= @
,
��@ A
M
��B C
.
��C D
y
��D E
-
��F G
$num
��H K
,
��K L
$num
��M P
,
��P Q
$num
��R U
)
��U V
,
��V W
$str
��X ]
,
��] ^
FxStyles
��_ g
.
��g h
tickStyleRight
��h v
)
��v w
;
��w x
GUI
�� 
.
�� 
Label
�� !
(
��! "
new
��" %
Rect
��& *
(
��* +
E
��+ ,
.
��, -
x
��- .
+
��/ 0
	kTickSize
��1 :
+
��; <
$num
��= ?
,
��? @
E
��A B
.
��B C
y
��C D
-
��E F
$num
��G J
,
��J K
$num
��L O
,
��O P
$num
��Q T
)
��T U
,
��U V
$str
��W \
,
��\ ]
FxStyles
��^ f
.
��f g
tickStyleLeft
��g t
)
��t u
;
��u v
GUI
�� 
.
�� 
Label
�� !
(
��! "
new
��" %
Rect
��& *
(
��* +
G
��+ ,
.
��, -
x
��- .
+
��/ 0
	kTickSize
��1 :
+
��; <
$num
��= ?
,
��? @
G
��A B
.
��B C
y
��C D
-
��E F
$num
��G J
,
��J K
$num
��L O
,
��O P
$num
��Q T
)
��T U
,
��U V
$str
��W \
,
��\ ]
FxStyles
��^ f
.
��f g
tickStyleLeft
��g t
)
��t u
;
��u v
GUI
�� 
.
�� 
Label
�� !
(
��! "
new
��" %
Rect
��& *
(
��* +
I
��+ ,
.
��, -
x
��- .
+
��/ 0
	kTickSize
��1 :
+
��; <
$num
��= ?
,
��? @
I
��A B
.
��B C
y
��C D
-
��E F
$num
��G J
,
��J K
$num
��L O
,
��O P
$num
��Q T
)
��T U
,
��U V
$str
��W \
,
��\ ]
FxStyles
��^ f
.
��f g
tickStyleLeft
��g t
)
��t u
;
��u v
GUI
�� 
.
�� 
Label
�� !
(
��! "
new
��" %
Rect
��& *
(
��* +
M
��+ ,
.
��, -
x
��- .
-
��/ 0
$num
��1 4
,
��4 5
M
��6 7
.
��7 8
y
��8 9
+
��: ;
	kTickSize
��< E
-
��F G
$num
��H J
,
��J K
$num
��L O
,
��O P
$num
��Q T
)
��T U
,
��U V
$str
��W \
,
��\ ]
FxStyles
��^ f
.
��f g
tickStyleCenter
��g v
)
��v w
;
��w x
GUI
�� 
.
�� 
Label
�� !
(
��! "
new
��" %
Rect
��& *
(
��* +
K
��+ ,
.
��, -
x
��- .
-
��/ 0
$num
��1 4
,
��4 5
K
��6 7
.
��7 8
y
��8 9
+
��: ;
	kTickSize
��< E
-
��F G
$num
��H J
,
��J K
$num
��L O
,
��O P
$num
��Q T
)
��T U
,
��U V
$str
��W \
,
��\ ]
FxStyles
��^ f
.
��f g
tickStyleCenter
��g v
)
��v w
;
��w x
GUI
�� 
.
�� 
Label
�� !
(
��! "
new
��" %
Rect
��& *
(
��* +
I
��+ ,
.
��, -
x
��- .
-
��/ 0
$num
��1 4
,
��4 5
I
��6 7
.
��7 8
y
��8 9
+
��: ;
	kTickSize
��< E
-
��F G
$num
��H J
,
��J K
$num
��L O
,
��O P
$num
��Q T
)
��T U
,
��U V
$str
��W \
,
��\ ]
FxStyles
��^ f
.
��f g
tickStyleCenter
��g v
)
��v w
;
��w x
}
�� 
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
OnFrameData
�� (
(
��( )
RenderTexture
��) 6
source
��7 =
)
��= >
{
�� 	
if
�� 
(
�� 
Application
�� 
.
�� 
	isPlaying
�� %
&&
��& (
!
��) *
m_MonitorSettings
��* ;
.
��; <
refreshOnPlay
��< I
)
��I J
return
�� 
;
�� 
if
�� 
(
�� 
Mathf
�� 
.
�� 
Approximately
�� #
(
��# $
m_MonitorAreaRect
��$ 5
.
��5 6
width
��6 ;
,
��; <
$num
��= >
)
��> ?
||
��@ B
Mathf
��C H
.
��H I
Approximately
��I V
(
��V W
m_MonitorAreaRect
��W h
.
��h i
height
��i o
,
��o p
$num
��q r
)
��r s
)
��s t
return
�� 
;
�� 
float
�� 
ratio
�� 
=
�� 
(
�� 
float
��  
)
��  !
source
��! '
.
��' (
width
��( -
/
��. /
(
��0 1
float
��1 6
)
��6 7
source
��7 =
.
��= >
height
��> D
;
��D E
int
�� 
h
�� 
=
�� 
$num
�� 
;
�� 
int
�� 
w
�� 
=
�� 
Mathf
�� 
.
�� 

FloorToInt
�� $
(
��$ %
h
��% &
*
��' (
ratio
��) .
)
��. /
;
��/ 0
var
�� 
rt
�� 
=
�� 
RenderTexture
�� "
.
��" #
GetTemporary
��# /
(
��/ 0
w
��0 1
,
��1 2
h
��3 4
,
��4 5
$num
��6 7
,
��7 8
source
��9 ?
.
��? @
format
��@ F
)
��F G
;
��G H
Graphics
�� 
.
�� 
Blit
�� 
(
�� 
source
��  
,
��  !
rt
��" $
)
��$ %
;
��% &
ComputeHistogram
�� 
(
�� 
rt
�� 
)
��  
;
��  !
m_BaseEditor
�� 
.
�� 
Repaint
��  
(
��  !
)
��! "
;
��" #
RenderTexture
�� 
.
�� 
ReleaseTemporary
�� *
(
��* +
rt
��+ -
)
��- .
;
��. /
}
�� 	
void
�� 
CreateBuffer
�� 
(
�� 
int
�� 
width
�� #
,
��# $
int
��% (
height
��) /
)
��/ 0
{
�� 	
m_Buffer
�� 
=
�� 
new
�� 
ComputeBuffer
�� (
(
��( )
width
��) .
*
��/ 0
height
��1 7
,
��7 8
sizeof
��9 ?
(
��? @
uint
��@ D
)
��D E
<<
��F H
$num
��I J
)
��J K
;
��K L
}
�� 	
void
�� 
ComputeHistogram
�� 
(
�� 
RenderTexture
�� +
source
��, 2
)
��2 3
{
�� 	
if
�� 
(
�� 
m_Buffer
�� 
==
�� 
null
��  
)
��  !
{
�� 
CreateBuffer
�� 
(
�� 
$num
��  
,
��  !
$num
��" #
)
��# $
;
��$ %
}
�� 
else
�� 
if
�� 
(
�� 
m_Buffer
�� 
.
�� 
count
�� #
!=
��$ &
$num
��' *
)
��* +
{
�� 
m_Buffer
�� 
.
�� 
Release
��  
(
��  !
)
��! "
;
��" #
CreateBuffer
�� 
(
�� 
$num
��  
,
��  !
$num
��" #
)
��# $
;
��$ %
}
�� 
if
�� 
(
�� 

m_Material
�� 
==
�� 
null
�� "
)
��" #
{
�� 

m_Material
�� 
=
�� 
new
��  
Material
��! )
(
��) *
Shader
��* 0
.
��0 1
Find
��1 5
(
��5 6
$str
��6 `
)
��` a
)
��a b
{
��c d
	hideFlags
��e n
=
��o p
	HideFlags
��q z
.
��z {
DontSave��{ �
}��� �
;��� �
}
�� 
var
�� 
channels
�� 
=
�� 
Vector4
�� "
.
��" #
zero
��# '
;
��' (
switch
�� 
(
�� 
m_MonitorSettings
�� %
.
��% &
histogramMode
��& 3
)
��3 4
{
�� 
case
�� 
HistogramMode
�� "
.
��" #
Red
��# &
:
��& '
channels
��( 0
.
��0 1
x
��1 2
=
��3 4
$num
��5 7
;
��7 8
break
��9 >
;
��> ?
case
�� 
HistogramMode
�� "
.
��" #
Green
��# (
:
��( )
channels
��* 2
.
��2 3
y
��3 4
=
��5 6
$num
��7 9
;
��9 :
break
��; @
;
��@ A
case
�� 
HistogramMode
�� "
.
��" #
Blue
��# '
:
��' (
channels
��) 1
.
��1 2
z
��2 3
=
��4 5
$num
��6 8
;
��8 9
break
��: ?
;
��? @
case
�� 
HistogramMode
�� "
.
��" #
	Luminance
��# ,
:
��, -
channels
��. 6
.
��6 7
w
��7 8
=
��9 :
$num
��; =
;
��= >
break
��? D
;
��D E
default
�� 
:
�� 
channels
�� !
=
��" #
new
��$ '
Vector4
��( /
(
��/ 0
$num
��0 2
,
��2 3
$num
��4 6
,
��6 7
$num
��8 :
,
��: ;
$num
��< >
)
��> ?
;
��? @
break
��A F
;
��F G
}
�� 
var
�� 
cs
�� 
=
�� 
m_ComputeShader
�� $
;
��$ %
int
�� 
kernel
�� 
=
�� 
cs
�� 
.
�� 

FindKernel
�� &
(
��& '
$str
��' 8
)
��8 9
;
��9 :
cs
�� 
.
�� 
	SetBuffer
�� 
(
�� 
kernel
�� 
,
��  
$str
��! -
,
��- .
m_Buffer
��/ 7
)
��7 8
;
��8 9
cs
�� 
.
�� 
Dispatch
�� 
(
�� 
kernel
�� 
,
�� 
$num
��  !
,
��! "
$num
��# $
,
��$ %
$num
��& '
)
��' (
;
��( )
kernel
�� 
=
�� 
cs
�� 
.
�� 

FindKernel
�� "
(
��" #
$str
��# 5
)
��5 6
;
��6 7
cs
�� 
.
�� 
	SetBuffer
�� 
(
�� 
kernel
�� 
,
��  
$str
��! -
,
��- .
m_Buffer
��/ 7
)
��7 8
;
��8 9
cs
�� 
.
�� 

SetTexture
�� 
(
�� 
kernel
��  
,
��  !
$str
��" +
,
��+ ,
source
��- 3
)
��3 4
;
��4 5
cs
�� 
.
�� 
SetInt
�� 
(
�� 
$str
�� !
,
��! "
GraphicsUtils
��# 0
.
��0 1 
isLinearColorSpace
��1 C
?
��D E
$num
��F G
:
��H I
$num
��J K
)
��K L
;
��L M
cs
�� 
.
�� 
	SetVector
�� 
(
�� 
$str
�� 
,
��  
new
��! $
Vector4
��% ,
(
��, -
source
��- 3
.
��3 4
width
��4 9
,
��9 :
source
��; A
.
��A B
height
��B H
,
��H I
$num
��J L
,
��L M
$num
��N P
)
��P Q
)
��Q R
;
��R S
cs
�� 
.
�� 
	SetVector
�� 
(
�� 
$str
�� $
,
��$ %
channels
��& .
)
��. /
;
��/ 0
cs
�� 
.
�� 
Dispatch
�� 
(
�� 
kernel
�� 
,
�� 
Mathf
��  %
.
��% &
	CeilToInt
��& /
(
��/ 0
source
��0 6
.
��6 7
width
��7 <
/
��= >
$num
��? B
)
��B C
,
��C D
Mathf
��E J
.
��J K
	CeilToInt
��K T
(
��T U
source
��U [
.
��[ \
height
��\ b
/
��c d
$num
��e h
)
��h i
,
��i j
$num
��k l
)
��l m
;
��m n
kernel
�� 
=
�� 
cs
�� 
.
�� 

FindKernel
�� "
(
��" #
$str
��# 4
)
��4 5
;
��5 6
cs
�� 
.
�� 
	SetBuffer
�� 
(
�� 
kernel
�� 
,
��  
$str
��! -
,
��- .
m_Buffer
��/ 7
)
��7 8
;
��8 9
cs
�� 
.
�� 
Dispatch
�� 
(
�� 
kernel
�� 
,
�� 
$num
��  !
,
��! "
$num
��# $
,
��$ %
$num
��& '
)
��' (
;
��( )
if
�� 
(
��  
m_HistogramTexture
�� "
==
��# %
null
��& *
||
��+ - 
m_HistogramTexture
��. @
.
��@ A
width
��A F
!=
��G I
source
��J P
.
��P Q
width
��Q V
||
��W Y 
m_HistogramTexture
��Z l
.
��l m
height
��m s
!=
��t v
source
��w }
.
��} ~
height��~ �
)��� �
{
�� 
GraphicsUtils
�� 
.
�� 
Destroy
�� %
(
��% & 
m_HistogramTexture
��& 8
)
��8 9
;
��9 : 
m_HistogramTexture
�� "
=
��# $
new
��% (
RenderTexture
��) 6
(
��6 7
source
��7 =
.
��= >
width
��> C
,
��C D
source
��E K
.
��K L
height
��L R
,
��R S
$num
��T U
,
��U V!
RenderTextureFormat
��W j
.
��j k
ARGB32
��k q
,
��q r%
RenderTextureReadWrite��s �
.��� �
Linear��� �
)��� �
{
�� 
	hideFlags
�� 
=
�� 
	HideFlags
��  )
.
��) *
DontSave
��* 2
,
��2 3
wrapMode
�� 
=
�� 
TextureWrapMode
�� .
.
��. /
Clamp
��/ 4
,
��4 5

filterMode
�� 
=
��  

FilterMode
��! +
.
��+ ,
Bilinear
��, 4
}
�� 
;
�� 
}
�� 

m_Material
�� 
.
�� 
	SetBuffer
��  
(
��  !
$str
��! -
,
��- .
m_Buffer
��/ 7
)
��7 8
;
��8 9

m_Material
�� 
.
�� 
	SetVector
��  
(
��  !
$str
��! (
,
��( )
new
��* -
Vector2
��. 5
(
��5 6 
m_HistogramTexture
��6 H
.
��H I
width
��I N
,
��N O 
m_HistogramTexture
��P b
.
��b c
height
��c i
)
��i j
)
��j k
;
��k l

m_Material
�� 
.
�� 
SetColor
�� 
(
��  
$str
��  )
,
��) *
new
��+ .
Color
��/ 4
(
��4 5
$num
��5 7
,
��7 8
$num
��9 ;
,
��; <
$num
��= ?
,
��? @
$num
��A C
)
��C D
)
��D E
;
��E F

m_Material
�� 
.
�� 
SetColor
�� 
(
��  
$str
��  )
,
��) *
new
��+ .
Color
��/ 4
(
��4 5
$num
��5 7
,
��7 8
$num
��9 ;
,
��; <
$num
��= ?
,
��? @
$num
��A C
)
��C D
)
��D E
;
��E F

m_Material
�� 
.
�� 
SetColor
�� 
(
��  
$str
��  )
,
��) *
new
��+ .
Color
��/ 4
(
��4 5
$num
��5 7
,
��7 8
$num
��9 ;
,
��; <
$num
��= ?
,
��? @
$num
��A C
)
��C D
)
��D E
;
��E F

m_Material
�� 
.
�� 
SetColor
�� 
(
��  
$str
��  )
,
��) *
new
��+ .
Color
��/ 4
(
��4 5
$num
��5 7
,
��7 8
$num
��9 ;
,
��; <
$num
��= ?
,
��? @
$num
��A C
)
��C D
)
��D E
;
��E F

m_Material
�� 
.
�� 
SetInt
�� 
(
�� 
$str
�� (
,
��( )
(
��* +
int
��+ .
)
��. /
m_MonitorSettings
��/ @
.
��@ A
histogramMode
��A N
)
��N O
;
��O P
int
�� 
pass
�� 
=
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
m_MonitorSettings
�� !
.
��! "
histogramMode
��" /
==
��0 2
HistogramMode
��3 @
.
��@ A
	RGBMerged
��A J
)
��J K
pass
�� 
=
�� 
$num
�� 
;
�� 
else
�� 
if
�� 
(
�� 
m_MonitorSettings
�� &
.
��& '
histogramMode
��' 4
==
��5 7
HistogramMode
��8 E
.
��E F
RGBSplit
��F N
)
��N O
pass
�� 
=
�� 
$num
�� 
;
�� 
Graphics
�� 
.
�� 
Blit
�� 
(
�� 
null
�� 
,
��  
m_HistogramTexture
��  2
,
��2 3

m_Material
��4 >
,
��> ?
pass
��@ D
)
��D E
;
��E F
}
�� 	
}
�� 
}�� ��
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Monitors\ParadeMonitor.cs
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
$str	44^ �
)
44� �
,
44� �
FxStyles
44� �
.
44� �
	preButton
44� �
)
44� �
;
44� �
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
.	55 �
Width
55� �
(
55� �
$num
55� �
)
55� �
)
55� �
;
55� �
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
�� 
R
�� 
=
�� 
new
�� 
Vector3
��  '
(
��' (
I
��( )
.
��) *
x
��* +
+
��, -
(
��. /
H
��/ 0
.
��0 1
x
��1 2
-
��3 4
I
��5 6
.
��6 7
x
��7 8
)
��8 9
/
��: ;
$num
��< >
,
��> ?
I
��@ A
.
��A B
y
��B C
)
��C D
;
��D E
var
�� 
S
�� 
=
�� 
new
�� 
Vector3
��  '
(
��' (
J
��( )
.
��) *
x
��* +
+
��, -
(
��. /
I
��/ 0
.
��0 1
x
��1 2
-
��3 4
J
��5 6
.
��6 7
x
��7 8
)
��8 9
/
��: ;
$num
��< >
,
��> ?
J
��@ A
.
��A B
y
��B C
)
��C D
;
��D E
var
�� 
T
�� 
=
�� 
new
�� 
Vector3
��  '
(
��' (
K
��( )
.
��) *
x
��* +
+
��, -
(
��. /
J
��/ 0
.
��0 1
x
��1 2
-
��3 4
K
��5 6
.
��6 7
x
��7 8
)
��8 9
/
��: ;
$num
��< >
,
��> ?
K
��@ A
.
��A B
y
��B C
)
��C D
;
��D E
Handles
�� 
.
�� 
color
�� !
=
��" #
color
��$ )
;
��) *
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
A
��% &
,
��& '
D
��( )
)
��) *
;
��* +
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
D
��% &
,
��& '
H
��( )
)
��) *
;
��* +
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
H
��% &
,
��& '
K
��( )
)
��) *
;
��* +
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
K
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
A
��4 5
.
��5 6
x
��6 7
,
��7 8
A
��9 :
.
��: ;
y
��; <
-
��= >
$num
��? A
)
��A B
)
��B C
;
��C D
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
B
��% &
,
��& '
J
��( )
)
��) *
;
��* +
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
C
��% &
,
��& '
I
��( )
)
��) *
;
��* +
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
A
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
A
��4 5
.
��5 6
x
��6 7
-
��8 9
	kTickSize
��: C
,
��C D
A
��E F
.
��F G
y
��G H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
N
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
N
��4 5
.
��5 6
x
��6 7
-
��8 9
	kTickSize
��: C
,
��C D
N
��E F
.
��F G
y
��G H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
M
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
M
��4 5
.
��5 6
x
��6 7
-
��8 9
	kTickSize
��: C
,
��C D
M
��E F
.
��F G
y
��G H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
L
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
L
��4 5
.
��5 6
x
��6 7
-
��8 9
	kTickSize
��: C
,
��C D
L
��E F
.
��F G
y
��G H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
K
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
K
��4 5
.
��5 6
x
��6 7
-
��8 9
	kTickSize
��: C
,
��C D
K
��E F
.
��F G
y
��G H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
D
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
D
��4 5
.
��5 6
x
��6 7
+
��8 9
	kTickSize
��: C
,
��C D
D
��E F
.
��F G
y
��G H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
E
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
E
��4 5
.
��5 6
x
��6 7
+
��8 9
	kTickSize
��: C
,
��C D
E
��E F
.
��F G
y
��G H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
F
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
F
��4 5
.
��5 6
x
��6 7
+
��8 9
	kTickSize
��: C
,
��C D
F
��E F
.
��F G
y
��G H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
G
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
G
��4 5
.
��5 6
x
��6 7
+
��8 9
	kTickSize
��: C
,
��C D
G
��E F
.
��F G
y
��G H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
H
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
H
��4 5
.
��5 6
x
��6 7
+
��8 9
	kTickSize
��: C
,
��C D
H
��E F
.
��F G
y
��G H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
A
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
A
��4 5
.
��5 6
x
��6 7
,
��7 8
A
��9 :
.
��: ;
y
��; <
-
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
B
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
B
��4 5
.
��5 6
x
��6 7
,
��7 8
B
��9 :
.
��: ;
y
��; <
-
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
C
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
C
��4 5
.
��5 6
x
��6 7
,
��7 8
C
��9 :
.
��: ;
y
��; <
-
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
D
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
D
��4 5
.
��5 6
x
��6 7
,
��7 8
D
��9 :
.
��: ;
y
��; <
-
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
O
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
O
��4 5
.
��5 6
x
��6 7
,
��7 8
O
��9 :
.
��: ;
y
��; <
-
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
P
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
P
��4 5
.
��5 6
x
��6 7
,
��7 8
P
��9 :
.
��: ;
y
��; <
-
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
Q
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
Q
��4 5
.
��5 6
x
��6 7
,
��7 8
Q
��9 :
.
��: ;
y
��; <
-
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
H
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
H
��4 5
.
��5 6
x
��6 7
,
��7 8
H
��9 :
.
��: ;
y
��; <
+
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
I
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
I
��4 5
.
��5 6
x
��6 7
,
��7 8
I
��9 :
.
��: ;
y
��; <
+
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
J
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
J
��4 5
.
��5 6
x
��6 7
,
��7 8
J
��9 :
.
��: ;
y
��; <
+
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
K
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
K
��4 5
.
��5 6
x
��6 7
,
��7 8
K
��9 :
.
��: ;
y
��; <
+
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
R
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
R
��4 5
.
��5 6
x
��6 7
,
��7 8
R
��9 :
.
��: ;
y
��; <
+
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
S
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
S
��4 5
.
��5 6
x
��6 7
,
��7 8
S
��9 :
.
��: ;
y
��; <
+
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
T
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
T
��4 5
.
��5 6
x
��6 7
,
��7 8
T
��9 :
.
��: ;
y
��; <
+
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
GUI
�� 
.
�� 
color
�� 
=
�� 
color
��  %
;
��% &
GUI
�� 
.
�� 
Label
�� 
(
�� 
new
�� !
Rect
��" &
(
��& '
A
��' (
.
��( )
x
��) *
-
��+ ,
	kTickSize
��- 6
-
��7 8
$num
��9 <
,
��< =
A
��> ?
.
��? @
y
��@ A
-
��B C
$num
��D G
,
��G H
$num
��I L
,
��L M
$num
��N Q
)
��Q R
,
��R S
$str
��T Y
,
��Y Z
FxStyles
��[ c
.
��c d
tickStyleRight
��d r
)
��r s
;
��s t
GUI
�� 
.
�� 
Label
�� 
(
�� 
new
�� !
Rect
��" &
(
��& '
M
��' (
.
��( )
x
��) *
-
��+ ,
	kTickSize
��- 6
-
��7 8
$num
��9 <
,
��< =
M
��> ?
.
��? @
y
��@ A
-
��B C
$num
��D G
,
��G H
$num
��I L
,
��L M
$num
��N Q
)
��Q R
,
��R S
$str
��T Y
,
��Y Z
FxStyles
��[ c
.
��c d
tickStyleRight
��d r
)
��r s
;
��s t
GUI
�� 
.
�� 
Label
�� 
(
�� 
new
�� !
Rect
��" &
(
��& '
K
��' (
.
��( )
x
��) *
-
��+ ,
	kTickSize
��- 6
-
��7 8
$num
��9 <
,
��< =
K
��> ?
.
��? @
y
��@ A
-
��B C
$num
��D G
,
��G H
$num
��I L
,
��L M
$num
��N Q
)
��Q R
,
��R S
$str
��T Y
,
��Y Z
FxStyles
��[ c
.
��c d
tickStyleRight
��d r
)
��r s
;
��s t
GUI
�� 
.
�� 
Label
�� 
(
�� 
new
�� !
Rect
��" &
(
��& '
D
��' (
.
��( )
x
��) *
+
��+ ,
	kTickSize
��- 6
+
��7 8
$num
��9 ;
,
��; <
D
��= >
.
��> ?
y
��? @
-
��A B
$num
��C F
,
��F G
$num
��H K
,
��K L
$num
��M P
)
��P Q
,
��Q R
$str
��S X
,
��X Y
FxStyles
��Z b
.
��b c
tickStyleLeft
��c p
)
��p q
;
��q r
GUI
�� 
.
�� 
Label
�� 
(
�� 
new
�� !
Rect
��" &
(
��& '
F
��' (
.
��( )
x
��) *
+
��+ ,
	kTickSize
��- 6
+
��7 8
$num
��9 ;
,
��; <
F
��= >
.
��> ?
y
��? @
-
��A B
$num
��C F
,
��F G
$num
��H K
,
��K L
$num
��M P
)
��P Q
,
��Q R
$str
��S X
,
��X Y
FxStyles
��Z b
.
��b c
tickStyleLeft
��c p
)
��p q
;
��q r
GUI
�� 
.
�� 
Label
�� 
(
�� 
new
�� !
Rect
��" &
(
��& '
H
��' (
.
��( )
x
��) *
+
��+ ,
	kTickSize
��- 6
+
��7 8
$num
��9 ;
,
��; <
H
��= >
.
��> ?
y
��? @
-
��A B
$num
��C F
,
��F G
$num
��H K
,
��K L
$num
��M P
)
��P Q
,
��Q R
$str
��S X
,
��X Y
FxStyles
��Z b
.
��b c
tickStyleLeft
��c p
)
��p q
;
��q r
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
OnFrameData
�� (
(
��( )
RenderTexture
��) 6
source
��7 =
)
��= >
{
�� 	
if
�� 
(
�� 
Application
�� 
.
�� 
	isPlaying
�� %
&&
��& (
!
��) *
m_MonitorSettings
��* ;
.
��; <
refreshOnPlay
��< I
)
��I J
return
�� 
;
�� 
if
�� 
(
�� 
Mathf
�� 
.
�� 
Approximately
�� #
(
��# $
m_MonitorAreaRect
��$ 5
.
��5 6
width
��6 ;
,
��; <
$num
��= >
)
��> ?
||
��@ B
Mathf
��C H
.
��H I
Approximately
��I V
(
��V W
m_MonitorAreaRect
��W h
.
��h i
height
��i o
,
��o p
$num
��q r
)
��r s
)
��s t
return
�� 
;
�� 
float
�� 
ratio
�� 
=
�� 
(
�� 
(
�� 
float
�� !
)
��! "
source
��" (
.
��( )
width
��) .
/
��/ 0
(
��1 2
float
��2 7
)
��7 8
source
��8 >
.
��> ?
height
��? E
)
��E F
/
��G H
$num
��I K
;
��K L
int
�� 
h
�� 
=
�� 
$num
�� 
;
�� 
int
�� 
w
�� 
=
�� 
Mathf
�� 
.
�� 

FloorToInt
�� $
(
��$ %
h
��% &
*
��' (
ratio
��) .
)
��. /
;
��/ 0
var
�� 
rt
�� 
=
�� 
RenderTexture
�� "
.
��" #
GetTemporary
��# /
(
��/ 0
w
��0 1
,
��1 2
h
��3 4
,
��4 5
$num
��6 7
,
��7 8
source
��9 ?
.
��? @
format
��@ F
)
��F G
;
��G H
Graphics
�� 
.
�� 
Blit
�� 
(
�� 
source
��  
,
��  !
rt
��" $
)
��$ %
;
��% &
ComputeWaveform
�� 
(
�� 
rt
�� 
)
�� 
;
��  
m_BaseEditor
�� 
.
�� 
Repaint
��  
(
��  !
)
��! "
;
��" #
RenderTexture
�� 
.
�� 
ReleaseTemporary
�� *
(
��* +
rt
��+ -
)
��- .
;
��. /
}
�� 	
void
�� 
CreateBuffer
�� 
(
�� 
int
�� 
width
�� #
,
��# $
int
��% (
height
��) /
)
��/ 0
{
�� 	
m_Buffer
�� 
=
�� 
new
�� 
ComputeBuffer
�� (
(
��( )
width
��) .
*
��/ 0
height
��1 7
,
��7 8
sizeof
��9 ?
(
��? @
uint
��@ D
)
��D E
<<
��F H
$num
��I J
)
��J K
;
��K L
}
�� 	
void
�� 
ComputeWaveform
�� 
(
�� 
RenderTexture
�� *
source
��+ 1
)
��1 2
{
�� 	
if
�� 
(
�� 
m_Buffer
�� 
==
�� 
null
��  
)
��  !
{
�� 
CreateBuffer
�� 
(
�� 
source
�� #
.
��# $
width
��$ )
,
��) *
source
��+ 1
.
��1 2
height
��2 8
)
��8 9
;
��9 :
}
�� 
else
�� 
if
�� 
(
�� 
m_Buffer
�� 
.
�� 
count
�� #
!=
��$ &
(
��' (
source
��( .
.
��. /
width
��/ 4
*
��5 6
source
��7 =
.
��= >
height
��> D
)
��D E
)
��E F
{
�� 
m_Buffer
�� 
.
�� 
Release
��  
(
��  !
)
��! "
;
��" #
CreateBuffer
�� 
(
�� 
source
�� #
.
��# $
width
��$ )
,
��) *
source
��+ 1
.
��1 2
height
��2 8
)
��8 9
;
��9 :
}
�� 
var
�� 
channels
�� 
=
�� 
m_MonitorSettings
�� ,
.
��, -
	waveformY
��- 6
?
�� 
new
�� 
Vector4
�� 
(
�� 
$num
��  
,
��  !
$num
��" $
,
��$ %
$num
��& (
,
��( )
$num
��* ,
)
��, -
:
�� 
new
�� 
Vector4
�� 
(
�� 
m_MonitorSettings
�� /
.
��/ 0
	waveformR
��0 9
?
��: ;
$num
��< >
:
��? @
$num
��A C
,
��C D
m_MonitorSettings
��E V
.
��V W
	waveformG
��W `
?
��a b
$num
��c e
:
��f g
$num
��h j
,
��j k
m_MonitorSettings
��l }
.
��} ~
	waveformB��~ �
?��� �
$num��� �
:��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
var
�� 
cs
�� 
=
�� 
m_ComputeShader
�� $
;
��$ %
int
�� 
kernel
�� 
=
�� 
cs
�� 
.
�� 

FindKernel
�� &
(
��& '
$str
��' 7
)
��7 8
;
��8 9
cs
�� 
.
�� 
	SetBuffer
�� 
(
�� 
kernel
�� 
,
��  
$str
��! ,
,
��, -
m_Buffer
��. 6
)
��6 7
;
��7 8
cs
�� 
.
�� 
Dispatch
�� 
(
�� 
kernel
�� 
,
�� 
source
��  &
.
��& '
width
��' ,
,
��, -
$num
��. /
,
��/ 0
$num
��1 2
)
��2 3
;
��3 4
kernel
�� 
=
�� 
cs
�� 
.
�� 

FindKernel
�� "
(
��" #
$str
��# .
)
��. /
;
��/ 0
cs
�� 
.
�� 
	SetBuffer
�� 
(
�� 
kernel
�� 
,
��  
$str
��! ,
,
��, -
m_Buffer
��. 6
)
��6 7
;
��7 8
cs
�� 
.
�� 

SetTexture
�� 
(
�� 
kernel
��  
,
��  !
$str
��" +
,
��+ ,
source
��- 3
)
��3 4
;
��4 5
cs
�� 
.
�� 
SetInt
�� 
(
�� 
$str
�� !
,
��! "
GraphicsUtils
��# 0
.
��0 1 
isLinearColorSpace
��1 C
?
��D E
$num
��F G
:
��H I
$num
��J K
)
��K L
;
��L M
cs
�� 
.
�� 
	SetVector
�� 
(
�� 
$str
�� $
,
��$ %
channels
��& .
)
��. /
;
��/ 0
cs
�� 
.
�� 
Dispatch
�� 
(
�� 
kernel
�� 
,
�� 
source
��  &
.
��& '
width
��' ,
,
��, -
$num
��. /
,
��/ 0
$num
��1 2
)
��2 3
;
��3 4
if
�� 
(
�� 
m_WaveformTexture
�� !
==
��" $
null
��% )
||
��* ,
m_WaveformTexture
��- >
.
��> ?
width
��? D
!=
��E G
(
��H I
source
��I O
.
��O P
width
��P U
*
��V W
$num
��X Y
)
��Y Z
||
��[ ]
m_WaveformTexture
��^ o
.
��o p
height
��p v
!=
��w y
source��z �
.��� �
height��� �
)��� �
{
�� 
GraphicsUtils
�� 
.
�� 
Destroy
�� %
(
��% &
m_WaveformTexture
��& 7
)
��7 8
;
��8 9
m_WaveformTexture
�� !
=
��" #
new
��$ '
RenderTexture
��( 5
(
��5 6
source
��6 <
.
��< =
width
��= B
*
��C D
$num
��E F
,
��F G
source
��H N
.
��N O
height
��O U
,
��U V
$num
��W X
,
��X Y!
RenderTextureFormat
��Z m
.
��m n
ARGB32
��n t
,
��t u%
RenderTextureReadWrite��v �
.��� �
Linear��� �
)��� �
{
�� 
	hideFlags
�� 
=
�� 
	HideFlags
��  )
.
��) *
DontSave
��* 2
,
��2 3
wrapMode
�� 
=
�� 
TextureWrapMode
�� .
.
��. /
Clamp
��/ 4
,
��4 5

filterMode
�� 
=
��  

FilterMode
��! +
.
��+ ,
Bilinear
��, 4
}
�� 
;
�� 
}
�� 
if
�� 
(
�� 

m_Material
�� 
==
�� 
null
�� "
)
��" #

m_Material
�� 
=
�� 
new
��  
Material
��! )
(
��) *
Shader
��* 0
.
��0 1
Find
��1 5
(
��5 6
$str
��6 ]
)
��] ^
)
��^ _
{
��` a
	hideFlags
��b k
=
��l m
	HideFlags
��n w
.
��w x
DontSave��x �
}��� �
;��� �

m_Material
�� 
.
�� 
	SetBuffer
��  
(
��  !
$str
��! ,
,
��, -
m_Buffer
��. 6
)
��6 7
;
��7 8

m_Material
�� 
.
�� 
	SetVector
��  
(
��  !
$str
��! (
,
��( )
new
��* -
Vector2
��. 5
(
��5 6
m_WaveformTexture
��6 G
.
��G H
width
��H M
,
��M N
m_WaveformTexture
��O `
.
��` a
height
��a g
)
��g h
)
��h i
;
��i j

m_Material
�� 
.
�� 
	SetVector
��  
(
��  !
$str
��! ,
,
��, -
channels
��. 6
)
��6 7
;
��7 8
}
�� 	
}
�� 
}�� ��
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Monitors\VectorscopeMonitor.cs
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
$str	55^ �
)
55� �
,
55� �
FxStyles
55� �
.
55� �
	preButton
55� �
)
55� �
;
55� �
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
.	66 �
Width
66� �
(
66� �
$num
66� �
)
66� �
)
66� �
;
66� �
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
$str	77c �
)
77� �
,
77� �
FxStyles
77� �
.
77� �
	preButton
77� �
)
77� �
;
77� �
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
m_MonitorAreaRect	wwu �
.
ww� �
height
ww� �
)
ww� �
)
ww� �
;
ww� �
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
m_MonitorAreaRect	xxo �
.
xx� �
width
xx� �
,
xx� �
midY
xx� �
)
xx� �
)
xx� �
;
xx� �
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
�� 
(
�� 
int
��  
i
��! "
=
��# $
$num
��% &
;
��& '
i
��( )
<
��* +

kTickCount
��, 6
;
��6 7
i
��8 9
++
��9 ;
)
��; <
{
�� 
float
�� !
a
��" #
=
��$ %
(
��& '
float
��' ,
)
��, -
i
��- .
/
��/ 0
(
��1 2
float
��2 7
)
��7 8

kTickCount
��8 B
;
��B C
float
�� !
theta
��" '
=
��( )
a
��* +
*
��, -
(
��. /
Mathf
��/ 4
.
��4 5
PI
��5 7
*
��8 9
$num
��: <
)
��< =
;
��= >
float
�� !
tx
��" $
=
��% &
Mathf
��' ,
.
��, -
Cos
��- 0
(
��0 1
theta
��1 6
+
��7 8
(
��9 :
Mathf
��: ?
.
��? @
PI
��@ B
/
��C D
$num
��E G
)
��G H
)
��H I
;
��I J
float
�� !
ty
��" $
=
��% &
Mathf
��' ,
.
��, -
Sin
��- 0
(
��0 1
theta
��1 6
-
��7 8
(
��9 :
Mathf
��: ?
.
��? @
PI
��@ B
/
��C D
$num
��E G
)
��G H
)
��H I
;
��I J
var
�� 
innerVec
��  (
=
��) *
center
��+ 1
+
��2 3
new
��4 7
Vector2
��8 ?
(
��? @
tx
��@ B
,
��B C
ty
��D F
)
��F G
*
��H I
(
��J K
radius
��K Q
-
��R S
	kTickSize
��T ]
)
��] ^
;
��^ _
var
�� 
outerVec
��  (
=
��) *
center
��+ 1
+
��2 3
new
��4 7
Vector2
��8 ?
(
��? @
tx
��@ B
,
��B C
ty
��D F
)
��F G
*
��H I
radius
��J P
;
��P Q
Handles
�� #
.
��# $
DrawAAPolyLine
��$ 2
(
��2 3
$num
��3 5
,
��5 6
innerVec
��7 ?
,
��? @
outerVec
��A I
)
��I J
;
��J K
}
�� 
color
�� 
.
�� 
a
�� 
=
��  !
$num
��" $
;
��$ %
var
�� 
oldColor
�� $
=
��% &
GUI
��' *
.
��* +
color
��+ 0
;
��0 1
GUI
�� 
.
�� 
color
�� !
=
��" #
color
��$ )
*
��* +
$num
��, .
;
��. /
var
�� 
point
�� !
=
��" #
new
��$ '
Vector2
��( /
(
��/ 0
-
��0 1
$num
��1 7
,
��7 8
-
��9 :
$num
��: @
)
��@ A
*
��B C
radius
��D J
+
��K L
center
��M S
;
��S T
var
�� 
rect
��  
=
��! "
new
��# &
Rect
��' +
(
��+ ,
point
��, 1
.
��1 2
x
��2 3
-
��4 5
$num
��6 9
,
��9 :
point
��; @
.
��@ A
y
��A B
-
��C D
$num
��E H
,
��H I
$num
��J M
,
��M N
$num
��O R
)
��R S
;
��S T
GUI
�� 
.
�� 
Label
�� !
(
��! "
rect
��" &
,
��& '
$str
��( -
,
��- .
FxStyles
��/ 7
.
��7 8
tickStyleCenter
��8 G
)
��G H
;
��H I
point
�� 
=
�� 
new
��  #
Vector2
��$ +
(
��+ ,
-
��, -
$num
��- 3
,
��3 4
$num
��5 ;
)
��; <
*
��= >
radius
��? E
+
��F G
center
��H N
;
��N O
rect
�� 
=
�� 
new
�� "
Rect
��# '
(
��' (
point
��( -
.
��- .
x
��. /
-
��0 1
$num
��2 5
,
��5 6
point
��7 <
.
��< =
y
��= >
-
��? @
$num
��A D
,
��D E
$num
��F I
,
��I J
$num
��K N
)
��N O
;
��O P
GUI
�� 
.
�� 
Label
�� !
(
��! "
rect
��" &
,
��& '
$str
��( -
,
��- .
FxStyles
��/ 7
.
��7 8
tickStyleCenter
��8 G
)
��G H
;
��H I
point
�� 
=
�� 
new
��  #
Vector2
��$ +
(
��+ ,
$num
��, 2
,
��2 3
$num
��4 :
)
��: ;
*
��< =
radius
��> D
+
��E F
center
��G M
;
��M N
rect
�� 
=
�� 
new
�� "
Rect
��# '
(
��' (
point
��( -
.
��- .
x
��. /
-
��0 1
$num
��2 5
,
��5 6
point
��7 <
.
��< =
y
��= >
-
��? @
$num
��A D
,
��D E
$num
��F I
,
��I J
$num
��K N
)
��N O
;
��O P
GUI
�� 
.
�� 
Label
�� !
(
��! "
rect
��" &
,
��& '
$str
��( -
,
��- .
FxStyles
��/ 7
.
��7 8
tickStyleCenter
��8 G
)
��G H
;
��H I
point
�� 
=
�� 
new
��  #
Vector2
��$ +
(
��+ ,
-
��, -
$num
��- 3
,
��3 4
-
��5 6
$num
��6 <
)
��< =
*
��> ?
radius
��@ F
+
��G H
center
��I O
;
��O P
rect
�� 
=
�� 
new
�� "
Rect
��# '
(
��' (
point
��( -
.
��- .
x
��. /
-
��0 1
$num
��2 5
,
��5 6
point
��7 <
.
��< =
y
��= >
-
��? @
$num
��A D
,
��D E
$num
��F I
,
��I J
$num
��K N
)
��N O
;
��O P
GUI
�� 
.
�� 
Label
�� !
(
��! "
rect
��" &
,
��& '
$str
��( -
,
��- .
FxStyles
��/ 7
.
��7 8
tickStyleCenter
��8 G
)
��G H
;
��H I
point
�� 
=
�� 
new
��  #
Vector2
��$ +
(
��+ ,
$num
��, 2
,
��2 3
$num
��4 :
)
��: ;
*
��< =
radius
��> D
+
��E F
center
��G M
;
��M N
rect
�� 
=
�� 
new
�� "
Rect
��# '
(
��' (
point
��( -
.
��- .
x
��. /
-
��0 1
$num
��2 5
,
��5 6
point
��7 <
.
��< =
y
��= >
-
��? @
$num
��A D
,
��D E
$num
��F I
,
��I J
$num
��K N
)
��N O
;
��O P
GUI
�� 
.
�� 
Label
�� !
(
��! "
rect
��" &
,
��& '
$str
��( -
,
��- .
FxStyles
��/ 7
.
��7 8
tickStyleCenter
��8 G
)
��G H
;
��H I
point
�� 
=
�� 
new
��  #
Vector2
��$ +
(
��+ ,
$num
��, 2
,
��2 3
-
��4 5
$num
��5 ;
)
��; <
*
��= >
radius
��? E
+
��F G
center
��H N
;
��N O
rect
�� 
=
�� 
new
�� "
Rect
��# '
(
��' (
point
��( -
.
��- .
x
��. /
-
��0 1
$num
��2 5
,
��5 6
point
��7 <
.
��< =
y
��= >
-
��? @
$num
��A D
,
��D E
$num
��F I
,
��I J
$num
��K N
)
��N O
;
��O P
GUI
�� 
.
�� 
Label
�� !
(
��! "
rect
��" &
,
��& '
$str
��( -
,
��- .
FxStyles
��/ 7
.
��7 8
tickStyleCenter
��8 G
)
��G H
;
��H I
GUI
�� 
.
�� 
color
�� !
=
��" #
oldColor
��$ ,
;
��, -
}
�� 
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
OnFrameData
�� (
(
��( )
RenderTexture
��) 6
source
��7 =
)
��= >
{
�� 	
if
�� 
(
�� 
Application
�� 
.
�� 
	isPlaying
�� %
&&
��& (
!
��) *
m_MonitorSettings
��* ;
.
��; <
refreshOnPlay
��< I
)
��I J
return
�� 
;
�� 
if
�� 
(
�� 
Mathf
�� 
.
�� 
Approximately
�� #
(
��# $
m_MonitorAreaRect
��$ 5
.
��5 6
width
��6 ;
,
��; <
$num
��= >
)
��> ?
||
��@ B
Mathf
��C H
.
��H I
Approximately
��I V
(
��V W
m_MonitorAreaRect
��W h
.
��h i
height
��i o
,
��o p
$num
��q r
)
��r s
)
��s t
return
�� 
;
�� 
float
�� 
ratio
�� 
=
�� 
(
�� 
float
��  
)
��  !
source
��! '
.
��' (
width
��( -
/
��. /
(
��0 1
float
��1 6
)
��6 7
source
��7 =
.
��= >
height
��> D
;
��D E
int
�� 
h
�� 
=
�� 
$num
�� 
;
�� 
int
�� 
w
�� 
=
�� 
Mathf
�� 
.
�� 

FloorToInt
�� $
(
��$ %
h
��% &
*
��' (
ratio
��) .
)
��. /
;
��/ 0
var
�� 
rt
�� 
=
�� 
RenderTexture
�� "
.
��" #
GetTemporary
��# /
(
��/ 0
w
��0 1
,
��1 2
h
��3 4
,
��4 5
$num
��6 7
,
��7 8
source
��9 ?
.
��? @
format
��@ F
)
��F G
;
��G H
Graphics
�� 
.
�� 
Blit
�� 
(
�� 
source
��  
,
��  !
rt
��" $
)
��$ %
;
��% & 
ComputeVectorscope
�� 
(
�� 
rt
�� !
)
��! "
;
��" #
m_BaseEditor
�� 
.
�� 
Repaint
��  
(
��  !
)
��! "
;
��" #
RenderTexture
�� 
.
�� 
ReleaseTemporary
�� *
(
��* +
rt
��+ -
)
��- .
;
��. /
}
�� 	
void
�� 
CreateBuffer
�� 
(
�� 
int
�� 
width
�� #
,
��# $
int
��% (
height
��) /
)
��/ 0
{
�� 	
m_Buffer
�� 
=
�� 
new
�� 
ComputeBuffer
�� (
(
��( )
width
��) .
*
��/ 0
height
��1 7
,
��7 8
sizeof
��9 ?
(
��? @
uint
��@ D
)
��D E
)
��E F
;
��F G
}
�� 	
void
��  
ComputeVectorscope
�� 
(
��  
RenderTexture
��  -
source
��. 4
)
��4 5
{
�� 	
if
�� 
(
�� 
m_Buffer
�� 
==
�� 
null
��  
)
��  !
{
�� 
CreateBuffer
�� 
(
�� 
source
�� #
.
��# $
width
��$ )
,
��) *
source
��+ 1
.
��1 2
height
��2 8
)
��8 9
;
��9 :
}
�� 
else
�� 
if
�� 
(
�� 
m_Buffer
�� 
.
�� 
count
�� #
!=
��$ &
(
��' (
source
��( .
.
��. /
width
��/ 4
*
��5 6
source
��7 =
.
��= >
height
��> D
)
��D E
)
��E F
{
�� 
m_Buffer
�� 
.
�� 
Release
��  
(
��  !
)
��! "
;
��" #
CreateBuffer
�� 
(
�� 
source
�� #
.
��# $
width
��$ )
,
��) *
source
��+ 1
.
��1 2
height
��2 8
)
��8 9
;
��9 :
}
�� 
var
�� 
cs
�� 
=
�� 
m_ComputeShader
�� $
;
��$ %
int
�� 
kernel
�� 
=
�� 
cs
�� 
.
�� 

FindKernel
�� &
(
��& '
$str
��' :
)
��: ;
;
��; <
cs
�� 
.
�� 
	SetBuffer
�� 
(
�� 
kernel
�� 
,
��  
$str
��! /
,
��/ 0
m_Buffer
��1 9
)
��9 :
;
��: ;
cs
�� 
.
�� 
	SetVector
�� 
(
�� 
$str
�� 
,
��  
new
��! $
Vector4
��% ,
(
��, -
source
��- 3
.
��3 4
width
��4 9
,
��9 :
source
��; A
.
��A B
height
��B H
,
��H I
$num
��J L
,
��L M
$num
��N P
)
��P Q
)
��Q R
;
��R S
cs
�� 
.
�� 
Dispatch
�� 
(
�� 
kernel
�� 
,
�� 
Mathf
��  %
.
��% &
	CeilToInt
��& /
(
��/ 0
source
��0 6
.
��6 7
width
��7 <
/
��= >
$num
��? B
)
��B C
,
��C D
Mathf
��E J
.
��J K
	CeilToInt
��K T
(
��T U
source
��U [
.
��[ \
height
��\ b
/
��c d
$num
��e h
)
��h i
,
��i j
$num
��k l
)
��l m
;
��m n
kernel
�� 
=
�� 
cs
�� 
.
�� 

FindKernel
�� "
(
��" #
$str
��# 1
)
��1 2
;
��2 3
cs
�� 
.
�� 
	SetBuffer
�� 
(
�� 
kernel
�� 
,
��  
$str
��! /
,
��/ 0
m_Buffer
��1 9
)
��9 :
;
��: ;
cs
�� 
.
�� 

SetTexture
�� 
(
�� 
kernel
��  
,
��  !
$str
��" +
,
��+ ,
source
��- 3
)
��3 4
;
��4 5
cs
�� 
.
�� 
SetInt
�� 
(
�� 
$str
�� !
,
��! "
GraphicsUtils
��# 0
.
��0 1 
isLinearColorSpace
��1 C
?
��D E
$num
��F G
:
��H I
$num
��J K
)
��K L
;
��L M
cs
�� 
.
�� 
	SetVector
�� 
(
�� 
$str
�� 
,
��  
new
��! $
Vector4
��% ,
(
��, -
source
��- 3
.
��3 4
width
��4 9
,
��9 :
source
��; A
.
��A B
height
��B H
,
��H I
$num
��J L
,
��L M
$num
��N P
)
��P Q
)
��Q R
;
��R S
cs
�� 
.
�� 
Dispatch
�� 
(
�� 
kernel
�� 
,
�� 
Mathf
��  %
.
��% &
	CeilToInt
��& /
(
��/ 0
source
��0 6
.
��6 7
width
��7 <
/
��= >
$num
��? B
)
��B C
,
��C D
Mathf
��E J
.
��J K
	CeilToInt
��K T
(
��T U
source
��U [
.
��[ \
height
��\ b
/
��c d
$num
��e h
)
��h i
,
��i j
$num
��k l
)
��l m
;
��m n
if
�� 
(
�� "
m_VectorscopeTexture
�� $
==
��% '
null
��( ,
||
��- /"
m_VectorscopeTexture
��0 D
.
��D E
width
��E J
!=
��K M
source
��N T
.
��T U
width
��U Z
||
��[ ]"
m_VectorscopeTexture
��^ r
.
��r s
height
��s y
!=
��z |
source��} �
.��� �
height��� �
)��� �
{
�� 
GraphicsUtils
�� 
.
�� 
Destroy
�� %
(
��% &"
m_VectorscopeTexture
��& :
)
��: ;
;
��; <"
m_VectorscopeTexture
�� $
=
��% &
new
��' *
RenderTexture
��+ 8
(
��8 9
source
��9 ?
.
��? @
width
��@ E
,
��E F
source
��G M
.
��M N
height
��N T
,
��T U
$num
��V W
,
��W X!
RenderTextureFormat
��Y l
.
��l m
ARGB32
��m s
,
��s t%
RenderTextureReadWrite��u �
.��� �
Linear��� �
)��� �
{
�� 
	hideFlags
�� 
=
�� 
	HideFlags
��  )
.
��) *
DontSave
��* 2
,
��2 3
wrapMode
�� 
=
�� 
TextureWrapMode
�� .
.
��. /
Clamp
��/ 4
,
��4 5

filterMode
�� 
=
��  

FilterMode
��! +
.
��+ ,
Bilinear
��, 4
}
�� 
;
�� 
}
�� 
if
�� 
(
�� 

m_Material
�� 
==
�� 
null
�� "
)
��" #

m_Material
�� 
=
�� 
new
��  
Material
��! )
(
��) *
Shader
��* 0
.
��0 1
Find
��1 5
(
��5 6
$str
��6 b
)
��b c
)
��c d
{
��e f
	hideFlags
��g p
=
��q r
	HideFlags
��s |
.
��| }
DontSave��} �
}��� �
;��� �

m_Material
�� 
.
�� 
	SetBuffer
��  
(
��  !
$str
��! /
,
��/ 0
m_Buffer
��1 9
)
��9 :
;
��: ;

m_Material
�� 
.
�� 
	SetVector
��  
(
��  !
$str
��! (
,
��( )
new
��* -
Vector2
��. 5
(
��5 6"
m_VectorscopeTexture
��6 J
.
��J K
width
��K P
,
��P Q"
m_VectorscopeTexture
��R f
.
��f g
height
��g m
)
��m n
)
��n o
;
��o p
}
�� 	
}
�� 
}�� ��
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Monitors\WaveformMonitor.cs
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
$str	88^ �
)
88� �
,
88� �
FxStyles
88� �
.
88� �
	preButton
88� �
)
88� �
;
88� �
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
.	:: �
Width
::� �
(
::� �
$num
::� �
)
::� �
)
::� �
;
::� �
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
�� 
color
�� 
=
�� 
Color
��  %
.
��% &
white
��& +
;
��+ ,
const
�� 
float
�� 
	kTickSize
��  )
=
��* +
$num
��, .
;
��. /
var
�� 
A
�� 
=
�� 
new
�� 
Vector3
��  '
(
��' (
m_MonitorAreaRect
��( 9
.
��9 :
x
��: ;
,
��; <
m_MonitorAreaRect
��= N
.
��N O
y
��O P
)
��P Q
;
��Q R
var
�� 
E
�� 
=
�� 
new
�� 
Vector3
��  '
(
��' (
A
��( )
.
��) *
x
��* +
+
��, -
m_MonitorAreaRect
��. ?
.
��? @
width
��@ E
+
��F G
$num
��H J
,
��J K
m_MonitorAreaRect
��L ]
.
��] ^
y
��^ _
)
��_ `
;
��` a
var
�� 
I
�� 
=
�� 
new
�� 
Vector3
��  '
(
��' (
E
��( )
.
��) *
x
��* +
,
��+ ,
E
��- .
.
��. /
y
��/ 0
+
��1 2
m_MonitorAreaRect
��3 D
.
��D E
height
��E K
+
��L M
$num
��N P
)
��P Q
;
��Q R
var
�� 
M
�� 
=
�� 
new
�� 
Vector3
��  '
(
��' (
A
��( )
.
��) *
x
��* +
,
��+ ,
I
��- .
.
��. /
y
��/ 0
)
��0 1
;
��1 2
var
�� 
C
�� 
=
�� 
new
�� 
Vector3
��  '
(
��' (
A
��( )
.
��) *
x
��* +
+
��, -
(
��. /
E
��/ 0
.
��0 1
x
��1 2
-
��3 4
A
��5 6
.
��6 7
x
��7 8
)
��8 9
/
��: ;
$num
��< >
,
��> ?
A
��@ A
.
��A B
y
��B C
)
��C D
;
��D E
var
�� 
G
�� 
=
�� 
new
�� 
Vector3
��  '
(
��' (
E
��( )
.
��) *
x
��* +
,
��+ ,
E
��- .
.
��. /
y
��/ 0
+
��1 2
(
��3 4
I
��4 5
.
��5 6
y
��6 7
-
��8 9
E
��: ;
.
��; <
y
��< =
)
��= >
/
��? @
$num
��A C
)
��C D
;
��D E
var
�� 
K
�� 
=
�� 
new
�� 
Vector3
��  '
(
��' (
M
��( )
.
��) *
x
��* +
+
��, -
(
��. /
I
��/ 0
.
��0 1
x
��1 2
-
��3 4
M
��5 6
.
��6 7
x
��7 8
)
��8 9
/
��: ;
$num
��< >
,
��> ?
M
��@ A
.
��A B
y
��B C
)
��C D
;
��D E
var
�� 
O
�� 
=
�� 
new
�� 
Vector3
��  '
(
��' (
A
��( )
.
��) *
x
��* +
,
��+ ,
A
��- .
.
��. /
y
��/ 0
+
��1 2
(
��3 4
M
��4 5
.
��5 6
y
��6 7
-
��8 9
A
��: ;
.
��; <
y
��< =
)
��= >
/
��? @
$num
��A C
)
��C D
;
��D E
var
�� 
P
�� 
=
�� 
new
�� 
Vector3
��  '
(
��' (
A
��( )
.
��) *
x
��* +
,
��+ ,
A
��- .
.
��. /
y
��/ 0
+
��1 2
(
��3 4
O
��4 5
.
��5 6
y
��6 7
-
��8 9
A
��: ;
.
��; <
y
��< =
)
��= >
/
��? @
$num
��A C
)
��C D
;
��D E
var
�� 
F
�� 
=
�� 
new
�� 
Vector3
��  '
(
��' (
E
��( )
.
��) *
x
��* +
,
��+ ,
E
��- .
.
��. /
y
��/ 0
+
��1 2
(
��3 4
G
��4 5
.
��5 6
y
��6 7
-
��8 9
E
��: ;
.
��; <
y
��< =
)
��= >
/
��? @
$num
��A C
)
��C D
;
��D E
var
�� 
N
�� 
=
�� 
new
�� 
Vector3
��  '
(
��' (
A
��( )
.
��) *
x
��* +
,
��+ ,
O
��- .
.
��. /
y
��/ 0
+
��1 2
(
��3 4
M
��4 5
.
��5 6
y
��6 7
-
��8 9
O
��: ;
.
��; <
y
��< =
)
��= >
/
��? @
$num
��A C
)
��C D
;
��D E
var
�� 
H
�� 
=
�� 
new
�� 
Vector3
��  '
(
��' (
E
��( )
.
��) *
x
��* +
,
��+ ,
G
��- .
.
��. /
y
��/ 0
+
��1 2
(
��3 4
I
��4 5
.
��5 6
y
��6 7
-
��8 9
G
��: ;
.
��; <
y
��< =
)
��= >
/
��? @
$num
��A C
)
��C D
;
��D E
var
�� 
B
�� 
=
�� 
new
�� 
Vector3
��  '
(
��' (
A
��( )
.
��) *
x
��* +
+
��, -
(
��. /
C
��/ 0
.
��0 1
x
��1 2
-
��3 4
A
��5 6
.
��6 7
x
��7 8
)
��8 9
/
��: ;
$num
��< >
,
��> ?
A
��@ A
.
��A B
y
��B C
)
��C D
;
��D E
var
�� 
L
�� 
=
�� 
new
�� 
Vector3
��  '
(
��' (
M
��( )
.
��) *
x
��* +
+
��, -
(
��. /
K
��/ 0
.
��0 1
x
��1 2
-
��3 4
M
��5 6
.
��6 7
x
��7 8
)
��8 9
/
��: ;
$num
��< >
,
��> ?
M
��@ A
.
��A B
y
��B C
)
��C D
;
��D E
var
�� 
D
�� 
=
�� 
new
�� 
Vector3
��  '
(
��' (
C
��( )
.
��) *
x
��* +
+
��, -
(
��. /
E
��/ 0
.
��0 1
x
��1 2
-
��3 4
C
��5 6
.
��6 7
x
��7 8
)
��8 9
/
��: ;
$num
��< >
,
��> ?
A
��@ A
.
��A B
y
��B C
)
��C D
;
��D E
var
�� 
J
�� 
=
�� 
new
�� 
Vector3
��  '
(
��' (
K
��( )
.
��) *
x
��* +
+
��, -
(
��. /
I
��/ 0
.
��0 1
x
��1 2
-
��3 4
K
��5 6
.
��6 7
x
��7 8
)
��8 9
/
��: ;
$num
��< >
,
��> ?
M
��@ A
.
��A B
y
��B C
)
��C D
;
��D E
Handles
�� 
.
�� 
color
�� !
=
��" #
color
��$ )
;
��) *
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
A
��% &
,
��& '
E
��( )
)
��) *
;
��* +
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
E
��% &
,
��& '
I
��( )
)
��) *
;
��* +
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
I
��% &
,
��& '
M
��( )
)
��) *
;
��* +
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
M
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
A
��4 5
.
��5 6
x
��6 7
,
��7 8
A
��9 :
.
��: ;
y
��; <
-
��= >
$num
��? A
)
��A B
)
��B C
;
��C D
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
A
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
A
��4 5
.
��5 6
x
��6 7
-
��8 9
	kTickSize
��: C
,
��C D
A
��E F
.
��F G
y
��G H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
P
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
P
��4 5
.
��5 6
x
��6 7
-
��8 9
	kTickSize
��: C
,
��C D
P
��E F
.
��F G
y
��G H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
O
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
O
��4 5
.
��5 6
x
��6 7
-
��8 9
	kTickSize
��: C
,
��C D
O
��E F
.
��F G
y
��G H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
N
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
N
��4 5
.
��5 6
x
��6 7
-
��8 9
	kTickSize
��: C
,
��C D
N
��E F
.
��F G
y
��G H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
M
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
M
��4 5
.
��5 6
x
��6 7
-
��8 9
	kTickSize
��: C
,
��C D
M
��E F
.
��F G
y
��G H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
E
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
E
��4 5
.
��5 6
x
��6 7
+
��8 9
	kTickSize
��: C
,
��C D
E
��E F
.
��F G
y
��G H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
F
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
F
��4 5
.
��5 6
x
��6 7
+
��8 9
	kTickSize
��: C
,
��C D
F
��E F
.
��F G
y
��G H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
G
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
G
��4 5
.
��5 6
x
��6 7
+
��8 9
	kTickSize
��: C
,
��C D
G
��E F
.
��F G
y
��G H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
H
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
H
��4 5
.
��5 6
x
��6 7
+
��8 9
	kTickSize
��: C
,
��C D
H
��E F
.
��F G
y
��G H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
I
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
I
��4 5
.
��5 6
x
��6 7
+
��8 9
	kTickSize
��: C
,
��C D
I
��E F
.
��F G
y
��G H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
A
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
A
��4 5
.
��5 6
x
��6 7
,
��7 8
A
��9 :
.
��: ;
y
��; <
-
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
B
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
B
��4 5
.
��5 6
x
��6 7
,
��7 8
B
��9 :
.
��: ;
y
��; <
-
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
C
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
C
��4 5
.
��5 6
x
��6 7
,
��7 8
C
��9 :
.
��: ;
y
��; <
-
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
D
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
D
��4 5
.
��5 6
x
��6 7
,
��7 8
D
��9 :
.
��: ;
y
��; <
-
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
E
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
E
��4 5
.
��5 6
x
��6 7
,
��7 8
E
��9 :
.
��: ;
y
��; <
-
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
M
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
M
��4 5
.
��5 6
x
��6 7
,
��7 8
M
��9 :
.
��: ;
y
��; <
+
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
L
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
L
��4 5
.
��5 6
x
��6 7
,
��7 8
L
��9 :
.
��: ;
y
��; <
+
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
K
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
K
��4 5
.
��5 6
x
��6 7
,
��7 8
K
��9 :
.
��: ;
y
��; <
+
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
J
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
J
��4 5
.
��5 6
x
��6 7
,
��7 8
J
��9 :
.
��: ;
y
��; <
+
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
Handles
�� 
.
�� 
DrawLine
�� $
(
��$ %
I
��% &
,
��& '
new
��( +
Vector3
��, 3
(
��3 4
I
��4 5
.
��5 6
x
��6 7
,
��7 8
I
��9 :
.
��: ;
y
��; <
+
��= >
	kTickSize
��? H
)
��H I
)
��I J
;
��J K
GUI
�� 
.
�� 
color
�� 
=
�� 
color
��  %
;
��% &
GUI
�� 
.
�� 
Label
�� 
(
�� 
new
�� !
Rect
��" &
(
��& '
A
��' (
.
��( )
x
��) *
-
��+ ,
	kTickSize
��- 6
-
��7 8
$num
��9 <
,
��< =
A
��> ?
.
��? @
y
��@ A
-
��B C
$num
��D G
,
��G H
$num
��I L
,
��L M
$num
��N Q
)
��Q R
,
��R S
$str
��T Y
,
��Y Z
FxStyles
��[ c
.
��c d
tickStyleRight
��d r
)
��r s
;
��s t
GUI
�� 
.
�� 
Label
�� 
(
�� 
new
�� !
Rect
��" &
(
��& '
O
��' (
.
��( )
x
��) *
-
��+ ,
	kTickSize
��- 6
-
��7 8
$num
��9 <
,
��< =
O
��> ?
.
��? @
y
��@ A
-
��B C
$num
��D G
,
��G H
$num
��I L
,
��L M
$num
��N Q
)
��Q R
,
��R S
$str
��T Y
,
��Y Z
FxStyles
��[ c
.
��c d
tickStyleRight
��d r
)
��r s
;
��s t
GUI
�� 
.
�� 
Label
�� 
(
�� 
new
�� !
Rect
��" &
(
��& '
M
��' (
.
��( )
x
��) *
-
��+ ,
	kTickSize
��- 6
-
��7 8
$num
��9 <
,
��< =
M
��> ?
.
��? @
y
��@ A
-
��B C
$num
��D G
,
��G H
$num
��I L
,
��L M
$num
��N Q
)
��Q R
,
��R S
$str
��T Y
,
��Y Z
FxStyles
��[ c
.
��c d
tickStyleRight
��d r
)
��r s
;
��s t
GUI
�� 
.
�� 
Label
�� 
(
�� 
new
�� !
Rect
��" &
(
��& '
E
��' (
.
��( )
x
��) *
+
��+ ,
	kTickSize
��- 6
+
��7 8
$num
��9 ;
,
��; <
E
��= >
.
��> ?
y
��? @
-
��A B
$num
��C F
,
��F G
$num
��H K
,
��K L
$num
��M P
)
��P Q
,
��Q R
$str
��S X
,
��X Y
FxStyles
��Z b
.
��b c
tickStyleLeft
��c p
)
��p q
;
��q r
GUI
�� 
.
�� 
Label
�� 
(
�� 
new
�� !
Rect
��" &
(
��& '
G
��' (
.
��( )
x
��) *
+
��+ ,
	kTickSize
��- 6
+
��7 8
$num
��9 ;
,
��; <
G
��= >
.
��> ?
y
��? @
-
��A B
$num
��C F
,
��F G
$num
��H K
,
��K L
$num
��M P
)
��P Q
,
��Q R
$str
��S X
,
��X Y
FxStyles
��Z b
.
��b c
tickStyleLeft
��c p
)
��p q
;
��q r
GUI
�� 
.
�� 
Label
�� 
(
�� 
new
�� !
Rect
��" &
(
��& '
I
��' (
.
��( )
x
��) *
+
��+ ,
	kTickSize
��- 6
+
��7 8
$num
��9 ;
,
��; <
I
��= >
.
��> ?
y
��? @
-
��A B
$num
��C F
,
��F G
$num
��H K
,
��K L
$num
��M P
)
��P Q
,
��Q R
$str
��S X
,
��X Y
FxStyles
��Z b
.
��b c
tickStyleLeft
��c p
)
��p q
;
��q r
GUI
�� 
.
�� 
Label
�� 
(
�� 
new
�� !
Rect
��" &
(
��& '
M
��' (
.
��( )
x
��) *
-
��+ ,
$num
��- 0
,
��0 1
M
��2 3
.
��3 4
y
��4 5
+
��6 7
	kTickSize
��8 A
-
��B C
$num
��D F
,
��F G
$num
��H K
,
��K L
$num
��M P
)
��P Q
,
��Q R
$str
��S X
,
��X Y
FxStyles
��Z b
.
��b c
tickStyleCenter
��c r
)
��r s
;
��s t
GUI
�� 
.
�� 
Label
�� 
(
�� 
new
�� !
Rect
��" &
(
��& '
K
��' (
.
��( )
x
��) *
-
��+ ,
$num
��- 0
,
��0 1
K
��2 3
.
��3 4
y
��4 5
+
��6 7
	kTickSize
��8 A
-
��B C
$num
��D F
,
��F G
$num
��H K
,
��K L
$num
��M P
)
��P Q
,
��Q R
$str
��S X
,
��X Y
FxStyles
��Z b
.
��b c
tickStyleCenter
��c r
)
��r s
;
��s t
GUI
�� 
.
�� 
Label
�� 
(
�� 
new
�� !
Rect
��" &
(
��& '
I
��' (
.
��( )
x
��) *
-
��+ ,
$num
��- 0
,
��0 1
I
��2 3
.
��3 4
y
��4 5
+
��6 7
	kTickSize
��8 A
-
��B C
$num
��D F
,
��F G
$num
��H K
,
��K L
$num
��M P
)
��P Q
,
��Q R
$str
��S X
,
��X Y
FxStyles
��Z b
.
��b c
tickStyleCenter
��c r
)
��r s
;
��s t
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
OnFrameData
�� (
(
��( )
RenderTexture
��) 6
source
��7 =
)
��= >
{
�� 	
if
�� 
(
�� 
Application
�� 
.
�� 
	isPlaying
�� %
&&
��& (
!
��) *
m_MonitorSettings
��* ;
.
��; <
refreshOnPlay
��< I
)
��I J
return
�� 
;
�� 
if
�� 
(
�� 
Mathf
�� 
.
�� 
Approximately
�� #
(
��# $
m_MonitorAreaRect
��$ 5
.
��5 6
width
��6 ;
,
��; <
$num
��= >
)
��> ?
||
��@ B
Mathf
��C H
.
��H I
Approximately
��I V
(
��V W
m_MonitorAreaRect
��W h
.
��h i
height
��i o
,
��o p
$num
��q r
)
��r s
)
��s t
return
�� 
;
�� 
float
�� 
ratio
�� 
=
�� 
(
�� 
float
��  
)
��  !
source
��! '
.
��' (
width
��( -
/
��. /
(
��0 1
float
��1 6
)
��6 7
source
��7 =
.
��= >
height
��> D
;
��D E
int
�� 
h
�� 
=
�� 
$num
�� 
;
�� 
int
�� 
w
�� 
=
�� 
Mathf
�� 
.
�� 

FloorToInt
�� $
(
��$ %
h
��% &
*
��' (
ratio
��) .
)
��. /
;
��/ 0
var
�� 
rt
�� 
=
�� 
RenderTexture
�� "
.
��" #
GetTemporary
��# /
(
��/ 0
w
��0 1
,
��1 2
h
��3 4
,
��4 5
$num
��6 7
,
��7 8
source
��9 ?
.
��? @
format
��@ F
)
��F G
;
��G H
Graphics
�� 
.
�� 
Blit
�� 
(
�� 
source
��  
,
��  !
rt
��" $
)
��$ %
;
��% &
ComputeWaveform
�� 
(
�� 
rt
�� 
)
�� 
;
��  
m_BaseEditor
�� 
.
�� 
Repaint
��  
(
��  !
)
��! "
;
��" #
RenderTexture
�� 
.
�� 
ReleaseTemporary
�� *
(
��* +
rt
��+ -
)
��- .
;
��. /
}
�� 	
void
�� 
CreateBuffer
�� 
(
�� 
int
�� 
width
�� #
,
��# $
int
��% (
height
��) /
)
��/ 0
{
�� 	
m_Buffer
�� 
=
�� 
new
�� 
ComputeBuffer
�� (
(
��( )
width
��) .
*
��/ 0
height
��1 7
,
��7 8
sizeof
��9 ?
(
��? @
uint
��@ D
)
��D E
<<
��F H
$num
��I J
)
��J K
;
��K L
}
�� 	
void
�� 
ComputeWaveform
�� 
(
�� 
RenderTexture
�� *
source
��+ 1
)
��1 2
{
�� 	
if
�� 
(
�� 
m_Buffer
�� 
==
�� 
null
��  
)
��  !
{
�� 
CreateBuffer
�� 
(
�� 
source
�� #
.
��# $
width
��$ )
,
��) *
source
��+ 1
.
��1 2
height
��2 8
)
��8 9
;
��9 :
}
�� 
else
�� 
if
�� 
(
�� 
m_Buffer
�� 
.
�� 
count
�� #
!=
��$ &
(
��' (
source
��( .
.
��. /
width
��/ 4
*
��5 6
source
��7 =
.
��= >
height
��> D
)
��D E
)
��E F
{
�� 
m_Buffer
�� 
.
�� 
Release
��  
(
��  !
)
��! "
;
��" #
CreateBuffer
�� 
(
�� 
source
�� #
.
��# $
width
��$ )
,
��) *
source
��+ 1
.
��1 2
height
��2 8
)
��8 9
;
��9 :
}
�� 
var
�� 
channels
�� 
=
�� 
m_MonitorSettings
�� ,
.
��, -
	waveformY
��- 6
?
�� 
new
�� 
Vector4
�� 
(
�� 
$num
��  
,
��  !
$num
��" $
,
��$ %
$num
��& (
,
��( )
$num
��* ,
)
��, -
:
�� 
new
�� 
Vector4
�� 
(
�� 
m_MonitorSettings
�� /
.
��/ 0
	waveformR
��0 9
?
��: ;
$num
��< >
:
��? @
$num
��A C
,
��C D
m_MonitorSettings
��E V
.
��V W
	waveformG
��W `
?
��a b
$num
��c e
:
��f g
$num
��h j
,
��j k
m_MonitorSettings
��l }
.
��} ~
	waveformB��~ �
?��� �
$num��� �
:��� �
$num��� �
,��� �
$num��� �
)��� �
;��� �
var
�� 
cs
�� 
=
�� 
m_ComputeShader
�� $
;
��$ %
int
�� 
kernel
�� 
=
�� 
cs
�� 
.
�� 

FindKernel
�� &
(
��& '
$str
��' 7
)
��7 8
;
��8 9
cs
�� 
.
�� 
	SetBuffer
�� 
(
�� 
kernel
�� 
,
��  
$str
��! ,
,
��, -
m_Buffer
��. 6
)
��6 7
;
��7 8
cs
�� 
.
�� 
Dispatch
�� 
(
�� 
kernel
�� 
,
�� 
source
��  &
.
��& '
width
��' ,
,
��, -
$num
��. /
,
��/ 0
$num
��1 2
)
��2 3
;
��3 4
kernel
�� 
=
�� 
cs
�� 
.
�� 

FindKernel
�� "
(
��" #
$str
��# .
)
��. /
;
��/ 0
cs
�� 
.
�� 
	SetBuffer
�� 
(
�� 
kernel
�� 
,
��  
$str
��! ,
,
��, -
m_Buffer
��. 6
)
��6 7
;
��7 8
cs
�� 
.
�� 

SetTexture
�� 
(
�� 
kernel
��  
,
��  !
$str
��" +
,
��+ ,
source
��- 3
)
��3 4
;
��4 5
cs
�� 
.
�� 
SetInt
�� 
(
�� 
$str
�� !
,
��! "
GraphicsUtils
��# 0
.
��0 1 
isLinearColorSpace
��1 C
?
��D E
$num
��F G
:
��H I
$num
��J K
)
��K L
;
��L M
cs
�� 
.
�� 
	SetVector
�� 
(
�� 
$str
�� $
,
��$ %
channels
��& .
)
��. /
;
��/ 0
cs
�� 
.
�� 
Dispatch
�� 
(
�� 
kernel
�� 
,
�� 
source
��  &
.
��& '
width
��' ,
,
��, -
$num
��. /
,
��/ 0
$num
��1 2
)
��2 3
;
��3 4
if
�� 
(
�� 
m_WaveformTexture
�� !
==
��" $
null
��% )
||
��* ,
m_WaveformTexture
��- >
.
��> ?
width
��? D
!=
��E G
source
��H N
.
��N O
width
��O T
||
��U W
m_WaveformTexture
��X i
.
��i j
height
��j p
!=
��q s
source
��t z
.
��z {
height��{ �
)��� �
{
�� 
GraphicsUtils
�� 
.
�� 
Destroy
�� %
(
��% &
m_WaveformTexture
��& 7
)
��7 8
;
��8 9
m_WaveformTexture
�� !
=
��" #
new
��$ '
RenderTexture
��( 5
(
��5 6
source
��6 <
.
��< =
width
��= B
,
��B C
source
��D J
.
��J K
height
��K Q
,
��Q R
$num
��S T
,
��T U!
RenderTextureFormat
��V i
.
��i j
ARGB32
��j p
,
��p q%
RenderTextureReadWrite��r �
.��� �
Linear��� �
)��� �
{
�� 
	hideFlags
�� 
=
�� 
	HideFlags
��  )
.
��) *
DontSave
��* 2
,
��2 3
wrapMode
�� 
=
�� 
TextureWrapMode
�� .
.
��. /
Clamp
��/ 4
,
��4 5

filterMode
�� 
=
��  

FilterMode
��! +
.
��+ ,
Bilinear
��, 4
}
�� 
;
�� 
}
�� 
if
�� 
(
�� 

m_Material
�� 
==
�� 
null
�� "
)
��" #

m_Material
�� 
=
�� 
new
��  
Material
��! )
(
��) *
Shader
��* 0
.
��0 1
Find
��1 5
(
��5 6
$str
��6 _
)
��_ `
)
��` a
{
��b c
	hideFlags
��d m
=
��n o
	HideFlags
��p y
.
��y z
DontSave��z �
}��� �
;��� �

m_Material
�� 
.
�� 
	SetBuffer
��  
(
��  !
$str
��! ,
,
��, -
m_Buffer
��. 6
)
��6 7
;
��7 8

m_Material
�� 
.
�� 
	SetVector
��  
(
��  !
$str
��! (
,
��( )
new
��* -
Vector2
��. 5
(
��5 6
m_WaveformTexture
��6 G
.
��G H
width
��H M
,
��M N
m_WaveformTexture
��O `
.
��` a
height
��a g
)
��g h
)
��h i
;
��i j

m_Material
�� 
.
�� 
	SetVector
��  
(
��  !
$str
��! ,
,
��, -
channels
��. 6
)
��6 7
;
��7 8
}
�� 	
}
�� 
}�� �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\PostProcessingBehaviourEditor.cs
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
} �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\PostProcessingFactory.cs
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
DoCreatePostProcessingProfile	g �
>
� �
(
� �
)
� �
,
� �
$str
� �
,
� �
icon
� �
,
� �
null
� �
)
� �
;
� �
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
}## �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\PostProcessingInspector.cs
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
PostProcessingModel	 �
>
� �
(
� �
)
� �
;
� �
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
"PostProcessingModelEditorAttribute	//a �
)
//� �
,
//� �
false
//� �
)
//� �
[
//� �
$num
//� �
]
//� �
;
//� �
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
propertyPath	DDx �
)
DD� �
;
DD� �
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
�� 
foreach
�� 
(
�� 
var
�� 
monitor
�� $
in
��% '

m_Monitors
��( 2
)
��2 3
monitor
�� 
.
�� 
Dispose
�� #
(
��# $
)
��$ %
;
��% &

m_Monitors
�� 
.
�� 
Clear
��  
(
��  !
)
��! "
;
��" #
}
�� 
if
�� 
(
�� 
m_ConcreteTarget
��  
!=
��! #
null
��$ (
)
��( )
m_ConcreteTarget
��  
.
��  !
monitors
��! )
.
��) *"
onFrameEndEditorOnly
��* >
=
��? @
null
��A E
;
��E F
}
�� 	
void
�� 

OnFrameEnd
�� 
(
�� 
RenderTexture
�� %
source
��& ,
)
��, -
{
�� 	
if
�� 
(
�� 
!
�� (
IsInteractivePreviewOpened
�� +
)
��+ ,
return
�� 
;
�� 
if
�� 
(
��  
m_CurrentMonitorID
�� "
<
��# $

m_Monitors
��% /
.
��/ 0
Count
��0 5
)
��5 6

m_Monitors
�� 
[
��  
m_CurrentMonitorID
�� -
]
��- .
.
��. /
OnFrameData
��/ :
(
��: ;
source
��; A
)
��A B
;
��B C(
IsInteractivePreviewOpened
�� &
=
��' (
false
��) .
;
��. /
}
�� 	
public
�� 
override
�� 
void
�� 
OnInspectorGUI
�� +
(
��+ ,
)
��, -
{
�� 	
serializedObject
�� 
.
�� 
Update
�� #
(
��# $
)
��$ %
;
��% &
var
�� 
e
�� 
=
�� 
Event
�� 
.
�� 
current
�� !
;
��! "
if
�� 
(
�� 
e
�� 
.
�� 
type
�� 
==
�� 
	EventType
�� #
.
��# $
ValidateCommand
��$ 3
&&
��4 6
e
��7 8
.
��8 9
commandName
��9 D
==
��E G
$str
��H [
)
��[ \
{
�� 
foreach
�� 
(
�� 
var
�� 
editor
�� #
in
��$ &
m_CustomEditors
��' 6
)
��6 7
editor
�� 
.
�� 
Value
��  
.
��  !

OnValidate
��! +
(
��+ ,
)
��, -
;
��- .
}
�� 
if
�� 
(
�� 
!
�� 
m_ConcreteTarget
�� !
.
��! "

debugViews
��" ,
.
��, -
IsModeActive
��- 9
(
��9 :$
BuiltinDebugViewsModel
��: P
.
��P Q
Mode
��Q U
.
��U V
None
��V Z
)
��Z [
)
��[ \
EditorGUILayout
�� 
.
��  
HelpBox
��  '
(
��' (
$str
��( |
,
��| }
MessageType��~ �
.��� �
Info��� �
)��� �
;��� �
foreach
�� 
(
�� 
var
�� 
editor
�� 
in
��  "
m_CustomEditors
��# 2
)
��2 3
{
�� 
	EditorGUI
�� 
.
�� 
BeginChangeCheck
�� *
(
��* +
)
��+ ,
;
��, -
editor
�� 
.
�� 
Key
�� 
.
�� 
OnGUI
��  
(
��  !
)
��! "
;
��" #
if
�� 
(
�� 
	EditorGUI
�� 
.
�� 
EndChangeCheck
�� ,
(
��, -
)
��- .
)
��. /
editor
�� 
.
�� 
Value
��  
.
��  !

OnValidate
��! +
(
��+ ,
)
��, -
;
��- .
}
�� 
serializedObject
�� 
.
�� %
ApplyModifiedProperties
�� 4
(
��4 5
)
��5 6
;
��6 7
}
�� 	
public
�� 
override
�� 

GUIContent
�� "
GetPreviewTitle
��# 2
(
��2 3
)
��3 4
{
�� 	
return
�� 
s_PreviewTitle
�� !
;
��! "
}
�� 	
public
�� 
override
�� 
bool
�� 
HasPreviewGUI
�� *
(
��* +
)
��+ ,
{
�� 	
return
�� 
GraphicsUtils
��  
.
��  !
supportsDX11
��! -
&&
��. 0

m_Monitors
��1 ;
.
��; <
Count
��< A
>
��B C
$num
��D E
;
��E F
}
�� 	
public
�� 
override
�� 
void
�� 
OnPreviewSettings
�� .
(
��. /
)
��/ 0
{
�� 	
using
�� 
(
�� 
new
�� 
EditorGUILayout
�� &
.
��& '
HorizontalScope
��' 6
(
��6 7
)
��7 8
)
��8 9
{
�� 
if
�� 
(
��  
m_CurrentMonitorID
�� &
<
��' (

m_Monitors
��) 3
.
��3 4
Count
��4 9
)
��9 :

m_Monitors
�� 
[
��  
m_CurrentMonitorID
�� 1
]
��1 2
.
��2 3
OnMonitorSettings
��3 D
(
��D E
)
��E F
;
��F G
	GUILayout
�� 
.
�� 
Space
�� 
(
��  
$num
��  !
)
��! "
;
��" # 
m_CurrentMonitorID
�� "
=
��# $
EditorGUILayout
��% 4
.
��4 5
Popup
��5 :
(
��: ; 
m_CurrentMonitorID
��; M
,
��M N
m_MonitorNames
��O ]
,
��] ^
FxStyles
��_ g
.
��g h
preDropdown
��h s
,
��s t
	GUILayout
��u ~
.
��~ 
MaxWidth�� �
(��� �
$num��� �
)��� �
)��� �
;��� �
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� %
OnInteractivePreviewGUI
�� 4
(
��4 5
Rect
��5 9
r
��: ;
,
��; <
GUIStyle
��= E

background
��F P
)
��P Q
{
�� 	(
IsInteractivePreviewOpened
�� &
=
��' (
true
��) -
;
��- .
if
�� 
(
��  
m_CurrentMonitorID
�� "
<
��# $

m_Monitors
��% /
.
��/ 0
Count
��0 5
)
��5 6

m_Monitors
�� 
[
��  
m_CurrentMonitorID
�� -
]
��- .
.
��. /
OnMonitorGUI
��/ ;
(
��; <
r
��< =
)
��= >
;
��> ?
}
�� 	
}
�� 
}�� �/
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\PostProcessingModelEditor.cs
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
}OO �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\PostProcessingMonitor.cs
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
}"" �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\PropertyDrawers\GetSetDrawer.cs
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
}$$ �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\PropertyDrawers\MinDrawer.cs
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
} ��
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\PropertyDrawers\TrackballGroupDrawer.cs
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
;	"" �
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
RenderTextureReadWrite	RR} �
.
RR� �
Linear
RR� �
)
RR� �
;
RR� �

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
+	ee �
thumbPos
ee� �
.
ee� �
y
ee� �
-
ee� �

thumbSizeH
ee� �
.
ee� �
y
ee� �
,
ee� �
	thumbSize
ee� �
.
ee� �
x
ee� �
,
ee� �
	thumbSize
ee� �
.
ee� �
y
ee� �
)
ee� �
,
ee� �
false
ee� �
,
ee� �
false
ee� �
,
ee� �
false
ee� �
,
ee� �
false
ee� �
)
ee� �
;
ee� �
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
�� 
.
�� 
y
�� 
+=
�� 
position
�� &
.
��& '
height
��' -
;
��- .
position
�� 
.
�� 
width
�� 
=
��  
oldW
��! %
/
��& '
$num
��( *
;
��* +
using
�� 
(
�� 
new
�� 
	EditorGUI
�� $
.
��$ % 
DisabledGroupScope
��% 7
(
��7 8
true
��8 <
)
��< =
)
��= >
{
�� 
GUI
�� 
.
�� 
Label
�� 
(
�� 
position
�� &
,
��& '
data
��( ,
.
��, -
x
��- .
.
��. /
ToString
��/ 7
(
��7 8
$str
��8 <
)
��< =
,
��= >
EditorStyles
��? K
.
��K L#
centeredGreyMiniLabel
��L a
)
��a b
;
��b c
position
�� 
.
�� 
x
�� 
+=
�� !
position
��" *
.
��* +
width
��+ 0
;
��0 1
GUI
�� 
.
�� 
Label
�� 
(
�� 
position
�� &
,
��& '
data
��( ,
.
��, -
y
��- .
.
��. /
ToString
��/ 7
(
��7 8
$str
��8 <
)
��< =
,
��= >
EditorStyles
��? K
.
��K L#
centeredGreyMiniLabel
��L a
)
��a b
;
��b c
position
�� 
.
�� 
x
�� 
+=
�� !
position
��" *
.
��* +
width
��+ 0
;
��0 1
GUI
�� 
.
�� 
Label
�� 
(
�� 
position
�� &
,
��& '
data
��( ,
.
��, -
z
��- .
.
��. /
ToString
��/ 7
(
��7 8
$str
��8 <
)
��< =
,
��= >
EditorStyles
��? K
.
��K L#
centeredGreyMiniLabel
��L a
)
��a b
;
��b c
position
�� 
.
�� 
x
�� 
+=
�� !
position
��" *
.
��* +
width
��+ 0
;
��0 1
}
�� 
}
�� 
position
�� 
.
�� 
x
�� 
=
�� 
oldX
�� 
;
�� 
position
�� 
.
�� 
y
�� 
+=
�� 
position
�� "
.
��" #
height
��# )
;
��) *
position
�� 
.
�� 
width
�� 
=
�� 
oldW
�� !
;
��! "
GUI
�� 
.
�� 
Label
�� 
(
�� 
position
�� 
,
�� 
property
��  (
.
��( )
displayName
��) 4
,
��4 5
EditorStyles
��6 B
.
��B C#
centeredGreyMiniLabel
��C X
)
��X Y
;
��Y Z
if
�� 
(
�� 
m_ResetState
�� 
)
�� 
{
�� 
value
�� 
=
�� 
Color
�� 
.
�� 
clear
�� #
;
��# $
m_ResetState
�� 
=
�� 
false
�� $
;
��$ %
}
�� 
property
�� 
.
�� 

colorValue
�� 
=
��  !
value
��" '
;
��' (
}
�� 	
bool
��  
TryGetDisplayValue
�� 
(
��  
Color
��  %
color
��& +
,
��+ , 
SerializedProperty
��- ?
property
��@ H
,
��H I
out
��J M
Vector3
��N U
output
��V \
)
��\ ]
{
�� 	
output
�� 
=
�� 
Vector3
�� 
.
�� 
zero
�� !
;
��! "

MethodInfo
�� 
method
�� 
;
�� 
if
�� 
(
�� 
!
��  
m_TrackballMethods
�� #
.
��# $
TryGetValue
��$ /
(
��/ 0
property
��0 8
.
��8 9
name
��9 =
,
��= >
out
��? B
method
��C I
)
��I J
)
��J K
{
�� 
var
�� 
field
�� 
=
�� 
ReflectionUtils
�� +
.
��+ ,"
GetFieldInfoFromPath
��, @
(
��@ A
property
��A I
.
��I J
serializedObject
��J Z
.
��Z [
targetObject
��[ g
,
��g h
property
��i q
.
��q r
propertyPath
��r ~
)
��~ 
;�� �
if
�� 
(
�� 
!
�� 
field
�� 
.
�� 
	IsDefined
�� $
(
��$ %
typeof
��% +
(
��+ , 
TrackballAttribute
��, >
)
��> ?
,
��? @
false
��A F
)
��F G
)
��G H
return
�� 
false
��  
;
��  !
var
�� 
attr
�� 
=
�� 
(
��  
TrackballAttribute
�� .
)
��. /
field
��/ 4
.
��4 5!
GetCustomAttributes
��5 H
(
��H I
typeof
��I O
(
��O P 
TrackballAttribute
��P b
)
��b c
,
��c d
false
��e j
)
��j k
[
��k l
$num
��l m
]
��m n
;
��n o
const
�� 
BindingFlags
�� "
flags
��# (
=
��) *
BindingFlags
��+ 7
.
��7 8
Public
��8 >
|
��? @
BindingFlags
��A M
.
��M N
	NonPublic
��N W
|
��X Y
BindingFlags
��Z f
.
��f g
Instance
��g o
|
��p q
BindingFlags
��r ~
.
��~ 
Static�� �
;��� �
method
�� 
=
�� 
typeof
�� 
(
��  #
ColorGradingComponent
��  5
)
��5 6
.
��6 7
	GetMethod
��7 @
(
��@ A
attr
��A E
.
��E F
method
��F L
,
��L M
flags
��N S
)
��S T
;
��T U 
m_TrackballMethods
�� "
.
��" #
Add
��# &
(
��& '
property
��' /
.
��/ 0
name
��0 4
,
��4 5
method
��6 <
)
��< =
;
��= >
}
�� 
if
�� 
(
�� 
method
�� 
==
�� 
null
�� 
)
�� 
return
�� 
false
�� 
;
�� 
output
�� 
=
�� 
(
�� 
Vector3
�� 
)
�� 
method
�� $
.
��$ %
Invoke
��% +
(
��+ ,
property
��, 4
.
��4 5
serializedObject
��5 E
.
��E F
targetObject
��F R
,
��R S
new
��T W
object
��X ^
[
��^ _
]
��_ `
{
��a b
color
��c h
}
��i j
)
��j k
;
��k l
return
�� 
true
�� 
;
�� 
}
�� 	
static
�� 
readonly
�� 
int
�� 
k_ThumbHash
�� '
=
��( )
$str
��* ;
.
��; <
GetHashCode
��< G
(
��G H
)
��H I
;
��I J
Vector3
�� 
GetInput
�� 
(
�� 
Rect
�� 
bounds
�� $
,
��$ %
Vector3
��& -
hsv
��. 1
,
��1 2
float
��3 8
radius
��9 ?
)
��? @
{
�� 	
var
�� 
e
�� 
=
�� 
Event
�� 
.
�� 
current
�� !
;
��! "
var
�� 
id
�� 
=
�� 

GUIUtility
�� 
.
��  
GetControlID
��  ,
(
��, -
k_ThumbHash
��- 8
,
��8 9
	FocusType
��: C
.
��C D
Passive
��D K
,
��K L
bounds
��M S
)
��S T
;
��T U
var
�� 
mousePos
�� 
=
�� 
e
�� 
.
�� 
mousePosition
�� *
;
��* +
var
�� 
relativePos
�� 
=
�� 
mousePos
�� &
-
��' (
new
��) ,
Vector2
��- 4
(
��4 5
bounds
��5 ;
.
��; <
x
��< =
,
��= >
bounds
��? E
.
��E F
y
��F G
)
��G H
;
��H I
if
�� 
(
�� 
e
�� 
.
�� 
type
�� 
==
�� 
	EventType
�� #
.
��# $
	MouseDown
��$ -
&&
��. 0

GUIUtility
��1 ;
.
��; <

hotControl
��< F
==
��G I
$num
��J K
&&
��L N
bounds
��O U
.
��U V
Contains
��V ^
(
��^ _
mousePos
��_ g
)
��g h
)
��h i
{
�� 
if
�� 
(
�� 
e
�� 
.
�� 
button
�� 
==
�� 
$num
��  !
)
��! "
{
�� 
var
�� 
center
�� 
=
��  
new
��! $
Vector2
��% ,
(
��, -
bounds
��- 3
.
��3 4
x
��4 5
+
��6 7
radius
��8 >
,
��> ?
bounds
��@ F
.
��F G
y
��G H
+
��I J
radius
��K Q
)
��Q R
;
��R S
float
�� 
dist
�� 
=
��  
Vector2
��! (
.
��( )
Distance
��) 1
(
��1 2
center
��2 8
,
��8 9
mousePos
��: B
)
��B C
;
��C D
if
�� 
(
�� 
dist
�� 
<=
�� 
radius
��  &
)
��& '
{
�� 
e
�� 
.
�� 
Use
�� 
(
�� 
)
�� 
;
��  #
GetWheelHueSaturation
�� -
(
��- .
relativePos
��. 9
.
��9 :
x
��: ;
,
��; <
relativePos
��= H
.
��H I
y
��I J
,
��J K
radius
��L R
,
��R S
out
��T W
hsv
��X [
.
��[ \
x
��\ ]
,
��] ^
out
��_ b
hsv
��c f
.
��f g
y
��g h
)
��h i
;
��i j

GUIUtility
�� "
.
��" #

hotControl
��# -
=
��. /
id
��0 2
;
��2 3
GUI
�� 
.
�� 
changed
�� #
=
��$ %
true
��& *
;
��* +
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
e
�� 
.
�� 
button
�� !
==
��" $
$num
��% &
)
��& '
{
�� 
e
�� 
.
�� 
Use
�� 
(
�� 
)
�� 
;
�� 
GUI
�� 
.
�� 
changed
�� 
=
��  !
true
��" &
;
��& '
m_ResetState
��  
=
��! "
true
��# '
;
��' (
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
e
�� 
.
�� 
type
�� 
==
�� 
	EventType
�� (
.
��( )
	MouseDrag
��) 2
&&
��3 5
e
��6 7
.
��7 8
button
��8 >
==
��? A
$num
��B C
&&
��D F

GUIUtility
��G Q
.
��Q R

hotControl
��R \
==
��] _
id
��` b
)
��b c
{
�� 
e
�� 
.
�� 
Use
�� 
(
�� 
)
�� 
;
�� 
GUI
�� 
.
�� 
changed
�� 
=
�� 
true
�� "
;
��" ##
GetWheelHueSaturation
�� %
(
��% &
relativePos
��& 1
.
��1 2
x
��2 3
,
��3 4
relativePos
��5 @
.
��@ A
y
��A B
,
��B C
radius
��D J
,
��J K
out
��L O
hsv
��P S
.
��S T
x
��T U
,
��U V
out
��W Z
hsv
��[ ^
.
��^ _
y
��_ `
)
��` a
;
��a b
}
�� 
else
�� 
if
�� 
(
�� 
e
�� 
.
�� 
rawType
�� 
==
�� !
	EventType
��" +
.
��+ ,
MouseUp
��, 3
&&
��4 6
e
��7 8
.
��8 9
button
��9 ?
==
��@ B
$num
��C D
&&
��E G

GUIUtility
��H R
.
��R S

hotControl
��S ]
==
��^ `
id
��a c
)
��c d
{
�� 
e
�� 
.
�� 
Use
�� 
(
�� 
)
�� 
;
�� 

GUIUtility
�� 
.
�� 

hotControl
�� %
=
��& '
$num
��( )
;
��) *
}
�� 
return
�� 
hsv
�� 
;
�� 
}
�� 	
void
�� #
GetWheelHueSaturation
�� "
(
��" #
float
��# (
x
��) *
,
��* +
float
��, 1
y
��2 3
,
��3 4
float
��5 :
radius
��; A
,
��A B
out
��C F
float
��G L
hue
��M P
,
��P Q
out
��R U
float
��V [

saturation
��\ f
)
��f g
{
�� 	
float
�� 
dx
�� 
=
�� 
(
�� 
x
�� 
-
�� 
radius
�� "
)
��" #
/
��$ %
radius
��& ,
;
��, -
float
�� 
dy
�� 
=
�� 
(
�� 
y
�� 
-
�� 
radius
�� "
)
��" #
/
��$ %
radius
��& ,
;
��, -
float
�� 
d
�� 
=
�� 
Mathf
�� 
.
�� 
Sqrt
��  
(
��  !
dx
��! #
*
��$ %
dx
��& (
+
��) *
dy
��+ -
*
��. /
dy
��0 2
)
��2 3
;
��3 4
hue
�� 
=
�� 
Mathf
�� 
.
�� 
Atan2
�� 
(
�� 
dx
��  
,
��  !
-
��" #
dy
��# %
)
��% &
;
��& '
hue
�� 
=
�� 
$num
�� 
-
�� 
(
�� 
(
�� 
hue
�� 
>
�� 
$num
��  
)
��  !
?
��" #
hue
��$ '
:
��( )
(
��* +
Mathf
��+ 0
.
��0 1
PI
��1 3
*
��4 5
$num
��6 8
)
��8 9
+
��: ;
hue
��< ?
)
��? @
/
��A B
(
��C D
Mathf
��D I
.
��I J
PI
��J L
*
��M N
$num
��O Q
)
��Q R
;
��R S

saturation
�� 
=
�� 
Mathf
�� 
.
�� 
Clamp01
�� &
(
��& '
d
��' (
)
��( )
;
��) *
}
�� 	
public
�� 
override
�� 
float
�� 
GetPropertyHeight
�� /
(
��/ 0 
SerializedProperty
��0 B
property
��C K
,
��K L

GUIContent
��M W
label
��X ]
)
��] ^
{
�� 	
return
�� 
m_Size
�� 
+
�� 
$num
�� 
*
��  
$num
��! #
+
��$ %
EditorGUIUtility
��& 6
.
��6 7
singleLineHeight
��7 G
*
��H I
$num
��J L
;
��L M
}
�� 	
}
�� 
}�� Լ
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Utils\CurveEditor.cs
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
�� 
Settings
�� 
settings
��  
{
��! "
get
��# &
;
��& '
private
��( /
set
��0 3
;
��3 4
}
��5 6

Dictionary
�� 
<
��  
SerializedProperty
�� %
,
��% &

CurveState
��' 1
>
��1 2
m_Curves
��3 ;
;
��; <
Rect
�� 
m_CurveArea
�� 
;
��  
SerializedProperty
�� 
m_SelectedCurve
�� *
;
��* +
int
�� %
m_SelectedKeyframeIndex
�� #
=
��$ %
-
��& '
$num
��' (
;
��( )
EditMode
�� 

m_EditMode
�� 
=
�� 
EditMode
�� &
.
��& '
None
��' +
;
��+ ,
Tangent
�� 
m_TangentEditMode
�� !
;
��! "
bool
�� 
m_Dirty
�� 
;
�� 
public
�� 
CurveEditor
�� 
(
�� 
)
�� 
:
�� 
this
�� 
(
�� 
Settings
�� 
.
�� 
defaultSettings
�� +
)
��+ ,
{
�� 	
}
��	 

public
�� 
CurveEditor
�� 
(
�� 
Settings
�� #
settings
��$ ,
)
��, -
{
�� 	
this
�� 
.
�� 
settings
�� 
=
�� 
settings
�� $
;
��$ %
m_Curves
�� 
=
�� 
new
�� 

Dictionary
�� %
<
��% & 
SerializedProperty
��& 8
,
��8 9

CurveState
��: D
>
��D E
(
��E F
)
��F G
;
��G H
}
�� 	
public
�� 
void
�� 
Add
�� 
(
�� 
params
��  
SerializedProperty
�� 1
[
��1 2
]
��2 3
curves
��4 :
)
��: ;
{
�� 	
foreach
�� 
(
�� 
var
�� 
curve
�� 
in
�� !
curves
��" (
)
��( )
Add
�� 
(
�� 
curve
�� 
,
�� 

CurveState
�� %
.
��% &
defaultState
��& 2
)
��2 3
;
��3 4
}
�� 	
public
�� 
void
�� 
Add
�� 
(
��  
SerializedProperty
�� *
curve
��+ 0
)
��0 1
{
�� 	
Add
�� 
(
�� 
curve
�� 
,
�� 

CurveState
�� !
.
��! "
defaultState
��" .
)
��. /
;
��/ 0
}
�� 	
public
�� 
void
�� 
Add
�� 
(
��  
SerializedProperty
�� *
curve
��+ 0
,
��0 1

CurveState
��2 <
state
��= B
)
��B C
{
�� 	
var
�� 
	animCurve
�� 
=
�� 
curve
�� !
.
��! "!
animationCurveValue
��" 5
;
��5 6
if
�� 
(
�� 
	animCurve
�� 
==
�� 
null
�� !
)
��! "
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, 3
)
��3 4
;
��4 5
if
�� 
(
�� 
m_Curves
�� 
.
�� 
ContainsKey
�� $
(
��$ %
curve
��% *
)
��* +
)
��+ ,
Debug
�� 
.
�� 

LogWarning
��  
(
��  !
$str
��! M
)
��M N
;
��N O
m_Curves
�� 
.
�� 
Add
�� 
(
�� 
curve
�� 
,
�� 
state
��  %
)
��% &
;
��& '
}
�� 	
public
�� 
void
�� 
Remove
�� 
(
��  
SerializedProperty
�� -
curve
��. 3
)
��3 4
{
�� 	
m_Curves
�� 
.
�� 
Remove
�� 
(
�� 
curve
�� !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� 
	RemoveAll
�� 
(
�� 
)
�� 
{
�� 	
m_Curves
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 

CurveState
�� 
GetCurveState
�� '
(
��' ( 
SerializedProperty
��( :
curve
��; @
)
��@ A
{
�� 	

CurveState
�� 
state
�� 
;
�� 
if
�� 
(
�� 
!
�� 
m_Curves
�� 
.
�� 
TryGetValue
�� %
(
��% &
curve
��& +
,
��+ ,
out
��- 0
state
��1 6
)
��6 7
)
��7 8
throw
�� 
new
�� "
KeyNotFoundException
�� .
(
��. /
$str
��/ 6
)
��6 7
;
��7 8
return
�� 
state
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
SetCurveState
�� !
(
��! " 
SerializedProperty
��" 4
curve
��5 :
,
��: ;

CurveState
��< F
state
��G L
)
��L M
{
�� 	
if
�� 
(
�� 
!
�� 
m_Curves
�� 
.
�� 
ContainsKey
�� %
(
��% &
curve
��& +
)
��+ ,
)
��, -
throw
�� 
new
�� "
KeyNotFoundException
�� .
(
��. /
$str
��/ 6
)
��6 7
;
��7 8
m_Curves
�� 
[
�� 
curve
�� 
]
�� 
=
�� 
state
�� #
;
��# $
}
�� 	
public
�� 
	Selection
�� 
GetSelection
�� %
(
��% &
)
��& '
{
�� 	
Keyframe
�� 
?
�� 
key
�� 
=
�� 
null
��  
;
��  !
if
�� 
(
�� %
m_SelectedKeyframeIndex
�� '
>
��( )
-
��* +
$num
��+ ,
)
��, -
{
�� 
var
�� 
curve
�� 
=
�� 
m_SelectedCurve
�� +
.
��+ ,!
animationCurveValue
��, ?
;
��? @
if
�� 
(
�� %
m_SelectedKeyframeIndex
�� +
>=
��, .
curve
��/ 4
.
��4 5
length
��5 ;
)
��; <%
m_SelectedKeyframeIndex
�� +
=
��, -
-
��. /
$num
��/ 0
;
��0 1
else
�� 
key
�� 
=
�� 
curve
�� 
[
��  %
m_SelectedKeyframeIndex
��  7
]
��7 8
;
��8 9
}
�� 
return
�� 
new
�� 
	Selection
��  
(
��  !
m_SelectedCurve
��! 0
,
��0 1%
m_SelectedKeyframeIndex
��2 I
,
��I J
key
��K N
)
��N O
;
��O P
}
�� 	
public
�� 
void
�� 
SetKeyframe
�� 
(
��   
SerializedProperty
��  2
curve
��3 8
,
��8 9
int
��: =
keyframeIndex
��> K
,
��K L
Keyframe
��M U
keyframe
��V ^
)
��^ _
{
�� 	
var
�� 
	animCurve
�� 
=
�� 
curve
�� !
.
��! "!
animationCurveValue
��" 5
;
��5 6
SetKeyframe
�� 
(
�� 
	animCurve
�� !
,
��! "
keyframeIndex
��# 0
,
��0 1
keyframe
��2 :
)
��: ;
;
��; <
	SaveCurve
�� 
(
�� 
curve
�� 
,
�� 
	animCurve
�� &
)
��& '
;
��' (
}
�� 	
public
�� 
bool
�� 
OnGUI
�� 
(
�� 
Rect
�� 
rect
�� #
)
��# $
{
�� 	
if
�� 
(
�� 
Event
�� 
.
�� 
current
�� 
.
�� 
type
�� "
==
��# %
	EventType
��& /
.
��/ 0
Repaint
��0 7
)
��7 8
m_Dirty
�� 
=
�� 
false
�� 
;
��  
GUI
�� 
.
�� 
	BeginClip
�� 
(
�� 
rect
�� 
)
�� 
;
��  
{
�� 
var
�� 
area
�� 
=
�� 
new
�� 
Rect
�� #
(
��# $
Vector2
��$ +
.
��+ ,
zero
��, 0
,
��0 1
rect
��2 6
.
��6 7
size
��7 ;
)
��; <
;
��< =
m_CurveArea
�� 
=
�� 
settings
�� &
.
��& '
padding
��' .
.
��. /
Remove
��/ 5
(
��5 6
area
��6 :
)
��: ;
;
��; <
foreach
�� 
(
�� 
var
�� 
curve
�� "
in
��# %
m_Curves
��& .
)
��. /

OnCurveGUI
�� 
(
�� 
area
�� #
,
��# $
curve
��% *
.
��* +
Key
��+ .
,
��. /
curve
��0 5
.
��5 6
Value
��6 ;
)
��; <
;
��< =
OnGeneralUI
�� 
(
�� 
area
��  
)
��  !
;
��! "
}
�� 
GUI
�� 
.
�� 
EndClip
�� 
(
�� 
)
�� 
;
�� 
return
�� 
m_Dirty
�� 
;
�� 
}
�� 	
void
�� 

OnCurveGUI
�� 
(
�� 
Rect
�� 
rect
�� !
,
��! " 
SerializedProperty
��# 5
curve
��6 ;
,
��; <

CurveState
��= G
state
��H M
)
��M N
{
�� 	
if
�� 
(
�� 
!
�� 
state
�� 
.
�� 
visible
�� 
)
�� 
return
�� 
;
�� 
var
�� 
	animCurve
�� 
=
�� 
curve
�� !
.
��! "!
animationCurveValue
��" 5
;
��5 6
var
�� 
keys
�� 
=
�� 
	animCurve
��  
.
��  !
keys
��! %
;
��% &
var
�� 
length
�� 
=
�� 
keys
�� 
.
�� 
Length
�� $
;
��$ %
var
�� 
color
�� 
=
�� 
state
�� 
.
�� 
color
�� #
;
��# $
if
�� 
(
�� 
!
�� 
state
�� 
.
�� 
editable
�� 
)
��  
color
�� 
.
�� 
a
�� 
*=
�� 
$num
�� 
;
��  
Handles
�� 
.
�� 
color
�� 
=
�� 
color
�� !
;
��! "
var
�� 
bounds
�� 
=
�� 
settings
�� !
.
��! "
bounds
��" (
;
��( )
if
�� 
(
�� 
length
�� 
==
�� 
$num
�� 
)
�� 
{
�� 
var
�� 
p1
�� 
=
�� 
CurveToCanvas
�� &
(
��& '
new
��' *
Vector3
��+ 2
(
��2 3
bounds
��3 9
.
��9 :
xMin
��: >
,
��> ?
state
��@ E
.
��E F"
zeroKeyConstantValue
��F Z
)
��Z [
)
��[ \
;
��\ ]
var
�� 
p2
�� 
=
�� 
CurveToCanvas
�� &
(
��& '
new
��' *
Vector3
��+ 2
(
��2 3
bounds
��3 9
.
��9 :
xMax
��: >
,
��> ?
state
��@ E
.
��E F"
zeroKeyConstantValue
��F Z
)
��Z [
)
��[ \
;
��\ ]
Handles
�� 
.
�� 
DrawAAPolyLine
�� &
(
��& '
state
��' ,
.
��, -
width
��- 2
,
��2 3
p1
��4 6
,
��6 7
p2
��8 :
)
��: ;
;
��; <
}
�� 
else
�� 
if
�� 
(
�� 
length
�� 
==
�� 
$num
��  
)
��  !
{
�� 
var
�� 
p1
�� 
=
�� 
CurveToCanvas
�� &
(
��& '
new
��' *
Vector3
��+ 2
(
��2 3
bounds
��3 9
.
��9 :
xMin
��: >
,
��> ?
keys
��@ D
[
��D E
$num
��E F
]
��F G
.
��G H
value
��H M
)
��M N
)
��N O
;
��O P
var
�� 
p2
�� 
=
�� 
CurveToCanvas
�� &
(
��& '
new
��' *
Vector3
��+ 2
(
��2 3
bounds
��3 9
.
��9 :
xMax
��: >
,
��> ?
keys
��@ D
[
��D E
$num
��E F
]
��F G
.
��G H
value
��H M
)
��M N
)
��N O
;
��O P
Handles
�� 
.
�� 
DrawAAPolyLine
�� &
(
��& '
state
��' ,
.
��, -
width
��- 2
,
��2 3
p1
��4 6
,
��6 7
p2
��8 :
)
��: ;
;
��; <
}
�� 
else
�� 
{
�� 
var
�� 
prevKey
�� 
=
�� 
keys
�� "
[
��" #
$num
��# $
]
��$ %
;
��% &
for
�� 
(
�� 
int
�� 
k
�� 
=
�� 
$num
�� 
;
�� 
k
��  !
<
��" #
length
��$ *
;
��* +
k
��, -
++
��- /
)
��/ 0
{
�� 
var
�� 
key
�� 
=
�� 
keys
�� "
[
��" #
k
��# $
]
��$ %
;
��% &
var
�� 
pts
�� 
=
�� 
BezierSegment
�� +
(
��+ ,
prevKey
��, 3
,
��3 4
key
��5 8
)
��8 9
;
��9 :
if
�� 
(
�� 
float
�� 
.
�� 

IsInfinity
�� (
(
��( )
prevKey
��) 0
.
��0 1

outTangent
��1 ;
)
��; <
||
��= ?
float
��@ E
.
��E F

IsInfinity
��F P
(
��P Q
key
��Q T
.
��T U
	inTangent
��U ^
)
��^ _
)
��_ `
{
�� 
var
�� 
s
�� 
=
�� 
HardSegment
��  +
(
��+ ,
prevKey
��, 3
,
��3 4
key
��5 8
)
��8 9
;
��9 :
Handles
�� 
.
��  
DrawAAPolyLine
��  .
(
��. /
state
��/ 4
.
��4 5
width
��5 :
,
��: ;
s
��< =
[
��= >
$num
��> ?
]
��? @
,
��@ A
s
��B C
[
��C D
$num
��D E
]
��E F
,
��F G
s
��H I
[
��I J
$num
��J K
]
��K L
)
��L M
;
��M N
}
�� 
else
�� 
Handles
��  
.
��  !

DrawBezier
��! +
(
��+ ,
pts
��, /
[
��/ 0
$num
��0 1
]
��1 2
,
��2 3
pts
��4 7
[
��7 8
$num
��8 9
]
��9 :
,
��: ;
pts
��< ?
[
��? @
$num
��@ A
]
��A B
,
��B C
pts
��D G
[
��G H
$num
��H I
]
��I J
,
��J K
color
��L Q
,
��Q R
null
��S W
,
��W X
state
��Y ^
.
��^ _
width
��_ d
)
��d e
;
��e f
prevKey
�� 
=
�� 
key
�� !
;
��! "
}
�� 
if
�� 
(
�� 
keys
�� 
[
�� 
$num
�� 
]
�� 
.
�� 
time
��  
>
��! "
bounds
��# )
.
��) *
xMin
��* .
)
��. /
{
�� 
if
�� 
(
�� 
state
�� 
.
�� 
loopInBounds
�� *
)
��* +
{
�� 
var
�� 
p1
�� 
=
��  
keys
��! %
[
��% &
length
��& ,
-
��- .
$num
��/ 0
]
��0 1
;
��1 2
p1
�� 
.
�� 
time
�� 
-=
��  "
settings
��# +
.
��+ ,
bounds
��, 2
.
��2 3
width
��3 8
;
��8 9
var
�� 
p2
�� 
=
��  
keys
��! %
[
��% &
$num
��& '
]
��' (
;
��( )
var
�� 
pts
�� 
=
��  !
BezierSegment
��" /
(
��/ 0
p1
��0 2
,
��2 3
p2
��4 6
)
��6 7
;
��7 8
if
�� 
(
�� 
float
�� !
.
��! "

IsInfinity
��" ,
(
��, -
p1
��- /
.
��/ 0

outTangent
��0 :
)
��: ;
||
��< >
float
��? D
.
��D E

IsInfinity
��E O
(
��O P
p2
��P R
.
��R S
	inTangent
��S \
)
��\ ]
)
��] ^
{
�� 
var
�� 
s
��  !
=
��" #
HardSegment
��$ /
(
��/ 0
p1
��0 2
,
��2 3
p2
��4 6
)
��6 7
;
��7 8
Handles
�� #
.
��# $
DrawAAPolyLine
��$ 2
(
��2 3
state
��3 8
.
��8 9
width
��9 >
,
��> ?
s
��@ A
[
��A B
$num
��B C
]
��C D
,
��D E
s
��F G
[
��G H
$num
��H I
]
��I J
,
��J K
s
��L M
[
��M N
$num
��N O
]
��O P
)
��P Q
;
��Q R
}
�� 
else
�� 
Handles
�� $
.
��$ %

DrawBezier
��% /
(
��/ 0
pts
��0 3
[
��3 4
$num
��4 5
]
��5 6
,
��6 7
pts
��8 ;
[
��; <
$num
��< =
]
��= >
,
��> ?
pts
��@ C
[
��C D
$num
��D E
]
��E F
,
��F G
pts
��H K
[
��K L
$num
��L M
]
��M N
,
��N O
color
��P U
,
��U V
null
��W [
,
��[ \
state
��] b
.
��b c
width
��c h
)
��h i
;
��i j
}
�� 
else
�� 
{
�� 
var
�� 
p1
�� 
=
��  
CurveToCanvas
��! .
(
��. /
new
��/ 2
Vector3
��3 :
(
��: ;
bounds
��; A
.
��A B
xMin
��B F
,
��F G
keys
��H L
[
��L M
$num
��M N
]
��N O
.
��O P
value
��P U
)
��U V
)
��V W
;
��W X
var
�� 
p2
�� 
=
��  
CurveToCanvas
��! .
(
��. /
keys
��/ 3
[
��3 4
$num
��4 5
]
��5 6
)
��6 7
;
��7 8
Handles
�� 
.
��  
DrawAAPolyLine
��  .
(
��. /
state
��/ 4
.
��4 5
width
��5 :
,
��: ;
p1
��< >
,
��> ?
p2
��@ B
)
��B C
;
��C D
}
�� 
}
�� 
if
�� 
(
�� 
keys
�� 
[
�� 
length
�� 
-
��  !
$num
��" #
]
��# $
.
��$ %
time
��% )
<
��* +
bounds
��, 2
.
��2 3
xMax
��3 7
)
��7 8
{
�� 
if
�� 
(
�� 
state
�� 
.
�� 
loopInBounds
�� *
)
��* +
{
�� 
var
�� 
p1
�� 
=
��  
keys
��! %
[
��% &
length
��& ,
-
��- .
$num
��/ 0
]
��0 1
;
��1 2
var
�� 
p2
�� 
=
��  
keys
��! %
[
��% &
$num
��& '
]
��' (
;
��( )
p2
�� 
.
�� 
time
�� 
+=
��  "
settings
��# +
.
��+ ,
bounds
��, 2
.
��2 3
width
��3 8
;
��8 9
var
�� 
pts
�� 
=
��  !
BezierSegment
��" /
(
��/ 0
p1
��0 2
,
��2 3
p2
��4 6
)
��6 7
;
��7 8
if
�� 
(
�� 
float
�� !
.
��! "

IsInfinity
��" ,
(
��, -
p1
��- /
.
��/ 0

outTangent
��0 :
)
��: ;
||
��< >
float
��? D
.
��D E

IsInfinity
��E O
(
��O P
p2
��P R
.
��R S
	inTangent
��S \
)
��\ ]
)
��] ^
{
�� 
var
�� 
s
��  !
=
��" #
HardSegment
��$ /
(
��/ 0
p1
��0 2
,
��2 3
p2
��4 6
)
��6 7
;
��7 8
Handles
�� #
.
��# $
DrawAAPolyLine
��$ 2
(
��2 3
state
��3 8
.
��8 9
width
��9 >
,
��> ?
s
��@ A
[
��A B
$num
��B C
]
��C D
,
��D E
s
��F G
[
��G H
$num
��H I
]
��I J
,
��J K
s
��L M
[
��M N
$num
��N O
]
��O P
)
��P Q
;
��Q R
}
�� 
else
�� 
Handles
�� $
.
��$ %

DrawBezier
��% /
(
��/ 0
pts
��0 3
[
��3 4
$num
��4 5
]
��5 6
,
��6 7
pts
��8 ;
[
��; <
$num
��< =
]
��= >
,
��> ?
pts
��@ C
[
��C D
$num
��D E
]
��E F
,
��F G
pts
��H K
[
��K L
$num
��L M
]
��M N
,
��N O
color
��P U
,
��U V
null
��W [
,
��[ \
state
��] b
.
��b c
width
��c h
)
��h i
;
��i j
}
�� 
else
�� 
{
�� 
var
�� 
p1
�� 
=
��  
CurveToCanvas
��! .
(
��. /
keys
��/ 3
[
��3 4
length
��4 :
-
��; <
$num
��= >
]
��> ?
)
��? @
;
��@ A
var
�� 
p2
�� 
=
��  
CurveToCanvas
��! .
(
��. /
new
��/ 2
Vector3
��3 :
(
��: ;
bounds
��; A
.
��A B
xMax
��B F
,
��F G
keys
��H L
[
��L M
length
��M S
-
��T U
$num
��V W
]
��W X
.
��X Y
value
��Y ^
)
��^ _
)
��_ `
;
��` a
Handles
�� 
.
��  
DrawAAPolyLine
��  .
(
��. /
state
��/ 4
.
��4 5
width
��5 :
,
��: ;
p1
��< >
,
��> ?
p2
��@ B
)
��B C
;
��C D
}
�� 
}
�� 
}
�� 
bool
�� &
isCurrentlySelectedCurve
�� )
=
��* +
curve
��, 1
==
��2 4
m_SelectedCurve
��5 D
;
��D E
if
�� 
(
�� &
isCurrentlySelectedCurve
�� (
&&
��) +%
m_SelectedKeyframeIndex
��, C
>=
��D F
length
��G M
)
��M N%
m_SelectedKeyframeIndex
�� '
=
��( )
-
��* +
$num
��+ ,
;
��, -
for
�� 
(
�� 
int
�� 
k
�� 
=
�� 
$num
�� 
;
�� 
k
�� 
<
�� 
length
��  &
;
��& '
k
��( )
++
��) +
)
��+ ,
{
�� 
bool
�� )
isCurrentlySelectedKeyframe
�� 0
=
��1 2
k
��3 4
==
��5 7%
m_SelectedKeyframeIndex
��8 O
;
��O P
var
�� 
e
�� 
=
�� 
Event
�� 
.
�� 
current
�� %
;
��% &
var
�� 
pos
�� 
=
�� 
CurveToCanvas
�� '
(
��' (
keys
��( ,
[
��, -
k
��- .
]
��. /
)
��/ 0
;
��0 1
var
�� 
hitRect
�� 
=
�� 
new
�� !
Rect
��" &
(
��& '
pos
��' *
.
��* +
x
��+ ,
-
��- .
$num
��/ 1
,
��1 2
pos
��3 6
.
��6 7
y
��7 8
-
��9 :
$num
��; =
,
��= >
$num
��? B
,
��B C
$num
��D G
)
��G H
;
��H I
var
�� 
offset
�� 
=
�� &
isCurrentlySelectedCurve
�� 5
?
�� 
new
�� 

RectOffset
�� $
(
��$ %
$num
��% &
,
��& '
$num
��( )
,
��) *
$num
��+ ,
,
��, -
$num
��. /
)
��/ 0
:
�� 
new
�� 

RectOffset
�� $
(
��$ %
$num
��% &
,
��& '
$num
��( )
,
��) *
$num
��+ ,
,
��, -
$num
��. /
)
��/ 0
;
��0 1
var
�� 

outTangent
�� 
=
��  
pos
��! $
+
��% &"
CurveTangentToCanvas
��' ;
(
��; <
keys
��< @
[
��@ A
k
��A B
]
��B C
.
��C D

outTangent
��D N
)
��N O
.
��O P

normalized
��P Z
*
��[ \
$num
��] `
;
��` a
var
�� 
	inTangent
�� 
=
�� 
pos
��  #
-
��$ %"
CurveTangentToCanvas
��& :
(
��: ;
keys
��; ?
[
��? @
k
��@ A
]
��A B
.
��B C
	inTangent
��C L
)
��L M
.
��M N

normalized
��N X
*
��Y Z
$num
��[ ^
;
��^ _
var
�� 
inTangentHitRect
�� $
=
��% &
new
��' *
Rect
��+ /
(
��/ 0
	inTangent
��0 9
.
��9 :
x
��: ;
-
��< =
$num
��> @
,
��@ A
	inTangent
��B K
.
��K L
y
��L M
-
��N O
$num
��P R
,
��R S
$num
��T W
,
��W X
$num
��Y \
)
��\ ]
;
��] ^
var
�� 
outTangentHitrect
�� %
=
��& '
new
��( +
Rect
��, 0
(
��0 1

outTangent
��1 ;
.
��; <
x
��< =
-
��> ?
$num
��@ B
,
��B C

outTangent
��D N
.
��N O
y
��O P
-
��Q R
$num
��S U
,
��U V
$num
��W Z
,
��Z [
$num
��\ _
)
��_ `
;
��` a
if
�� 
(
�� 
state
�� 
.
�� $
showNonEditableHandles
�� 0
)
��0 1
{
�� 
if
�� 
(
�� 
e
�� 
.
�� 
type
�� 
==
�� !
	EventType
��" +
.
��+ ,
Repaint
��, 3
)
��3 4
{
�� 
var
�� 
selectedColor
�� )
=
��* +
(
��, -&
isCurrentlySelectedCurve
��- E
&&
��F H)
isCurrentlySelectedKeyframe
��I d
)
��d e
?
�� 
settings
�� &
.
��& '
selectionColor
��' 5
:
�� 
state
�� #
.
��# $
color
��$ )
;
��) *
	EditorGUI
�� !
.
��! "
DrawRect
��" *
(
��* +
offset
��+ 1
.
��1 2
Remove
��2 8
(
��8 9
hitRect
��9 @
)
��@ A
,
��A B
selectedColor
��C P
)
��P Q
;
��Q R
if
�� 
(
�� &
isCurrentlySelectedCurve
�� 4
&&
��5 7
(
��8 9
!
��9 :
state
��: ?
.
��? @(
onlyShowHandlesOnSelection
��@ Z
||
��[ ]
(
��^ _
state
��_ d
.
��d e(
onlyShowHandlesOnSelection
��e 
&&��� �+
isCurrentlySelectedKeyframe��� �
)��� �
)��� �
)��� �
{
�� 
Handles
�� #
.
��# $
color
��$ )
=
��* +
selectedColor
��, 9
;
��9 :
if
�� 
(
��  
k
��  !
>
��" #
$num
��$ %
||
��& (
state
��) .
.
��. /
loopInBounds
��/ ;
)
��; <
{
�� 
Handles
��  '
.
��' (
DrawAAPolyLine
��( 6
(
��6 7
state
��7 <
.
��< =
handleWidth
��= H
,
��H I
pos
��J M
,
��M N
	inTangent
��O X
)
��X Y
;
��Y Z
	EditorGUI
��  )
.
��) *
DrawRect
��* 2
(
��2 3
offset
��3 9
.
��9 :
Remove
��: @
(
��@ A
inTangentHitRect
��A Q
)
��Q R
,
��R S
selectedColor
��T a
)
��a b
;
��b c
}
�� 
if
�� 
(
��  
k
��  !
<
��" #
length
��$ *
-
��+ ,
$num
��- .
||
��/ 1
state
��2 7
.
��7 8
loopInBounds
��8 D
)
��D E
{
�� 
Handles
��  '
.
��' (
DrawAAPolyLine
��( 6
(
��6 7
state
��7 <
.
��< =
handleWidth
��= H
,
��H I
pos
��J M
,
��M N

outTangent
��O Y
)
��Y Z
;
��Z [
	EditorGUI
��  )
.
��) *
DrawRect
��* 2
(
��2 3
offset
��3 9
.
��9 :
Remove
��: @
(
��@ A
outTangentHitrect
��A R
)
��R S
,
��S T
selectedColor
��U b
)
��b c
;
��c d
}
�� 
}
�� 
}
�� 
}
�� 
if
�� 
(
�� 
state
�� 
.
�� 
editable
�� "
)
��" #
{
�� 
if
�� 
(
�� 

m_EditMode
�� "
==
��# %
EditMode
��& .
.
��. /
Moving
��/ 5
&&
��6 8
e
��9 :
.
��: ;
type
��; ?
==
��@ B
	EventType
��C L
.
��L M
	MouseDrag
��M V
&&
��W Y&
isCurrentlySelectedCurve
��Z r
&&
��s u*
isCurrentlySelectedKeyframe��v �
)��� �
{
�� 
EditMoveKeyframe
�� (
(
��( )
	animCurve
��) 2
,
��2 3
keys
��4 8
,
��8 9
k
��: ;
)
��; <
;
��< =
}
�� 
if
�� 
(
�� 

m_EditMode
�� "
==
��# %
EditMode
��& .
.
��. /
TangentEdit
��/ :
&&
��; =
e
��> ?
.
��? @
type
��@ D
==
��E G
	EventType
��H Q
.
��Q R
	MouseDrag
��R [
&&
��\ ^&
isCurrentlySelectedCurve
��_ w
&&
��x z*
isCurrentlySelectedKeyframe��{ �
)��� �
{
�� 
bool
�� 
alreadyBroken
�� *
=
��+ ,
!
��- .
(
��. /
Mathf
��/ 4
.
��4 5
Approximately
��5 B
(
��B C
keys
��C G
[
��G H
k
��H I
]
��I J
.
��J K
	inTangent
��K T
,
��T U
keys
��V Z
[
��Z [
k
��[ \
]
��\ ]
.
��] ^

outTangent
��^ h
)
��h i
||
��j l
(
��m n
float
��n s
.
��s t

IsInfinity
��t ~
(
��~ 
keys�� �
[��� �
k��� �
]��� �
.��� �
	inTangent��� �
)��� �
&&��� �
float��� �
.��� �

IsInfinity��� �
(��� �
keys��� �
[��� �
k��� �
]��� �
.��� �

outTangent��� �
)��� �
)��� �
)��� �
;��� �
EditMoveTangent
�� '
(
��' (
	animCurve
��( 1
,
��1 2
keys
��3 7
,
��7 8
k
��9 :
,
��: ;
m_TangentEditMode
��< M
,
��M N
e
��O P
.
��P Q
shift
��Q V
||
��W Y
!
��Z [
(
��[ \
alreadyBroken
��\ i
||
��j l
e
��m n
.
��n o
control
��o v
)
��v w
)
��w x
;
��x y
}
�� 
if
�� 
(
�� 
e
�� 
.
�� 
type
�� 
==
�� !
	EventType
��" +
.
��+ ,
	MouseDown
��, 5
&&
��6 8
rect
��9 =
.
��= >
Contains
��> F
(
��F G
e
��G H
.
��H I
mousePosition
��I V
)
��V W
)
��W X
{
�� 
if
�� 
(
�� 
hitRect
�� #
.
��# $
Contains
��$ ,
(
��, -
e
��- .
.
��. /
mousePosition
��/ <
)
��< =
)
��= >
{
�� 
if
�� 
(
��  
e
��  !
.
��! "
button
��" (
==
��) +
$num
��, -
)
��- .
{
�� 
SelectKeyframe
��  .
(
��. /
curve
��/ 4
,
��4 5
k
��6 7
)
��7 8
;
��8 9

m_EditMode
��  *
=
��+ ,
EditMode
��- 5
.
��5 6
Moving
��6 <
;
��< =
e
��  !
.
��! "
Use
��" %
(
��% &
)
��& '
;
��' (
}
�� 
else
��  
if
��! #
(
��$ %
e
��% &
.
��& '
button
��' -
==
��. 0
$num
��1 2
)
��2 3
{
�� 
var
��  #
menu
��$ (
=
��) *
new
��+ .
GenericMenu
��/ :
(
��: ;
)
��; <
;
��< =
menu
��  $
.
��$ %
AddItem
��% ,
(
��, -
new
��- 0

GUIContent
��1 ;
(
��; <
$str
��< H
)
��H I
,
��I J
false
��K P
,
��P Q
(
��R S
x
��S T
)
��T U
=>
��V X
{
��  !
var
��$ '
action
��( .
=
��/ 0
(
��1 2

MenuAction
��2 <
)
��< =
x
��= >
;
��> ?
var
��$ '

curveValue
��( 2
=
��3 4
action
��5 ;
.
��; <
curve
��< A
.
��A B!
animationCurveValue
��B U
;
��U V
action
��$ *
.
��* +
curve
��+ 0
.
��0 1
serializedObject
��1 A
.
��A B
Update
��B H
(
��H I
)
��I J
;
��J K
RemoveKeyframe
��$ 2
(
��2 3

curveValue
��3 =
,
��= >
action
��? E
.
��E F
index
��F K
)
��K L
;
��L M%
m_SelectedKeyframeIndex
��$ ;
=
��< =
-
��> ?
$num
��? @
;
��@ A
	SaveCurve
��$ -
(
��- .
action
��. 4
.
��4 5
curve
��5 :
,
��: ;

curveValue
��< F
)
��F G
;
��G H
action
��$ *
.
��* +
curve
��+ 0
.
��0 1
serializedObject
��1 A
.
��A B%
ApplyModifiedProperties
��B Y
(
��Y Z
)
��Z [
;
��[ \
}
��  !
,
��! "
new
��# &

MenuAction
��' 1
(
��1 2
curve
��2 7
,
��7 8
k
��9 :
)
��: ;
)
��; <
;
��< =
menu
��  $
.
��$ %
ShowAsContext
��% 2
(
��2 3
)
��3 4
;
��4 5
e
��  !
.
��! "
Use
��" %
(
��% &
)
��& '
;
��' (
}
�� 
}
�� 
}
�� 
if
�� 
(
�� 
e
�� 
.
�� 
type
�� 
==
�� !
	EventType
��" +
.
��+ ,
	MouseDown
��, 5
&&
��6 8
rect
��9 =
.
��= >
Contains
��> F
(
��F G
e
��G H
.
��H I
mousePosition
��I V
)
��V W
)
��W X
{
�� 
if
�� 
(
�� 
inTangentHitRect
�� ,
.
��, -
Contains
��- 5
(
��5 6
e
��6 7
.
��7 8
mousePosition
��8 E
)
��E F
&&
��G I
(
��J K
k
��K L
>
��M N
$num
��O P
||
��Q S
state
��T Y
.
��Y Z
loopInBounds
��Z f
)
��f g
)
��g h
{
�� 
SelectKeyframe
�� *
(
��* +
curve
��+ 0
,
��0 1
k
��2 3
)
��3 4
;
��4 5

m_EditMode
�� &
=
��' (
EditMode
��) 1
.
��1 2
TangentEdit
��2 =
;
��= >
m_TangentEditMode
�� -
=
��. /
Tangent
��0 7
.
��7 8
In
��8 :
;
��: ;
e
�� 
.
�� 
Use
�� !
(
��! "
)
��" #
;
��# $
}
�� 
else
�� 
if
�� 
(
��  !
outTangentHitrect
��! 2
.
��2 3
Contains
��3 ;
(
��; <
e
��< =
.
��= >
mousePosition
��> K
)
��K L
&&
��M O
(
��P Q
k
��Q R
<
��S T
length
��U [
-
��\ ]
$num
��^ _
||
��` b
state
��c h
.
��h i
loopInBounds
��i u
)
��u v
)
��v w
{
�� 
SelectKeyframe
�� *
(
��* +
curve
��+ 0
,
��0 1
k
��2 3
)
��3 4
;
��4 5

m_EditMode
�� &
=
��' (
EditMode
��) 1
.
��1 2
TangentEdit
��2 =
;
��= >
m_TangentEditMode
�� -
=
��. /
Tangent
��0 7
.
��7 8
Out
��8 ;
;
��; <
e
�� 
.
�� 
Use
�� !
(
��! "
)
��" #
;
��# $
}
�� 
}
�� 
if
�� 
(
�� 
e
�� 
.
�� 
rawType
�� !
==
��" $
	EventType
��% .
.
��. /
MouseUp
��/ 6
&&
��7 9

m_EditMode
��: D
!=
��E G
EditMode
��H P
.
��P Q
None
��Q U
)
��U V
{
�� 

m_EditMode
�� "
=
��# $
EditMode
��% -
.
��- .
None
��. 2
;
��2 3
}
�� 
{
�� 
EditorGUIUtility
�� (
.
��( )
AddCursorRect
��) 6
(
��6 7
hitRect
��7 >
,
��> ?
MouseCursor
��@ K
.
��K L
	MoveArrow
��L U
)
��U V
;
��V W
if
�� 
(
�� 
k
�� 
>
�� 
$num
��  !
||
��" $
state
��% *
.
��* +
loopInBounds
��+ 7
)
��7 8
EditorGUIUtility
�� ,
.
��, -
AddCursorRect
��- :
(
��: ;
inTangentHitRect
��; K
,
��K L
MouseCursor
��M X
.
��X Y
RotateArrow
��Y d
)
��d e
;
��e f
if
�� 
(
�� 
k
�� 
<
�� 
length
��  &
-
��' (
$num
��) *
||
��+ -
state
��. 3
.
��3 4
loopInBounds
��4 @
)
��@ A
EditorGUIUtility
�� ,
.
��, -
AddCursorRect
��- :
(
��: ;
outTangentHitrect
��; L
,
��L M
MouseCursor
��N Y
.
��Y Z
RotateArrow
��Z e
)
��e f
;
��f g
}
�� 
}
�� 
}
�� 
Handles
�� 
.
�� 
color
�� 
=
�� 
Color
�� !
.
��! "
white
��" '
;
��' (
	SaveCurve
�� 
(
�� 
curve
�� 
,
�� 
	animCurve
�� &
)
��& '
;
��' (
}
�� 	
void
�� 
OnGeneralUI
�� 
(
�� 
Rect
�� 
rect
�� "
)
��" #
{
�� 	
var
�� 
e
�� 
=
�� 
Event
�� 
.
�� 
current
�� !
;
��! "
if
�� 
(
�� 
e
�� 
.
�� 
type
�� 
==
�� 
	EventType
�� #
.
��# $
	MouseDown
��$ -
)
��- .
{
�� 
GUI
�� 
.
�� 
FocusControl
��  
(
��  !
null
��! %
)
��% &
;
��& '
m_SelectedCurve
�� 
=
��  !
null
��" &
;
��& '%
m_SelectedKeyframeIndex
�� '
=
��( )
-
��* +
$num
��+ ,
;
��, -
bool
�� 
used
�� 
=
�� 
false
�� !
;
��! "
var
�� 
hit
�� 
=
�� 
CanvasToCurve
�� '
(
��' (
e
��( )
.
��) *
mousePosition
��* 7
)
��7 8
;
��8 9
float
�� 
curvePickValue
�� $
=
��% &
CurveToCanvas
��' 4
(
��4 5
hit
��5 8
)
��8 9
.
��9 :
y
��: ;
;
��; <
foreach
�� 
(
�� 
var
�� 
curve
�� "
in
��# %
m_Curves
��& .
)
��. /
{
�� 
if
�� 
(
�� 
!
�� 
curve
�� 
.
�� 
Value
�� $
.
��$ %
editable
��% -
||
��. 0
!
��1 2
curve
��2 7
.
��7 8
Value
��8 =
.
��= >
visible
��> E
)
��E F
continue
��  
;
��  !
var
�� 
prop
�� 
=
�� 
curve
�� $
.
��$ %
Key
��% (
;
��( )
var
�� 
state
�� 
=
�� 
curve
��  %
.
��% &
Value
��& +
;
��+ ,
var
�� 
	animCurve
�� !
=
��" #
prop
��$ (
.
��( )!
animationCurveValue
��) <
;
��< =
float
�� 
hitY
�� 
=
��  
	animCurve
��! *
.
��* +
length
��+ 1
==
��2 4
$num
��5 6
?
�� 
state
�� 
.
��  "
zeroKeyConstantValue
��  4
:
�� 
	animCurve
�� #
.
��# $
Evaluate
��$ ,
(
��, -
hit
��- 0
.
��0 1
x
��1 2
)
��2 3
;
��3 4
var
�� 
curvePos
��  
=
��! "
CurveToCanvas
��# 0
(
��0 1
new
��1 4
Vector3
��5 <
(
��< =
hit
��= @
.
��@ A
x
��A B
,
��B C
hitY
��D H
)
��H I
)
��I J
;
��J K
if
�� 
(
�� 
Mathf
�� 
.
�� 
Abs
�� !
(
��! "
curvePos
��" *
.
��* +
y
��+ ,
-
��- .
curvePickValue
��/ =
)
��= >
<
��? @
settings
��A I
.
��I J"
curvePickingDistance
��J ^
)
��^ _
{
�� 
m_SelectedCurve
�� '
=
��( )
prop
��* .
;
��. /
if
�� 
(
�� 
e
�� 
.
�� 

clickCount
�� (
==
��) +
$num
��, -
&&
��. 0
e
��1 2
.
��2 3
button
��3 9
==
��: <
$num
��= >
)
��> ?
{
��  
EditCreateKeyframe
�� .
(
��. /
	animCurve
��/ 8
,
��8 9
hit
��: =
,
��= >
true
��? C
,
��C D
state
��E J
.
��J K"
zeroKeyConstantValue
��K _
)
��_ `
;
��` a
	SaveCurve
�� %
(
��% &
prop
��& *
,
��* +
	animCurve
��, 5
)
��5 6
;
��6 7
}
�� 
else
�� 
if
�� 
(
��  !
e
��! "
.
��" #
button
��# )
==
��* ,
$num
��- .
)
��. /
{
�� 
var
�� 
menu
��  $
=
��% &
new
��' *
GenericMenu
��+ 6
(
��6 7
)
��7 8
;
��8 9
menu
��  
.
��  !
AddItem
��! (
(
��( )
new
��) ,

GUIContent
��- 7
(
��7 8
$str
��8 A
)
��A B
,
��B C
false
��D I
,
��I J
(
��K L
x
��L M
)
��M N
=>
��O Q
{
�� 
var
��  #
action
��$ *
=
��+ ,
(
��- .

MenuAction
��. 8
)
��8 9
x
��9 :
;
��: ;
var
��  #

curveValue
��$ .
=
��/ 0
action
��1 7
.
��7 8
curve
��8 =
.
��= >!
animationCurveValue
��> Q
;
��Q R
action
��  &
.
��& '
curve
��' ,
.
��, -
serializedObject
��- =
.
��= >
Update
��> D
(
��D E
)
��E F
;
��F G 
EditCreateKeyframe
��  2
(
��2 3

curveValue
��3 =
,
��= >
hit
��? B
,
��B C
true
��D H
,
��H I
$num
��J L
)
��L M
;
��M N
	SaveCurve
��  )
(
��) *
action
��* 0
.
��0 1
curve
��1 6
,
��6 7

curveValue
��8 B
)
��B C
;
��C D
action
��  &
.
��& '
curve
��' ,
.
��, -
serializedObject
��- =
.
��= >%
ApplyModifiedProperties
��> U
(
��U V
)
��V W
;
��W X
}
�� 
,
�� 
new
�� "

MenuAction
��# -
(
��- .
prop
��. 2
,
��2 3
hit
��4 7
)
��7 8
)
��8 9
;
��9 :
menu
��  
.
��  !
ShowAsContext
��! .
(
��. /
)
��/ 0
;
��0 1
e
�� 
.
�� 
Use
�� !
(
��! "
)
��" #
;
��# $
used
��  
=
��! "
true
��# '
;
��' (
}
�� 
}
�� 
}
�� 
if
�� 
(
�� 
e
�� 
.
�� 

clickCount
��  
==
��! #
$num
��$ %
&&
��& (
e
��) *
.
��* +
button
��+ 1
==
��2 4
$num
��5 6
&&
��7 9
m_SelectedCurve
��: I
==
��J L
null
��M Q
)
��Q R
{
�� 
foreach
�� 
(
�� 
var
��  
curve
��! &
in
��' )
m_Curves
��* 2
)
��2 3
{
�� 
if
�� 
(
�� 
!
�� 
curve
�� "
.
��" #
Value
��# (
.
��( )
editable
��) 1
||
��2 4
!
��5 6
curve
��6 ;
.
��; <
Value
��< A
.
��A B
visible
��B I
)
��I J
continue
�� $
;
��$ %
var
�� 
prop
��  
=
��! "
curve
��# (
.
��( )
Key
��) ,
;
��, -
var
�� 
state
�� !
=
��" #
curve
��$ )
.
��) *
Value
��* /
;
��/ 0
var
�� 
	animCurve
�� %
=
��& '
prop
��( ,
.
��, -!
animationCurveValue
��- @
;
��@ A 
EditCreateKeyframe
�� *
(
��* +
	animCurve
��+ 4
,
��4 5
hit
��6 9
,
��9 :
e
��; <
.
��< =
alt
��= @
,
��@ A
state
��B G
.
��G H"
zeroKeyConstantValue
��H \
)
��\ ]
;
��] ^
	SaveCurve
�� !
(
��! "
prop
��" &
,
��& '
	animCurve
��( 1
)
��1 2
;
��2 3
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
!
�� 
used
�� 
&&
�� !
e
��" #
.
��# $
button
��$ *
==
��+ -
$num
��. /
)
��/ 0
{
�� 
var
�� 
menu
�� 
=
�� 
new
�� "
GenericMenu
��# .
(
��. /
)
��/ 0
;
��0 1
menu
�� 
.
�� 
AddItem
��  
(
��  !
new
��! $

GUIContent
��% /
(
��/ 0
$str
��0 E
)
��E F
,
��F G
false
��H M
,
��M N
(
��O P
)
��P Q
=>
��R T
ContextMenuAddKey
��U f
(
��f g
hit
��g j
,
��j k
false
��l q
)
��q r
)
��r s
;
��s t
menu
�� 
.
�� 
AddItem
��  
(
��  !
new
��! $

GUIContent
��% /
(
��/ 0
$str
��0 C
)
��C D
,
��D E
false
��F K
,
��K L
(
��M N
)
��N O
=>
��P R
ContextMenuAddKey
��S d
(
��d e
hit
��e h
,
��h i
true
��j n
)
��n o
)
��o p
;
��p q
menu
�� 
.
�� 
ShowAsContext
�� &
(
��& '
)
��' (
;
��( )
}
�� 
e
�� 
.
�� 
Use
�� 
(
�� 
)
�� 
;
�� 
}
�� 
if
�� 
(
�� 
e
�� 
.
�� 
type
�� 
==
�� 
	EventType
�� #
.
��# $
KeyDown
��$ +
&&
��, .
(
��/ 0
e
��0 1
.
��1 2
keyCode
��2 9
==
��: <
KeyCode
��= D
.
��D E
Delete
��E K
||
��L N
e
��O P
.
��P Q
keyCode
��Q X
==
��Y [
KeyCode
��\ c
.
��c d
	Backspace
��d m
)
��m n
)
��n o
{
�� 
if
�� 
(
�� %
m_SelectedKeyframeIndex
�� +
!=
��, .
-
��/ 0
$num
��0 1
&&
��2 4
m_SelectedCurve
��5 D
!=
��E G
null
��H L
)
��L M
{
�� 
var
�� 
	animCurve
�� !
=
��" #
m_SelectedCurve
��$ 3
.
��3 4!
animationCurveValue
��4 G
;
��G H
var
�� 
length
�� 
=
��  
	animCurve
��! *
.
��* +
length
��+ 1
;
��1 2
if
�� 
(
�� 
m_Curves
��  
[
��  !
m_SelectedCurve
��! 0
]
��0 1
.
��1 2
minPointCount
��2 ?
<
��@ A
length
��B H
&&
��I K
length
��L R
>=
��S U
$num
��V W
)
��W X
{
��  
EditDeleteKeyframe
�� *
(
��* +
	animCurve
��+ 4
,
��4 5%
m_SelectedKeyframeIndex
��6 M
)
��M N
;
��N O%
m_SelectedKeyframeIndex
�� /
=
��0 1
-
��2 3
$num
��3 4
;
��4 5
	SaveCurve
�� !
(
��! "
m_SelectedCurve
��" 1
,
��1 2
	animCurve
��3 <
)
��< =
;
��= >
}
�� 
e
�� 
.
�� 
Use
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
void
�� 
	SaveCurve
�� 
(
��  
SerializedProperty
�� )
prop
��* .
,
��. /
AnimationCurve
��0 >
curve
��? D
)
��D E
{
�� 	
prop
�� 
.
�� !
animationCurveValue
�� $
=
��% &
curve
��' ,
;
��, -
}
�� 	
void
�� 

Invalidate
�� 
(
�� 
)
�� 
{
�� 	
m_Dirty
�� 
=
�� 
true
�� 
;
�� 
}
�� 	
void
�� 
SelectKeyframe
�� 
(
��  
SerializedProperty
�� .
curve
��/ 4
,
��4 5
int
��6 9
keyframeIndex
��: G
)
��G H
{
�� 	%
m_SelectedKeyframeIndex
�� #
=
��$ %
keyframeIndex
��& 3
;
��3 4
m_SelectedCurve
�� 
=
�� 
curve
�� #
;
��# $

Invalidate
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
void
�� 
ContextMenuAddKey
�� 
(
�� 
Vector3
�� &
hit
��' *
,
��* +
bool
��, 0
createOnCurve
��1 >
)
��> ?
{
�� 	
SerializedObject
�� 
serializedObject
�� -
=
��. /
null
��0 4
;
��4 5
foreach
�� 
(
�� 
var
�� 
curve
�� 
in
�� !
m_Curves
��" *
)
��* +
{
�� 
if
�� 
(
�� 
!
�� 
curve
�� 
.
�� 
Value
��  
.
��  !
editable
��! )
||
��* ,
!
��- .
curve
��. 3
.
��3 4
Value
��4 9
.
��9 :
visible
��: A
)
��A B
continue
�� 
;
�� 
var
�� 
prop
�� 
=
�� 
curve
��  
.
��  !
Key
��! $
;
��$ %
var
�� 
state
�� 
=
�� 
curve
�� !
.
��! "
Value
��" '
;
��' (
if
�� 
(
�� 
serializedObject
�� $
==
��% '
null
��( ,
)
��, -
{
�� 
serializedObject
�� $
=
��% &
prop
��' +
.
��+ ,
serializedObject
��, <
;
��< =
serializedObject
�� $
.
��$ %
Update
��% +
(
��+ ,
)
��, -
;
��- .
}
�� 
var
�� 
	animCurve
�� 
=
�� 
prop
��  $
.
��$ %!
animationCurveValue
��% 8
;
��8 9 
EditCreateKeyframe
�� "
(
��" #
	animCurve
��# ,
,
��, -
hit
��. 1
,
��1 2
createOnCurve
��3 @
,
��@ A
state
��B G
.
��G H"
zeroKeyConstantValue
��H \
)
��\ ]
;
��] ^
	SaveCurve
�� 
(
�� 
prop
�� 
,
�� 
	animCurve
��  )
)
��) *
;
��* +
}
�� 
if
�� 
(
�� 
serializedObject
��  
!=
��! #
null
��$ (
)
��( )
serializedObject
��  
.
��  !%
ApplyModifiedProperties
��! 8
(
��8 9
)
��9 :
;
��: ;

Invalidate
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
void
��  
EditCreateKeyframe
�� 
(
��  
AnimationCurve
��  .
curve
��/ 4
,
��4 5
Vector3
��6 =
position
��> F
,
��F G
bool
��H L
createOnCurve
��M Z
,
��Z [
float
��\ a"
zeroKeyConstantValue
��b v
)
��v w
{
�� 	
float
�� 
tangent
�� 
=
�� 
EvaluateTangent
�� +
(
��+ ,
curve
��, 1
,
��1 2
position
��3 ;
.
��; <
x
��< =
)
��= >
;
��> ?
if
�� 
(
�� 
createOnCurve
�� 
)
�� 
{
�� 
position
�� 
.
�� 
y
�� 
=
�� 
curve
�� "
.
��" #
length
��# )
==
��* ,
$num
��- .
?
�� "
zeroKeyConstantValue
�� *
:
�� 
curve
�� 
.
�� 
Evaluate
�� $
(
��$ %
position
��% -
.
��- .
x
��. /
)
��/ 0
;
��0 1
}
�� 
AddKeyframe
�� 
(
�� 
curve
�� 
,
�� 
new
�� "
Keyframe
��# +
(
��+ ,
position
��, 4
.
��4 5
x
��5 6
,
��6 7
position
��8 @
.
��@ A
y
��A B
,
��B C
tangent
��D K
,
��K L
tangent
��M T
)
��T U
)
��U V
;
��V W
}
�� 	
void
��  
EditDeleteKeyframe
�� 
(
��  
AnimationCurve
��  .
curve
��/ 4
,
��4 5
int
��6 9
keyframeIndex
��: G
)
��G H
{
�� 	
RemoveKeyframe
�� 
(
�� 
curve
��  
,
��  !
keyframeIndex
��" /
)
��/ 0
;
��0 1
}
�� 	
void
�� 
AddKeyframe
�� 
(
�� 
AnimationCurve
�� '
curve
��( -
,
��- .
Keyframe
��/ 7
newValue
��8 @
)
��@ A
{
�� 	
curve
�� 
.
�� 
AddKey
�� 
(
�� 
newValue
�� !
)
��! "
;
��" #

Invalidate
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
void
�� 
RemoveKeyframe
�� 
(
�� 
AnimationCurve
�� *
curve
��+ 0
,
��0 1
int
��2 5
keyframeIndex
��6 C
)
��C D
{
�� 	
curve
�� 
.
�� 
	RemoveKey
�� 
(
�� 
keyframeIndex
�� )
)
��) *
;
��* +

Invalidate
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
void
�� 
SetKeyframe
�� 
(
�� 
AnimationCurve
�� '
curve
��( -
,
��- .
int
��/ 2
keyframeIndex
��3 @
,
��@ A
Keyframe
��B J
newValue
��K S
)
��S T
{
�� 	
var
�� 
keys
�� 
=
�� 
curve
�� 
.
�� 
keys
�� !
;
��! "
if
�� 
(
�� 
keyframeIndex
�� 
>
�� 
$num
��  !
)
��! "
newValue
�� 
.
�� 
time
�� 
=
�� 
Mathf
��  %
.
��% &
Max
��& )
(
��) *
keys
��* .
[
��. /
keyframeIndex
��/ <
-
��= >
$num
��? @
]
��@ A
.
��A B
time
��B F
+
��G H
settings
��I Q
.
��Q R%
keyTimeClampingDistance
��R i
,
��i j
newValue
��k s
.
��s t
time
��t x
)
��x y
;
��y z
if
�� 
(
�� 
keyframeIndex
�� 
<
�� 
keys
��  $
.
��$ %
Length
��% +
-
��, -
$num
��. /
)
��/ 0
newValue
�� 
.
�� 
time
�� 
=
�� 
Mathf
��  %
.
��% &
Min
��& )
(
��) *
keys
��* .
[
��. /
keyframeIndex
��/ <
+
��= >
$num
��? @
]
��@ A
.
��A B
time
��B F
-
��G H
settings
��I Q
.
��Q R%
keyTimeClampingDistance
��R i
,
��i j
newValue
��k s
.
��s t
time
��t x
)
��x y
;
��y z
curve
�� 
.
�� 
MoveKey
�� 
(
�� 
keyframeIndex
�� '
,
��' (
newValue
��) 1
)
��1 2
;
��2 3

Invalidate
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
void
�� 
EditMoveKeyframe
�� 
(
�� 
AnimationCurve
�� ,
curve
��- 2
,
��2 3
Keyframe
��4 <
[
��< =
]
��= >
keys
��? C
,
��C D
int
��E H
keyframeIndex
��I V
)
��V W
{
�� 	
var
�� 
key
�� 
=
�� 
CanvasToCurve
�� #
(
��# $
Event
��$ )
.
��) *
current
��* 1
.
��1 2
mousePosition
��2 ?
)
��? @
;
��@ A
float
�� 
inTgt
�� 
=
�� 
keys
�� 
[
�� 
keyframeIndex
�� ,
]
��, -
.
��- .
	inTangent
��. 7
;
��7 8
float
�� 
outTgt
�� 
=
�� 
keys
�� 
[
��  
keyframeIndex
��  -
]
��- .
.
��. /

outTangent
��/ 9
;
��9 :
SetKeyframe
�� 
(
�� 
curve
�� 
,
�� 
keyframeIndex
�� ,
,
��, -
new
��. 1
Keyframe
��2 :
(
��: ;
key
��; >
.
��> ?
x
��? @
,
��@ A
key
��B E
.
��E F
y
��F G
,
��G H
inTgt
��I N
,
��N O
outTgt
��P V
)
��V W
)
��W X
;
��X Y
}
�� 	
void
�� 
EditMoveTangent
�� 
(
�� 
AnimationCurve
�� +
curve
��, 1
,
��1 2
Keyframe
��3 ;
[
��; <
]
��< =
keys
��> B
,
��B C
int
��D G
keyframeIndex
��H U
,
��U V
Tangent
��W ^
targetTangent
��_ l
,
��l m
bool
��n r
linkTangents
��s 
)�� �
{
�� 	
var
�� 
pos
�� 
=
�� 
CanvasToCurve
�� #
(
��# $
Event
��$ )
.
��) *
current
��* 1
.
��1 2
mousePosition
��2 ?
)
��? @
;
��@ A
float
�� 
time
�� 
=
�� 
keys
�� 
[
�� 
keyframeIndex
�� +
]
��+ ,
.
��, -
time
��- 1
;
��1 2
float
�� 
value
�� 
=
�� 
keys
�� 
[
�� 
keyframeIndex
�� ,
]
��, -
.
��- .
value
��. 3
;
��3 4
pos
�� 
-=
�� 
new
�� 
Vector3
�� 
(
�� 
time
�� #
,
��# $
value
��% *
)
��* +
;
��+ ,
if
�� 
(
�� 
targetTangent
�� 
==
��  
Tangent
��! (
.
��( )
In
��) +
&&
��, .
pos
��/ 2
.
��2 3
x
��3 4
>
��5 6
$num
��7 9
)
��9 :
pos
�� 
.
�� 
x
�� 
=
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
targetTangent
�� 
==
��  
Tangent
��! (
.
��( )
Out
��) ,
&&
��- /
pos
��0 3
.
��3 4
x
��4 5
<
��6 7
$num
��8 :
)
��: ;
pos
�� 
.
�� 
x
�� 
=
�� 
$num
�� 
;
�� 
float
�� 
tangent
�� 
;
�� 
if
�� 
(
�� 
Mathf
�� 
.
�� 
Approximately
�� #
(
��# $
pos
��$ '
.
��' (
x
��( )
,
��) *
$num
��+ -
)
��- .
)
��. /
tangent
�� 
=
�� 
pos
�� 
.
�� 
y
�� 
<
��  !
$num
��" $
?
��% &
float
��' ,
.
��, -
PositiveInfinity
��- =
:
��> ?
float
��@ E
.
��E F
NegativeInfinity
��F V
;
��V W
else
�� 
tangent
�� 
=
�� 
pos
�� 
.
�� 
y
�� 
/
��  !
pos
��" %
.
��% &
x
��& '
;
��' (
float
�� 
	inTangent
�� 
=
�� 
keys
�� "
[
��" #
keyframeIndex
��# 0
]
��0 1
.
��1 2
	inTangent
��2 ;
;
��; <
float
�� 

outTangent
�� 
=
�� 
keys
�� #
[
��# $
keyframeIndex
��$ 1
]
��1 2
.
��2 3

outTangent
��3 =
;
��= >
if
�� 
(
�� 
targetTangent
�� 
==
��  
Tangent
��! (
.
��( )
In
��) +
||
��, .
linkTangents
��/ ;
)
��; <
	inTangent
�� 
=
�� 
tangent
�� #
;
��# $
if
�� 
(
�� 
targetTangent
�� 
==
��  
Tangent
��! (
.
��( )
Out
��) ,
||
��- /
linkTangents
��0 <
)
��< =

outTangent
�� 
=
�� 
tangent
�� $
;
��$ %
SetKeyframe
�� 
(
�� 
curve
�� 
,
�� 
keyframeIndex
�� ,
,
��, -
new
��. 1
Keyframe
��2 :
(
��: ;
time
��; ?
,
��? @
value
��A F
,
��F G
	inTangent
��H Q
,
��Q R

outTangent
��S ]
)
��] ^
)
��^ _
;
��_ `
}
�� 	
Vector3
�� 
CurveToCanvas
�� 
(
�� 
Keyframe
�� &
keyframe
��' /
)
��/ 0
{
�� 	
return
�� 
CurveToCanvas
��  
(
��  !
new
��! $
Vector3
��% ,
(
��, -
keyframe
��- 5
.
��5 6
time
��6 :
,
��: ;
keyframe
��< D
.
��D E
value
��E J
)
��J K
)
��K L
;
��L M
}
�� 	
Vector3
�� 
CurveToCanvas
�� 
(
�� 
Vector3
�� %
position
��& .
)
��. /
{
�� 	
var
�� 
bounds
�� 
=
�� 
settings
�� !
.
��! "
bounds
��" (
;
��( )
var
�� 
output
�� 
=
�� 
new
�� 
Vector3
�� $
(
��$ %
(
��% &
position
��& .
.
��. /
x
��/ 0
-
��1 2
bounds
��3 9
.
��9 :
x
��: ;
)
��; <
/
��= >
(
��? @
bounds
��@ F
.
��F G
xMax
��G K
-
��L M
bounds
��N T
.
��T U
x
��U V
)
��V W
,
��W X
(
��Y Z
position
��Z b
.
��b c
y
��c d
-
��e f
bounds
��g m
.
��m n
y
��n o
)
��o p
/
��q r
(
��s t
bounds
��t z
.
��z {
yMax
��{ 
-��� �
bounds��� �
.��� �
y��� �
)��� �
)��� �
;��� �
output
�� 
.
�� 
x
�� 
=
�� 
output
�� 
.
�� 
x
�� 
*
��  !
(
��" #
m_CurveArea
��# .
.
��. /
xMax
��/ 3
-
��4 5
m_CurveArea
��6 A
.
��A B
xMin
��B F
)
��F G
+
��H I
m_CurveArea
��J U
.
��U V
xMin
��V Z
;
��Z [
output
�� 
.
�� 
y
�� 
=
�� 
(
�� 
$num
�� 
-
�� 
output
�� #
.
��# $
y
��$ %
)
��% &
*
��' (
(
��) *
m_CurveArea
��* 5
.
��5 6
yMax
��6 :
-
��; <
m_CurveArea
��= H
.
��H I
yMin
��I M
)
��M N
+
��O P
m_CurveArea
��Q \
.
��\ ]
yMin
��] a
;
��a b
return
�� 
output
�� 
;
�� 
}
�� 	
Vector3
�� 
CanvasToCurve
�� 
(
�� 
Vector3
�� %
position
��& .
)
��. /
{
�� 	
var
�� 
bounds
�� 
=
�� 
settings
�� !
.
��! "
bounds
��" (
;
��( )
var
�� 
output
�� 
=
�� 
position
�� !
;
��! "
output
�� 
.
�� 
x
�� 
=
�� 
(
�� 
output
�� 
.
�� 
x
��  
-
��! "
m_CurveArea
��# .
.
��. /
xMin
��/ 3
)
��3 4
/
��5 6
(
��7 8
m_CurveArea
��8 C
.
��C D
xMax
��D H
-
��I J
m_CurveArea
��K V
.
��V W
xMin
��W [
)
��[ \
;
��\ ]
output
�� 
.
�� 
y
�� 
=
�� 
(
�� 
output
�� 
.
�� 
y
��  
-
��! "
m_CurveArea
��# .
.
��. /
yMin
��/ 3
)
��3 4
/
��5 6
(
��7 8
m_CurveArea
��8 C
.
��C D
yMax
��D H
-
��I J
m_CurveArea
��K V
.
��V W
yMin
��W [
)
��[ \
;
��\ ]
output
�� 
.
�� 
x
�� 
=
�� 
Mathf
�� 
.
�� 
Lerp
�� !
(
��! "
bounds
��" (
.
��( )
x
��) *
,
��* +
bounds
��, 2
.
��2 3
xMax
��3 7
,
��7 8
output
��9 ?
.
��? @
x
��@ A
)
��A B
;
��B C
output
�� 
.
�� 
y
�� 
=
�� 
Mathf
�� 
.
�� 
Lerp
�� !
(
��! "
bounds
��" (
.
��( )
yMax
��) -
,
��- .
bounds
��/ 5
.
��5 6
y
��6 7
,
��7 8
output
��9 ?
.
��? @
y
��@ A
)
��A B
;
��B C
return
�� 
output
�� 
;
�� 
}
�� 	
Vector3
�� "
CurveTangentToCanvas
�� $
(
��$ %
float
��% *
tangent
��+ 2
)
��2 3
{
�� 	
if
�� 
(
�� 
!
�� 
float
�� 
.
�� 

IsInfinity
�� !
(
��! "
tangent
��" )
)
��) *
)
��* +
{
�� 
var
�� 
bounds
�� 
=
�� 
settings
�� %
.
��% &
bounds
��& ,
;
��, -
float
�� 
ratio
�� 
=
�� 
(
�� 
m_CurveArea
�� *
.
��* +
width
��+ 0
/
��1 2
m_CurveArea
��3 >
.
��> ?
height
��? E
)
��E F
/
��G H
(
��I J
(
��J K
bounds
��K Q
.
��Q R
xMax
��R V
-
��W X
bounds
��Y _
.
��_ `
x
��` a
)
��a b
/
��c d
(
��e f
bounds
��f l
.
��l m
yMax
��m q
-
��r s
bounds
��t z
.
��z {
y
��{ |
)
��| }
)
��} ~
;
��~ 
return
�� 
new
�� 
Vector3
�� "
(
��" #
$num
��# %
,
��% &
-
��' (
tangent
��( /
/
��0 1
ratio
��2 7
)
��7 8
.
��8 9

normalized
��9 C
;
��C D
}
�� 
return
�� 
float
�� 
.
��  
IsPositiveInfinity
�� +
(
��+ ,
tangent
��, 3
)
��3 4
?
��5 6
Vector3
��7 >
.
��> ?
up
��? A
:
��B C
Vector3
��D K
.
��K L
down
��L P
;
��P Q
}
�� 	
Vector3
�� 
[
�� 
]
�� 
BezierSegment
�� 
(
��  
Keyframe
��  (
start
��) .
,
��. /
Keyframe
��0 8
end
��9 <
)
��< =
{
�� 	
var
�� 
segment
�� 
=
�� 
new
�� 
Vector3
�� %
[
��% &
$num
��& '
]
��' (
;
��( )
segment
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
CurveToCanvas
�� &
(
��& '
new
��' *
Vector3
��+ 2
(
��2 3
start
��3 8
.
��8 9
time
��9 =
,
��= >
start
��? D
.
��D E
value
��E J
)
��J K
)
��K L
;
��L M
segment
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
CurveToCanvas
�� &
(
��& '
new
��' *
Vector3
��+ 2
(
��2 3
end
��3 6
.
��6 7
time
��7 ;
,
��; <
end
��= @
.
��@ A
value
��A F
)
��F G
)
��G H
;
��H I
float
�� 
middle
�� 
=
�� 
start
�� !
.
��! "
time
��" &
+
��' (
(
��) *
(
��* +
end
��+ .
.
��. /
time
��/ 3
-
��4 5
start
��6 ;
.
��; <
time
��< @
)
��@ A
*
��B C
$num
��D M
)
��M N
;
��N O
float
�� 
middle2
�� 
=
�� 
start
�� !
.
��! "
time
��" &
+
��' (
(
��) *
(
��* +
end
��+ .
.
��. /
time
��/ 3
-
��4 5
start
��6 ;
.
��; <
time
��< @
)
��@ A
*
��B C
$num
��D M
)
��M N
;
��N O
segment
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
CurveToCanvas
�� &
(
��& '
new
��' *
Vector3
��+ 2
(
��2 3
middle
��3 9
,
��9 :
ProjectTangent
��; I
(
��I J
start
��J O
.
��O P
time
��P T
,
��T U
start
��V [
.
��[ \
value
��\ a
,
��a b
start
��c h
.
��h i

outTangent
��i s
,
��s t
middle
��u {
)
��{ |
)
��| }
)
��} ~
;
��~ 
segment
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
CurveToCanvas
�� &
(
��& '
new
��' *
Vector3
��+ 2
(
��2 3
middle2
��3 :
,
��: ;
ProjectTangent
��< J
(
��J K
end
��K N
.
��N O
time
��O S
,
��S T
end
��U X
.
��X Y
value
��Y ^
,
��^ _
end
��` c
.
��c d
	inTangent
��d m
,
��m n
middle2
��o v
)
��v w
)
��w x
)
��x y
;
��y z
return
�� 
segment
�� 
;
�� 
}
�� 	
Vector3
�� 
[
�� 
]
�� 
HardSegment
�� 
(
�� 
Keyframe
�� &
start
��' ,
,
��, -
Keyframe
��. 6
end
��7 :
)
��: ;
{
�� 	
var
�� 
segment
�� 
=
�� 
new
�� 
Vector3
�� %
[
��% &
$num
��& '
]
��' (
;
��( )
segment
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
CurveToCanvas
�� &
(
��& '
start
��' ,
)
��, -
;
��- .
segment
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
CurveToCanvas
�� &
(
��& '
new
��' *
Vector3
��+ 2
(
��2 3
end
��3 6
.
��6 7
time
��7 ;
,
��; <
start
��= B
.
��B C
value
��C H
)
��H I
)
��I J
;
��J K
segment
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
CurveToCanvas
�� &
(
��& '
end
��' *
)
��* +
;
��+ ,
return
�� 
segment
�� 
;
�� 
}
�� 	
float
�� 
ProjectTangent
�� 
(
�� 
float
�� "

inPosition
��# -
,
��- .
float
��/ 4
inValue
��5 <
,
��< =
float
��> C
	inTangent
��D M
,
��M N
float
��O T
projPosition
��U a
)
��a b
{
�� 	
return
�� 
inValue
�� 
+
�� 
(
�� 
(
�� 
projPosition
�� +
-
��, -

inPosition
��. 8
)
��8 9
*
��: ;
	inTangent
��< E
)
��E F
;
��F G
}
�� 	
float
�� 
EvaluateTangent
�� 
(
�� 
AnimationCurve
�� ,
curve
��- 2
,
��2 3
float
��4 9
time
��: >
)
��> ?
{
�� 	
int
�� 
prev
�� 
=
�� 
-
�� 
$num
�� 
,
�� 
next
�� 
=
��  !
$num
��" #
;
��# $
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
curve
��  %
.
��% &
keys
��& *
.
��* +
Length
��+ 1
;
��1 2
i
��3 4
++
��4 6
)
��6 7
{
�� 
if
�� 
(
�� 
time
�� 
>
�� 
curve
��  
.
��  !
keys
��! %
[
��% &
i
��& '
]
��' (
.
��( )
time
��) -
)
��- .
{
�� 
prev
�� 
=
�� 
i
�� 
;
�� 
next
�� 
=
�� 
i
�� 
+
�� 
$num
��  
;
��  !
}
�� 
else
�� 
break
�� 
;
�� 
}
�� 
if
�� 
(
�� 
next
�� 
==
�� 
$num
�� 
)
�� 
return
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
prev
�� 
==
�� 
curve
�� 
.
�� 
keys
�� "
.
��" #
Length
��# )
-
��* +
$num
��, -
)
��- .
return
�� 
$num
�� 
;
�� 
const
�� 
float
�� 
kD
�� 
=
�� 
$num
�� "
;
��" #
float
�� 
tp
�� 
=
�� 
Mathf
�� 
.
�� 
Max
��  
(
��  !
time
��! %
-
��& '
kD
��( *
,
��* +
curve
��, 1
.
��1 2
keys
��2 6
[
��6 7
prev
��7 ;
]
��; <
.
��< =
time
��= A
)
��A B
;
��B C
float
�� 
tn
�� 
=
�� 
Mathf
�� 
.
�� 
Min
��  
(
��  !
time
��! %
+
��& '
kD
��( *
,
��* +
curve
��, 1
.
��1 2
keys
��2 6
[
��6 7
next
��7 ;
]
��; <
.
��< =
time
��= A
)
��A B
;
��B C
float
�� 
vp
�� 
=
�� 
curve
�� 
.
�� 
Evaluate
�� %
(
��% &
tp
��& (
)
��( )
;
��) *
float
�� 
vn
�� 
=
�� 
curve
�� 
.
�� 
Evaluate
�� %
(
��% &
tn
��& (
)
��( )
;
��) *
if
�� 
(
�� 
Mathf
�� 
.
�� 
Approximately
�� #
(
��# $
tn
��$ &
,
��& '
tp
��( *
)
��* +
)
��+ ,
return
�� 
(
�� 
vn
�� 
-
�� 
vp
�� 
>
��  !
$num
��" $
)
��$ %
?
��& '
float
��( -
.
��- .
PositiveInfinity
��. >
:
��? @
float
��A F
.
��F G
NegativeInfinity
��G W
;
��W X
return
�� 
(
�� 
vn
�� 
-
�� 
vp
�� 
)
�� 
/
�� 
(
��  
tn
��  "
-
��# $
tp
��% '
)
��' (
;
��( )
}
�� 	
}
�� 
}�� ý
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Utils\EditorGUIHelper.cs
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
paneOptionsIcon	66r �
.
66� �
height
66� �
/
66� �
$num
66� �
+
66� �
$num
66� �
,
66� �
FxStyles
66� �
.
66� �
paneOptionsIcon
66� �
.
66� �
width
66� �
,
66� �
FxStyles
66� �
.
66� �
paneOptionsIcon
66� �
.
66� �
height
66� �
)
66� �
;
66� �
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
propertyPath	\\v �
)
\\� �
;
\\� �
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
;	cc �
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
paneOptionsIcon	ppr �
.
pp� �
height
pp� �
/
pp� �
$num
pp� �
+
pp� �
$num
pp� �
,
pp� �
FxStyles
pp� �
.
pp� �
paneOptionsIcon
pp� �
.
pp� �
width
pp� �
,
pp� �
FxStyles
pp� �
.
pp� �
paneOptionsIcon
pp� �
.
pp� �
height
pp� �
)
pp� �
;
pp� �
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
��  
.
��  !
	boolValue
��! *
=
��+ ,
!
��- .
enabledField
��. :
.
��: ;
	boolValue
��; D
;
��D E
if
�� 
(
�� 
prop
�� 
!=
�� 
null
��  $
)
��$ %
prop
�� 
.
�� 
SetValue
�� %
(
��% &
parent
��& ,
,
��, -
enabledField
��. :
.
��: ;
	boolValue
��; D
,
��D E
null
��F J
)
��J K
;
��K L
e
�� 
.
�� 
Use
�� 
(
�� 
)
�� 
;
�� 
}
�� 
else
�� 
if
�� 
(
�� 
	popupRect
�� "
.
��" #
Contains
��# +
(
��+ ,
e
��, -
.
��- .
mousePosition
��. ;
)
��; <
)
��< =
{
�� 
var
�� 
popup
�� 
=
�� 
new
��  #
GenericMenu
��$ /
(
��/ 0
)
��0 1
;
��1 2
popup
�� 
.
�� 
AddItem
�� !
(
��! "

GetContent
��" ,
(
��, -
$str
��- 4
)
��4 5
,
��5 6
false
��7 <
,
��< =
(
��> ?
)
��? @
=>
��A C
resetAction
��D O
(
��O P
)
��P Q
)
��Q R
;
��R S
popup
�� 
.
�� 
AddSeparator
�� &
(
��& '
string
��' -
.
��- .
Empty
��. 3
)
��3 4
;
��4 5
popup
�� 
.
�� 
AddItem
�� !
(
��! "

GetContent
��" ,
(
��, -
$str
��- <
)
��< =
,
��= >
false
��? D
,
��D E
(
��F G
)
��G H
=>
��I K
CopySettings
��L X
(
��X Y
group
��Y ^
)
��^ _
)
��_ `
;
��` a
if
�� 
(
�� 
CanPaste
��  
(
��  !
group
��! &
)
��& '
)
��' (
popup
�� 
.
�� 
AddItem
�� %
(
��% &

GetContent
��& 0
(
��0 1
$str
��1 A
)
��A B
,
��B C
false
��D I
,
��I J
(
��K L
)
��L M
=>
��N P
PasteSettings
��Q ^
(
��^ _
group
��_ d
)
��d e
)
��e f
;
��f g
else
�� 
popup
�� 
.
�� 
AddDisabledItem
�� -
(
��- .

GetContent
��. 8
(
��8 9
$str
��9 I
)
��I J
)
��J K
;
��K L
popup
�� 
.
�� 
ShowAsContext
�� '
(
��' (
)
��( )
;
��) *
}
�� 
else
�� 
if
�� 
(
�� 
rect
�� 
.
�� 
Contains
�� &
(
��& '
e
��' (
.
��( )
mousePosition
��) 6
)
��6 7
&&
��8 :
group
��; @
!=
��A C
null
��D H
)
��H I
{
�� 
display
�� 
=
�� 
!
�� 
display
�� &
;
��& '
group
�� 
.
�� 

isExpanded
�� $
=
��% &
!
��' (
group
��( -
.
��- .

isExpanded
��. 8
;
��8 9
e
�� 
.
�� 
Use
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
return
�� 
display
�� 
;
�� 
}
�� 	
static
�� 
void
�� 
CopySettings
��  
(
��  ! 
SerializedProperty
��! 3
settings
��4 <
)
��< =
{
�� 	
var
�� 
t
�� 
=
�� 
typeof
�� 
(
�� #
PostProcessingProfile
�� 0
)
��0 1
;
��1 2
var
�� 
settingsStruct
�� 
=
��  
ReflectionUtils
��! 0
.
��0 1#
GetFieldValueFromPath
��1 F
(
��F G
settings
��G O
.
��O P
serializedObject
��P `
.
��` a
targetObject
��a m
,
��m n
ref
��o r
t
��s t
,
��t u
settings
��v ~
.
��~ 
propertyPath�� �
)��� �
;��� �
var
�� 
serializedString
��  
=
��! "
t
��# $
.
��$ %
ToString
��% -
(
��- .
)
��. /
+
��0 1
$char
��2 5
+
��6 7
JsonUtility
��8 C
.
��C D
ToJson
��D J
(
��J K
settingsStruct
��K Y
)
��Y Z
;
��Z [
EditorGUIUtility
�� 
.
�� 
systemCopyBuffer
�� -
=
��. /
serializedString
��0 @
;
��@ A
}
�� 	
static
�� 
bool
�� 
CanPaste
�� 
(
��  
SerializedProperty
�� /
settings
��0 8
)
��8 9
{
�� 	
var
�� 
data
�� 
=
�� 
EditorGUIUtility
�� '
.
��' (
systemCopyBuffer
��( 8
;
��8 9
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
data
��% )
)
��) *
)
��* +
return
�� 
false
�� 
;
�� 
var
�� 
parts
�� 
=
�� 
data
�� 
.
�� 
Split
�� "
(
��" #
$char
��# &
)
��& '
;
��' (
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
parts
��% *
[
��* +
$num
��+ ,
]
��, -
)
��- .
)
��. /
return
�� 
false
�� 
;
�� 
var
�� 
field
�� 
=
�� 
ReflectionUtils
�� '
.
��' ("
GetFieldInfoFromPath
��( <
(
��< =
settings
��= E
.
��E F
serializedObject
��F V
.
��V W
targetObject
��W c
,
��c d
settings
��e m
.
��m n
propertyPath
��n z
)
��z {
;
��{ |
return
�� 
parts
�� 
[
�� 
$num
�� 
]
�� 
==
�� 
field
�� $
.
��$ %
	FieldType
��% .
.
��. /
ToString
��/ 7
(
��7 8
)
��8 9
;
��9 :
}
�� 	
static
�� 
void
�� 
PasteSettings
�� !
(
��! " 
SerializedProperty
��" 4
settings
��5 =
)
��= >
{
�� 	
Undo
�� 
.
�� 
RecordObject
�� 
(
�� 
settings
�� &
.
��& '
serializedObject
��' 7
.
��7 8
targetObject
��8 D
,
��D E
$str
��F ]
)
��] ^
;
��^ _
var
�� 
field
�� 
=
�� 
ReflectionUtils
�� '
.
��' ("
GetFieldInfoFromPath
��( <
(
��< =
settings
��= E
.
��E F
serializedObject
��F V
.
��V W
targetObject
��W c
,
��c d
settings
��e m
.
��m n
propertyPath
��n z
)
��z {
;
��{ |
var
�� 
json
�� 
=
�� 
EditorGUIUtility
�� '
.
��' (
systemCopyBuffer
��( 8
.
��8 9
	Substring
��9 B
(
��B C
field
��C H
.
��H I
	FieldType
��I R
.
��R S
ToString
��S [
(
��[ \
)
��\ ]
.
��] ^
Length
��^ d
+
��e f
$num
��g h
)
��h i
;
��i j
var
�� 
obj
�� 
=
�� 
JsonUtility
�� !
.
��! "
FromJson
��" *
(
��* +
json
��+ /
,
��/ 0
field
��1 6
.
��6 7
	FieldType
��7 @
)
��@ A
;
��A B
var
�� 
parent
�� 
=
�� 
ReflectionUtils
�� (
.
��( )
GetParentObject
��) 8
(
��8 9
settings
��9 A
.
��A B
propertyPath
��B N
,
��N O
settings
��P X
.
��X Y
serializedObject
��Y i
.
��i j
targetObject
��j v
)
��v w
;
��w x
field
�� 
.
�� 
SetValue
�� 
(
�� 
parent
�� !
,
��! "
obj
��# &
,
��& '
BindingFlags
��( 4
.
��4 5
Public
��5 ;
|
��< =
BindingFlags
��> J
.
��J K
	NonPublic
��K T
|
��U V
BindingFlags
��W c
.
��c d
Instance
��d l
,
��l m
null
��n r
,
��r s
CultureInfo
��t 
.�� �
CurrentCulture��� �
)��� �
;��� �
}
�� 	
}
�� 
}�� �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Utils\EditorResources.cs
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
$str	' �
)
� �
;
� �
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
}:: �J
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Utils\FxStyles.cs
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
$str	??Q �
)
??� �
}
??� �
,
??� �

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
$str	FFQ �
)
FF� �
}
FF� �
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
}oo �V
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\sprint3\PDV_sprint3_Agua_de_Madrid\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Editor\Utils\ReflectionUtils.cs
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
string	~ �
>
� �
,
� �
	FieldInfo
� �
>
� �
(
� �
)
� �
;
� �
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