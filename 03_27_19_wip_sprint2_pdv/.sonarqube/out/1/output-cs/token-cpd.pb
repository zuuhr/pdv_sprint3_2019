†
äD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Music\MenuAudioPlay.cs
public 
class 
MenuAudioPlay 
: 
MonoBehaviour *
{ 
public 

AudioSource 
a 
; 
public 

AudioSource 
b 
; 
void		 
Start			 
(		 
)		 
{

 
Invoke 
( 
$str 
, 
b 
. 
clip "
." #
length# )
-) *
$num* /
)/ 0
;0 1
} 
void 
	audioPlay	 
( 
) 
{ 
a 	
.	 

Play
 
( 
) 
; 
} 
} ﬂ
®D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Attributes\GetSetAttribute.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class 
GetSetAttribute '
:( )
PropertyAttribute* ;
{ 
public 
readonly 
string 
name #
;# $
public 
bool 
dirty 
; 
public 
GetSetAttribute 
( 
string %
name& *
)* +
{		 	
this

 
.

 
name

 
=

 
name

 
;

 
} 	
} 
} à
•D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Attributes\MinAttribute.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class 
MinAttribute $
:% &
PropertyAttribute' 8
{ 
public 
readonly 
float 
min !
;! "
public 
MinAttribute 
( 
float !
min" %
)% &
{ 	
this		 
.		 
min		 
=		 
min		 
;		 
}

 	
} 
} ®
´D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Attributes\TrackballAttribute.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class 
TrackballAttribute *
:+ ,
PropertyAttribute- >
{ 
public 
readonly 
string 
method %
;% &
public 
TrackballAttribute !
(! "
string" (
method) /
)/ 0
{ 	
this		 
.		 
method		 
=		 
method		  
;		  !
}

 	
} 
} “
∞D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Attributes\TrackballGroupAttribute.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class #
TrackballGroupAttribute /
:0 1
PropertyAttribute2 C
{ 
} 
} –ö
≤D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\AmbientOcclusionComponent.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class %
AmbientOcclusionComponent 1
:2 30
$PostProcessingComponentCommandBuffer4 X
<X Y!
AmbientOcclusionModelY n
>n o
{ 
static		 
class		 
Uniforms		 
{

 	
internal 
static 
readonly $
int% (

_Intensity) 3
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR ^
)^ _
;_ `
internal 
static 
readonly $
int% (
_Radius) 0
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR [
)[ \
;\ ]
internal 
static 
readonly $
int% (

_FogParams) 3
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR ^
)^ _
;_ `
internal 
static 
readonly $
int% (
_Downsample) 4
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR _
)_ `
;` a
internal 
static 
readonly $
int% (
_SampleCount) 5
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR `
)` a
;a b
internal 
static 
readonly $
int% (
_OcclusionTexture1) ;
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR f
)f g
;g h
internal 
static 
readonly $
int% (
_OcclusionTexture2) ;
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR f
)f g
;g h
internal 
static 
readonly $
int% (
_OcclusionTexture) :
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR e
)e f
;f g
internal 
static 
readonly $
int% (
_MainTex) 1
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR \
)\ ]
;] ^
internal 
static 
readonly $
int% (
_TempRT) 0
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR [
)[ \
;\ ]
} 	
const 
string 
k_BlitShaderString '
=( )
$str* ?
;? @
const 
string 
k_ShaderString #
=$ %
$str& H
;H I
readonly "
RenderTargetIdentifier '
[' (
]( )
m_MRT* /
=0 1
{ 	$
BuiltinRenderTextureType $
.$ %
GBuffer0% -
,- .$
BuiltinRenderTextureType $
.$ %
CameraTarget% 1
} 	
;	 

enum   
OcclusionSource   
{!! 	
DepthTexture"" 
,"" 
DepthNormalsTexture## 
,##  
GBuffer$$ 
}%% 	
OcclusionSource'' 
occlusionSource'' '
{(( 	
get)) 
{** 
if++ 
(++ 
context++ 
.++ 
isGBufferAvailable++ .
&&++/ 1
!++2 3
model++3 8
.++8 9
settings++9 A
.++A B%
forceForwardCompatibility++B [
)++[ \
return,, 
OcclusionSource,, *
.,,* +
GBuffer,,+ 2
;,,2 3
if.. 
(.. 
model.. 
... 
settings.. "
..." #
highPrecision..# 0
&&..1 3
(..4 5
!..5 6
context..6 =
...= >
isGBufferAvailable..> P
||..Q S
model..T Y
...Y Z
settings..Z b
...b c%
forceForwardCompatibility..c |
)..| }
)..} ~
return// 
OcclusionSource// *
.//* +
DepthTexture//+ 7
;//7 8
return11 
OcclusionSource11 &
.11& '
DepthNormalsTexture11' :
;11: ;
}22 
}33 	
bool55  
ambientOnlySupported55 !
{66 	
get77 
{77 
return77 
context77  
.77  !
isHdr77! &
&&77' )
model77* /
.77/ 0
settings770 8
.778 9
ambientOnly779 D
&&77E G
context77H O
.77O P
isGBufferAvailable77P b
&&77c e
!77f g
model77g l
.77l m
settings77m u
.77u v&
forceForwardCompatibility	77v è
;
77è ê
}
77ë í
}88 	
public:: 
override:: 
bool:: 
active:: #
{;; 	
get<< 
{== 
return>> 
model>> 
.>> 
enabled>> $
&&?? 
model?? 
.??  
settings??  (
.??( )
	intensity??) 2
>??3 4
$num??5 7
&&@@ 
!@@ 
context@@ "
.@@" #
interrupted@@# .
;@@. /
}AA 
}BB 	
publicDD 
overrideDD 
DepthTextureModeDD (
GetCameraFlagsDD) 7
(DD7 8
)DD8 9
{EE 	
varFF 
flagsFF 
=FF 
DepthTextureModeFF (
.FF( )
NoneFF) -
;FF- .
ifHH 
(HH 
occlusionSourceHH 
==HH  "
OcclusionSourceHH# 2
.HH2 3
DepthTextureHH3 ?
)HH? @
flagsII 
|=II 
DepthTextureModeII )
.II) *
DepthII* /
;II/ 0
ifKK 
(KK 
occlusionSourceKK 
!=KK  "
OcclusionSourceKK# 2
.KK2 3
GBufferKK3 :
)KK: ;
flagsLL 
|=LL 
DepthTextureModeLL )
.LL) *
DepthNormalsLL* 6
;LL6 7
returnNN 
flagsNN 
;NN 
}OO 	
publicQQ 
overrideQQ 
stringQQ 
GetNameQQ &
(QQ& '
)QQ' (
{RR 	
returnSS 
$strSS &
;SS& '
}TT 	
publicVV 
overrideVV 
CameraEventVV #
GetCameraEventVV$ 2
(VV2 3
)VV3 4
{WW 	
returnXX  
ambientOnlySupportedXX '
&&XX( *
!XX+ ,
contextXX, 3
.XX3 4
profileXX4 ;
.XX; <

debugViewsXX< F
.XXF G
IsModeActiveXXG S
(XXS T
	DebugModeXXT ]
.XX] ^
AmbientOcclusionXX^ n
)XXn o
?YY 
CameraEventYY  
.YY  !
BeforeReflectionsYY! 2
:ZZ 
CameraEventZZ  
.ZZ  !$
BeforeImageEffectsOpaqueZZ! 9
;ZZ9 :
}[[ 	
public]] 
override]] 
void]] !
PopulateCommandBuffer]] 2
(]]2 3
CommandBuffer]]3 @
cb]]A C
)]]C D
{^^ 	
var__ 
settings__ 
=__ 
model__  
.__  !
settings__! )
;__) *
varbb 
blitMaterialbb 
=bb 
contextbb &
.bb& '
materialFactorybb' 6
.bb6 7
Getbb7 :
(bb: ;
k_BlitShaderStringbb; M
)bbM N
;bbN O
vardd 
materialdd 
=dd 
contextdd "
.dd" #
materialFactorydd# 2
.dd2 3
Getdd3 6
(dd6 7
k_ShaderStringdd7 E
)ddE F
;ddF G
materialee 
.ee 
shaderKeywordsee #
=ee$ %
nullee& *
;ee* +
materialff 
.ff 
SetFloatff 
(ff 
Uniformsff &
.ff& '

_Intensityff' 1
,ff1 2
settingsff3 ;
.ff; <
	intensityff< E
)ffE F
;ffF G
materialgg 
.gg 
SetFloatgg 
(gg 
Uniformsgg &
.gg& '
_Radiusgg' .
,gg. /
settingsgg0 8
.gg8 9
radiusgg9 ?
)gg? @
;gg@ A
materialhh 
.hh 
SetFloathh 
(hh 
Uniformshh &
.hh& '
_Downsamplehh' 2
,hh2 3
settingshh4 <
.hh< =
downsamplinghh= I
?hhJ K
$numhhL P
:hhQ R
$numhhS U
)hhU V
;hhV W
materialii 
.ii 
SetIntii 
(ii 
Uniformsii $
.ii$ %
_SampleCountii% 1
,ii1 2
(ii3 4
intii4 7
)ii7 8
settingsii8 @
.ii@ A
sampleCountiiA L
)iiL M
;iiM N
ifkk 
(kk 
!kk 
contextkk 
.kk 
isGBufferAvailablekk +
&&kk, .
RenderSettingskk/ =
.kk= >
fogkk> A
)kkA B
{ll 
materialmm 
.mm 
	SetVectormm "
(mm" #
Uniformsmm# +
.mm+ ,

_FogParamsmm, 6
,mm6 7
newmm8 ;
Vector3mm< C
(mmC D
RenderSettingsmmD R
.mmR S

fogDensitymmS ]
,mm] ^
RenderSettingsmm_ m
.mmm n
fogStartDistancemmn ~
,mm~ 
RenderSettings
mmÄ é
.
mmé è
fogEndDistance
mmè ù
)
mmù û
)
mmû ü
;
mmü †
switchoo 
(oo 
RenderSettingsoo &
.oo& '
fogModeoo' .
)oo. /
{pp 
caseqq 
FogModeqq  
.qq  !
Linearqq! '
:qq' (
materialrr  
.rr  !
EnableKeywordrr! .
(rr. /
$strrr/ ;
)rr; <
;rr< =
breakss 
;ss 
casett 
FogModett  
.tt  !
Exponentialtt! ,
:tt, -
materialuu  
.uu  !
EnableKeyworduu! .
(uu. /
$struu/ 8
)uu8 9
;uu9 :
breakvv 
;vv 
caseww 
FogModeww  
.ww  !
ExponentialSquaredww! 3
:ww3 4
materialxx  
.xx  !
EnableKeywordxx! .
(xx. /
$strxx/ 9
)xx9 :
;xx: ;
breakyy 
;yy 
}zz 
}{{ 
else|| 
{}} 
material~~ 
.~~ 
EnableKeyword~~ &
(~~& '
$str~~' 0
)~~0 1
;~~1 2
} 
int
ÅÅ 
tw
ÅÅ 
=
ÅÅ 
context
ÅÅ 
.
ÅÅ 
width
ÅÅ "
;
ÅÅ" #
int
ÇÇ 
th
ÇÇ 
=
ÇÇ 
context
ÇÇ 
.
ÇÇ 
height
ÇÇ #
;
ÇÇ# $
int
ÉÉ 
ts
ÉÉ 
=
ÉÉ 
settings
ÉÉ 
.
ÉÉ 
downsampling
ÉÉ *
?
ÉÉ+ ,
$num
ÉÉ- .
:
ÉÉ/ 0
$num
ÉÉ1 2
;
ÉÉ2 3
const
ÑÑ !
RenderTextureFormat
ÑÑ %
kFormat
ÑÑ& -
=
ÑÑ. /!
RenderTextureFormat
ÑÑ0 C
.
ÑÑC D
ARGB32
ÑÑD J
;
ÑÑJ K
const
ÖÖ $
RenderTextureReadWrite
ÖÖ (
kRWMode
ÖÖ) 0
=
ÖÖ1 2$
RenderTextureReadWrite
ÖÖ3 I
.
ÖÖI J
Linear
ÖÖJ P
;
ÖÖP Q
const
ÜÜ 

FilterMode
ÜÜ 
kFilter
ÜÜ $
=
ÜÜ% &

FilterMode
ÜÜ' 1
.
ÜÜ1 2
Bilinear
ÜÜ2 :
;
ÜÜ: ;
var
ââ 
rtMask
ââ 
=
ââ 
Uniforms
ââ !
.
ââ! " 
_OcclusionTexture1
ââ" 4
;
ââ4 5
cb
ää 
.
ää 
GetTemporaryRT
ää 
(
ää 
rtMask
ää $
,
ää$ %
tw
ää& (
/
ää) *
ts
ää+ -
,
ää- .
th
ää/ 1
/
ää2 3
ts
ää4 6
,
ää6 7
$num
ää8 9
,
ää9 :
kFilter
ää; B
,
ääB C
kFormat
ääD K
,
ääK L
kRWMode
ääM T
)
ääT U
;
ääU V
cb
çç 
.
çç 
Blit
çç 
(
çç 
(
çç 
Texture
çç 
)
çç 
null
çç !
,
çç! "
rtMask
çç# )
,
çç) *
material
çç+ 3
,
çç3 4
(
çç5 6
int
çç6 9
)
çç9 :
occlusionSource
çç: I
)
ççI J
;
ççJ K
var
êê 
rtBlur
êê 
=
êê 
Uniforms
êê !
.
êê! " 
_OcclusionTexture2
êê" 4
;
êê4 5
cb
ìì 
.
ìì 
GetTemporaryRT
ìì 
(
ìì 
rtBlur
ìì $
,
ìì$ %
tw
ìì& (
,
ìì( )
th
ìì* ,
,
ìì, -
$num
ìì. /
,
ìì/ 0
kFilter
ìì1 8
,
ìì8 9
kFormat
ìì: A
,
ììA B
kRWMode
ììC J
)
ììJ K
;
ììK L
cb
îî 
.
îî 
SetGlobalTexture
îî 
(
îî  
Uniforms
îî  (
.
îî( )
_MainTex
îî) 1
,
îî1 2
rtMask
îî3 9
)
îî9 :
;
îî: ;
cb
ïï 
.
ïï 
Blit
ïï 
(
ïï 
rtMask
ïï 
,
ïï 
rtBlur
ïï "
,
ïï" #
material
ïï$ ,
,
ïï, -
occlusionSource
ïï. =
==
ïï> @
OcclusionSource
ïïA P
.
ïïP Q
GBuffer
ïïQ X
?
ïïY Z
$num
ïï[ \
:
ïï] ^
$num
ïï_ `
)
ïï` a
;
ïïa b
cb
ññ 
.
ññ  
ReleaseTemporaryRT
ññ !
(
ññ! "
rtMask
ññ" (
)
ññ( )
;
ññ) *
rtMask
ôô 
=
ôô 
Uniforms
ôô 
.
ôô 
_OcclusionTexture
ôô /
;
ôô/ 0
cb
öö 
.
öö 
GetTemporaryRT
öö 
(
öö 
rtMask
öö $
,
öö$ %
tw
öö& (
,
öö( )
th
öö* ,
,
öö, -
$num
öö. /
,
öö/ 0
kFilter
öö1 8
,
öö8 9
kFormat
öö: A
,
ööA B
kRWMode
ööC J
)
ööJ K
;
ööK L
cb
õõ 
.
õõ 
SetGlobalTexture
õõ 
(
õõ  
Uniforms
õõ  (
.
õõ( )
_MainTex
õõ) 1
,
õõ1 2
rtBlur
õõ3 9
)
õõ9 :
;
õõ: ;
cb
úú 
.
úú 
Blit
úú 
(
úú 
rtBlur
úú 
,
úú 
rtMask
úú "
,
úú" #
material
úú$ ,
,
úú, -
$num
úú. /
)
úú/ 0
;
úú0 1
cb
ùù 
.
ùù  
ReleaseTemporaryRT
ùù !
(
ùù! "
rtBlur
ùù" (
)
ùù( )
;
ùù) *
if
üü 
(
üü 
context
üü 
.
üü 
profile
üü 
.
üü  

debugViews
üü  *
.
üü* +
IsModeActive
üü+ 7
(
üü7 8
	DebugMode
üü8 A
.
üüA B
AmbientOcclusion
üüB R
)
üüR S
)
üüS T
{
†† 
cb
°° 
.
°° 
SetGlobalTexture
°° #
(
°°# $
Uniforms
°°$ ,
.
°°, -
_MainTex
°°- 5
,
°°5 6
rtMask
°°7 =
)
°°= >
;
°°> ?
cb
¢¢ 
.
¢¢ 
Blit
¢¢ 
(
¢¢ 
rtMask
¢¢ 
,
¢¢ &
BuiltinRenderTextureType
¢¢  8
.
¢¢8 9
CameraTarget
¢¢9 E
,
¢¢E F
material
¢¢G O
,
¢¢O P
$num
¢¢Q R
)
¢¢R S
;
¢¢S T
context
££ 
.
££ 
	Interrupt
££ !
(
££! "
)
££" #
;
££# $
}
§§ 
else
•• 
if
•• 
(
•• "
ambientOnlySupported
•• )
)
••) *
{
¶¶ 
cb
ßß 
.
ßß 
SetRenderTarget
ßß "
(
ßß" #
m_MRT
ßß# (
,
ßß( )&
BuiltinRenderTextureType
ßß* B
.
ßßB C
CameraTarget
ßßC O
)
ßßO P
;
ßßP Q
cb
®® 
.
®® 
DrawMesh
®® 
(
®® 
GraphicsUtils
®® )
.
®®) *
quad
®®* .
,
®®. /
	Matrix4x4
®®0 9
.
®®9 :
identity
®®: B
,
®®B C
material
®®D L
,
®®L M
$num
®®N O
,
®®O P
$num
®®Q R
)
®®R S
;
®®S T
}
©© 
else
™™ 
{
´´ 
var
¨¨ 
fbFormat
¨¨ 
=
¨¨ 
context
¨¨ &
.
¨¨& '
isHdr
¨¨' ,
?
¨¨- .!
RenderTextureFormat
¨¨/ B
.
¨¨B C

DefaultHDR
¨¨C M
:
¨¨N O!
RenderTextureFormat
¨¨P c
.
¨¨c d
Default
¨¨d k
;
¨¨k l
int
ÆÆ 
tempRT
ÆÆ 
=
ÆÆ 
Uniforms
ÆÆ %
.
ÆÆ% &
_TempRT
ÆÆ& -
;
ÆÆ- .
cb
ØØ 
.
ØØ 
GetTemporaryRT
ØØ !
(
ØØ! "
tempRT
ØØ" (
,
ØØ( )
context
ØØ* 1
.
ØØ1 2
width
ØØ2 7
,
ØØ7 8
context
ØØ9 @
.
ØØ@ A
height
ØØA G
,
ØØG H
$num
ØØI J
,
ØØJ K

FilterMode
ØØL V
.
ØØV W
Bilinear
ØØW _
,
ØØ_ `
fbFormat
ØØa i
)
ØØi j
;
ØØj k
cb
∞∞ 
.
∞∞ 
Blit
∞∞ 
(
∞∞ &
BuiltinRenderTextureType
∞∞ 0
.
∞∞0 1
CameraTarget
∞∞1 =
,
∞∞= >
tempRT
∞∞? E
,
∞∞E F
blitMaterial
∞∞G S
,
∞∞S T
$num
∞∞U V
)
∞∞V W
;
∞∞W X
cb
±± 
.
±± 
SetGlobalTexture
±± #
(
±±# $
Uniforms
±±$ ,
.
±±, -
_MainTex
±±- 5
,
±±5 6
tempRT
±±7 =
)
±±= >
;
±±> ?
cb
≤≤ 
.
≤≤ 
Blit
≤≤ 
(
≤≤ 
tempRT
≤≤ 
,
≤≤ &
BuiltinRenderTextureType
≤≤  8
.
≤≤8 9
CameraTarget
≤≤9 E
,
≤≤E F
material
≤≤G O
,
≤≤O P
$num
≤≤Q R
)
≤≤R S
;
≤≤S T
cb
≥≥ 
.
≥≥  
ReleaseTemporaryRT
≥≥ %
(
≥≥% &
tempRT
≥≥& ,
)
≥≥, -
;
≥≥- .
}
¥¥ 
cb
∂∂ 
.
∂∂  
ReleaseTemporaryRT
∂∂ !
(
∂∂! "
rtMask
∂∂" (
)
∂∂( )
;
∂∂) *
}
∑∑ 	
}
∏∏ 
}ππ »z
ßD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\BloomComponent.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class 
BloomComponent &
:' (0
$PostProcessingComponentRenderTexture) M
<M N

BloomModelN X
>X Y
{ 
static 
class 
Uniforms 
{ 	
internal 
static 
readonly $
int% (
_AutoExposure) 6
=> ?
Shader@ F
.F G
PropertyToIDG S
(S T
$strT c
)c d
;d e
internal 
static 
readonly $
int% (

_Threshold) 3
=> ?
Shader@ F
.F G
PropertyToIDG S
(S T
$strT `
)` a
;a b
internal		 
static		 
readonly		 $
int		% (
_Curve		) /
=		> ?
Shader		@ F
.		F G
PropertyToID		G S
(		S T
$str		T \
)		\ ]
;		] ^
internal

 
static

 
readonly

 $
int

% (
_PrefilterOffs

) 7
=

> ?
Shader

@ F
.

F G
PropertyToID

G S
(

S T
$str

T d
)

d e
;

e f
internal 
static 
readonly $
int% (
_SampleScale) 5
=> ?
Shader@ F
.F G
PropertyToIDG S
(S T
$strT b
)b c
;c d
internal 
static 
readonly $
int% (
_BaseTex) 1
=> ?
Shader@ F
.F G
PropertyToIDG S
(S T
$strT ^
)^ _
;_ `
internal 
static 
readonly $
int% (
	_BloomTex) 2
=> ?
Shader@ F
.F G
PropertyToIDG S
(S T
$strT _
)_ `
;` a
internal 
static 
readonly $
int% (
_Bloom_Settings) 8
=> ?
Shader@ F
.F G
PropertyToIDG S
(S T
$strT e
)e f
;f g
internal 
static 
readonly $
int% (
_Bloom_DirtTex) 7
=> ?
Shader@ F
.F G
PropertyToIDG S
(S T
$strT d
)d e
;e f
internal 
static 
readonly $
int% ( 
_Bloom_DirtIntensity) =
=> ?
Shader@ F
.F G
PropertyToIDG S
(S T
$strT j
)j k
;k l
} 	
const 
int !
k_MaxPyramidBlurLevel '
=( )
$num* ,
;, -
readonly 
RenderTexture 
[ 
]  
m_BlurBuffer1! .
=/ 0
new1 4
RenderTexture5 B
[B C!
k_MaxPyramidBlurLevelC X
]X Y
;Y Z
readonly 
RenderTexture 
[ 
]  
m_BlurBuffer2! .
=/ 0
new1 4
RenderTexture5 B
[B C!
k_MaxPyramidBlurLevelC X
]X Y
;Y Z
public 
override 
bool 
active #
{ 	
get 
{ 
return 
model 
. 
enabled $
&& 
model 
.  
settings  (
.( )
bloom) .
.. /
	intensity/ 8
>9 :
$num; =
&& 
! 
context "
." #
interrupted# .
;. /
} 
} 	
public!! 
void!! 
Prepare!! 
(!! 
RenderTexture!! )
source!!* 0
,!!0 1
Material!!2 :
uberMaterial!!; G
,!!G H
Texture!!I P
autoExposure!!Q ]
)!!] ^
{"" 	
var## 
bloom## 
=## 
model## 
.## 
settings## &
.##& '
bloom##' ,
;##, -
var$$ 
lensDirt$$ 
=$$ 
model$$  
.$$  !
settings$$! )
.$$) *
lensDirt$$* 2
;$$2 3
var%% 
material%% 
=%% 
context%% "
.%%" #
materialFactory%%# 2
.%%2 3
Get%%3 6
(%%6 7
$str%%7 M
)%%M N
;%%N O
material&& 
.&& 
shaderKeywords&& #
=&&$ %
null&&& *
;&&* +
material)) 
.)) 

SetTexture)) 
())  
Uniforms))  (
.))( )
_AutoExposure))) 6
,))6 7
autoExposure))8 D
)))D E
;))E F
var-- 
tw-- 
=-- 
context-- 
.-- 
width-- "
/--# $
$num--% &
;--& '
var.. 
th.. 
=.. 
context.. 
... 
height.. #
/..$ %
$num..& '
;..' (
var22 
useRGBM22 
=22 
Application22 %
.22% &
isMobilePlatform22& 6
;226 7
var33 
rtFormat33 
=33 
useRGBM33 "
?44 
RenderTextureFormat44 %
.44% &
Default44& -
:55 
RenderTextureFormat55 %
.55% &

DefaultHDR55& 0
;550 1
float88 
logh88 
=88 
Mathf88 
.88 
Log88 "
(88" #
th88# %
,88% &
$num88' )
)88) *
+88+ ,
bloom88- 2
.882 3
radius883 9
-88: ;
$num88< >
;88> ?
int99 
logh_i99 
=99 
(99 
int99 
)99 
logh99 "
;99" #
int:: 

iterations:: 
=:: 
Mathf:: "
.::" #
Clamp::# (
(::( )
logh_i::) /
,::/ 0
$num::1 2
,::2 3!
k_MaxPyramidBlurLevel::4 I
)::I J
;::J K
float== 
lthresh== 
=== 
bloom== !
.==! "
thresholdLinear==" 1
;==1 2
material>> 
.>> 
SetFloat>> 
(>> 
Uniforms>> &
.>>& '

_Threshold>>' 1
,>>1 2
lthresh>>3 :
)>>: ;
;>>; <
float@@ 
knee@@ 
=@@ 
lthresh@@  
*@@! "
bloom@@# (
.@@( )
softKnee@@) 1
+@@2 3
$num@@4 9
;@@9 :
varAA 
curveAA 
=AA 
newAA 
Vector3AA #
(AA# $
lthreshAA$ +
-AA, -
kneeAA. 2
,AA2 3
kneeAA4 8
*AA9 :
$numAA; =
,AA= >
$numAA? D
/AAE F
kneeAAG K
)AAK L
;AAL M
materialBB 
.BB 
	SetVectorBB 
(BB 
UniformsBB '
.BB' (
_CurveBB( .
,BB. /
curveBB0 5
)BB5 6
;BB6 7
materialDD 
.DD 
SetFloatDD 
(DD 
UniformsDD &
.DD& '
_PrefilterOffsDD' 5
,DD5 6
bloomDD7 <
.DD< =
antiFlickerDD= H
?DDI J
-DDK L
$numDDL P
:DDQ R
$numDDS U
)DDU V
;DDV W
floatFF 
sampleScaleFF 
=FF 
$numFF  $
+FF% &
loghFF' +
-FF, -
logh_iFF. 4
;FF4 5
materialGG 
.GG 
SetFloatGG 
(GG 
UniformsGG &
.GG& '
_SampleScaleGG' 3
,GG3 4
sampleScaleGG5 @
)GG@ A
;GGA B
ifJJ 
(JJ 
bloomJJ 
.JJ 
antiFlickerJJ !
)JJ! "
materialKK 
.KK 
EnableKeywordKK &
(KK& '
$strKK' 5
)KK5 6
;KK6 7
varNN 
prefilteredNN 
=NN 
contextNN %
.NN% & 
renderTextureFactoryNN& :
.NN: ;
GetNN; >
(NN> ?
twNN? A
,NNA B
thNNC E
,NNE F
$numNNG H
,NNH I
rtFormatNNJ R
)NNR S
;NNS T
GraphicsOO 
.OO 
BlitOO 
(OO 
sourceOO  
,OO  !
prefilteredOO" -
,OO- .
materialOO/ 7
,OO7 8
$numOO9 :
)OO: ;
;OO; <
varRR 
lastRR 
=RR 
prefilteredRR "
;RR" #
forTT 
(TT 
intTT 
levelTT 
=TT 
$numTT 
;TT 
levelTT  %
<TT& '

iterationsTT( 2
;TT2 3
levelTT4 9
++TT9 ;
)TT; <
{UU 
m_BlurBuffer1VV 
[VV 
levelVV #
]VV# $
=VV% &
contextVV' .
.VV. / 
renderTextureFactoryVV/ C
.VVC D
GetVVD G
(VVG H
lastWW 
.WW 
widthWW "
/WW# $
$numWW% &
,WW& '
lastWW( ,
.WW, -
heightWW- 3
/WW4 5
$numWW6 7
,WW7 8
$numWW9 :
,WW: ;
rtFormatWW< D
)XX 
;XX 
intZZ 
passZZ 
=ZZ 
(ZZ 
levelZZ !
==ZZ" $
$numZZ% &
)ZZ& '
?ZZ( )
$numZZ* +
:ZZ, -
$numZZ. /
;ZZ/ 0
Graphics[[ 
.[[ 
Blit[[ 
([[ 
last[[ "
,[[" #
m_BlurBuffer1[[$ 1
[[[1 2
level[[2 7
][[7 8
,[[8 9
material[[: B
,[[B C
pass[[D H
)[[H I
;[[I J
last]] 
=]] 
m_BlurBuffer1]] $
[]]$ %
level]]% *
]]]* +
;]]+ ,
}^^ 
foraa 
(aa 
intaa 
levelaa 
=aa 

iterationsaa '
-aa( )
$numaa* +
;aa+ ,
levelaa- 2
>=aa3 5
$numaa6 7
;aa7 8
levelaa9 >
--aa> @
)aa@ A
{bb 
varcc 
baseTexcc 
=cc 
m_BlurBuffer1cc +
[cc+ ,
levelcc, 1
]cc1 2
;cc2 3
materialdd 
.dd 

SetTexturedd #
(dd# $
Uniformsdd$ ,
.dd, -
_BaseTexdd- 5
,dd5 6
baseTexdd7 >
)dd> ?
;dd? @
m_BlurBuffer2ff 
[ff 
levelff #
]ff# $
=ff% &
contextff' .
.ff. / 
renderTextureFactoryff/ C
.ffC D
GetffD G
(ffG H
baseTexgg 
.gg  
widthgg  %
,gg% &
baseTexgg' .
.gg. /
heightgg/ 5
,gg5 6
$numgg7 8
,gg8 9
rtFormatgg: B
)hh 
;hh 
Graphicsjj 
.jj 
Blitjj 
(jj 
lastjj "
,jj" #
m_BlurBuffer2jj$ 1
[jj1 2
leveljj2 7
]jj7 8
,jj8 9
materialjj: B
,jjB C
$numjjD E
)jjE F
;jjF G
lastkk 
=kk 
m_BlurBuffer2kk $
[kk$ %
levelkk% *
]kk* +
;kk+ ,
}ll 
varnn 
bloomTexnn 
=nn 
lastnn 
;nn  
forqq 
(qq 
intqq 
iqq 
=qq 
$numqq 
;qq 
iqq 
<qq !
k_MaxPyramidBlurLevelqq  5
;qq5 6
iqq7 8
++qq8 :
)qq: ;
{rr 
ifss 
(ss 
m_BlurBuffer1ss !
[ss! "
iss" #
]ss# $
!=ss% '
nullss( ,
)ss, -
contexttt 
.tt  
renderTextureFactorytt 0
.tt0 1
Releasett1 8
(tt8 9
m_BlurBuffer1tt9 F
[ttF G
ittG H
]ttH I
)ttI J
;ttJ K
ifvv 
(vv 
m_BlurBuffer2vv !
[vv! "
ivv" #
]vv# $
!=vv% '
nullvv( ,
&&vv- /
m_BlurBuffer2vv0 =
[vv= >
ivv> ?
]vv? @
!=vvA C
bloomTexvvD L
)vvL M
contextww 
.ww  
renderTextureFactoryww 0
.ww0 1
Releaseww1 8
(ww8 9
m_BlurBuffer2ww9 F
[wwF G
iwwG H
]wwH I
)wwI J
;wwJ K
m_BlurBuffer1yy 
[yy 
iyy 
]yy  
=yy! "
nullyy# '
;yy' (
m_BlurBuffer2zz 
[zz 
izz 
]zz  
=zz! "
nullzz# '
;zz' (
}{{ 
context}} 
.}}  
renderTextureFactory}} (
.}}( )
Release}}) 0
(}}0 1
prefiltered}}1 <
)}}< =
;}}= >
uberMaterial
ÄÄ 
.
ÄÄ 

SetTexture
ÄÄ #
(
ÄÄ# $
Uniforms
ÄÄ$ ,
.
ÄÄ, -
	_BloomTex
ÄÄ- 6
,
ÄÄ6 7
bloomTex
ÄÄ8 @
)
ÄÄ@ A
;
ÄÄA B
uberMaterial
ÅÅ 
.
ÅÅ 
	SetVector
ÅÅ "
(
ÅÅ" #
Uniforms
ÅÅ# +
.
ÅÅ+ ,
_Bloom_Settings
ÅÅ, ;
,
ÅÅ; <
new
ÅÅ= @
Vector2
ÅÅA H
(
ÅÅH I
sampleScale
ÅÅI T
,
ÅÅT U
bloom
ÅÅV [
.
ÅÅ[ \
	intensity
ÅÅ\ e
)
ÅÅe f
)
ÅÅf g
;
ÅÅg h
if
ÉÉ 
(
ÉÉ 
lensDirt
ÉÉ 
.
ÉÉ 
	intensity
ÉÉ "
>
ÉÉ# $
$num
ÉÉ% '
&&
ÉÉ( *
lensDirt
ÉÉ+ 3
.
ÉÉ3 4
texture
ÉÉ4 ;
!=
ÉÉ< >
null
ÉÉ? C
)
ÉÉC D
{
ÑÑ 
uberMaterial
ÖÖ 
.
ÖÖ 

SetTexture
ÖÖ '
(
ÖÖ' (
Uniforms
ÖÖ( 0
.
ÖÖ0 1
_Bloom_DirtTex
ÖÖ1 ?
,
ÖÖ? @
lensDirt
ÖÖA I
.
ÖÖI J
texture
ÖÖJ Q
)
ÖÖQ R
;
ÖÖR S
uberMaterial
ÜÜ 
.
ÜÜ 
SetFloat
ÜÜ %
(
ÜÜ% &
Uniforms
ÜÜ& .
.
ÜÜ. /"
_Bloom_DirtIntensity
ÜÜ/ C
,
ÜÜC D
lensDirt
ÜÜE M
.
ÜÜM N
	intensity
ÜÜN W
)
ÜÜW X
;
ÜÜX Y
uberMaterial
áá 
.
áá 
EnableKeyword
áá *
(
áá* +
$str
áá+ <
)
áá< =
;
áá= >
}
àà 
else
ââ 
{
ää 
uberMaterial
ãã 
.
ãã 
EnableKeyword
ãã *
(
ãã* +
$str
ãã+ 2
)
ãã2 3
;
ãã3 4
}
åå 
}
çç 	
}
éé 
}èè Ã¡
≥D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\BuiltinDebugViewsComponent.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class &
BuiltinDebugViewsComponent 2
:3 40
$PostProcessingComponentCommandBuffer5 Y
<Y Z"
BuiltinDebugViewsModelZ p
>p q
{		 
static

 
class

 
Uniforms

 
{ 	
internal 
static 
readonly $
int% (
_DepthScale) 4
=5 6
Shader7 =
.= >
PropertyToID> J
(J K
$strK X
)X Y
;Y Z
internal 
static 
readonly $
int% (
_TempRT) 0
=5 6
Shader7 =
.= >
PropertyToID> J
(J K
$strK T
)T U
;U V
internal 
static 
readonly $
int% (
_Opacity) 1
=5 6
Shader7 =
.= >
PropertyToID> J
(J K
$strK U
)U V
;V W
internal 
static 
readonly $
int% (
_MainTex) 1
=5 6
Shader7 =
.= >
PropertyToID> J
(J K
$strK U
)U V
;V W
internal 
static 
readonly $
int% (
_TempRT2) 1
=5 6
Shader7 =
.= >
PropertyToID> J
(J K
$strK U
)U V
;V W
internal 
static 
readonly $
int% (

_Amplitude) 3
=5 6
Shader7 =
.= >
PropertyToID> J
(J K
$strK W
)W X
;X Y
internal 
static 
readonly $
int% (
_Scale) /
=5 6
Shader7 =
.= >
PropertyToID> J
(J K
$strK S
)S T
;T U
} 	
const 
string 
k_ShaderString #
=$ %
$str& J
;J K
enum 
Pass 
{ 	
Depth 
, 
Normals 
, 
MovecOpacity 
, 
MovecImaging 
, 
MovecArrows 
} 	

ArrowArray   
m_Arrows   
;   
class"" 

ArrowArray"" 
{## 	
public$$ 
Mesh$$ 
mesh$$ 
{$$ 
get$$ "
;$$" #
private$$$ +
set$$, /
;$$/ 0
}$$1 2
public&& 
int&& 
columnCount&& "
{&&# $
get&&% (
;&&( )
private&&* 1
set&&2 5
;&&5 6
}&&7 8
public'' 
int'' 
rowCount'' 
{''  !
get''" %
;''% &
private''' .
set''/ 2
;''2 3
}''4 5
public)) 
void)) 
	BuildMesh)) !
())! "
int))" %
columns))& -
,))- .
int))/ 2
rows))3 7
)))7 8
{** 
var,, 
arrow,, 
=,, 
new,, 
Vector3,,  '
[,,' (
$num,,( )
],,) *
{-- 
new.. 
Vector3.. 
(..  
$num..  "
,.." #
$num..$ &
,..& '
$num..( *
)..* +
,..+ ,
new// 
Vector3// 
(//  
$num//  "
,//" #
$num//$ &
,//& '
$num//( *
)//* +
,//+ ,
new00 
Vector300 
(00  
$num00  "
,00" #
$num00$ &
,00& '
$num00( *
)00* +
,00+ ,
new11 
Vector311 
(11  
-11  !
$num11! #
,11# $
$num11% '
,11' (
$num11) +
)11+ ,
,11, -
new22 
Vector322 
(22  
$num22  "
,22" #
$num22$ &
,22& '
$num22( *
)22* +
,22+ ,
new33 
Vector333 
(33  
$num33  "
,33" #
$num33$ &
,33& '
$num33( *
)33* +
}44 
;44 
int77 
vcount77 
=77 
$num77 
*77  
columns77! (
*77) *
rows77+ /
;77/ 0
var88 
vertices88 
=88 
new88 "
List88# '
<88' (
Vector388( /
>88/ 0
(880 1
vcount881 7
)887 8
;888 9
var99 
uvs99 
=99 
new99 
List99 "
<99" #
Vector299# *
>99* +
(99+ ,
vcount99, 2
)992 3
;993 4
for;; 
(;; 
int;; 
iy;; 
=;; 
$num;; 
;;;  
iy;;! #
<;;$ %
rows;;& *
;;;* +
iy;;, .
++;;. 0
);;0 1
{<< 
for== 
(== 
int== 
ix== 
===  !
$num==" #
;==# $
ix==% '
<==( )
columns==* 1
;==1 2
ix==3 5
++==5 7
)==7 8
{>> 
var?? 
uv?? 
=??  
new??! $
Vector2??% ,
(??, -
(@@  !
$num@@! %
+@@& '
ix@@( *
)@@* +
/@@, -
columns@@. 5
,@@5 6
(AA  !
$numAA! %
+AA& '
iyAA( *
)AA* +
/AA, -
rowsAA. 2
)BB  !
;BB! "
forDD 
(DD 
intDD  
iDD! "
=DD# $
$numDD% &
;DD& '
iDD( )
<DD* +
$numDD, -
;DD- .
iDD/ 0
++DD0 2
)DD2 3
{EE 
verticesFF $
.FF$ %
AddFF% (
(FF( )
arrowFF) .
[FF. /
iFF/ 0
]FF0 1
)FF1 2
;FF2 3
uvsGG 
.GG  
AddGG  #
(GG# $
uvGG$ &
)GG& '
;GG' (
}HH 
}II 
}JJ 
varMM 
indicesMM 
=MM 
newMM !
intMM" %
[MM% &
vcountMM& ,
]MM, -
;MM- .
forOO 
(OO 
intOO 
iOO 
=OO 
$numOO 
;OO 
iOO  !
<OO" #
vcountOO$ *
;OO* +
iOO, -
++OO- /
)OO/ 0
indicesPP 
[PP 
iPP 
]PP 
=PP  
iPP! "
;PP" #
meshSS 
=SS 
newSS 
MeshSS 
{SS  !
	hideFlagsSS" +
=SS, -
	HideFlagsSS. 7
.SS7 8
DontSaveSS8 @
}SSA B
;SSB C
meshTT 
.TT 
SetVerticesTT  
(TT  !
verticesTT! )
)TT) *
;TT* +
meshUU 
.UU 
SetUVsUU 
(UU 
$numUU 
,UU 
uvsUU "
)UU" #
;UU# $
meshVV 
.VV 

SetIndicesVV 
(VV  
indicesVV  '
,VV' (
MeshTopologyVV) 5
.VV5 6
LinesVV6 ;
,VV; <
$numVV= >
)VV> ?
;VV? @
meshWW 
.WW 
UploadMeshDataWW #
(WW# $
trueWW$ (
)WW( )
;WW) *
columnCountZZ 
=ZZ 
columnsZZ %
;ZZ% &
rowCount[[ 
=[[ 
rows[[ 
;[[  
}\\ 
public^^ 
void^^ 
Release^^ 
(^^  
)^^  !
{__ 
GraphicsUtils`` 
.`` 
Destroy`` %
(``% &
mesh``& *
)``* +
;``+ ,
meshaa 
=aa 
nullaa 
;aa 
}bb 
}cc 	
publicee 
overrideee 
boolee 
activeee #
{ff 	
getgg 
{hh 
returnii 
modelii 
.ii 
IsModeActiveii )
(ii) *
Modeii* .
.ii. /
Depthii/ 4
)ii4 5
||jj 
modeljj 
.jj  
IsModeActivejj  ,
(jj, -
Modejj- 1
.jj1 2
Normalsjj2 9
)jj9 :
||kk 
modelkk 
.kk  
IsModeActivekk  ,
(kk, -
Modekk- 1
.kk1 2
MotionVectorskk2 ?
)kk? @
;kk@ A
}ll 
}mm 	
publicoo 
overrideoo 
DepthTextureModeoo (
GetCameraFlagsoo) 7
(oo7 8
)oo8 9
{pp 	
varqq 
modeqq 
=qq 
modelqq 
.qq 
settingsqq %
.qq% &
modeqq& *
;qq* +
varrr 
flagsrr 
=rr 
DepthTextureModerr (
.rr( )
Nonerr) -
;rr- .
switchtt 
(tt 
modett 
)tt 
{uu 
casevv 
Modevv 
.vv 
Normalsvv !
:vv! "
flagsww 
|=ww 
DepthTextureModeww -
.ww- .
DepthNormalsww. :
;ww: ;
breakxx 
;xx 
caseyy 
Modeyy 
.yy 
MotionVectorsyy '
:yy' (
flagszz 
|=zz 
DepthTextureModezz -
.zz- .
MotionVectorszz. ;
|zz< =
DepthTextureModezz> N
.zzN O
DepthzzO T
;zzT U
break{{ 
;{{ 
case|| 
Mode|| 
.|| 
Depth|| 
:||  
flags}} 
|=}} 
DepthTextureMode}} -
.}}- .
Depth}}. 3
;}}3 4
break~~ 
;~~ 
} 
return
ÅÅ 
flags
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
public
ÑÑ 
override
ÑÑ 
CameraEvent
ÑÑ #
GetCameraEvent
ÑÑ$ 2
(
ÑÑ2 3
)
ÑÑ3 4
{
ÖÖ 	
return
ÜÜ 
model
ÜÜ 
.
ÜÜ 
settings
ÜÜ !
.
ÜÜ! "
mode
ÜÜ" &
==
ÜÜ' )
Mode
ÜÜ* .
.
ÜÜ. /
MotionVectors
ÜÜ/ <
?
áá 
CameraEvent
áá  
.
áá  ! 
BeforeImageEffects
áá! 3
:
àà 
CameraEvent
àà  
.
àà  !&
BeforeImageEffectsOpaque
àà! 9
;
àà9 :
}
ââ 	
public
ãã 
override
ãã 
string
ãã 
GetName
ãã &
(
ãã& '
)
ãã' (
{
åå 	
return
çç 
$str
çç (
;
çç( )
}
éé 	
public
êê 
override
êê 
void
êê #
PopulateCommandBuffer
êê 2
(
êê2 3
CommandBuffer
êê3 @
cb
êêA C
)
êêC D
{
ëë 	
var
íí 
settings
íí 
=
íí 
model
íí  
.
íí  !
settings
íí! )
;
íí) *
var
ìì 
material
ìì 
=
ìì 
context
ìì "
.
ìì" #
materialFactory
ìì# 2
.
ìì2 3
Get
ìì3 6
(
ìì6 7
k_ShaderString
ìì7 E
)
ììE F
;
ììF G
material
îî 
.
îî 
shaderKeywords
îî #
=
îî$ %
null
îî& *
;
îî* +
if
ññ 
(
ññ 
context
ññ 
.
ññ  
isGBufferAvailable
ññ *
)
ññ* +
material
óó 
.
óó 
EnableKeyword
óó &
(
óó& '
$str
óó' 7
)
óó7 8
;
óó8 9
switch
ôô 
(
ôô 
settings
ôô 
.
ôô 
mode
ôô !
)
ôô! "
{
öö 
case
õõ 
Mode
õõ 
.
õõ 
Depth
õõ 
:
õõ  
	DepthPass
úú 
(
úú 
cb
úú  
)
úú  !
;
úú! "
break
ùù 
;
ùù 
case
ûû 
Mode
ûû 
.
ûû 
Normals
ûû !
:
ûû! "
DepthNormalsPass
üü $
(
üü$ %
cb
üü% '
)
üü' (
;
üü( )
break
†† 
;
†† 
case
°° 
Mode
°° 
.
°° 
MotionVectors
°° '
:
°°' (
MotionVectorsPass
¢¢ %
(
¢¢% &
cb
¢¢& (
)
¢¢( )
;
¢¢) *
break
££ 
;
££ 
}
§§ 
context
¶¶ 
.
¶¶ 
	Interrupt
¶¶ 
(
¶¶ 
)
¶¶ 
;
¶¶  
}
ßß 	
void
©© 
	DepthPass
©© 
(
©© 
CommandBuffer
©© $
cb
©©% '
)
©©' (
{
™™ 	
var
´´ 
material
´´ 
=
´´ 
context
´´ "
.
´´" #
materialFactory
´´# 2
.
´´2 3
Get
´´3 6
(
´´6 7
k_ShaderString
´´7 E
)
´´E F
;
´´F G
var
¨¨ 
settings
¨¨ 
=
¨¨ 
model
¨¨  
.
¨¨  !
settings
¨¨! )
.
¨¨) *
depth
¨¨* /
;
¨¨/ 0
cb
ÆÆ 
.
ÆÆ 
SetGlobalFloat
ÆÆ 
(
ÆÆ 
Uniforms
ÆÆ &
.
ÆÆ& '
_DepthScale
ÆÆ' 2
,
ÆÆ2 3
$num
ÆÆ4 6
/
ÆÆ7 8
settings
ÆÆ9 A
.
ÆÆA B
scale
ÆÆB G
)
ÆÆG H
;
ÆÆH I
cb
ØØ 
.
ØØ 
Blit
ØØ 
(
ØØ 
(
ØØ 
Texture
ØØ 
)
ØØ 
null
ØØ !
,
ØØ! "&
BuiltinRenderTextureType
ØØ# ;
.
ØØ; <
CameraTarget
ØØ< H
,
ØØH I
material
ØØJ R
,
ØØR S
(
ØØT U
int
ØØU X
)
ØØX Y
Pass
ØØY ]
.
ØØ] ^
Depth
ØØ^ c
)
ØØc d
;
ØØd e
}
∞∞ 	
void
≤≤ 
DepthNormalsPass
≤≤ 
(
≤≤ 
CommandBuffer
≤≤ +
cb
≤≤, .
)
≤≤. /
{
≥≥ 	
var
¥¥ 
material
¥¥ 
=
¥¥ 
context
¥¥ "
.
¥¥" #
materialFactory
¥¥# 2
.
¥¥2 3
Get
¥¥3 6
(
¥¥6 7
k_ShaderString
¥¥7 E
)
¥¥E F
;
¥¥F G
cb
µµ 
.
µµ 
Blit
µµ 
(
µµ 
(
µµ 
Texture
µµ 
)
µµ 
null
µµ !
,
µµ! "&
BuiltinRenderTextureType
µµ# ;
.
µµ; <
CameraTarget
µµ< H
,
µµH I
material
µµJ R
,
µµR S
(
µµT U
int
µµU X
)
µµX Y
Pass
µµY ]
.
µµ] ^
Normals
µµ^ e
)
µµe f
;
µµf g
}
∂∂ 	
void
∏∏ 
MotionVectorsPass
∏∏ 
(
∏∏ 
CommandBuffer
∏∏ ,
cb
∏∏- /
)
∏∏/ 0
{
ππ 	
if
ΩΩ 
(
ΩΩ 
!
ΩΩ 
Application
ΩΩ 
.
ΩΩ 
	isPlaying
ΩΩ &
)
ΩΩ& '
return
ææ 
;
ææ 
var
¡¡ 
material
¡¡ 
=
¡¡ 
context
¡¡ "
.
¡¡" #
materialFactory
¡¡# 2
.
¡¡2 3
Get
¡¡3 6
(
¡¡6 7
k_ShaderString
¡¡7 E
)
¡¡E F
;
¡¡F G
var
¬¬ 
settings
¬¬ 
=
¬¬ 
model
¬¬  
.
¬¬  !
settings
¬¬! )
.
¬¬) *
motionVectors
¬¬* 7
;
¬¬7 8
int
≈≈ 
tempRT
≈≈ 
=
≈≈ 
Uniforms
≈≈ !
.
≈≈! "
_TempRT
≈≈" )
;
≈≈) *
cb
∆∆ 
.
∆∆ 
GetTemporaryRT
∆∆ 
(
∆∆ 
tempRT
∆∆ $
,
∆∆$ %
context
∆∆& -
.
∆∆- .
width
∆∆. 3
,
∆∆3 4
context
∆∆5 <
.
∆∆< =
height
∆∆= C
,
∆∆C D
$num
∆∆E F
,
∆∆F G

FilterMode
∆∆H R
.
∆∆R S
Bilinear
∆∆S [
)
∆∆[ \
;
∆∆\ ]
cb
«« 
.
«« 
SetGlobalFloat
«« 
(
«« 
Uniforms
«« &
.
««& '
_Opacity
««' /
,
««/ 0
settings
««1 9
.
««9 :
sourceOpacity
««: G
)
««G H
;
««H I
cb
»» 
.
»» 
SetGlobalTexture
»» 
(
»»  
Uniforms
»»  (
.
»»( )
_MainTex
»») 1
,
»»1 2&
BuiltinRenderTextureType
»»3 K
.
»»K L
CameraTarget
»»L X
)
»»X Y
;
»»Y Z
cb
…… 
.
…… 
Blit
…… 
(
…… &
BuiltinRenderTextureType
…… ,
.
……, -
CameraTarget
……- 9
,
……9 :
tempRT
……; A
,
……A B
material
……C K
,
……K L
(
……M N
int
……N Q
)
……Q R
Pass
……R V
.
……V W
MovecOpacity
……W c
)
……c d
;
……d e
if
ÃÃ 
(
ÃÃ 
settings
ÃÃ 
.
ÃÃ  
motionImageOpacity
ÃÃ +
>
ÃÃ, -
$num
ÃÃ. 0
&&
ÃÃ1 3
settings
ÃÃ4 <
.
ÃÃ< ="
motionImageAmplitude
ÃÃ= Q
>
ÃÃR S
$num
ÃÃT V
)
ÃÃV W
{
ÕÕ 
int
ŒŒ 
tempRT2
ŒŒ 
=
ŒŒ 
Uniforms
ŒŒ &
.
ŒŒ& '
_TempRT2
ŒŒ' /
;
ŒŒ/ 0
cb
œœ 
.
œœ 
GetTemporaryRT
œœ !
(
œœ! "
tempRT2
œœ" )
,
œœ) *
context
œœ+ 2
.
œœ2 3
width
œœ3 8
,
œœ8 9
context
œœ: A
.
œœA B
height
œœB H
,
œœH I
$num
œœJ K
,
œœK L

FilterMode
œœM W
.
œœW X
Bilinear
œœX `
)
œœ` a
;
œœa b
cb
–– 
.
–– 
SetGlobalFloat
–– !
(
––! "
Uniforms
––" *
.
––* +
_Opacity
––+ 3
,
––3 4
settings
––5 =
.
––= > 
motionImageOpacity
––> P
)
––P Q
;
––Q R
cb
—— 
.
—— 
SetGlobalFloat
—— !
(
——! "
Uniforms
——" *
.
——* +

_Amplitude
——+ 5
,
——5 6
settings
——7 ?
.
——? @"
motionImageAmplitude
——@ T
)
——T U
;
——U V
cb
““ 
.
““ 
SetGlobalTexture
““ #
(
““# $
Uniforms
““$ ,
.
““, -
_MainTex
““- 5
,
““5 6
tempRT
““7 =
)
““= >
;
““> ?
cb
”” 
.
”” 
Blit
”” 
(
”” 
tempRT
”” 
,
”” 
tempRT2
””  '
,
””' (
material
””) 1
,
””1 2
(
””3 4
int
””4 7
)
””7 8
Pass
””8 <
.
””< =
MovecImaging
””= I
)
””I J
;
””J K
cb
‘‘ 
.
‘‘  
ReleaseTemporaryRT
‘‘ %
(
‘‘% &
tempRT
‘‘& ,
)
‘‘, -
;
‘‘- .
tempRT
’’ 
=
’’ 
tempRT2
’’  
;
’’  !
}
÷÷ 
if
ŸŸ 
(
ŸŸ 
settings
ŸŸ 
.
ŸŸ "
motionVectorsOpacity
ŸŸ -
>
ŸŸ. /
$num
ŸŸ0 2
&&
ŸŸ3 5
settings
ŸŸ6 >
.
ŸŸ> ?$
motionVectorsAmplitude
ŸŸ? U
>
ŸŸV W
$num
ŸŸX Z
)
ŸŸZ [
{
⁄⁄ 
PrepareArrows
€€ 
(
€€ 
)
€€ 
;
€€  
float
›› 
sy
›› 
=
›› 
$num
›› 
/
›› 
settings
››  (
.
››( )%
motionVectorsResolution
››) @
;
››@ A
float
ﬁﬁ 
sx
ﬁﬁ 
=
ﬁﬁ 
sy
ﬁﬁ 
*
ﬁﬁ 
context
ﬁﬁ  '
.
ﬁﬁ' (
height
ﬁﬁ( .
/
ﬁﬁ/ 0
context
ﬁﬁ1 8
.
ﬁﬁ8 9
width
ﬁﬁ9 >
;
ﬁﬁ> ?
cb
‡‡ 
.
‡‡ 
SetGlobalVector
‡‡ "
(
‡‡" #
Uniforms
‡‡# +
.
‡‡+ ,
_Scale
‡‡, 2
,
‡‡2 3
new
‡‡4 7
Vector2
‡‡8 ?
(
‡‡? @
sx
‡‡@ B
,
‡‡B C
sy
‡‡D F
)
‡‡F G
)
‡‡G H
;
‡‡H I
cb
·· 
.
·· 
SetGlobalFloat
·· !
(
··! "
Uniforms
··" *
.
··* +
_Opacity
··+ 3
,
··3 4
settings
··5 =
.
··= >"
motionVectorsOpacity
··> R
)
··R S
;
··S T
cb
‚‚ 
.
‚‚ 
SetGlobalFloat
‚‚ !
(
‚‚! "
Uniforms
‚‚" *
.
‚‚* +

_Amplitude
‚‚+ 5
,
‚‚5 6
settings
‚‚7 ?
.
‚‚? @$
motionVectorsAmplitude
‚‚@ V
)
‚‚V W
;
‚‚W X
cb
„„ 
.
„„ 
DrawMesh
„„ 
(
„„ 
m_Arrows
„„ $
.
„„$ %
mesh
„„% )
,
„„) *
	Matrix4x4
„„+ 4
.
„„4 5
identity
„„5 =
,
„„= >
material
„„? G
,
„„G H
$num
„„I J
,
„„J K
(
„„L M
int
„„M P
)
„„P Q
Pass
„„Q U
.
„„U V
MovecArrows
„„V a
)
„„a b
;
„„b c
}
‰‰ 
cb
ÊÊ 
.
ÊÊ 
SetGlobalTexture
ÊÊ 
(
ÊÊ  
Uniforms
ÊÊ  (
.
ÊÊ( )
_MainTex
ÊÊ) 1
,
ÊÊ1 2
tempRT
ÊÊ3 9
)
ÊÊ9 :
;
ÊÊ: ;
cb
ÁÁ 
.
ÁÁ 
Blit
ÁÁ 
(
ÁÁ 
tempRT
ÁÁ 
,
ÁÁ &
BuiltinRenderTextureType
ÁÁ 4
.
ÁÁ4 5
CameraTarget
ÁÁ5 A
)
ÁÁA B
;
ÁÁB C
cb
ËË 
.
ËË  
ReleaseTemporaryRT
ËË !
(
ËË! "
tempRT
ËË" (
)
ËË( )
;
ËË) *
}
ÈÈ 	
void
ÎÎ 
PrepareArrows
ÎÎ 
(
ÎÎ 
)
ÎÎ 
{
ÏÏ 	
int
ÌÌ 
row
ÌÌ 
=
ÌÌ 
model
ÌÌ 
.
ÌÌ 
settings
ÌÌ $
.
ÌÌ$ %
motionVectors
ÌÌ% 2
.
ÌÌ2 3%
motionVectorsResolution
ÌÌ3 J
;
ÌÌJ K
int
ÓÓ 
col
ÓÓ 
=
ÓÓ 
row
ÓÓ 
*
ÓÓ 
Screen
ÓÓ "
.
ÓÓ" #
width
ÓÓ# (
/
ÓÓ) *
Screen
ÓÓ+ 1
.
ÓÓ1 2
height
ÓÓ2 8
;
ÓÓ8 9
if
 
(
 
m_Arrows
 
==
 
null
  
)
  !
m_Arrows
ÒÒ 
=
ÒÒ 
new
ÒÒ 

ArrowArray
ÒÒ )
(
ÒÒ) *
)
ÒÒ* +
;
ÒÒ+ ,
if
ÛÛ 
(
ÛÛ 
m_Arrows
ÛÛ 
.
ÛÛ 
columnCount
ÛÛ $
!=
ÛÛ% '
col
ÛÛ( +
||
ÛÛ, .
m_Arrows
ÛÛ/ 7
.
ÛÛ7 8
rowCount
ÛÛ8 @
!=
ÛÛA C
row
ÛÛD G
)
ÛÛG H
{
ÙÙ 
m_Arrows
ıı 
.
ıı 
Release
ıı  
(
ıı  !
)
ıı! "
;
ıı" #
m_Arrows
ˆˆ 
.
ˆˆ 
	BuildMesh
ˆˆ "
(
ˆˆ" #
col
ˆˆ# &
,
ˆˆ& '
row
ˆˆ( +
)
ˆˆ+ ,
;
ˆˆ, -
}
˜˜ 
}
¯¯ 	
public
˙˙ 
override
˙˙ 
void
˙˙ 
	OnDisable
˙˙ &
(
˙˙& '
)
˙˙' (
{
˚˚ 	
if
¸¸ 
(
¸¸ 
m_Arrows
¸¸ 
!=
¸¸ 
null
¸¸  
)
¸¸  !
m_Arrows
˝˝ 
.
˝˝ 
Release
˝˝  
(
˝˝  !
)
˝˝! "
;
˝˝" #
m_Arrows
ˇˇ 
=
ˇˇ 
null
ˇˇ 
;
ˇˇ 
}
ÄÄ 	
}
ÅÅ 
}ÇÇ Œ*
µD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\ChromaticAberrationComponent.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class (
ChromaticAberrationComponent 4
:5 60
$PostProcessingComponentRenderTexture7 [
<[ \$
ChromaticAberrationModel\ t
>t u
{ 
static 
class 
Uniforms 
{ 	
internal 
static 
readonly $
int% ('
_ChromaticAberration_Amount) D
=G H
ShaderI O
.O P
PropertyToIDP \
(\ ]
$str] z
)z {
;{ |
internal 
static 
readonly $
int% ()
_ChromaticAberration_Spectrum) F
=G H
ShaderI O
.O P
PropertyToIDP \
(\ ]
$str] |
)| }
;} ~
}		 	
	Texture2D 
m_SpectrumLut 
;  
public 
override 
bool 
active #
{ 	
get 
{ 
return 
model 
. 
enabled $
&& 
model 
.  
settings  (
.( )
	intensity) 2
>3 4
$num5 7
&& 
! 
context "
." #
interrupted# .
;. /
} 
} 	
public 
override 
void 
	OnDisable &
(& '
)' (
{ 	
GraphicsUtils 
. 
Destroy !
(! "
m_SpectrumLut" /
)/ 0
;0 1
m_SpectrumLut 
= 
null  
;  !
} 	
public 
override 
void 
Prepare $
($ %
Material% -
uberMaterial. :
): ;
{ 	
var 
settings 
= 
model  
.  !
settings! )
;) *
var   
spectralLut   
=   
settings   &
.  & '
spectralTexture  ' 6
;  6 7
if"" 
("" 
spectralLut"" 
=="" 
null"" #
)""# $
{## 
if$$ 
($$ 
m_SpectrumLut$$ !
==$$" $
null$$% )
)$$) *
{%% 
m_SpectrumLut&& !
=&&" #
new&&$ '
	Texture2D&&( 1
(&&1 2
$num&&2 3
,&&3 4
$num&&5 6
,&&6 7
TextureFormat&&8 E
.&&E F
RGB24&&F K
,&&K L
false&&M R
)&&R S
{'' 
name(( 
=(( 
$str(( E
,((E F

filterMode)) "
=))# $

FilterMode))% /
.))/ 0
Bilinear))0 8
,))8 9
wrapMode**  
=**! "
TextureWrapMode**# 2
.**2 3
Clamp**3 8
,**8 9

anisoLevel++ "
=++# $
$num++% &
,++& '
	hideFlags,, !
=,," #
	HideFlags,,$ -
.,,- .
DontSave,,. 6
}-- 
;-- 
var// 
pixels// 
=//  
new//! $
Color//% *
[//* +
$num//+ ,
]//, -
;//- .
pixels00 
[00 
$num00 
]00 
=00 
new00  #
Color00$ )
(00) *
$num00* ,
,00, -
$num00. 0
,000 1
$num002 4
)004 5
;005 6
pixels11 
[11 
$num11 
]11 
=11 
new11  #
Color11$ )
(11) *
$num11* ,
,11, -
$num11. 0
,110 1
$num112 4
)114 5
;115 6
pixels22 
[22 
$num22 
]22 
=22 
new22  #
Color22$ )
(22) *
$num22* ,
,22, -
$num22. 0
,220 1
$num222 4
)224 5
;225 6
m_SpectrumLut33 !
.33! "
	SetPixels33" +
(33+ ,
pixels33, 2
)332 3
;333 4
m_SpectrumLut44 !
.44! "
Apply44" '
(44' (
)44( )
;44) *
}55 
spectralLut77 
=77 
m_SpectrumLut77 +
;77+ ,
}88 
uberMaterial:: 
.:: 
EnableKeyword:: &
(::& '
$str::' =
)::= >
;::> ?
uberMaterial;; 
.;; 
SetFloat;; !
(;;! "
Uniforms;;" *
.;;* +'
_ChromaticAberration_Amount;;+ F
,;;F G
settings;;H P
.;;P Q
	intensity;;Q Z
*;;[ \
$num;;] b
);;b c
;;;c d
uberMaterial<< 
.<< 

SetTexture<< #
(<<# $
Uniforms<<$ ,
.<<, -)
_ChromaticAberration_Spectrum<<- J
,<<J K
spectralLut<<L W
)<<W X
;<<X Y
}== 	
}>> 
}?? áµ
ÆD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\ColorGradingComponent.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class !
ColorGradingComponent -
:. /0
$PostProcessingComponentRenderTexture0 T
<T U
ColorGradingModelU f
>f g
{ 
static 
class 
Uniforms 
{ 	
internal		 
static		 
readonly		 $
int		% (

_LutParams		) 3
=		C D
Shader		E K
.		K L
PropertyToID		L X
(		X Y
$str		Y e
)		e f
;		f g
internal

 
static

 
readonly

 $
int

% (%
_NeutralTonemapperParams1

) B
=

C D
Shader

E K
.

K L
PropertyToID

L X
(

X Y
$str

Y t
)

t u
;

u v
internal 
static 
readonly $
int% (%
_NeutralTonemapperParams2) B
=C D
ShaderE K
.K L
PropertyToIDL X
(X Y
$strY t
)t u
;u v
internal 
static 
readonly $
int% (
	_HueShift) 2
=C D
ShaderE K
.K L
PropertyToIDL X
(X Y
$strY d
)d e
;e f
internal 
static 
readonly $
int% (
_Saturation) 4
=C D
ShaderE K
.K L
PropertyToIDL X
(X Y
$strY f
)f g
;g h
internal 
static 
readonly $
int% (
	_Contrast) 2
=C D
ShaderE K
.K L
PropertyToIDL X
(X Y
$strY d
)d e
;e f
internal 
static 
readonly $
int% (
_Balance) 1
=C D
ShaderE K
.K L
PropertyToIDL X
(X Y
$strY c
)c d
;d e
internal 
static 
readonly $
int% (
_Lift) .
=C D
ShaderE K
.K L
PropertyToIDL X
(X Y
$strY `
)` a
;a b
internal 
static 
readonly $
int% (
	_InvGamma) 2
=C D
ShaderE K
.K L
PropertyToIDL X
(X Y
$strY d
)d e
;e f
internal 
static 
readonly $
int% (
_Gain) .
=C D
ShaderE K
.K L
PropertyToIDL X
(X Y
$strY `
)` a
;a b
internal 
static 
readonly $
int% (
_Slope) /
=C D
ShaderE K
.K L
PropertyToIDL X
(X Y
$strY a
)a b
;b c
internal 
static 
readonly $
int% (
_Power) /
=C D
ShaderE K
.K L
PropertyToIDL X
(X Y
$strY a
)a b
;b c
internal 
static 
readonly $
int% (
_Offset) 0
=C D
ShaderE K
.K L
PropertyToIDL X
(X Y
$strY b
)b c
;c d
internal 
static 
readonly $
int% (
_ChannelMixerRed) 9
=C D
ShaderE K
.K L
PropertyToIDL X
(X Y
$strY k
)k l
;l m
internal 
static 
readonly $
int% (
_ChannelMixerGreen) ;
=C D
ShaderE K
.K L
PropertyToIDL X
(X Y
$strY m
)m n
;n o
internal 
static 
readonly $
int% (
_ChannelMixerBlue) :
=C D
ShaderE K
.K L
PropertyToIDL X
(X Y
$strY l
)l m
;m n
internal 
static 
readonly $
int% (
_Curves) 0
=C D
ShaderE K
.K L
PropertyToIDL X
(X Y
$strY b
)b c
;c d
internal 
static 
readonly $
int% (
_LogLut) 0
=C D
ShaderE K
.K L
PropertyToIDL X
(X Y
$strY b
)b c
;c d
internal 
static 
readonly $
int% (
_LogLut_Params) 7
=C D
ShaderE K
.K L
PropertyToIDL X
(X Y
$strY i
)i j
;j k
internal 
static 
readonly $
int% (
_ExposureEV) 4
=C D
ShaderE K
.K L
PropertyToIDL X
(X Y
$strY f
)f g
;g h
} 	
const 
int  
k_InternalLogLutSize &
=' (
$num) +
;+ ,
const   
int   
k_CurvePrecision   "
=  # $
$num  % (
;  ( )
const!! 
float!! 
k_CurveStep!! 
=!!  !
$num!!" $
/!!% &
k_CurvePrecision!!' 7
;!!7 8
	Texture2D## 
m_GradingCurves## !
;##! "
Color$$ 
[$$ 
]$$ 
m_pixels$$ 
=$$ 
new$$ 
Color$$ $
[$$$ %
k_CurvePrecision$$% 5
*$$6 7
$num$$8 9
]$$9 :
;$$: ;
public&& 
override&& 
bool&& 
active&& #
{'' 	
get(( 
{)) 
return** 
model** 
.** 
enabled** $
&&++ 
!++ 
context++ "
.++" #
interrupted++# .
;++. /
},, 
}-- 	
float22 
StandardIlluminantY22 !
(22! "
float22" '
x22( )
)22) *
{33 	
return44 
$num44 
*44 
x44 
-44 
$num44 !
*44" #
x44$ %
*44& '
x44( )
-44* +
$num44, 7
;447 8
}55 	
Vector399 

CIExyToLMS99 
(99 
float99  
x99! "
,99" #
float99$ )
y99* +
)99+ ,
{:: 	
float;; 
Y;; 
=;; 
$num;; 
;;; 
float<< 
X<< 
=<< 
Y<< 
*<< 
x<< 
/<< 
y<< 
;<<  
float== 
Z== 
=== 
Y== 
*== 
(== 
$num== 
-== 
x==  !
-==" #
y==$ %
)==% &
/==' (
y==) *
;==* +
float?? 
L?? 
=?? 
$num?? 
*??  
X??! "
+??# $
$num??% ,
*??- .
Y??/ 0
-??1 2
$num??3 :
*??; <
Z??= >
;??> ?
float@@ 
M@@ 
=@@ 
-@@ 
$num@@ 
*@@  
X@@! "
+@@# $
$num@@% ,
*@@- .
Y@@/ 0
+@@1 2
$num@@3 :
*@@; <
Z@@= >
;@@> ?
floatAA 
SAA 
=AA 
$numAA 
*AA  
XAA! "
+AA# $
$numAA% ,
*AA- .
YAA/ 0
+AA1 2
$numAA3 :
*AA; <
ZAA= >
;AA> ?
returnCC 
newCC 
Vector3CC 
(CC 
LCC  
,CC  !
MCC" #
,CC# $
SCC% &
)CC& '
;CC' (
}DD 	
Vector3FF !
CalculateColorBalanceFF %
(FF% &
floatFF& +
temperatureFF, 7
,FF7 8
floatFF9 >
tintFF? C
)FFC D
{GG 	
floatII 
t1II 
=II 
temperatureII "
/II# $
$numII% (
;II( )
floatJJ 
t2JJ 
=JJ 
tintJJ 
/JJ 
$numJJ !
;JJ! "
floatNN 
xNN 
=NN 
$numNN 
-NN  
t1NN! #
*NN$ %
(NN& '
t1NN' )
<NN* +
$numNN, .
?NN/ 0
$numNN1 5
:NN6 7
$numNN8 =
)NN= >
;NN> ?
floatOO 
yOO 
=OO 
StandardIlluminantYOO )
(OO) *
xOO* +
)OO+ ,
+OO- .
t2OO/ 1
*OO2 3
$numOO4 9
;OO9 :
varRR 
w1RR 
=RR 
newRR 
Vector3RR  
(RR  !
$numRR! *
,RR* +
$numRR, 4
,RR4 5
$numRR6 >
)RR> ?
;RR? @
varSS 
w2SS 
=SS 

CIExyToLMSSS 
(SS  
xSS  !
,SS! "
ySS# $
)SS$ %
;SS% &
returnTT 
newTT 
Vector3TT 
(TT 
w1TT !
.TT! "
xTT" #
/TT$ %
w2TT& (
.TT( )
xTT) *
,TT* +
w1TT, .
.TT. /
yTT/ 0
/TT1 2
w2TT3 5
.TT5 6
yTT6 7
,TT7 8
w1TT9 ;
.TT; <
zTT< =
/TT> ?
w2TT@ B
.TTB C
zTTC D
)TTD E
;TTE F
}UU 	
staticWW 
ColorWW 
NormalizeColorWW #
(WW# $
ColorWW$ )
cWW* +
)WW+ ,
{XX 	
floatYY 
sumYY 
=YY 
(YY 
cYY 
.YY 
rYY 
+YY 
cYY  
.YY  !
gYY! "
+YY# $
cYY% &
.YY& '
bYY' (
)YY( )
/YY* +
$numYY, .
;YY. /
if[[ 
([[ 
Mathf[[ 
.[[ 
Approximately[[ #
([[# $
sum[[$ '
,[[' (
$num[[) +
)[[+ ,
)[[, -
return\\ 
new\\ 
Color\\  
(\\  !
$num\\! #
,\\# $
$num\\% '
,\\' (
$num\\) +
,\\+ ,
c\\- .
.\\. /
a\\/ 0
)\\0 1
;\\1 2
return^^ 
new^^ 
Color^^ 
{__ 
r`` 
=`` 
c`` 
.`` 
r`` 
/``  
sum``! $
,``$ %
gaa 
=aa 
caa 
.aa 
gaa 
/aa  
sumaa! $
,aa$ %
bbb 
=bb 
cbb 
.bb 
bbb 
/bb  
sumbb! $
,bb$ %
acc 
=cc 
ccc 
.cc 
acc 
}dd 
;dd 
}ee 	
staticgg 
Vector3gg 
ClampVectorgg "
(gg" #
Vector3gg# *
vgg+ ,
,gg, -
floatgg. 3
mingg4 7
,gg7 8
floatgg9 >
maxgg? B
)ggB C
{hh 	
returnii 
newii 
Vector3ii 
(ii 
Mathfjj 
.jj 
Clampjj 
(jj 
vjj 
.jj 
xjj 
,jj  
minjj! $
,jj$ %
maxjj& )
)jj) *
,jj* +
Mathfkk 
.kk 
Clampkk 
(kk 
vkk 
.kk 
ykk 
,kk  
minkk! $
,kk$ %
maxkk& )
)kk) *
,kk* +
Mathfll 
.ll 
Clampll 
(ll 
vll 
.ll 
zll 
,ll  
minll! $
,ll$ %
maxll& )
)ll) *
)mm 
;mm 
}nn 	
publicpp 
staticpp 
Vector3pp 
GetLiftValuepp *
(pp* +
Colorpp+ 0
liftpp1 5
)pp5 6
{qq 	
constrr 
floatrr 

kLiftScalerr "
=rr# $
$numrr% )
;rr) *
vartt 
nLifttt 
=tt 
NormalizeColortt &
(tt& '
lifttt' +
)tt+ ,
;tt, -
floatuu 
avgLiftuu 
=uu 
(uu 
nLiftuu "
.uu" #
ruu# $
+uu% &
nLiftuu' ,
.uu, -
guu- .
+uu/ 0
nLiftuu1 6
.uu6 7
buu7 8
)uu8 9
/uu: ;
$numuu< >
;uu> ?
floatxx 
liftRxx 
=xx 
(xx 
nLiftxx  
.xx  !
rxx! "
-xx# $
avgLiftxx% ,
)xx, -
*xx. /

kLiftScalexx0 :
+xx; <
liftxx= A
.xxA B
axxB C
;xxC D
floatyy 
liftGyy 
=yy 
(yy 
nLiftyy  
.yy  !
gyy! "
-yy# $
avgLiftyy% ,
)yy, -
*yy. /

kLiftScaleyy0 :
+yy; <
liftyy= A
.yyA B
ayyB C
;yyC D
floatzz 
liftBzz 
=zz 
(zz 
nLiftzz  
.zz  !
bzz! "
-zz# $
avgLiftzz% ,
)zz, -
*zz. /

kLiftScalezz0 :
+zz; <
liftzz= A
.zzA B
azzB C
;zzC D
return|| 
ClampVector|| 
(|| 
new|| "
Vector3||# *
(||* +
liftR||+ 0
,||0 1
liftG||2 7
,||7 8
liftB||9 >
)||> ?
,||? @
-||A B
$num||B D
,||D E
$num||F H
)||H I
;||I J
}}} 	
public 
static 
Vector3 
GetGammaValue +
(+ ,
Color, 1
gamma2 7
)7 8
{
ÄÄ 	
const
ÅÅ 
float
ÅÅ 
kGammaScale
ÅÅ #
=
ÅÅ$ %
$num
ÅÅ& *
;
ÅÅ* +
const
ÇÇ 
float
ÇÇ 
	kMinGamma
ÇÇ !
=
ÇÇ" #
$num
ÇÇ$ )
;
ÇÇ) *
var
ÑÑ 
nGamma
ÑÑ 
=
ÑÑ 
NormalizeColor
ÑÑ '
(
ÑÑ' (
gamma
ÑÑ( -
)
ÑÑ- .
;
ÑÑ. /
float
ÖÖ 
avgGamma
ÖÖ 
=
ÖÖ 
(
ÖÖ 
nGamma
ÖÖ $
.
ÖÖ$ %
r
ÖÖ% &
+
ÖÖ' (
nGamma
ÖÖ) /
.
ÖÖ/ 0
g
ÖÖ0 1
+
ÖÖ2 3
nGamma
ÖÖ4 :
.
ÖÖ: ;
b
ÖÖ; <
)
ÖÖ< =
/
ÖÖ> ?
$num
ÖÖ@ B
;
ÖÖB C
gamma
áá 
.
áá 
a
áá 
*=
áá 
gamma
áá 
.
áá 
a
áá 
<
áá  
$num
áá! #
?
áá$ %
$num
áá& *
:
áá+ ,
$num
áá- /
;
áá/ 0
float
àà 
gammaR
àà 
=
àà 
Mathf
àà  
.
àà  !
Pow
àà! $
(
àà$ %
$num
àà% '
,
àà' (
(
àà) *
nGamma
àà* 0
.
àà0 1
r
àà1 2
-
àà3 4
avgGamma
àà5 =
)
àà= >
*
àà? @
kGammaScale
ààA L
)
ààL M
+
ààN O
gamma
ààP U
.
ààU V
a
ààV W
;
ààW X
float
ââ 
gammaG
ââ 
=
ââ 
Mathf
ââ  
.
ââ  !
Pow
ââ! $
(
ââ$ %
$num
ââ% '
,
ââ' (
(
ââ) *
nGamma
ââ* 0
.
ââ0 1
g
ââ1 2
-
ââ3 4
avgGamma
ââ5 =
)
ââ= >
*
ââ? @
kGammaScale
ââA L
)
ââL M
+
ââN O
gamma
ââP U
.
ââU V
a
ââV W
;
ââW X
float
ää 
gammaB
ää 
=
ää 
Mathf
ää  
.
ää  !
Pow
ää! $
(
ää$ %
$num
ää% '
,
ää' (
(
ää) *
nGamma
ää* 0
.
ää0 1
b
ää1 2
-
ää3 4
avgGamma
ää5 =
)
ää= >
*
ää? @
kGammaScale
ääA L
)
ääL M
+
ääN O
gamma
ääP U
.
ääU V
a
ääV W
;
ääW X
float
åå 
	invGammaR
åå 
=
åå 
$num
åå  
/
åå! "
Mathf
åå# (
.
åå( )
Max
åå) ,
(
åå, -
	kMinGamma
åå- 6
,
åå6 7
gammaR
åå8 >
)
åå> ?
;
åå? @
float
çç 
	invGammaG
çç 
=
çç 
$num
çç  
/
çç! "
Mathf
çç# (
.
çç( )
Max
çç) ,
(
çç, -
	kMinGamma
çç- 6
,
çç6 7
gammaG
çç8 >
)
çç> ?
;
çç? @
float
éé 
	invGammaB
éé 
=
éé 
$num
éé  
/
éé! "
Mathf
éé# (
.
éé( )
Max
éé) ,
(
éé, -
	kMinGamma
éé- 6
,
éé6 7
gammaB
éé8 >
)
éé> ?
;
éé? @
return
êê 
ClampVector
êê 
(
êê 
new
êê "
Vector3
êê# *
(
êê* +
	invGammaR
êê+ 4
,
êê4 5
	invGammaG
êê6 ?
,
êê? @
	invGammaB
êêA J
)
êêJ K
,
êêK L
$num
êêM O
,
êêO P
$num
êêQ S
)
êêS T
;
êêT U
}
ëë 	
public
ìì 
static
ìì 
Vector3
ìì 
GetGainValue
ìì *
(
ìì* +
Color
ìì+ 0
gain
ìì1 5
)
ìì5 6
{
îî 	
const
ïï 
float
ïï 

kGainScale
ïï "
=
ïï# $
$num
ïï% )
;
ïï) *
var
óó 
nGain
óó 
=
óó 
NormalizeColor
óó &
(
óó& '
gain
óó' +
)
óó+ ,
;
óó, -
float
òò 
avgGain
òò 
=
òò 
(
òò 
nGain
òò "
.
òò" #
r
òò# $
+
òò% &
nGain
òò' ,
.
òò, -
g
òò- .
+
òò/ 0
nGain
òò1 6
.
òò6 7
b
òò7 8
)
òò8 9
/
òò: ;
$num
òò< >
;
òò> ?
gain
öö 
.
öö 
a
öö 
*=
öö 
gain
öö 
.
öö 
a
öö 
>
öö 
$num
öö !
?
öö" #
$num
öö$ &
:
öö' (
$num
öö) +
;
öö+ ,
float
õõ 
gainR
õõ 
=
õõ 
Mathf
õõ 
.
õõ  
Pow
õõ  #
(
õõ# $
$num
õõ$ &
,
õõ& '
(
õõ( )
nGain
õõ) .
.
õõ. /
r
õõ/ 0
-
õõ1 2
avgGain
õõ3 :
)
õõ: ;
*
õõ< =

kGainScale
õõ> H
)
õõH I
+
õõJ K
gain
õõL P
.
õõP Q
a
õõQ R
;
õõR S
float
úú 
gainG
úú 
=
úú 
Mathf
úú 
.
úú  
Pow
úú  #
(
úú# $
$num
úú$ &
,
úú& '
(
úú( )
nGain
úú) .
.
úú. /
g
úú/ 0
-
úú1 2
avgGain
úú3 :
)
úú: ;
*
úú< =

kGainScale
úú> H
)
úúH I
+
úúJ K
gain
úúL P
.
úúP Q
a
úúQ R
;
úúR S
float
ùù 
gainB
ùù 
=
ùù 
Mathf
ùù 
.
ùù  
Pow
ùù  #
(
ùù# $
$num
ùù$ &
,
ùù& '
(
ùù( )
nGain
ùù) .
.
ùù. /
b
ùù/ 0
-
ùù1 2
avgGain
ùù3 :
)
ùù: ;
*
ùù< =

kGainScale
ùù> H
)
ùùH I
+
ùùJ K
gain
ùùL P
.
ùùP Q
a
ùùQ R
;
ùùR S
return
üü 
ClampVector
üü 
(
üü 
new
üü "
Vector3
üü# *
(
üü* +
gainR
üü+ 0
,
üü0 1
gainG
üü2 7
,
üü7 8
gainB
üü9 >
)
üü> ?
,
üü? @
$num
üüA C
,
üüC D
$num
üüE G
)
üüG H
;
üüH I
}
†† 	
public
¢¢ 
static
¢¢ 
void
¢¢ $
CalculateLiftGammaGain
¢¢ 1
(
¢¢1 2
Color
¢¢2 7
lift
¢¢8 <
,
¢¢< =
Color
¢¢> C
gamma
¢¢D I
,
¢¢I J
Color
¢¢K P
gain
¢¢Q U
,
¢¢U V
out
¢¢W Z
Vector3
¢¢[ b
outLift
¢¢c j
,
¢¢j k
out
¢¢l o
Vector3
¢¢p w
outGamma¢¢x Ä
,¢¢Ä Å
out¢¢Ç Ö
Vector3¢¢Ü ç
outGain¢¢é ï
)¢¢ï ñ
{
££ 	
outLift
§§ 
=
§§ 
GetLiftValue
§§ "
(
§§" #
lift
§§# '
)
§§' (
;
§§( )
outGamma
•• 
=
•• 
GetGammaValue
•• $
(
••$ %
gamma
••% *
)
••* +
;
••+ ,
outGain
¶¶ 
=
¶¶ 
GetGainValue
¶¶ "
(
¶¶" #
gain
¶¶# '
)
¶¶' (
;
¶¶( )
}
ßß 	
public
©© 
static
©© 
Vector3
©© 
GetSlopeValue
©© +
(
©©+ ,
Color
©©, 1
slope
©©2 7
)
©©7 8
{
™™ 	
const
´´ 
float
´´ 
kSlopeScale
´´ #
=
´´$ %
$num
´´& *
;
´´* +
var
≠≠ 
nSlope
≠≠ 
=
≠≠ 
NormalizeColor
≠≠ '
(
≠≠' (
slope
≠≠( -
)
≠≠- .
;
≠≠. /
float
ÆÆ 
avgSlope
ÆÆ 
=
ÆÆ 
(
ÆÆ 
nSlope
ÆÆ $
.
ÆÆ$ %
r
ÆÆ% &
+
ÆÆ' (
nSlope
ÆÆ) /
.
ÆÆ/ 0
g
ÆÆ0 1
+
ÆÆ2 3
nSlope
ÆÆ4 :
.
ÆÆ: ;
b
ÆÆ; <
)
ÆÆ< =
/
ÆÆ> ?
$num
ÆÆ@ B
;
ÆÆB C
slope
∞∞ 
.
∞∞ 
a
∞∞ 
*=
∞∞ 
$num
∞∞ 
;
∞∞ 
float
±± 
slopeR
±± 
=
±± 
(
±± 
nSlope
±± "
.
±±" #
r
±±# $
-
±±% &
avgSlope
±±' /
)
±±/ 0
*
±±1 2
kSlopeScale
±±3 >
+
±±? @
slope
±±A F
.
±±F G
a
±±G H
+
±±I J
$num
±±K M
;
±±M N
float
≤≤ 
slopeG
≤≤ 
=
≤≤ 
(
≤≤ 
nSlope
≤≤ "
.
≤≤" #
g
≤≤# $
-
≤≤% &
avgSlope
≤≤' /
)
≤≤/ 0
*
≤≤1 2
kSlopeScale
≤≤3 >
+
≤≤? @
slope
≤≤A F
.
≤≤F G
a
≤≤G H
+
≤≤I J
$num
≤≤K M
;
≤≤M N
float
≥≥ 
slopeB
≥≥ 
=
≥≥ 
(
≥≥ 
nSlope
≥≥ "
.
≥≥" #
b
≥≥# $
-
≥≥% &
avgSlope
≥≥' /
)
≥≥/ 0
*
≥≥1 2
kSlopeScale
≥≥3 >
+
≥≥? @
slope
≥≥A F
.
≥≥F G
a
≥≥G H
+
≥≥I J
$num
≥≥K M
;
≥≥M N
return
µµ 
ClampVector
µµ 
(
µµ 
new
µµ "
Vector3
µµ# *
(
µµ* +
slopeR
µµ+ 1
,
µµ1 2
slopeG
µµ3 9
,
µµ9 :
slopeB
µµ; A
)
µµA B
,
µµB C
$num
µµD F
,
µµF G
$num
µµH J
)
µµJ K
;
µµK L
}
∂∂ 	
public
∏∏ 
static
∏∏ 
Vector3
∏∏ 
GetPowerValue
∏∏ +
(
∏∏+ ,
Color
∏∏, 1
power
∏∏2 7
)
∏∏7 8
{
ππ 	
const
∫∫ 
float
∫∫ 
kPowerScale
∫∫ #
=
∫∫$ %
$num
∫∫& *
;
∫∫* +
const
ªª 
float
ªª 
minPower
ªª  
=
ªª! "
$num
ªª# (
;
ªª( )
var
ΩΩ 
nPower
ΩΩ 
=
ΩΩ 
NormalizeColor
ΩΩ '
(
ΩΩ' (
power
ΩΩ( -
)
ΩΩ- .
;
ΩΩ. /
float
ææ 
avgPower
ææ 
=
ææ 
(
ææ 
nPower
ææ $
.
ææ$ %
r
ææ% &
+
ææ' (
nPower
ææ) /
.
ææ/ 0
g
ææ0 1
+
ææ2 3
nPower
ææ4 :
.
ææ: ;
b
ææ; <
)
ææ< =
/
ææ> ?
$num
ææ@ B
;
ææB C
power
¿¿ 
.
¿¿ 
a
¿¿ 
*=
¿¿ 
$num
¿¿ 
;
¿¿ 
float
¡¡ 
powerR
¡¡ 
=
¡¡ 
(
¡¡ 
nPower
¡¡ "
.
¡¡" #
r
¡¡# $
-
¡¡% &
avgPower
¡¡' /
)
¡¡/ 0
*
¡¡1 2
kPowerScale
¡¡3 >
+
¡¡? @
power
¡¡A F
.
¡¡F G
a
¡¡G H
+
¡¡I J
$num
¡¡K M
;
¡¡M N
float
¬¬ 
powerG
¬¬ 
=
¬¬ 
(
¬¬ 
nPower
¬¬ "
.
¬¬" #
g
¬¬# $
-
¬¬% &
avgPower
¬¬' /
)
¬¬/ 0
*
¬¬1 2
kPowerScale
¬¬3 >
+
¬¬? @
power
¬¬A F
.
¬¬F G
a
¬¬G H
+
¬¬I J
$num
¬¬K M
;
¬¬M N
float
√√ 
powerB
√√ 
=
√√ 
(
√√ 
nPower
√√ "
.
√√" #
b
√√# $
-
√√% &
avgPower
√√' /
)
√√/ 0
*
√√1 2
kPowerScale
√√3 >
+
√√? @
power
√√A F
.
√√F G
a
√√G H
+
√√I J
$num
√√K M
;
√√M N
float
≈≈ 
	invPowerR
≈≈ 
=
≈≈ 
$num
≈≈  
/
≈≈! "
Mathf
≈≈# (
.
≈≈( )
Max
≈≈) ,
(
≈≈, -
minPower
≈≈- 5
,
≈≈5 6
powerR
≈≈7 =
)
≈≈= >
;
≈≈> ?
float
∆∆ 
	invPowerG
∆∆ 
=
∆∆ 
$num
∆∆  
/
∆∆! "
Mathf
∆∆# (
.
∆∆( )
Max
∆∆) ,
(
∆∆, -
minPower
∆∆- 5
,
∆∆5 6
powerG
∆∆7 =
)
∆∆= >
;
∆∆> ?
float
«« 
	invPowerB
«« 
=
«« 
$num
««  
/
««! "
Mathf
««# (
.
««( )
Max
««) ,
(
««, -
minPower
««- 5
,
««5 6
powerB
««7 =
)
««= >
;
««> ?
return
…… 
ClampVector
…… 
(
…… 
new
…… "
Vector3
……# *
(
……* +
	invPowerR
……+ 4
,
……4 5
	invPowerG
……6 ?
,
……? @
	invPowerB
……A J
)
……J K
,
……K L
$num
……M Q
,
……Q R
$num
……S W
)
……W X
;
……X Y
}
   	
public
ÃÃ 
static
ÃÃ 
Vector3
ÃÃ 
GetOffsetValue
ÃÃ ,
(
ÃÃ, -
Color
ÃÃ- 2
offset
ÃÃ3 9
)
ÃÃ9 :
{
ÕÕ 	
const
ŒŒ 
float
ŒŒ 
kOffsetScale
ŒŒ $
=
ŒŒ% &
$num
ŒŒ' ,
;
ŒŒ, -
var
–– 
nOffset
–– 
=
–– 
NormalizeColor
–– (
(
––( )
offset
––) /
)
––/ 0
;
––0 1
float
—— 
	avgOffset
—— 
=
—— 
(
—— 
nOffset
—— &
.
——& '
r
——' (
+
——) *
nOffset
——+ 2
.
——2 3
g
——3 4
+
——5 6
nOffset
——7 >
.
——> ?
b
——? @
)
——@ A
/
——B C
$num
——D F
;
——F G
offset
”” 
.
”” 
a
”” 
*=
”” 
$num
”” 
;
”” 
float
‘‘ 
offsetR
‘‘ 
=
‘‘ 
(
‘‘ 
nOffset
‘‘ $
.
‘‘$ %
r
‘‘% &
-
‘‘' (
	avgOffset
‘‘) 2
)
‘‘2 3
*
‘‘4 5
kOffsetScale
‘‘6 B
+
‘‘C D
offset
‘‘E K
.
‘‘K L
a
‘‘L M
;
‘‘M N
float
’’ 
offsetG
’’ 
=
’’ 
(
’’ 
nOffset
’’ $
.
’’$ %
g
’’% &
-
’’' (
	avgOffset
’’) 2
)
’’2 3
*
’’4 5
kOffsetScale
’’6 B
+
’’C D
offset
’’E K
.
’’K L
a
’’L M
;
’’M N
float
÷÷ 
offsetB
÷÷ 
=
÷÷ 
(
÷÷ 
nOffset
÷÷ $
.
÷÷$ %
b
÷÷% &
-
÷÷' (
	avgOffset
÷÷) 2
)
÷÷2 3
*
÷÷4 5
kOffsetScale
÷÷6 B
+
÷÷C D
offset
÷÷E K
.
÷÷K L
a
÷÷L M
;
÷÷M N
return
ÿÿ 
ClampVector
ÿÿ 
(
ÿÿ 
new
ÿÿ "
Vector3
ÿÿ# *
(
ÿÿ* +
offsetR
ÿÿ+ 2
,
ÿÿ2 3
offsetG
ÿÿ4 ;
,
ÿÿ; <
offsetB
ÿÿ= D
)
ÿÿD E
,
ÿÿE F
-
ÿÿG H
$num
ÿÿH L
,
ÿÿL M
$num
ÿÿN R
)
ÿÿR S
;
ÿÿS T
}
ŸŸ 	
public
€€ 
static
€€ 
void
€€ '
CalculateSlopePowerOffset
€€ 4
(
€€4 5
Color
€€5 :
slope
€€; @
,
€€@ A
Color
€€B G
power
€€H M
,
€€M N
Color
€€O T
offset
€€U [
,
€€[ \
out
€€] `
Vector3
€€a h
outSlope
€€i q
,
€€q r
out
€€s v
Vector3
€€w ~
outPower€€ á
,€€á à
out€€â å
Vector3€€ç î
	outOffset€€ï û
)€€û ü
{
‹‹ 	
outSlope
›› 
=
›› 
GetSlopeValue
›› $
(
››$ %
slope
››% *
)
››* +
;
››+ ,
outPower
ﬁﬁ 
=
ﬁﬁ 
GetPowerValue
ﬁﬁ $
(
ﬁﬁ$ %
power
ﬁﬁ% *
)
ﬁﬁ* +
;
ﬁﬁ+ ,
	outOffset
ﬂﬂ 
=
ﬂﬂ 
GetOffsetValue
ﬂﬂ &
(
ﬂﬂ& '
offset
ﬂﬂ' -
)
ﬂﬂ- .
;
ﬂﬂ. /
}
‡‡ 	
TextureFormat
‚‚ 
GetCurveFormat
‚‚ $
(
‚‚$ %
)
‚‚% &
{
„„ 	
if
‰‰ 
(
‰‰ 

SystemInfo
‰‰ 
.
‰‰ #
SupportsTextureFormat
‰‰ 0
(
‰‰0 1
TextureFormat
‰‰1 >
.
‰‰> ?
RGBAHalf
‰‰? G
)
‰‰G H
)
‰‰H I
return
ÂÂ 
TextureFormat
ÂÂ $
.
ÂÂ$ %
RGBAHalf
ÂÂ% -
;
ÂÂ- .
return
ÁÁ 
TextureFormat
ÁÁ  
.
ÁÁ  !
RGBA32
ÁÁ! '
;
ÁÁ' (
}
ËË 	
	Texture2D
ÍÍ 
GetCurveTexture
ÍÍ !
(
ÍÍ! "
)
ÍÍ" #
{
ÎÎ 	
if
ÏÏ 
(
ÏÏ 
m_GradingCurves
ÏÏ 
==
ÏÏ  "
null
ÏÏ# '
)
ÏÏ' (
{
ÌÌ 
m_GradingCurves
ÓÓ 
=
ÓÓ  !
new
ÓÓ" %
	Texture2D
ÓÓ& /
(
ÓÓ/ 0
k_CurvePrecision
ÓÓ0 @
,
ÓÓ@ A
$num
ÓÓB C
,
ÓÓC D
GetCurveFormat
ÓÓE S
(
ÓÓS T
)
ÓÓT U
,
ÓÓU V
false
ÓÓW \
,
ÓÓ\ ]
true
ÓÓ^ b
)
ÓÓb c
{
ÔÔ 
name
 
=
 
$str
 4
,
4 5
	hideFlags
ÒÒ 
=
ÒÒ 
	HideFlags
ÒÒ  )
.
ÒÒ) *
DontSave
ÒÒ* 2
,
ÒÒ2 3

anisoLevel
ÚÚ 
=
ÚÚ  
$num
ÚÚ! "
,
ÚÚ" #
wrapMode
ÛÛ 
=
ÛÛ 
TextureWrapMode
ÛÛ .
.
ÛÛ. /
Clamp
ÛÛ/ 4
,
ÛÛ4 5

filterMode
ÙÙ 
=
ÙÙ  

FilterMode
ÙÙ! +
.
ÙÙ+ ,
Bilinear
ÙÙ, 4
}
ıı 
;
ıı 
}
ˆˆ 
var
¯¯ 
curves
¯¯ 
=
¯¯ 
model
¯¯ 
.
¯¯ 
settings
¯¯ '
.
¯¯' (
curves
¯¯( .
;
¯¯. /
curves
˘˘ 
.
˘˘ 
hueVShue
˘˘ 
.
˘˘ 
Cache
˘˘ !
(
˘˘! "
)
˘˘" #
;
˘˘# $
curves
˙˙ 
.
˙˙ 
hueVSsat
˙˙ 
.
˙˙ 
Cache
˙˙ !
(
˙˙! "
)
˙˙" #
;
˙˙# $
for
¸¸ 
(
¸¸ 
int
¸¸ 
i
¸¸ 
=
¸¸ 
$num
¸¸ 
;
¸¸ 
i
¸¸ 
<
¸¸ 
k_CurvePrecision
¸¸  0
;
¸¸0 1
i
¸¸2 3
++
¸¸3 5
)
¸¸5 6
{
˝˝ 
float
˛˛ 
t
˛˛ 
=
˛˛ 
i
˛˛ 
*
˛˛ 
k_CurveStep
˛˛ )
;
˛˛) *
float
ÅÅ 
x
ÅÅ 
=
ÅÅ 
curves
ÅÅ  
.
ÅÅ  !
hueVShue
ÅÅ! )
.
ÅÅ) *
Evaluate
ÅÅ* 2
(
ÅÅ2 3
t
ÅÅ3 4
)
ÅÅ4 5
;
ÅÅ5 6
float
ÇÇ 
y
ÇÇ 
=
ÇÇ 
curves
ÇÇ  
.
ÇÇ  !
hueVSsat
ÇÇ! )
.
ÇÇ) *
Evaluate
ÇÇ* 2
(
ÇÇ2 3
t
ÇÇ3 4
)
ÇÇ4 5
;
ÇÇ5 6
float
ÉÉ 
z
ÉÉ 
=
ÉÉ 
curves
ÉÉ  
.
ÉÉ  !
satVSsat
ÉÉ! )
.
ÉÉ) *
Evaluate
ÉÉ* 2
(
ÉÉ2 3
t
ÉÉ3 4
)
ÉÉ4 5
;
ÉÉ5 6
float
ÑÑ 
w
ÑÑ 
=
ÑÑ 
curves
ÑÑ  
.
ÑÑ  !
lumVSsat
ÑÑ! )
.
ÑÑ) *
Evaluate
ÑÑ* 2
(
ÑÑ2 3
t
ÑÑ3 4
)
ÑÑ4 5
;
ÑÑ5 6
m_pixels
ÖÖ 
[
ÖÖ 
i
ÖÖ 
]
ÖÖ 
=
ÖÖ 
new
ÖÖ !
Color
ÖÖ" '
(
ÖÖ' (
x
ÖÖ( )
,
ÖÖ) *
y
ÖÖ+ ,
,
ÖÖ, -
z
ÖÖ. /
,
ÖÖ/ 0
w
ÖÖ1 2
)
ÖÖ2 3
;
ÖÖ3 4
float
àà 
m
àà 
=
àà 
curves
àà  
.
àà  !
master
àà! '
.
àà' (
Evaluate
àà( 0
(
àà0 1
t
àà1 2
)
àà2 3
;
àà3 4
float
ââ 
r
ââ 
=
ââ 
curves
ââ  
.
ââ  !
red
ââ! $
.
ââ$ %
Evaluate
ââ% -
(
ââ- .
t
ââ. /
)
ââ/ 0
;
ââ0 1
float
ää 
g
ää 
=
ää 
curves
ää  
.
ää  !
green
ää! &
.
ää& '
Evaluate
ää' /
(
ää/ 0
t
ää0 1
)
ää1 2
;
ää2 3
float
ãã 
b
ãã 
=
ãã 
curves
ãã  
.
ãã  !
blue
ãã! %
.
ãã% &
Evaluate
ãã& .
(
ãã. /
t
ãã/ 0
)
ãã0 1
;
ãã1 2
m_pixels
åå 
[
åå 
i
åå 
+
åå 
k_CurvePrecision
åå -
]
åå- .
=
åå/ 0
new
åå1 4
Color
åå5 :
(
åå: ;
r
åå; <
,
åå< =
g
åå> ?
,
åå? @
b
ååA B
,
ååB C
m
ååD E
)
ååE F
;
ååF G
}
çç 
m_GradingCurves
èè 
.
èè 
	SetPixels
èè %
(
èè% &
m_pixels
èè& .
)
èè. /
;
èè/ 0
m_GradingCurves
êê 
.
êê 
Apply
êê !
(
êê! "
false
êê" '
,
êê' (
false
êê) .
)
êê. /
;
êê/ 0
return
íí 
m_GradingCurves
íí "
;
íí" #
}
ìì 	
bool
ïï 
IsLogLutValid
ïï 
(
ïï 
RenderTexture
ïï (
lut
ïï) ,
)
ïï, -
{
ññ 	
return
óó 
lut
óó 
!=
óó 
null
óó 
&&
óó !
lut
óó" %
.
óó% &
	IsCreated
óó& /
(
óó/ 0
)
óó0 1
&&
óó2 4
lut
óó5 8
.
óó8 9
height
óó9 ?
==
óó@ B"
k_InternalLogLutSize
óóC W
;
óóW X
}
òò 	!
RenderTextureFormat
öö 
GetLutFormat
öö (
(
öö( )
)
öö) *
{
õõ 	
if
úú 
(
úú 

SystemInfo
úú 
.
úú )
SupportsRenderTextureFormat
úú 6
(
úú6 7!
RenderTextureFormat
úú7 J
.
úúJ K
ARGBHalf
úúK S
)
úúS T
)
úúT U
return
ùù !
RenderTextureFormat
ùù *
.
ùù* +
ARGBHalf
ùù+ 3
;
ùù3 4
return
üü !
RenderTextureFormat
üü &
.
üü& '
ARGB32
üü' -
;
üü- .
}
†† 	
void
¢¢ 
GenerateLut
¢¢ 
(
¢¢ 
)
¢¢ 
{
££ 	
var
§§ 
settings
§§ 
=
§§ 
model
§§  
.
§§  !
settings
§§! )
;
§§) *
if
¶¶ 
(
¶¶ 
!
¶¶ 
IsLogLutValid
¶¶ 
(
¶¶ 
model
¶¶ $
.
¶¶$ %
bakedLut
¶¶% -
)
¶¶- .
)
¶¶. /
{
ßß 
GraphicsUtils
®® 
.
®® 
Destroy
®® %
(
®®% &
model
®®& +
.
®®+ ,
bakedLut
®®, 4
)
®®4 5
;
®®5 6
model
™™ 
.
™™ 
bakedLut
™™ 
=
™™  
new
™™! $
RenderTexture
™™% 2
(
™™2 3"
k_InternalLogLutSize
™™3 G
*
™™H I"
k_InternalLogLutSize
™™J ^
,
™™^ _"
k_InternalLogLutSize
™™` t
,
™™t u
$num
™™v w
,
™™w x
GetLutFormat™™y Ö
(™™Ö Ü
)™™Ü á
)™™á à
{
´´ 
name
¨¨ 
=
¨¨ 
$str
¨¨ 2
,
¨¨2 3
	hideFlags
≠≠ 
=
≠≠ 
	HideFlags
≠≠  )
.
≠≠) *
DontSave
≠≠* 2
,
≠≠2 3

filterMode
ÆÆ 
=
ÆÆ  

FilterMode
ÆÆ! +
.
ÆÆ+ ,
Bilinear
ÆÆ, 4
,
ÆÆ4 5
wrapMode
ØØ 
=
ØØ 
TextureWrapMode
ØØ .
.
ØØ. /
Clamp
ØØ/ 4
,
ØØ4 5

anisoLevel
∞∞ 
=
∞∞  
$num
∞∞! "
}
±± 
;
±± 
}
≤≤ 
var
¥¥ 
lutMaterial
¥¥ 
=
¥¥ 
context
¥¥ %
.
¥¥% &
materialFactory
¥¥& 5
.
¥¥5 6
Get
¥¥6 9
(
¥¥9 :
$str
¥¥: X
)
¥¥X Y
;
¥¥Y Z
lutMaterial
µµ 
.
µµ 
	SetVector
µµ !
(
µµ! "
Uniforms
µµ" *
.
µµ* +

_LutParams
µµ+ 5
,
µµ5 6
new
µµ7 :
Vector4
µµ; B
(
µµB C"
k_InternalLogLutSize
∂∂ (
,
∂∂( )
$num
∑∑ 
/
∑∑ 
(
∑∑ "
k_InternalLogLutSize
∑∑ 0
*
∑∑1 2"
k_InternalLogLutSize
∑∑3 G
)
∑∑G H
,
∑∑H I
$num
∏∏ 
/
∏∏ "
k_InternalLogLutSize
∏∏ /
,
∏∏/ 0"
k_InternalLogLutSize
ππ (
/
ππ) *
(
ππ+ ,"
k_InternalLogLutSize
ππ, @
-
ππA B
$num
ππC E
)
ππE F
)
ππF G
)
∫∫ 
;
∫∫ 
lutMaterial
ΩΩ 
.
ΩΩ 
shaderKeywords
ΩΩ &
=
ΩΩ' (
null
ΩΩ) -
;
ΩΩ- .
var
øø 
tonemapping
øø 
=
øø 
settings
øø &
.
øø& '
tonemapping
øø' 2
;
øø2 3
switch
¿¿ 
(
¿¿ 
tonemapping
¿¿ 
.
¿¿  

tonemapper
¿¿  *
)
¿¿* +
{
¡¡ 
case
¬¬ 
ColorGradingModel
¬¬ &
.
¬¬& '

Tonemapper
¬¬' 1
.
¬¬1 2
Neutral
¬¬2 9
:
¬¬9 :
{
√√ 
lutMaterial
ƒƒ 
.
ƒƒ  
EnableKeyword
ƒƒ  -
(
ƒƒ- .
$str
ƒƒ. C
)
ƒƒC D
;
ƒƒD E
const
∆∆ 
float
∆∆ 
scaleFactor
∆∆  +
=
∆∆, -
$num
∆∆. 1
;
∆∆1 2
const
«« 
float
«« 
scaleFactorHalf
««  /
=
««0 1
scaleFactor
««2 =
*
««> ?
$num
««@ D
;
««D E
float
…… 
inBlack
…… !
=
……" #
tonemapping
……$ /
.
……/ 0
neutralBlackIn
……0 >
*
……? @
scaleFactor
……A L
+
……M N
$num
……O Q
;
……Q R
float
   
outBlack
   "
=
  # $
tonemapping
  % 0
.
  0 1
neutralBlackOut
  1 @
*
  A B
scaleFactorHalf
  C R
+
  S T
$num
  U W
;
  W X
float
ÀÀ 
inWhite
ÀÀ !
=
ÀÀ" #
tonemapping
ÀÀ$ /
.
ÀÀ/ 0
neutralWhiteIn
ÀÀ0 >
/
ÀÀ? @
scaleFactor
ÀÀA L
;
ÀÀL M
float
ÃÃ 
outWhite
ÃÃ "
=
ÃÃ# $
$num
ÃÃ% '
-
ÃÃ( )
tonemapping
ÃÃ* 5
.
ÃÃ5 6
neutralWhiteOut
ÃÃ6 E
/
ÃÃF G
scaleFactor
ÃÃH S
;
ÃÃS T
float
ÕÕ 

blackRatio
ÕÕ $
=
ÕÕ% &
inBlack
ÕÕ' .
/
ÕÕ/ 0
outBlack
ÕÕ1 9
;
ÕÕ9 :
float
ŒŒ 

whiteRatio
ŒŒ $
=
ŒŒ% &
inWhite
ŒŒ' .
/
ŒŒ/ 0
outWhite
ŒŒ1 9
;
ŒŒ9 :
const
–– 
float
–– 
a
––  !
=
––" #
$num
––$ (
;
––( )
float
—— 
b
—— 
=
—— 
Mathf
—— #
.
——# $
Max
——$ '
(
——' (
$num
——( *
,
——* +
Mathf
——, 1
.
——1 2
LerpUnclamped
——2 ?
(
——? @
$num
——@ E
,
——E F
$num
——G L
,
——L M

blackRatio
——N X
)
——X Y
)
——Y Z
;
——Z [
float
““ 
c
““ 
=
““ 
Mathf
““ #
.
““# $
LerpUnclamped
““$ 1
(
““1 2
$num
““2 7
,
““7 8
$num
““9 >
,
““> ?

whiteRatio
““@ J
)
““J K
;
““K L
float
”” 
d
”” 
=
”” 
Mathf
”” #
.
””# $
Max
””$ '
(
””' (
$num
””( *
,
””* +
Mathf
””, 1
.
””1 2
LerpUnclamped
””2 ?
(
””? @
$num
””@ E
,
””E F
$num
””G L
,
””L M

blackRatio
””N X
)
””X Y
)
””Y Z
;
””Z [
const
‘‘ 
float
‘‘ 
e
‘‘  !
=
‘‘" #
$num
‘‘$ )
;
‘‘) *
const
’’ 
float
’’ 
f
’’  !
=
’’" #
$num
’’$ )
;
’’) *
lutMaterial
◊◊ 
.
◊◊  
	SetVector
◊◊  )
(
◊◊) *
Uniforms
◊◊* 2
.
◊◊2 3'
_NeutralTonemapperParams1
◊◊3 L
,
◊◊L M
new
◊◊N Q
Vector4
◊◊R Y
(
◊◊Y Z
a
◊◊Z [
,
◊◊[ \
b
◊◊] ^
,
◊◊^ _
c
◊◊` a
,
◊◊a b
d
◊◊c d
)
◊◊d e
)
◊◊e f
;
◊◊f g
lutMaterial
ÿÿ 
.
ÿÿ  
	SetVector
ÿÿ  )
(
ÿÿ) *
Uniforms
ÿÿ* 2
.
ÿÿ2 3'
_NeutralTonemapperParams2
ÿÿ3 L
,
ÿÿL M
new
ÿÿN Q
Vector4
ÿÿR Y
(
ÿÿY Z
e
ÿÿZ [
,
ÿÿ[ \
f
ÿÿ] ^
,
ÿÿ^ _
tonemapping
ÿÿ` k
.
ÿÿk l
neutralWhiteLevel
ÿÿl }
,
ÿÿ} ~
tonemappingÿÿ ä
.ÿÿä ã 
neutralWhiteClipÿÿã õ
/ÿÿú ù
scaleFactorHalfÿÿû ≠
)ÿÿ≠ Æ
)ÿÿÆ Ø
;ÿÿØ ∞
break
ŸŸ 
;
ŸŸ 
}
⁄⁄ 
case
‹‹ 
ColorGradingModel
‹‹ &
.
‹‹& '

Tonemapper
‹‹' 1
.
‹‹1 2
ACES
‹‹2 6
:
‹‹6 7
{
›› 
lutMaterial
ﬁﬁ 
.
ﬁﬁ  
EnableKeyword
ﬁﬁ  -
(
ﬁﬁ- .
$str
ﬁﬁ. B
)
ﬁﬁB C
;
ﬁﬁC D
break
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 
}
·· 
lutMaterial
‰‰ 
.
‰‰ 
SetFloat
‰‰  
(
‰‰  !
Uniforms
‰‰! )
.
‰‰) *
	_HueShift
‰‰* 3
,
‰‰3 4
settings
‰‰5 =
.
‰‰= >
basic
‰‰> C
.
‰‰C D
hueShift
‰‰D L
/
‰‰M N
$num
‰‰O S
)
‰‰S T
;
‰‰T U
lutMaterial
ÂÂ 
.
ÂÂ 
SetFloat
ÂÂ  
(
ÂÂ  !
Uniforms
ÂÂ! )
.
ÂÂ) *
_Saturation
ÂÂ* 5
,
ÂÂ5 6
settings
ÂÂ7 ?
.
ÂÂ? @
basic
ÂÂ@ E
.
ÂÂE F

saturation
ÂÂF P
)
ÂÂP Q
;
ÂÂQ R
lutMaterial
ÊÊ 
.
ÊÊ 
SetFloat
ÊÊ  
(
ÊÊ  !
Uniforms
ÊÊ! )
.
ÊÊ) *
	_Contrast
ÊÊ* 3
,
ÊÊ3 4
settings
ÊÊ5 =
.
ÊÊ= >
basic
ÊÊ> C
.
ÊÊC D
contrast
ÊÊD L
)
ÊÊL M
;
ÊÊM N
lutMaterial
ÁÁ 
.
ÁÁ 
	SetVector
ÁÁ !
(
ÁÁ! "
Uniforms
ÁÁ" *
.
ÁÁ* +
_Balance
ÁÁ+ 3
,
ÁÁ3 4#
CalculateColorBalance
ÁÁ5 J
(
ÁÁJ K
settings
ÁÁK S
.
ÁÁS T
basic
ÁÁT Y
.
ÁÁY Z
temperature
ÁÁZ e
,
ÁÁe f
settings
ÁÁg o
.
ÁÁo p
basic
ÁÁp u
.
ÁÁu v
tint
ÁÁv z
)
ÁÁz {
)
ÁÁ{ |
;
ÁÁ| }
Vector3
ÍÍ 
lift
ÍÍ 
,
ÍÍ 
gamma
ÍÍ 
,
ÍÍ  
gain
ÍÍ! %
;
ÍÍ% &$
CalculateLiftGammaGain
ÎÎ "
(
ÎÎ" #
settings
ÏÏ 
.
ÏÏ 
colorWheels
ÏÏ $
.
ÏÏ$ %
linear
ÏÏ% +
.
ÏÏ+ ,
lift
ÏÏ, 0
,
ÏÏ0 1
settings
ÌÌ 
.
ÌÌ 
colorWheels
ÌÌ $
.
ÌÌ$ %
linear
ÌÌ% +
.
ÌÌ+ ,
gamma
ÌÌ, 1
,
ÌÌ1 2
settings
ÓÓ 
.
ÓÓ 
colorWheels
ÓÓ $
.
ÓÓ$ %
linear
ÓÓ% +
.
ÓÓ+ ,
gain
ÓÓ, 0
,
ÓÓ0 1
out
ÔÔ 
lift
ÔÔ 
,
ÔÔ 
out
ÔÔ 
gamma
ÔÔ #
,
ÔÔ# $
out
ÔÔ% (
gain
ÔÔ) -
)
 
;
 
lutMaterial
ÚÚ 
.
ÚÚ 
	SetVector
ÚÚ !
(
ÚÚ! "
Uniforms
ÚÚ" *
.
ÚÚ* +
_Lift
ÚÚ+ 0
,
ÚÚ0 1
lift
ÚÚ2 6
)
ÚÚ6 7
;
ÚÚ7 8
lutMaterial
ÛÛ 
.
ÛÛ 
	SetVector
ÛÛ !
(
ÛÛ! "
Uniforms
ÛÛ" *
.
ÛÛ* +
	_InvGamma
ÛÛ+ 4
,
ÛÛ4 5
gamma
ÛÛ6 ;
)
ÛÛ; <
;
ÛÛ< =
lutMaterial
ÙÙ 
.
ÙÙ 
	SetVector
ÙÙ !
(
ÙÙ! "
Uniforms
ÙÙ" *
.
ÙÙ* +
_Gain
ÙÙ+ 0
,
ÙÙ0 1
gain
ÙÙ2 6
)
ÙÙ6 7
;
ÙÙ7 8
Vector3
˜˜ 
slope
˜˜ 
,
˜˜ 
power
˜˜  
,
˜˜  !
offset
˜˜" (
;
˜˜( )'
CalculateSlopePowerOffset
¯¯ %
(
¯¯% &
settings
˘˘ 
.
˘˘ 
colorWheels
˘˘ $
.
˘˘$ %
log
˘˘% (
.
˘˘( )
slope
˘˘) .
,
˘˘. /
settings
˙˙ 
.
˙˙ 
colorWheels
˙˙ $
.
˙˙$ %
log
˙˙% (
.
˙˙( )
power
˙˙) .
,
˙˙. /
settings
˚˚ 
.
˚˚ 
colorWheels
˚˚ $
.
˚˚$ %
log
˚˚% (
.
˚˚( )
offset
˚˚) /
,
˚˚/ 0
out
¸¸ 
slope
¸¸ 
,
¸¸ 
out
¸¸ 
power
¸¸ $
,
¸¸$ %
out
¸¸& )
offset
¸¸* 0
)
˝˝ 
;
˝˝ 
lutMaterial
ˇˇ 
.
ˇˇ 
	SetVector
ˇˇ !
(
ˇˇ! "
Uniforms
ˇˇ" *
.
ˇˇ* +
_Slope
ˇˇ+ 1
,
ˇˇ1 2
slope
ˇˇ3 8
)
ˇˇ8 9
;
ˇˇ9 :
lutMaterial
ÄÄ 
.
ÄÄ 
	SetVector
ÄÄ !
(
ÄÄ! "
Uniforms
ÄÄ" *
.
ÄÄ* +
_Power
ÄÄ+ 1
,
ÄÄ1 2
power
ÄÄ3 8
)
ÄÄ8 9
;
ÄÄ9 :
lutMaterial
ÅÅ 
.
ÅÅ 
	SetVector
ÅÅ !
(
ÅÅ! "
Uniforms
ÅÅ" *
.
ÅÅ* +
_Offset
ÅÅ+ 2
,
ÅÅ2 3
offset
ÅÅ4 :
)
ÅÅ: ;
;
ÅÅ; <
lutMaterial
ÑÑ 
.
ÑÑ 
	SetVector
ÑÑ !
(
ÑÑ! "
Uniforms
ÑÑ" *
.
ÑÑ* +
_ChannelMixerRed
ÑÑ+ ;
,
ÑÑ; <
settings
ÑÑ= E
.
ÑÑE F
channelMixer
ÑÑF R
.
ÑÑR S
red
ÑÑS V
)
ÑÑV W
;
ÑÑW X
lutMaterial
ÖÖ 
.
ÖÖ 
	SetVector
ÖÖ !
(
ÖÖ! "
Uniforms
ÖÖ" *
.
ÖÖ* + 
_ChannelMixerGreen
ÖÖ+ =
,
ÖÖ= >
settings
ÖÖ? G
.
ÖÖG H
channelMixer
ÖÖH T
.
ÖÖT U
green
ÖÖU Z
)
ÖÖZ [
;
ÖÖ[ \
lutMaterial
ÜÜ 
.
ÜÜ 
	SetVector
ÜÜ !
(
ÜÜ! "
Uniforms
ÜÜ" *
.
ÜÜ* +
_ChannelMixerBlue
ÜÜ+ <
,
ÜÜ< =
settings
ÜÜ> F
.
ÜÜF G
channelMixer
ÜÜG S
.
ÜÜS T
blue
ÜÜT X
)
ÜÜX Y
;
ÜÜY Z
lutMaterial
ââ 
.
ââ 

SetTexture
ââ "
(
ââ" #
Uniforms
ââ# +
.
ââ+ ,
_Curves
ââ, 3
,
ââ3 4
GetCurveTexture
ââ5 D
(
ââD E
)
ââE F
)
ââF G
;
ââG H
Graphics
åå 
.
åå 
Blit
åå 
(
åå 
null
åå 
,
åå 
model
åå  %
.
åå% &
bakedLut
åå& .
,
åå. /
lutMaterial
åå0 ;
,
åå; <
$num
åå= >
)
åå> ?
;
åå? @
}
çç 	
public
èè 
override
èè 
void
èè 
Prepare
èè $
(
èè$ %
Material
èè% -
uberMaterial
èè. :
)
èè: ;
{
êê 	
if
ëë 
(
ëë 
model
ëë 
.
ëë 
isDirty
ëë 
||
ëë  
!
ëë! "
IsLogLutValid
ëë" /
(
ëë/ 0
model
ëë0 5
.
ëë5 6
bakedLut
ëë6 >
)
ëë> ?
)
ëë? @
{
íí 
GenerateLut
ìì 
(
ìì 
)
ìì 
;
ìì 
model
îî 
.
îî 
isDirty
îî 
=
îî 
false
îî  %
;
îî% &
}
ïï 
uberMaterial
óó 
.
óó 
EnableKeyword
óó &
(
óó& '
context
òò 
.
òò 
profile
òò 
.
òò  

debugViews
òò  *
.
òò* +
IsModeActive
òò+ 7
(
òò7 8
	DebugMode
òò8 A
.
òòA B
PreGradingLog
òòB O
)
òòO P
?
ôô 
$str
ôô *
:
öö 
$str
öö !
)
õõ 
;
õõ 
var
ùù 
bakedLut
ùù 
=
ùù 
model
ùù  
.
ùù  !
bakedLut
ùù! )
;
ùù) *
uberMaterial
ûû 
.
ûû 

SetTexture
ûû #
(
ûû# $
Uniforms
ûû$ ,
.
ûû, -
_LogLut
ûû- 4
,
ûû4 5
bakedLut
ûû6 >
)
ûû> ?
;
ûû? @
uberMaterial
üü 
.
üü 
	SetVector
üü "
(
üü" #
Uniforms
üü# +
.
üü+ ,
_LogLut_Params
üü, :
,
üü: ;
new
üü< ?
Vector3
üü@ G
(
üüG H
$num
üüH J
/
üüK L
bakedLut
üüM U
.
üüU V
width
üüV [
,
üü[ \
$num
üü] _
/
üü` a
bakedLut
üüb j
.
üüj k
height
üük q
,
üüq r
bakedLut
üüs {
.
üü{ |
heightüü| Ç
-üüÉ Ñ
$numüüÖ á
)üüá à
)üüà â
;üüâ ä
float
°° 
ev
°° 
=
°° 
Mathf
°° 
.
°° 
Exp
°°  
(
°°  !
model
°°! &
.
°°& '
settings
°°' /
.
°°/ 0
basic
°°0 5
.
°°5 6
postExposure
°°6 B
*
°°C D
$num
°°E h
)
°°h i
;
°°i j
uberMaterial
¢¢ 
.
¢¢ 
SetFloat
¢¢ !
(
¢¢! "
Uniforms
¢¢" *
.
¢¢* +
_ExposureEV
¢¢+ 6
,
¢¢6 7
ev
¢¢8 :
)
¢¢: ;
;
¢¢; <
}
££ 	
public
•• 
void
•• 
OnGUI
•• 
(
•• 
)
•• 
{
¶¶ 	
var
ßß 
bakedLut
ßß 
=
ßß 
model
ßß  
.
ßß  !
bakedLut
ßß! )
;
ßß) *
var
®® 
rect
®® 
=
®® 
new
®® 
Rect
®® 
(
®®  
context
®®  '
.
®®' (
viewport
®®( 0
.
®®0 1
x
®®1 2
*
®®3 4
Screen
®®5 ;
.
®®; <
width
®®< A
+
®®B C
$num
®®D F
,
®®F G
$num
®®H J
,
®®J K
bakedLut
®®L T
.
®®T U
width
®®U Z
,
®®Z [
bakedLut
®®\ d
.
®®d e
height
®®e k
)
®®k l
;
®®l m
GUI
©© 
.
©© 
DrawTexture
©© 
(
©© 
rect
©©  
,
©©  !
bakedLut
©©" *
)
©©* +
;
©©+ ,
}
™™ 	
public
¨¨ 
override
¨¨ 
void
¨¨ 
	OnDisable
¨¨ &
(
¨¨& '
)
¨¨' (
{
≠≠ 	
GraphicsUtils
ÆÆ 
.
ÆÆ 
Destroy
ÆÆ !
(
ÆÆ! "
m_GradingCurves
ÆÆ" 1
)
ÆÆ1 2
;
ÆÆ2 3
GraphicsUtils
ØØ 
.
ØØ 
Destroy
ØØ !
(
ØØ! "
model
ØØ" '
.
ØØ' (
bakedLut
ØØ( 0
)
ØØ0 1
;
ØØ1 2
m_GradingCurves
∞∞ 
=
∞∞ 
null
∞∞ "
;
∞∞" #
model
±± 
.
±± 
bakedLut
±± 
=
±± 
null
±± !
;
±±! "
}
≤≤ 	
}
≥≥ 
}¥¥ ˜å
ÆD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\DepthOfFieldComponent.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class !
DepthOfFieldComponent -
:. /0
$PostProcessingComponentRenderTexture0 T
<T U
DepthOfFieldModelU f
>f g
{ 
static		 
class		 
Uniforms		 
{

 	
internal 
static 
readonly $
int% (
_DepthOfFieldTex) 9
== >
Shader? E
.E F
PropertyToIDF R
(R S
$strS e
)e f
;f g
internal 
static 
readonly $
int% (
_DepthOfFieldCoCTex) <
== >
Shader? E
.E F
PropertyToIDF R
(R S
$strS h
)h i
;i j
internal 
static 
readonly $
int% (
	_Distance) 2
== >
Shader? E
.E F
PropertyToIDF R
(R S
$strS ^
)^ _
;_ `
internal 
static 
readonly $
int% (

_LensCoeff) 3
== >
Shader? E
.E F
PropertyToIDF R
(R S
$strS _
)_ `
;` a
internal 
static 
readonly $
int% (
_MaxCoC) 0
== >
Shader? E
.E F
PropertyToIDF R
(R S
$strS \
)\ ]
;] ^
internal 
static 
readonly $
int% (

_RcpMaxCoC) 3
== >
Shader? E
.E F
PropertyToIDF R
(R S
$strS _
)_ `
;` a
internal 
static 
readonly $
int% (

_RcpAspect) 3
== >
Shader? E
.E F
PropertyToIDF R
(R S
$strS _
)_ `
;` a
internal 
static 
readonly $
int% (
_MainTex) 1
== >
Shader? E
.E F
PropertyToIDF R
(R S
$strS ]
)] ^
;^ _
internal 
static 
readonly $
int% (
_CoCTex) 0
== >
Shader? E
.E F
PropertyToIDF R
(R S
$strS \
)\ ]
;] ^
internal 
static 
readonly $
int% (

_TaaParams) 3
== >
Shader? E
.E F
PropertyToIDF R
(R S
$strS _
)_ `
;` a
internal 
static 
readonly $
int% (
_DepthOfFieldParams) <
== >
Shader? E
.E F
PropertyToIDF R
(R S
$strS h
)h i
;i j
} 	
const 
string 
k_ShaderString #
=$ %
$str& E
;E F
public 
override 
bool 
active #
{ 	
get 
{ 
return 
model 
. 
enabled $
&& 
! 
context "
." #
interrupted# .
;. /
}   
}!! 	
public## 
override## 
DepthTextureMode## (
GetCameraFlags##) 7
(##7 8
)##8 9
{$$ 	
return%% 
DepthTextureMode%% #
.%%# $
Depth%%$ )
;%%) *
}&& 	
RenderTexture(( 
m_CoCHistory(( "
;((" #
const++ 
float++ 
k_FilmHeight++  
=++! "
$num++# )
;++) *
float--  
CalculateFocalLength-- "
(--" #
)--# $
{.. 	
var// 
settings// 
=// 
model//  
.//  !
settings//! )
;//) *
if11 
(11 
!11 
settings11 
.11 
useCameraFov11 &
)11& '
return22 
settings22 
.22  
focalLength22  +
/22, -
$num22. 3
;223 4
float44 
fov44 
=44 
context44 
.44  
camera44  &
.44& '
fieldOfView44' 2
*443 4
Mathf445 :
.44: ;
Deg2Rad44; B
;44B C
return55 
$num55 
*55 
k_FilmHeight55 &
/55' (
Mathf55) .
.55. /
Tan55/ 2
(552 3
$num553 7
*558 9
fov55: =
)55= >
;55> ?
}66 	
float88 !
CalculateMaxCoCRadius88 #
(88# $
int88$ '
screenHeight88( 4
)884 5
{99 	
float<< 
radiusInPixels<<  
=<<! "
(<<# $
float<<$ )
)<<) *
model<<* /
.<</ 0
settings<<0 8
.<<8 9

kernelSize<<9 C
*<<D E
$num<<F H
+<<I J
$num<<K M
;<<M N
return@@ 
Mathf@@ 
.@@ 
Min@@ 
(@@ 
$num@@ "
,@@" #
radiusInPixels@@$ 2
/@@3 4
screenHeight@@5 A
)@@A B
;@@B C
}AA 	
boolCC 
CheckHistoryCC 
(CC 
intCC 
widthCC #
,CC# $
intCC% (
heightCC) /
)CC/ 0
{DD 	
returnEE 
m_CoCHistoryEE 
!=EE  "
nullEE# '
&&EE( *
m_CoCHistoryEE+ 7
.EE7 8
	IsCreatedEE8 A
(EEA B
)EEB C
&&EED F
m_CoCHistoryFF 
.FF 
widthFF "
==FF# %
widthFF& +
&&FF, .
m_CoCHistoryFF/ ;
.FF; <
heightFF< B
==FFC E
heightFFF L
;FFL M
}GG 	
RenderTextureFormatII 
SelectFormatII (
(II( )
RenderTextureFormatII) <
primaryII= D
,IID E
RenderTextureFormatIIF Y
	secondaryIIZ c
)IIc d
{JJ 	
ifKK 
(KK 

SystemInfoKK 
.KK '
SupportsRenderTextureFormatKK 6
(KK6 7
primaryKK7 >
)KK> ?
)KK? @
returnKKA G
primaryKKH O
;KKO P
ifLL 
(LL 

SystemInfoLL 
.LL '
SupportsRenderTextureFormatLL 6
(LL6 7
	secondaryLL7 @
)LL@ A
)LLA B
returnLLC I
	secondaryLLJ S
;LLS T
returnMM 
RenderTextureFormatMM &
.MM& '
DefaultMM' .
;MM. /
}NN 	
publicPP 
voidPP 
PreparePP 
(PP 
RenderTexturePP )
sourcePP* 0
,PP0 1
MaterialPP2 :
uberMaterialPP; G
,PPG H
boolPPI M
antialiasCoCPPN Z
,PPZ [
Vector2PP\ c
	taaJitterPPd m
,PPm n
floatPPo t
taaBlending	PPu Ä
)
PPÄ Å
{QQ 	
varRR 
settingsRR 
=RR 
modelRR  
.RR  !
settingsRR! )
;RR) *
varSS 
colorFormatSS 
=SS 
RenderTextureFormatSS 1
.SS1 2

DefaultHDRSS2 <
;SS< =
varTT 
	cocFormatTT 
=TT 
SelectFormatTT (
(TT( )
RenderTextureFormatTT) <
.TT< =
R8TT= ?
,TT? @
RenderTextureFormatTTA T
.TTT U
RHalfTTU Z
)TTZ [
;TT[ \
var]] 
f]] 
=]]  
CalculateFocalLength]] (
(]]( )
)]]) *
;]]* +
var^^ 
s1^^ 
=^^ 
Mathf^^ 
.^^ 
Max^^ 
(^^ 
settings^^ '
.^^' (
focusDistance^^( 5
,^^5 6
f^^7 8
)^^8 9
;^^9 :
var__ 
aspect__ 
=__ 
(__ 
float__ 
)__  
source__  &
.__& '
width__' ,
/__- .
source__/ 5
.__5 6
height__6 <
;__< =
var`` 
coeff`` 
=`` 
f`` 
*`` 
f`` 
/`` 
(``  !
settings``! )
.``) *
aperture``* 2
*``3 4
(``5 6
s1``6 8
-``9 :
f``; <
)``< =
*``> ?
k_FilmHeight``@ L
*``M N
$num``O P
)``P Q
;``Q R
varaa 
maxCoCaa 
=aa !
CalculateMaxCoCRadiusaa .
(aa. /
sourceaa/ 5
.aa5 6
heightaa6 <
)aa< =
;aa= >
varcc 
materialcc 
=cc 
contextcc "
.cc" #
materialFactorycc# 2
.cc2 3
Getcc3 6
(cc6 7
k_ShaderStringcc7 E
)ccE F
;ccF G
materialdd 
.dd 
SetFloatdd 
(dd 
Uniformsdd &
.dd& '
	_Distancedd' 0
,dd0 1
s1dd2 4
)dd4 5
;dd5 6
materialee 
.ee 
SetFloatee 
(ee 
Uniformsee &
.ee& '

_LensCoeffee' 1
,ee1 2
coeffee3 8
)ee8 9
;ee9 :
materialff 
.ff 
SetFloatff 
(ff 
Uniformsff &
.ff& '
_MaxCoCff' .
,ff. /
maxCoCff0 6
)ff6 7
;ff7 8
materialgg 
.gg 
SetFloatgg 
(gg 
Uniformsgg &
.gg& '

_RcpMaxCoCgg' 1
,gg1 2
$numgg3 5
/gg6 7
maxCoCgg8 >
)gg> ?
;gg? @
materialhh 
.hh 
SetFloathh 
(hh 
Uniformshh &
.hh& '

_RcpAspecthh' 1
,hh1 2
$numhh3 5
/hh6 7
aspecthh8 >
)hh> ?
;hh? @
varkk 
rtCoCkk 
=kk 
contextkk 
.kk   
renderTextureFactorykk  4
.kk4 5
Getkk5 8
(kk8 9
contextkk9 @
.kk@ A
widthkkA F
,kkF G
contextkkH O
.kkO P
heightkkP V
,kkV W
$numkkX Y
,kkY Z
	cocFormatkk[ d
,kkd e"
RenderTextureReadWritekkf |
.kk| }
Linear	kk} É
)
kkÉ Ñ
;
kkÑ Ö
Graphicsll 
.ll 
Blitll 
(ll 
nullll 
,ll 
rtCoCll  %
,ll% &
materialll' /
,ll/ 0
$numll1 2
)ll2 3
;ll3 4
ifnn 
(nn 
antialiasCoCnn 
)nn 
{oo 
materialqq 
.qq 

SetTextureqq #
(qq# $
Uniformsqq$ ,
.qq, -
_CoCTexqq- 4
,qq4 5
rtCoCqq6 ;
)qq; <
;qq< =
varss 
blendss 
=ss 
CheckHistoryss (
(ss( )
contextss) 0
.ss0 1
widthss1 6
,ss6 7
contextss8 ?
.ss? @
heightss@ F
)ssF G
?ssH I
taaBlendingssJ U
:ssV W
$numssX Z
;ssZ [
materialtt 
.tt 
	SetVectortt "
(tt" #
Uniformstt# +
.tt+ ,

_TaaParamstt, 6
,tt6 7
newtt8 ;
Vector3tt< C
(ttC D
	taaJitterttD M
.ttM N
xttN O
,ttO P
	taaJitterttQ Z
.ttZ [
ytt[ \
,tt\ ]
blendtt^ c
)ttc d
)ttd e
;tte f
varvv 

rtFilteredvv 
=vv  
RenderTexturevv! .
.vv. /
GetTemporaryvv/ ;
(vv; <
contextvv< C
.vvC D
widthvvD I
,vvI J
contextvvK R
.vvR S
heightvvS Y
,vvY Z
$numvv[ \
,vv\ ]
	cocFormatvv^ g
)vvg h
;vvh i
Graphicsww 
.ww 
Blitww 
(ww 
m_CoCHistoryww *
,ww* +

rtFilteredww, 6
,ww6 7
materialww8 @
,ww@ A
$numwwB C
)wwC D
;wwD E
contextyy 
.yy  
renderTextureFactoryyy ,
.yy, -
Releaseyy- 4
(yy4 5
rtCoCyy5 :
)yy: ;
;yy; <
ifzz 
(zz 
m_CoCHistoryzz  
!=zz! #
nullzz$ (
)zz( )
RenderTexturezz* 7
.zz7 8
ReleaseTemporaryzz8 H
(zzH I
m_CoCHistoryzzI U
)zzU V
;zzV W
m_CoCHistory|| 
=|| 
rtCoC|| $
=||% &

rtFiltered||' 1
;||1 2
}}} 
var
ÄÄ 
rt1
ÄÄ 
=
ÄÄ 
context
ÄÄ 
.
ÄÄ "
renderTextureFactory
ÄÄ 2
.
ÄÄ2 3
Get
ÄÄ3 6
(
ÄÄ6 7
context
ÄÄ7 >
.
ÄÄ> ?
width
ÄÄ? D
/
ÄÄE F
$num
ÄÄG H
,
ÄÄH I
context
ÄÄJ Q
.
ÄÄQ R
height
ÄÄR X
/
ÄÄY Z
$num
ÄÄ[ \
,
ÄÄ\ ]
$num
ÄÄ^ _
,
ÄÄ_ `
colorFormat
ÄÄa l
)
ÄÄl m
;
ÄÄm n
material
ÅÅ 
.
ÅÅ 

SetTexture
ÅÅ 
(
ÅÅ  
Uniforms
ÅÅ  (
.
ÅÅ( )
_CoCTex
ÅÅ) 0
,
ÅÅ0 1
rtCoC
ÅÅ2 7
)
ÅÅ7 8
;
ÅÅ8 9
Graphics
ÇÇ 
.
ÇÇ 
Blit
ÇÇ 
(
ÇÇ 
source
ÇÇ  
,
ÇÇ  !
rt1
ÇÇ" %
,
ÇÇ% &
material
ÇÇ' /
,
ÇÇ/ 0
$num
ÇÇ1 2
)
ÇÇ2 3
;
ÇÇ3 4
var
ÖÖ 
rt2
ÖÖ 
=
ÖÖ 
context
ÖÖ 
.
ÖÖ "
renderTextureFactory
ÖÖ 2
.
ÖÖ2 3
Get
ÖÖ3 6
(
ÖÖ6 7
context
ÖÖ7 >
.
ÖÖ> ?
width
ÖÖ? D
/
ÖÖE F
$num
ÖÖG H
,
ÖÖH I
context
ÖÖJ Q
.
ÖÖQ R
height
ÖÖR X
/
ÖÖY Z
$num
ÖÖ[ \
,
ÖÖ\ ]
$num
ÖÖ^ _
,
ÖÖ_ `
colorFormat
ÖÖa l
)
ÖÖl m
;
ÖÖm n
Graphics
ÜÜ 
.
ÜÜ 
Blit
ÜÜ 
(
ÜÜ 
rt1
ÜÜ 
,
ÜÜ 
rt2
ÜÜ "
,
ÜÜ" #
material
ÜÜ$ ,
,
ÜÜ, -
$num
ÜÜ. /
+
ÜÜ0 1
(
ÜÜ2 3
int
ÜÜ3 6
)
ÜÜ6 7
settings
ÜÜ7 ?
.
ÜÜ? @

kernelSize
ÜÜ@ J
)
ÜÜJ K
;
ÜÜK L
Graphics
ââ 
.
ââ 
Blit
ââ 
(
ââ 
rt2
ââ 
,
ââ 
rt1
ââ "
,
ââ" #
material
ââ$ ,
,
ââ, -
$num
ââ. /
)
ââ/ 0
;
ââ0 1
uberMaterial
åå 
.
åå 
	SetVector
åå "
(
åå" #
Uniforms
åå# +
.
åå+ ,!
_DepthOfFieldParams
åå, ?
,
åå? @
new
ååA D
Vector3
ååE L
(
ååL M
s1
ååM O
,
ååO P
coeff
ååQ V
,
ååV W
maxCoC
ååX ^
)
åå^ _
)
åå_ `
;
åå` a
if
éé 
(
éé 
context
éé 
.
éé 
profile
éé 
.
éé  

debugViews
éé  *
.
éé* +
IsModeActive
éé+ 7
(
éé7 8
	DebugMode
éé8 A
.
ééA B

FocusPlane
ééB L
)
ééL M
)
ééM N
{
èè 
uberMaterial
êê 
.
êê 
EnableKeyword
êê *
(
êê* +
$str
êê+ D
)
êêD E
;
êêE F
context
ëë 
.
ëë 
	Interrupt
ëë !
(
ëë! "
)
ëë" #
;
ëë# $
}
íí 
else
ìì 
{
îî 
uberMaterial
ïï 
.
ïï 

SetTexture
ïï '
(
ïï' (
Uniforms
ïï( 0
.
ïï0 1
_DepthOfFieldTex
ïï1 A
,
ïïA B
rt1
ïïC F
)
ïïF G
;
ïïG H
uberMaterial
ññ 
.
ññ 

SetTexture
ññ '
(
ññ' (
Uniforms
ññ( 0
.
ññ0 1!
_DepthOfFieldCoCTex
ññ1 D
,
ññD E
rtCoC
ññF K
)
ññK L
;
ññL M
uberMaterial
óó 
.
óó 
EnableKeyword
óó *
(
óó* +
$str
óó+ ;
)
óó; <
;
óó< =
}
òò 
context
öö 
.
öö "
renderTextureFactory
öö (
.
öö( )
Release
öö) 0
(
öö0 1
rt2
öö1 4
)
öö4 5
;
öö5 6
}
õõ 	
public
ùù 
override
ùù 
void
ùù 
	OnDisable
ùù &
(
ùù& '
)
ùù' (
{
ûû 	
if
üü 
(
üü 
m_CoCHistory
üü 
!=
üü 
null
üü  $
)
üü$ %
RenderTexture
†† 
.
†† 
ReleaseTemporary
†† .
(
††. /
m_CoCHistory
††/ ;
)
††; <
;
††< =
m_CoCHistory
¢¢ 
=
¢¢ 
null
¢¢ 
;
¢¢  
}
££ 	
}
§§ 
}•• Ê&
´D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\DitheringComponent.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class 
DitheringComponent *
:+ ,0
$PostProcessingComponentRenderTexture- Q
<Q R
DitheringModelR `
>` a
{ 
static 
class 
Uniforms 
{ 	
internal 
static 
readonly $
int% (
_DitheringTex) 6
=7 8
Shader9 ?
.? @
PropertyToID@ L
(L M
$strM \
)\ ]
;] ^
internal 
static 
readonly $
int% (
_DitheringCoords) 9
=: ;
Shader< B
.B C
PropertyToIDC O
(O P
$strP b
)b c
;c d
}		 	
public 
override 
bool 
active #
{ 	
get 
{ 
return 
model 
. 
enabled $
&& 
! 
context "
." #
interrupted# .
;. /
} 
} 	
	Texture2D 
[ 
] 
noiseTextures !
;! "
int 
textureIndex 
= 
$num 
; 
const 
int 
k_TextureCount  
=! "
$num# %
;% &
public 
override 
void 
	OnDisable &
(& '
)' (
{ 	
noiseTextures 
= 
null  
;  !
} 	
void 
LoadNoiseTextures 
( 
)  
{   	
noiseTextures!! 
=!! 
new!! 
	Texture2D!!  )
[!!) *
k_TextureCount!!* 8
]!!8 9
;!!9 :
for## 
(## 
int## 
i## 
=## 
$num## 
;## 
i## 
<## 
k_TextureCount##  .
;##. /
i##0 1
++##1 3
)##3 4
noiseTextures$$ 
[$$ 
i$$ 
]$$  
=$$! "
	Resources$$# ,
.$$, -
Load$$- 1
<$$1 2
	Texture2D$$2 ;
>$$; <
($$< =
$str$$= T
+$$U V
i$$W X
)$$X Y
;$$Y Z
}%% 	
public'' 
override'' 
void'' 
Prepare'' $
(''$ %
Material''% -
uberMaterial''. :
)'': ;
{(( 	
float)) 

rndOffsetX)) 
;)) 
float** 

rndOffsetY** 
;** 
if11 
(11 
++11 
textureIndex11 
>=11 !
k_TextureCount11" 0
)110 1
textureIndex22 
=22 
$num22  
;22  !

rndOffsetX44 
=44 
Random44 
.44  
value44  %
;44% &

rndOffsetY55 
=55 
Random55 
.55  
value55  %
;55% &
if88 
(88 
noiseTextures88 
==88  
null88! %
)88% &
LoadNoiseTextures99 !
(99! "
)99" #
;99# $
var;; 
noiseTex;; 
=;; 
noiseTextures;; (
[;;( )
textureIndex;;) 5
];;5 6
;;;6 7
uberMaterial== 
.== 
EnableKeyword== &
(==& '
$str==' 2
)==2 3
;==3 4
uberMaterial>> 
.>> 

SetTexture>> #
(>># $
Uniforms>>$ ,
.>>, -
_DitheringTex>>- :
,>>: ;
noiseTex>>< D
)>>D E
;>>E F
uberMaterial?? 
.?? 
	SetVector?? "
(??" #
Uniforms??# +
.??+ ,
_DitheringCoords??, <
,??< =
new??> A
Vector4??B I
(??I J
(@@ 
float@@ 
)@@ 
context@@ 
.@@ 
width@@ $
/@@% &
(@@' (
float@@( -
)@@- .
noiseTex@@. 6
.@@6 7
width@@7 <
,@@< =
(AA 
floatAA 
)AA 
contextAA 
.AA 
heightAA %
/AA& '
(AA( )
floatAA) .
)AA. /
noiseTexAA/ 7
.AA7 8
heightAA8 >
,AA> ?

rndOffsetXBB 
,BB 

rndOffsetYCC 
)DD 
)DD 
;DD 
}EE 	
}FF 
}GG ÷†
ØD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\EyeAdaptationComponent.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class "
EyeAdaptationComponent .
:/ 00
$PostProcessingComponentRenderTexture1 U
<U V
EyeAdaptationModelV h
>h i
{ 
static 
class 
Uniforms 
{ 	
internal 
static 
readonly $
int% (
_Params) 0
=? @
ShaderA G
.G H
PropertyToIDH T
(T U
$strU ^
)^ _
;_ `
internal 
static 
readonly $
int% (
_Speed) /
=? @
ShaderA G
.G H
PropertyToIDH T
(T U
$strU ]
)] ^
;^ _
internal		 
static		 
readonly		 $
int		% (
_ScaleOffsetRes		) 8
=		? @
Shader		A G
.		G H
PropertyToID		H T
(		T U
$str		U f
)		f g
;		g h
internal

 
static

 
readonly

 $
int

% (!
_ExposureCompensation

) >
=

? @
Shader

A G
.

G H
PropertyToID

H T
(

T U
$str

U l
)

l m
;

m n
internal 
static 
readonly $
int% (
_AutoExposure) 6
=? @
ShaderA G
.G H
PropertyToIDH T
(T U
$strU d
)d e
;e f
internal 
static 
readonly $
int% (
_DebugWidth) 4
=? @
ShaderA G
.G H
PropertyToIDH T
(T U
$strU b
)b c
;c d
} 	
ComputeShader 
m_EyeCompute "
;" #
ComputeBuffer 
m_HistogramBuffer '
;' (
readonly 
RenderTexture 
[ 
]  
m_AutoExposurePool! 3
=4 5
new6 9
RenderTexture: G
[G H
$numH I
]I J
;J K
int "
m_AutoExposurePingPing "
;" #
RenderTexture !
m_CurrentAutoExposure +
;+ ,
RenderTexture 
m_DebugHistogram &
;& '
static 
uint 
[ 
] "
s_EmptyHistogramBuffer ,
;, -
bool 
m_FirstFrame 
= 
true  
;  !
const 
int 
k_HistogramBins !
=" #
$num$ &
;& '
const 
int 
k_HistogramThreadX $
=% &
$num' )
;) *
const 
int 
k_HistogramThreadY $
=% &
$num' )
;) *
public!! 
override!! 
bool!! 
active!! #
{"" 	
get## 
{$$ 
return%% 
model%% 
.%% 
enabled%% $
&&&& 

SystemInfo&& $
.&&$ %"
supportsComputeShaders&&% ;
&&'' 
!'' 
context'' "
.''" #
interrupted''# .
;''. /
}(( 
})) 	
public++ 
void++ 
ResetHistory++  
(++  !
)++! "
{,, 	
m_FirstFrame-- 
=-- 
true-- 
;--  
}.. 	
public00 
override00 
void00 
OnEnable00 %
(00% &
)00& '
{11 	
m_FirstFrame22 
=22 
true22 
;22  
}33 	
public55 
override55 
void55 
	OnDisable55 &
(55& '
)55' (
{66 	
foreach77 
(77 
var77 
rt77 
in77 
m_AutoExposurePool77 1
)771 2
GraphicsUtils88 
.88 
Destroy88 %
(88% &
rt88& (
)88( )
;88) *
if:: 
(:: 
m_HistogramBuffer:: !
!=::" $
null::% )
)::) *
m_HistogramBuffer;; !
.;;! "
Release;;" )
(;;) *
);;* +
;;;+ ,
m_HistogramBuffer== 
=== 
null==  $
;==$ %
if?? 
(?? 
m_DebugHistogram??  
!=??! #
null??$ (
)??( )
m_DebugHistogram@@  
.@@  !
Release@@! (
(@@( )
)@@) *
;@@* +
m_DebugHistogramBB 
=BB 
nullBB #
;BB# $
}CC 	
Vector4EE &
GetHistogramScaleOffsetResEE *
(EE* +
)EE+ ,
{FF 	
varGG 
settingsGG 
=GG 
modelGG  
.GG  !
settingsGG! )
;GG) *
floatHH 
diffHH 
=HH 
settingsHH !
.HH! "
logMaxHH" (
-HH) *
settingsHH+ 3
.HH3 4
logMinHH4 :
;HH: ;
floatII 
scaleII 
=II 
$numII 
/II 
diffII #
;II# $
floatJJ 
offsetJJ 
=JJ 
-JJ 
settingsJJ $
.JJ$ %
logMinJJ% +
*JJ, -
scaleJJ. 3
;JJ3 4
returnKK 
newKK 
Vector4KK 
(KK 
scaleKK $
,KK$ %
offsetKK& ,
,KK, -
MathfKK. 3
.KK3 4
FloorKK4 9
(KK9 :
contextKK: A
.KKA B
widthKKB G
/KKH I
$numKKJ L
)KKL M
,KKM N
MathfKKO T
.KKT U
FloorKKU Z
(KKZ [
contextKK[ b
.KKb c
heightKKc i
/KKj k
$numKKl n
)KKn o
)KKo p
;KKp q
}LL 	
publicNN 
TextureNN 
PrepareNN 
(NN 
RenderTextureNN ,
sourceNN- 3
,NN3 4
MaterialNN5 =
uberMaterialNN> J
)NNJ K
{OO 	
varPP 
settingsPP 
=PP 
modelPP  
.PP  !
settingsPP! )
;PP) *
ifSS 
(SS 
m_EyeComputeSS 
==SS 
nullSS  $
)SS$ %
m_EyeComputeTT 
=TT 
	ResourcesTT (
.TT( )
LoadTT) -
<TT- .
ComputeShaderTT. ;
>TT; <
(TT< =
$strTT= S
)TTS T
;TTT U
varVV 
materialVV 
=VV 
contextVV "
.VV" #
materialFactoryVV# 2
.VV2 3
GetVV3 6
(VV6 7
$strVV7 V
)VVV W
;VVW X
materialWW 
.WW 
shaderKeywordsWW #
=WW$ %
nullWW& *
;WW* +
ifYY 
(YY 
m_HistogramBufferYY !
==YY" $
nullYY% )
)YY) *
m_HistogramBufferZZ !
=ZZ" #
newZZ$ '
ComputeBufferZZ( 5
(ZZ5 6
k_HistogramBinsZZ6 E
,ZZE F
sizeofZZG M
(ZZM N
uintZZN R
)ZZR S
)ZZS T
;ZZT U
if\\ 
(\\ "
s_EmptyHistogramBuffer\\ &
==\\' )
null\\* .
)\\. /"
s_EmptyHistogramBuffer]] &
=]]' (
new]]) ,
uint]]- 1
[]]1 2
k_HistogramBins]]2 A
]]]A B
;]]B C
varaa 
scaleOffsetResaa 
=aa  &
GetHistogramScaleOffsetResaa! ;
(aa; <
)aa< =
;aa= >
varcc 
rtcc 
=cc 
contextcc 
.cc  
renderTextureFactorycc 1
.cc1 2
Getcc2 5
(cc5 6
(cc6 7
intcc7 :
)cc: ;
scaleOffsetRescc; I
.ccI J
zccJ K
,ccK L
(ccM N
intccN Q
)ccQ R
scaleOffsetResccR `
.cc` a
wcca b
,ccb c
$numccd e
,cce f
sourceccg m
.ccm n
formatccn t
)cct u
;ccu v
Graphicsdd 
.dd 
Blitdd 
(dd 
sourcedd  
,dd  !
rtdd" $
)dd$ %
;dd% &
ifff 
(ff 
m_AutoExposurePoolff "
[ff" #
$numff# $
]ff$ %
==ff& (
nullff) -
||ff. 0
!ff1 2
m_AutoExposurePoolff2 D
[ffD E
$numffE F
]ffF G
.ffG H
	IsCreatedffH Q
(ffQ R
)ffR S
)ffS T
m_AutoExposurePoolgg "
[gg" #
$numgg# $
]gg$ %
=gg& '
newgg( +
RenderTexturegg, 9
(gg9 :
$numgg: ;
,gg; <
$numgg= >
,gg> ?
$numgg@ A
,ggA B
RenderTextureFormatggC V
.ggV W
RFloatggW ]
)gg] ^
;gg^ _
ifii 
(ii 
m_AutoExposurePoolii "
[ii" #
$numii# $
]ii$ %
==ii& (
nullii) -
||ii. 0
!ii1 2
m_AutoExposurePoolii2 D
[iiD E
$numiiE F
]iiF G
.iiG H
	IsCreatediiH Q
(iiQ R
)iiR S
)iiS T
m_AutoExposurePooljj "
[jj" #
$numjj# $
]jj$ %
=jj& '
newjj( +
RenderTexturejj, 9
(jj9 :
$numjj: ;
,jj; <
$numjj= >
,jj> ?
$numjj@ A
,jjA B
RenderTextureFormatjjC V
.jjV W
RFloatjjW ]
)jj] ^
;jj^ _
m_HistogramBuffermm 
.mm 
SetDatamm %
(mm% &"
s_EmptyHistogramBuffermm& <
)mm< =
;mm= >
intpp 
kernelpp 
=pp 
m_EyeComputepp %
.pp% &

FindKernelpp& 0
(pp0 1
$strpp1 @
)pp@ A
;ppA B
m_EyeComputeqq 
.qq 
	SetBufferqq "
(qq" #
kernelqq# )
,qq) *
$strqq+ 7
,qq7 8
m_HistogramBufferqq9 J
)qqJ K
;qqK L
m_EyeComputerr 
.rr 

SetTexturerr #
(rr# $
kernelrr$ *
,rr* +
$strrr, 5
,rr5 6
rtrr7 9
)rr9 :
;rr: ;
m_EyeComputess 
.ss 
	SetVectorss "
(ss" #
$strss# 4
,ss4 5
scaleOffsetResss6 D
)ssD E
;ssE F
m_EyeComputett 
.tt 
Dispatchtt !
(tt! "
kerneltt" (
,tt( )
Mathftt* /
.tt/ 0
	CeilToInttt0 9
(tt9 :
rttt: <
.tt< =
widthtt= B
/ttC D
(ttE F
floatttF K
)ttK L
k_HistogramThreadXttL ^
)tt^ _
,tt_ `
Mathftta f
.ttf g
	CeilToIntttg p
(ttp q
rtttq s
.tts t
heightttt z
/tt{ |
(tt} ~
float	tt~ É
)
ttÉ Ñ 
k_HistogramThreadY
ttÑ ñ
)
ttñ ó
,
ttó ò
$num
ttô ö
)
ttö õ
;
ttõ ú
contextww 
.ww  
renderTextureFactoryww (
.ww( )
Releaseww) 0
(ww0 1
rtww1 3
)ww3 4
;ww4 5
constzz 
floatzz 
minDeltazz  
=zz! "
$numzz# (
;zz( )
settings{{ 
.{{ 
highPercent{{  
={{! "
Mathf{{# (
.{{( )
Clamp{{) .
({{. /
settings{{/ 7
.{{7 8
highPercent{{8 C
,{{C D
$num{{E G
+{{H I
minDelta{{J R
,{{R S
$num{{T W
){{W X
;{{X Y
settings|| 
.|| 

lowPercent|| 
=||  !
Mathf||" '
.||' (
Clamp||( -
(||- .
settings||. 6
.||6 7

lowPercent||7 A
,||A B
$num||C E
,||E F
settings||G O
.||O P
highPercent||P [
-||\ ]
minDelta||^ f
)||f g
;||g h
material 
. 
	SetBuffer 
( 
$str +
,+ ,
m_HistogramBuffer- >
)> ?
;? @
material
ÄÄ 
.
ÄÄ 
	SetVector
ÄÄ 
(
ÄÄ 
Uniforms
ÄÄ '
.
ÄÄ' (
_Params
ÄÄ( /
,
ÄÄ/ 0
new
ÄÄ1 4
Vector4
ÄÄ5 <
(
ÄÄ< =
settings
ÄÄ= E
.
ÄÄE F

lowPercent
ÄÄF P
*
ÄÄQ R
$num
ÄÄS X
,
ÄÄX Y
settings
ÄÄZ b
.
ÄÄb c
highPercent
ÄÄc n
*
ÄÄo p
$num
ÄÄq v
,
ÄÄv w
Mathf
ÄÄx }
.
ÄÄ} ~
ExpÄÄ~ Å
(ÄÄÅ Ç
settingsÄÄÇ ä
.ÄÄä ã
minLuminanceÄÄã ó
*ÄÄò ô
$numÄÄö Ω
)ÄÄΩ æ
,ÄÄæ ø
MathfÄÄ¿ ≈
.ÄÄ≈ ∆
ExpÄÄ∆ …
(ÄÄ…  
settingsÄÄ  “
.ÄÄ“ ”
maxLuminanceÄÄ” ﬂ
*ÄÄ‡ ·
$numÄÄ‚ Ö
)ÄÄÖ Ü
)ÄÄÜ á
)ÄÄá à
;ÄÄà â
material
ÅÅ 
.
ÅÅ 
	SetVector
ÅÅ 
(
ÅÅ 
Uniforms
ÅÅ '
.
ÅÅ' (
_Speed
ÅÅ( .
,
ÅÅ. /
new
ÅÅ0 3
Vector2
ÅÅ4 ;
(
ÅÅ; <
settings
ÅÅ< D
.
ÅÅD E
	speedDown
ÅÅE N
,
ÅÅN O
settings
ÅÅP X
.
ÅÅX Y
speedUp
ÅÅY `
)
ÅÅ` a
)
ÅÅa b
;
ÅÅb c
material
ÇÇ 
.
ÇÇ 
	SetVector
ÇÇ 
(
ÇÇ 
Uniforms
ÇÇ '
.
ÇÇ' (
_ScaleOffsetRes
ÇÇ( 7
,
ÇÇ7 8
scaleOffsetRes
ÇÇ9 G
)
ÇÇG H
;
ÇÇH I
material
ÉÉ 
.
ÉÉ 
SetFloat
ÉÉ 
(
ÉÉ 
Uniforms
ÉÉ &
.
ÉÉ& '#
_ExposureCompensation
ÉÉ' <
,
ÉÉ< =
settings
ÉÉ> F
.
ÉÉF G
keyValue
ÉÉG O
)
ÉÉO P
;
ÉÉP Q
if
ÖÖ 
(
ÖÖ 
settings
ÖÖ 
.
ÖÖ 
dynamicKeyValue
ÖÖ (
)
ÖÖ( )
material
ÜÜ 
.
ÜÜ 
EnableKeyword
ÜÜ &
(
ÜÜ& '
$str
ÜÜ' 7
)
ÜÜ7 8
;
ÜÜ8 9
if
àà 
(
àà 
m_FirstFrame
àà 
||
àà 
!
àà  !
Application
àà! ,
.
àà, -
	isPlaying
àà- 6
)
àà6 7
{
ââ #
m_CurrentAutoExposure
åå %
=
åå& ' 
m_AutoExposurePool
åå( :
[
åå: ;
$num
åå; <
]
åå< =
;
åå= >
Graphics
çç 
.
çç 
Blit
çç 
(
çç 
null
çç "
,
çç" ##
m_CurrentAutoExposure
çç$ 9
,
çç9 :
material
çç; C
,
ççC D
(
ççE F
int
ççF I
)
ççI J 
EyeAdaptationModel
ççJ \
.
çç\ ]
EyeAdaptationType
çç] n
.
ççn o
Fixed
çço t
)
ççt u
;
ççu v
Graphics
êê 
.
êê 
Blit
êê 
(
êê  
m_AutoExposurePool
êê 0
[
êê0 1
$num
êê1 2
]
êê2 3
,
êê3 4 
m_AutoExposurePool
êê5 G
[
êêG H
$num
êêH I
]
êêI J
)
êêJ K
;
êêK L
}
ëë 
else
íí 
{
ìì 
int
îî 
pp
îî 
=
îî $
m_AutoExposurePingPing
îî /
;
îî/ 0
var
ïï 
src
ïï 
=
ïï  
m_AutoExposurePool
ïï ,
[
ïï, -
++
ïï- /
pp
ïï/ 1
%
ïï2 3
$num
ïï4 5
]
ïï5 6
;
ïï6 7
var
ññ 
dst
ññ 
=
ññ  
m_AutoExposurePool
ññ ,
[
ññ, -
++
ññ- /
pp
ññ/ 1
%
ññ2 3
$num
ññ4 5
]
ññ5 6
;
ññ6 7
Graphics
óó 
.
óó 
Blit
óó 
(
óó 
src
óó !
,
óó! "
dst
óó# &
,
óó& '
material
óó( 0
,
óó0 1
(
óó2 3
int
óó3 6
)
óó6 7
settings
óó7 ?
.
óó? @
adaptationType
óó@ N
)
óóN O
;
óóO P$
m_AutoExposurePingPing
òò &
=
òò' (
++
òò) +
pp
òò+ -
%
òò. /
$num
òò0 1
;
òò1 2#
m_CurrentAutoExposure
ôô %
=
ôô& '
dst
ôô( +
;
ôô+ ,
}
öö 
if
ùù 
(
ùù 
context
ùù 
.
ùù 
profile
ùù 
.
ùù  

debugViews
ùù  *
.
ùù* +
IsModeActive
ùù+ 7
(
ùù7 8$
BuiltinDebugViewsModel
ùù8 N
.
ùùN O
Mode
ùùO S
.
ùùS T
EyeAdaptation
ùùT a
)
ùùa b
)
ùùb c
{
ûû 
if
üü 
(
üü 
m_DebugHistogram
üü $
==
üü% '
null
üü( ,
||
üü- /
!
üü0 1
m_DebugHistogram
üü1 A
.
üüA B
	IsCreated
üüB K
(
üüK L
)
üüL M
)
üüM N
{
†† 
m_DebugHistogram
°° $
=
°°% &
new
°°' *
RenderTexture
°°+ 8
(
°°8 9
$num
°°9 <
,
°°< =
$num
°°> A
,
°°A B
$num
°°C D
,
°°D E!
RenderTextureFormat
°°F Y
.
°°Y Z
ARGB32
°°Z `
)
°°` a
{
¢¢ 

filterMode
££ "
=
££# $

FilterMode
££% /
.
££/ 0
Point
££0 5
,
££5 6
wrapMode
§§  
=
§§! "
TextureWrapMode
§§# 2
.
§§2 3
Clamp
§§3 8
}
•• 
;
•• 
}
¶¶ 
material
®® 
.
®® 
SetFloat
®® !
(
®®! "
Uniforms
®®" *
.
®®* +
_DebugWidth
®®+ 6
,
®®6 7
m_DebugHistogram
®®8 H
.
®®H I
width
®®I N
)
®®N O
;
®®O P
Graphics
©© 
.
©© 
Blit
©© 
(
©© 
null
©© "
,
©©" #
m_DebugHistogram
©©$ 4
,
©©4 5
material
©©6 >
,
©©> ?
$num
©©@ A
)
©©A B
;
©©B C
}
™™ 
m_FirstFrame
¨¨ 
=
¨¨ 
false
¨¨  
;
¨¨  !
return
≠≠ #
m_CurrentAutoExposure
≠≠ (
;
≠≠( )
}
ÆÆ 	
public
∞∞ 
void
∞∞ 
OnGUI
∞∞ 
(
∞∞ 
)
∞∞ 
{
±± 	
if
≤≤ 
(
≤≤ 
m_DebugHistogram
≤≤  
==
≤≤! #
null
≤≤$ (
||
≤≤) +
!
≤≤, -
m_DebugHistogram
≤≤- =
.
≤≤= >
	IsCreated
≤≤> G
(
≤≤G H
)
≤≤H I
)
≤≤I J
return
≥≥ 
;
≥≥ 
var
µµ 
rect
µµ 
=
µµ 
new
µµ 
Rect
µµ 
(
µµ  
context
µµ  '
.
µµ' (
viewport
µµ( 0
.
µµ0 1
x
µµ1 2
*
µµ3 4
Screen
µµ5 ;
.
µµ; <
width
µµ< A
+
µµB C
$num
µµD F
,
µµF G
$num
µµH J
,
µµJ K
m_DebugHistogram
µµL \
.
µµ\ ]
width
µµ] b
,
µµb c
m_DebugHistogram
µµd t
.
µµt u
height
µµu {
)
µµ{ |
;
µµ| }
GUI
∂∂ 
.
∂∂ 
DrawTexture
∂∂ 
(
∂∂ 
rect
∂∂  
,
∂∂  !
m_DebugHistogram
∂∂" 2
)
∂∂2 3
;
∂∂3 4
}
∑∑ 	
}
∏∏ 
}ππ õ;
•D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\FogComponent.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class 
FogComponent $
:% &0
$PostProcessingComponentCommandBuffer' K
<K L
FogModelL T
>T U
{ 
static 
class 
Uniforms 
{ 	
internal		 
static		 
readonly		 $
int		% (
	_FogColor		) 2
=		3 4
Shader		5 ;
.		; <
PropertyToID		< H
(		H I
$str		I T
)		T U
;		U V
internal

 
static

 
readonly

 $
int

% (
_Density

) 1
=

3 4
Shader

5 ;
.

; <
PropertyToID

< H
(

H I
$str

I S
)

S T
;

T U
internal 
static 
readonly $
int% (
_Start) /
=3 4
Shader5 ;
.; <
PropertyToID< H
(H I
$strI Q
)Q R
;R S
internal 
static 
readonly $
int% (
_End) -
=3 4
Shader5 ;
.; <
PropertyToID< H
(H I
$strI O
)O P
;P Q
internal 
static 
readonly $
int% (
_TempRT) 0
=3 4
Shader5 ;
.; <
PropertyToID< H
(H I
$strI R
)R S
;S T
} 	
const 
string 
k_ShaderString #
=$ %
$str& :
;: ;
public 
override 
bool 
active #
{ 	
get 
{ 
return 
model 
. 
enabled $
&& 
context !
.! "
isGBufferAvailable" 4
&& 
RenderSettings (
.( )
fog) ,
&& 
! 
context "
." #
interrupted# .
;. /
} 
} 	
public 
override 
string 
GetName &
(& '
)' (
{ 	
return 
$str 
; 
}   	
public"" 
override"" 
DepthTextureMode"" (
GetCameraFlags"") 7
(""7 8
)""8 9
{## 	
return$$ 
DepthTextureMode$$ #
.$$# $
Depth$$$ )
;$$) *
}%% 	
public'' 
override'' 
CameraEvent'' #
GetCameraEvent''$ 2
(''2 3
)''3 4
{(( 	
return)) 
CameraEvent)) 
.)) #
AfterImageEffectsOpaque)) 6
;))6 7
}** 	
public,, 
override,, 
void,, !
PopulateCommandBuffer,, 2
(,,2 3
CommandBuffer,,3 @
cb,,A C
),,C D
{-- 	
var.. 
settings.. 
=.. 
model..  
...  !
settings..! )
;..) *
var00 
material00 
=00 
context00 "
.00" #
materialFactory00# 2
.002 3
Get003 6
(006 7
k_ShaderString007 E
)00E F
;00F G
material11 
.11 
shaderKeywords11 #
=11$ %
null11& *
;11* +
var22 
fogColor22 
=22 
GraphicsUtils22 (
.22( )
isLinearColorSpace22) ;
?22< =
RenderSettings22> L
.22L M
fogColor22M U
.22U V
linear22V \
:22] ^
RenderSettings22_ m
.22m n
fogColor22n v
;22v w
material33 
.33 
SetColor33 
(33 
Uniforms33 &
.33& '
	_FogColor33' 0
,330 1
fogColor332 :
)33: ;
;33; <
material44 
.44 
SetFloat44 
(44 
Uniforms44 &
.44& '
_Density44' /
,44/ 0
RenderSettings441 ?
.44? @

fogDensity44@ J
)44J K
;44K L
material55 
.55 
SetFloat55 
(55 
Uniforms55 &
.55& '
_Start55' -
,55- .
RenderSettings55/ =
.55= >
fogStartDistance55> N
)55N O
;55O P
material66 
.66 
SetFloat66 
(66 
Uniforms66 &
.66& '
_End66' +
,66+ ,
RenderSettings66- ;
.66; <
fogEndDistance66< J
)66J K
;66K L
switch88 
(88 
RenderSettings88 "
.88" #
fogMode88# *
)88* +
{99 
case:: 
FogMode:: 
.:: 
Linear:: #
:::# $
material;; 
.;; 
EnableKeyword;; *
(;;* +
$str;;+ 7
);;7 8
;;;8 9
break<< 
;<< 
case== 
FogMode== 
.== 
Exponential== (
:==( )
material>> 
.>> 
EnableKeyword>> *
(>>* +
$str>>+ 4
)>>4 5
;>>5 6
break?? 
;?? 
case@@ 
FogMode@@ 
.@@ 
ExponentialSquared@@ /
:@@/ 0
materialAA 
.AA 
EnableKeywordAA *
(AA* +
$strAA+ 5
)AA5 6
;AA6 7
breakBB 
;BB 
}CC 
varEE 
fbFormatEE 
=EE 
contextEE "
.EE" #
isHdrEE# (
?FF 
RenderTextureFormatFF %
.FF% &

DefaultHDRFF& 0
:GG 
RenderTextureFormatGG %
.GG% &
DefaultGG& -
;GG- .
cbII 
.II 
GetTemporaryRTII 
(II 
UniformsII &
.II& '
_TempRTII' .
,II. /
contextII0 7
.II7 8
widthII8 =
,II= >
contextII? F
.IIF G
heightIIG M
,IIM N
$numIIO Q
,IIQ R

FilterModeIIS ]
.II] ^
BilinearII^ f
,IIf g
fbFormatIIh p
)IIp q
;IIq r
cbJJ 
.JJ 
BlitJJ 
(JJ $
BuiltinRenderTextureTypeJJ ,
.JJ, -
CameraTargetJJ- 9
,JJ9 :
UniformsJJ; C
.JJC D
_TempRTJJD K
)JJK L
;JJL M
cbKK 
.KK 
BlitKK 
(KK 
UniformsKK 
.KK 
_TempRTKK $
,KK$ %$
BuiltinRenderTextureTypeKK& >
.KK> ?
CameraTargetKK? K
,KKK L
materialKKM U
,KKU V
settingsKKW _
.KK_ `
excludeSkyboxKK` m
?KKn o
$numKKp q
:KKr s
$numKKt u
)KKu v
;KKv w
cbLL 
.LL 
ReleaseTemporaryRTLL !
(LL! "
UniformsLL" *
.LL* +
_TempRTLL+ 2
)LL2 3
;LL3 4
}MM 	
}NN 
}OO ·!
¶D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\FxaaComponent.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class 
FxaaComponent %
:& '0
$PostProcessingComponentRenderTexture( L
<L M
AntialiasingModelM ^
>^ _
{ 
static 
class 
Uniforms 
{ 	
internal 
static 
readonly $
int% (
_QualitySettings) 9
=: ;
Shader< B
.B C
PropertyToIDC O
(O P
$strP b
)b c
;c d
internal 
static 
readonly $
int% (
_ConsoleSettings) 9
=: ;
Shader< B
.B C
PropertyToIDC O
(O P
$strP b
)b c
;c d
}		 	
public 
override 
bool 
active #
{ 	
get 
{ 
return 
model 
. 
enabled $
&& 
model 
.  
settings  (
.( )
method) /
==0 2
AntialiasingModel3 D
.D E
MethodE K
.K L
FxaaL P
&& 
! 
context "
." #
interrupted# .
;. /
} 
} 	
public 
void 
Render 
( 
RenderTexture (
source) /
,/ 0
RenderTexture1 >
destination? J
)J K
{ 	
var 
settings 
= 
model  
.  !
settings! )
.) *
fxaaSettings* 6
;6 7
var 
material 
= 
context "
." #
materialFactory# 2
.2 3
Get3 6
(6 7
$str7 L
)L M
;M N
var 
qualitySettings 
=  !
AntialiasingModel" 3
.3 4
FxaaQualitySettings4 G
.G H
presetsH O
[O P
(P Q
intQ T
)T U
settingsU ]
.] ^
preset^ d
]d e
;e f
var 
consoleSettings 
=  !
AntialiasingModel" 3
.3 4
FxaaConsoleSettings4 G
.G H
presetsH O
[O P
(P Q
intQ T
)T U
settingsU ]
.] ^
preset^ d
]d e
;e f
material 
. 
	SetVector 
( 
Uniforms '
.' (
_QualitySettings( 8
,8 9
new 
Vector3 
( 
qualitySettings #
.# $)
subpixelAliasingRemovalAmount$ A
,A B
qualitySettings #
.# $"
edgeDetectionThreshold$ :
,: ;
qualitySettings   #
.  # $$
minimumRequiredLuminance  $ <
)!! 
)"" 
;"" 
material$$ 
.$$ 
	SetVector$$ 
($$ 
Uniforms$$ '
.$$' (
_ConsoleSettings$$( 8
,$$8 9
new%% 
Vector4%% 
(%% 
consoleSettings&& #
.&&# $ 
subpixelSpreadAmount&&$ 8
,&&8 9
consoleSettings'' #
.''# $
edgeSharpnessAmount''$ 7
,''7 8
consoleSettings(( #
.((# $"
edgeDetectionThreshold(($ :
,((: ;
consoleSettings)) #
.))# $$
minimumRequiredLuminance))$ <
)** 
)++ 
;++ 
Graphics-- 
.-- 
Blit-- 
(-- 
source--  
,--  !
destination--" -
,--- .
material--/ 7
,--7 8
$num--9 :
)--: ;
;--; <
}.. 	
}// 
}00 ó9
ßD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\GrainComponent.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class 
GrainComponent &
:' (0
$PostProcessingComponentRenderTexture) M
<M N

GrainModelN X
>X Y
{ 
static 
class 
Uniforms 
{ 	
internal 
static 
readonly $
int% (
_Grain_Params1) 7
=8 9
Shader: @
.@ A
PropertyToIDA M
(M N
$strN ^
)^ _
;_ `
internal 
static 
readonly $
int% (
_Grain_Params2) 7
=8 9
Shader: @
.@ A
PropertyToIDA M
(M N
$strN ^
)^ _
;_ `
internal		 
static		 
readonly		 $
int		% (
	_GrainTex		) 2
=		8 9
Shader		: @
.		@ A
PropertyToID		A M
(		M N
$str		N Y
)		Y Z
;		Z [
internal

 
static

 
readonly

 $
int

% (
_Phase

) /
=

8 9
Shader

: @
.

@ A
PropertyToID

A M
(

M N
$str

N V
)

V W
;

W X
} 	
public 
override 
bool 
active #
{ 	
get 
{ 
return 
model 
. 
enabled $
&& 
model 
.  
settings  (
.( )
	intensity) 2
>3 4
$num5 7
&& 

SystemInfo $
.$ %'
SupportsRenderTextureFormat% @
(@ A
RenderTextureFormatA T
.T U
ARGBHalfU ]
)] ^
&& 
! 
context "
." #
interrupted# .
;. /
} 
} 	
RenderTexture 
m_GrainLookupRT %
;% &
public 
override 
void 
	OnDisable &
(& '
)' (
{ 	
GraphicsUtils 
. 
Destroy !
(! "
m_GrainLookupRT" 1
)1 2
;2 3
m_GrainLookupRT 
= 
null "
;" #
} 	
public   
override   
void   
Prepare   $
(  $ %
Material  % -
uberMaterial  . :
)  : ;
{!! 	
var"" 
settings"" 
="" 
model""  
.""  !
settings""! )
;"") *
uberMaterial$$ 
.$$ 
EnableKeyword$$ &
($$& '
$str$$' .
)$$. /
;$$/ 0
float&& 

rndOffsetX&& 
;&& 
float'' 

rndOffsetY'' 
;'' 
float// 
time// 
=// 
Time// 
.//  
realtimeSinceStartup// 2
;//2 3

rndOffsetX00 
=00 
Random00 
.00  
value00  %
;00% &

rndOffsetY11 
=11 
Random11 
.11  
value11  %
;11% &
if55 
(55 
m_GrainLookupRT55 
==55  "
null55# '
||55( *
!55+ ,
m_GrainLookupRT55, ;
.55; <
	IsCreated55< E
(55E F
)55F G
)55G H
{66 
GraphicsUtils77 
.77 
Destroy77 %
(77% &
m_GrainLookupRT77& 5
)775 6
;776 7
m_GrainLookupRT99 
=99  !
new99" %
RenderTexture99& 3
(993 4
$num994 7
,997 8
$num999 <
,99< =
$num99> ?
,99? @
RenderTextureFormat99A T
.99T U
ARGBHalf99U ]
)99] ^
{:: 

filterMode;; 
=;;  

FilterMode;;! +
.;;+ ,
Bilinear;;, 4
,;;4 5
wrapMode<< 
=<< 
TextureWrapMode<< .
.<<. /
Repeat<</ 5
,<<5 6

anisoLevel== 
===  
$num==! "
,==" #
name>> 
=>> 
$str>> 1
}?? 
;?? 
m_GrainLookupRTAA 
.AA  
CreateAA  &
(AA& '
)AA' (
;AA( )
}BB 
varDD 
grainMaterialDD 
=DD 
contextDD  '
.DD' (
materialFactoryDD( 7
.DD7 8
GetDD8 ;
(DD; <
$strDD< \
)DD\ ]
;DD] ^
grainMaterialEE 
.EE 
SetFloatEE "
(EE" #
UniformsEE# +
.EE+ ,
_PhaseEE, 2
,EE2 3
timeEE4 8
/EE9 :
$numEE; >
)EE> ?
;EE? @
GraphicsGG 
.GG 
BlitGG 
(GG 
(GG 
TextureGG "
)GG" #
nullGG# '
,GG' (
m_GrainLookupRTGG) 8
,GG8 9
grainMaterialGG: G
,GGG H
settingsGGI Q
.GGQ R
coloredGGR Y
?GGZ [
$numGG\ ]
:GG^ _
$numGG` a
)GGa b
;GGb c
uberMaterialJJ 
.JJ 

SetTextureJJ #
(JJ# $
UniformsJJ$ ,
.JJ, -
	_GrainTexJJ- 6
,JJ6 7
m_GrainLookupRTJJ8 G
)JJG H
;JJH I
uberMaterialKK 
.KK 
	SetVectorKK "
(KK" #
UniformsKK# +
.KK+ ,
_Grain_Params1KK, :
,KK: ;
newKK< ?
Vector2KK@ G
(KKG H
settingsKKH P
.KKP Q!
luminanceContributionKKQ f
,KKf g
settingsKKh p
.KKp q
	intensityKKq z
*KK{ |
$num	KK} Ä
)
KKÄ Å
)
KKÅ Ç
;
KKÇ É
uberMaterialLL 
.LL 
	SetVectorLL "
(LL" #
UniformsLL# +
.LL+ ,
_Grain_Params2LL, :
,LL: ;
newLL< ?
Vector4LL@ G
(LLG H
(LLH I
floatLLI N
)LLN O
contextLLO V
.LLV W
widthLLW \
/LL] ^
(LL_ `
floatLL` e
)LLe f
m_GrainLookupRTLLf u
.LLu v
widthLLv {
/LL| }
settings	LL~ Ü
.
LLÜ á
size
LLá ã
,
LLã å
(
LLç é
float
LLé ì
)
LLì î
context
LLî õ
.
LLõ ú
height
LLú ¢
/
LL£ §
(
LL• ¶
float
LL¶ ´
)
LL´ ¨
m_GrainLookupRT
LL¨ ª
.
LLª º
height
LLº ¬
/
LL√ ƒ
settings
LL≈ Õ
.
LLÕ Œ
size
LLŒ “
,
LL“ ”

rndOffsetX
LL‘ ﬁ
,
LLﬁ ﬂ

rndOffsetY
LL‡ Í
)
LLÍ Î
)
LLÎ Ï
;
LLÏ Ì
}MM 	
}NN 
}OO Ïã
¨D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\MotionBlurComponent.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class 
MotionBlurComponent +
:, -0
$PostProcessingComponentCommandBuffer. R
<R S
MotionBlurModelS b
>b c
{ 
static		 
class		 
Uniforms		 
{

 	
internal 
static 
readonly $
int% (
_VelocityScale) 7
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR b
)b c
;c d
internal 
static 
readonly $
int% (
_MaxBlurRadius) 7
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR b
)b c
;c d
internal 
static 
readonly $
int% (
_RcpMaxBlurRadius) :
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR e
)e f
;f g
internal 
static 
readonly $
int% (
_VelocityTex) 5
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR `
)` a
;a b
internal 
static 
readonly $
int% (
_MainTex) 1
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR \
)\ ]
;] ^
internal 
static 
readonly $
int% (
_Tile2RT) 1
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR \
)\ ]
;] ^
internal 
static 
readonly $
int% (
_Tile4RT) 1
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR \
)\ ]
;] ^
internal 
static 
readonly $
int% (
_Tile8RT) 1
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR \
)\ ]
;] ^
internal 
static 
readonly $
int% (
_TileMaxOffs) 5
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR `
)` a
;a b
internal 
static 
readonly $
int% (
_TileMaxLoop) 5
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR `
)` a
;a b
internal 
static 
readonly $
int% (
_TileVRT) 1
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR \
)\ ]
;] ^
internal 
static 
readonly $
int% (
_NeighborMaxTex) 8
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR c
)c d
;d e
internal 
static 
readonly $
int% (

_LoopCount) 3
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR ^
)^ _
;_ `
internal 
static 
readonly $
int% (
_TempRT) 0
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR [
)[ \
;\ ]
internal 
static 
readonly $
int% (
_History1LumaTex) 9
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR d
)d e
;e f
internal 
static 
readonly $
int% (
_History2LumaTex) 9
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR d
)d e
;e f
internal 
static 
readonly $
int% (
_History3LumaTex) 9
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR d
)d e
;e f
internal 
static 
readonly $
int% (
_History4LumaTex) 9
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR d
)d e
;e f
internal 
static 
readonly $
int% (
_History1ChromaTex) ;
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR f
)f g
;g h
internal   
static   
readonly   $
int  % (
_History2ChromaTex  ) ;
=  < =
Shader  > D
.  D E
PropertyToID  E Q
(  Q R
$str  R f
)  f g
;  g h
internal!! 
static!! 
readonly!! $
int!!% (
_History3ChromaTex!!) ;
=!!< =
Shader!!> D
.!!D E
PropertyToID!!E Q
(!!Q R
$str!!R f
)!!f g
;!!g h
internal"" 
static"" 
readonly"" $
int""% (
_History4ChromaTex"") ;
=""< =
Shader""> D
.""D E
PropertyToID""E Q
(""Q R
$str""R f
)""f g
;""g h
internal$$ 
static$$ 
readonly$$ $
int$$% (
_History1Weight$$) 8
=$$< =
Shader$$> D
.$$D E
PropertyToID$$E Q
($$Q R
$str$$R c
)$$c d
;$$d e
internal%% 
static%% 
readonly%% $
int%%% (
_History2Weight%%) 8
=%%< =
Shader%%> D
.%%D E
PropertyToID%%E Q
(%%Q R
$str%%R c
)%%c d
;%%d e
internal&& 
static&& 
readonly&& $
int&&% (
_History3Weight&&) 8
=&&< =
Shader&&> D
.&&D E
PropertyToID&&E Q
(&&Q R
$str&&R c
)&&c d
;&&d e
internal'' 
static'' 
readonly'' $
int''% (
_History4Weight'') 8
=''< =
Shader''> D
.''D E
PropertyToID''E Q
(''Q R
$str''R c
)''c d
;''d e
}(( 	
enum** 
Pass** 
{++ 	
VelocitySetup,, 
,,, 
TileMax1-- 
,-- 
TileMax2.. 
,.. 
TileMaxV// 
,// 
NeighborMax00 
,00 
Reconstruction11 
,11 
FrameCompression22 
,22 
FrameBlendingChroma33 
,33  
FrameBlendingRaw44 
}55 	
public77 
class77  
ReconstructionFilter77 )
{88 	
RenderTextureFormat:: 
m_VectorRTFormat::  0
=::1 2
RenderTextureFormat::3 F
.::F G
RGHalf::G M
;::M N
RenderTextureFormat== 
m_PackedRTFormat==  0
===1 2
RenderTextureFormat==3 F
.==F G
ARGB2101010==G R
;==R S
public??  
ReconstructionFilter?? '
(??' (
)??( )
{@@ %
CheckTextureFormatSupportAA )
(AA) *
)AA* +
;AA+ ,
}BB 
voidDD %
CheckTextureFormatSupportDD *
(DD* +
)DD+ ,
{EE 
ifGG 
(GG 
!GG 

SystemInfoGG 
.GG  '
SupportsRenderTextureFormatGG  ;
(GG; <
m_PackedRTFormatGG< L
)GGL M
)GGM N
m_PackedRTFormatHH $
=HH% &
RenderTextureFormatHH' :
.HH: ;
ARGB32HH; A
;HHA B
}II 
publicKK 
boolKK 
IsSupportedKK #
(KK# $
)KK$ %
{LL 
returnMM 

SystemInfoMM !
.MM! "!
supportsMotionVectorsMM" 7
;MM7 8
}NN 
publicPP 
voidPP 
ProcessImagePP $
(PP$ %!
PostProcessingContextPP% :
contextPP; B
,PPB C
CommandBufferPPD Q
cbPPR T
,PPT U
refPPV Y
SettingsPPZ b
settingsPPc k
,PPk l#
RenderTargetIdentifier	PPm É
source
PPÑ ä
,
PPä ã$
RenderTargetIdentifier
PPå ¢
destination
PP£ Æ
,
PPÆ Ø
Material
PP∞ ∏
material
PPπ ¡
)
PP¡ ¬
{QQ 
constRR 
floatRR 
kMaxBlurRadiusRR *
=RR+ ,
$numRR- /
;RR/ 0
intUU 
maxBlurPixelsUU !
=UU" #
(UU$ %
intUU% (
)UU( )
(UU) *
kMaxBlurRadiusUU* 8
*UU9 :
contextUU; B
.UUB C
heightUUC I
/UUJ K
$numUUL O
)UUO P
;UUP Q
intYY 
tileSizeYY 
=YY 
(YY  
(YY  !
maxBlurPixelsYY! .
-YY/ 0
$numYY1 2
)YY2 3
/YY4 5
$numYY6 7
+YY8 9
$numYY: ;
)YY; <
*YY= >
$numYY? @
;YY@ A
var\\ 
velocityScale\\ !
=\\" #
settings\\$ ,
.\\, -
shutterAngle\\- 9
/\\: ;
$num\\< @
;\\@ A
cb]] 
.]] 
SetGlobalFloat]] !
(]]! "
Uniforms]]" *
.]]* +
_VelocityScale]]+ 9
,]]9 :
velocityScale]]; H
)]]H I
;]]I J
cb^^ 
.^^ 
SetGlobalFloat^^ !
(^^! "
Uniforms^^" *
.^^* +
_MaxBlurRadius^^+ 9
,^^9 :
maxBlurPixels^^; H
)^^H I
;^^I J
cb__ 
.__ 
SetGlobalFloat__ !
(__! "
Uniforms__" *
.__* +
_RcpMaxBlurRadius__+ <
,__< =
$num__> @
/__A B
maxBlurPixels__C P
)__P Q
;__Q R
intaa 
vbufferaa 
=aa 
Uniformsaa &
.aa& '
_VelocityTexaa' 3
;aa3 4
cbbb 
.bb 
GetTemporaryRTbb !
(bb! "
vbufferbb" )
,bb) *
contextbb+ 2
.bb2 3
widthbb3 8
,bb8 9
contextbb: A
.bbA B
heightbbB H
,bbH I
$numbbJ K
,bbK L

FilterModebbM W
.bbW X
PointbbX ]
,bb] ^
m_PackedRTFormatbb_ o
,bbo p#
RenderTextureReadWrite	bbq á
.
bbá à
Linear
bbà é
)
bbé è
;
bbè ê
cbcc 
.cc 
Blitcc 
(cc 
(cc 
Texturecc  
)cc  !
nullcc! %
,cc% &
vbuffercc' .
,cc. /
materialcc0 8
,cc8 9
(cc: ;
intcc; >
)cc> ?
Passcc? C
.ccC D
VelocitySetupccD Q
)ccQ R
;ccR S
intff 
tile2ff 
=ff 
Uniformsff $
.ff$ %
_Tile2RTff% -
;ff- .
cbgg 
.gg 
GetTemporaryRTgg !
(gg! "
tile2gg" '
,gg' (
contextgg) 0
.gg0 1
widthgg1 6
/gg7 8
$numgg9 :
,gg: ;
contextgg< C
.ggC D
heightggD J
/ggK L
$numggM N
,ggN O
$numggP Q
,ggQ R

FilterModeggS ]
.gg] ^
Pointgg^ c
,ggc d
m_VectorRTFormatgge u
,ggu v#
RenderTextureReadWrite	ggw ç
.
ggç é
Linear
ggé î
)
ggî ï
;
ggï ñ
cbhh 
.hh 
SetGlobalTexturehh #
(hh# $
Uniformshh$ ,
.hh, -
_MainTexhh- 5
,hh5 6
vbufferhh7 >
)hh> ?
;hh? @
cbii 
.ii 
Blitii 
(ii 
vbufferii 
,ii  
tile2ii! &
,ii& '
materialii( 0
,ii0 1
(ii2 3
intii3 6
)ii6 7
Passii7 ;
.ii; <
TileMax1ii< D
)iiD E
;iiE F
intll 
tile4ll 
=ll 
Uniformsll $
.ll$ %
_Tile4RTll% -
;ll- .
cbmm 
.mm 
GetTemporaryRTmm !
(mm! "
tile4mm" '
,mm' (
contextmm) 0
.mm0 1
widthmm1 6
/mm7 8
$nummm9 :
,mm: ;
contextmm< C
.mmC D
heightmmD J
/mmK L
$nummmM N
,mmN O
$nummmP Q
,mmQ R

FilterModemmS ]
.mm] ^
Pointmm^ c
,mmc d
m_VectorRTFormatmme u
,mmu v#
RenderTextureReadWrite	mmw ç
.
mmç é
Linear
mmé î
)
mmî ï
;
mmï ñ
cbnn 
.nn 
SetGlobalTexturenn #
(nn# $
Uniformsnn$ ,
.nn, -
_MainTexnn- 5
,nn5 6
tile2nn7 <
)nn< =
;nn= >
cboo 
.oo 
Blitoo 
(oo 
tile2oo 
,oo 
tile4oo $
,oo$ %
materialoo& .
,oo. /
(oo0 1
intoo1 4
)oo4 5
Passoo5 9
.oo9 :
TileMax2oo: B
)ooB C
;ooC D
cbpp 
.pp 
ReleaseTemporaryRTpp %
(pp% &
tile2pp& +
)pp+ ,
;pp, -
intss 
tile8ss 
=ss 
Uniformsss $
.ss$ %
_Tile8RTss% -
;ss- .
cbtt 
.tt 
GetTemporaryRTtt !
(tt! "
tile8tt" '
,tt' (
contexttt) 0
.tt0 1
widthtt1 6
/tt7 8
$numtt9 :
,tt: ;
contexttt< C
.ttC D
heightttD J
/ttK L
$numttM N
,ttN O
$numttP Q
,ttQ R

FilterModettS ]
.tt] ^
Pointtt^ c
,ttc d
m_VectorRTFormattte u
,ttu v#
RenderTextureReadWrite	ttw ç
.
ttç é
Linear
tté î
)
ttî ï
;
ttï ñ
cbuu 
.uu 
SetGlobalTextureuu #
(uu# $
Uniformsuu$ ,
.uu, -
_MainTexuu- 5
,uu5 6
tile4uu7 <
)uu< =
;uu= >
cbvv 
.vv 
Blitvv 
(vv 
tile4vv 
,vv 
tile8vv $
,vv$ %
materialvv& .
,vv. /
(vv0 1
intvv1 4
)vv4 5
Passvv5 9
.vv9 :
TileMax2vv: B
)vvB C
;vvC D
cbww 
.ww 
ReleaseTemporaryRTww %
(ww% &
tile4ww& +
)ww+ ,
;ww, -
varzz 
tileMaxOffszz 
=zz  !
Vector2zz" )
.zz) *
onezz* -
*zz. /
(zz0 1
tileSizezz1 9
/zz: ;
$numzz< >
-zz? @
$numzzA C
)zzC D
*zzE F
-zzG H
$numzzH L
;zzL M
cb{{ 
.{{ 
SetGlobalVector{{ "
({{" #
Uniforms{{# +
.{{+ ,
_TileMaxOffs{{, 8
,{{8 9
tileMaxOffs{{: E
){{E F
;{{F G
cb|| 
.|| 
SetGlobalFloat|| !
(||! "
Uniforms||" *
.||* +
_TileMaxLoop||+ 7
,||7 8
(||9 :
int||: =
)||= >
(||> ?
tileSize||? G
/||H I
$num||J L
)||L M
)||M N
;||N O
int~~ 
tile~~ 
=~~ 
Uniforms~~ #
.~~# $
_TileVRT~~$ ,
;~~, -
cb 
. 
GetTemporaryRT !
(! "
tile" &
,& '
context( /
./ 0
width0 5
/6 7
tileSize8 @
,@ A
contextB I
.I J
heightJ P
/Q R
tileSizeS [
,[ \
$num] ^
,^ _

FilterMode` j
.j k
Pointk p
,p q
m_VectorRTFormat	r Ç
,
Ç É$
RenderTextureReadWrite
Ñ ö
.
ö õ
Linear
õ °
)
° ¢
;
¢ £
cb
ÄÄ 
.
ÄÄ 
SetGlobalTexture
ÄÄ #
(
ÄÄ# $
Uniforms
ÄÄ$ ,
.
ÄÄ, -
_MainTex
ÄÄ- 5
,
ÄÄ5 6
tile8
ÄÄ7 <
)
ÄÄ< =
;
ÄÄ= >
cb
ÅÅ 
.
ÅÅ 
Blit
ÅÅ 
(
ÅÅ 
tile8
ÅÅ 
,
ÅÅ 
tile
ÅÅ #
,
ÅÅ# $
material
ÅÅ% -
,
ÅÅ- .
(
ÅÅ/ 0
int
ÅÅ0 3
)
ÅÅ3 4
Pass
ÅÅ4 8
.
ÅÅ8 9
TileMaxV
ÅÅ9 A
)
ÅÅA B
;
ÅÅB C
cb
ÇÇ 
.
ÇÇ  
ReleaseTemporaryRT
ÇÇ %
(
ÇÇ% &
tile8
ÇÇ& +
)
ÇÇ+ ,
;
ÇÇ, -
int
ÖÖ 
neighborMax
ÖÖ 
=
ÖÖ  !
Uniforms
ÖÖ" *
.
ÖÖ* +
_NeighborMaxTex
ÖÖ+ :
;
ÖÖ: ;
int
ÜÜ 
neighborMaxWidth
ÜÜ $
=
ÜÜ% &
context
ÜÜ' .
.
ÜÜ. /
width
ÜÜ/ 4
/
ÜÜ5 6
tileSize
ÜÜ7 ?
;
ÜÜ? @
int
áá 
neighborMaxHeight
áá %
=
áá& '
context
áá( /
.
áá/ 0
height
áá0 6
/
áá7 8
tileSize
áá9 A
;
ááA B
cb
àà 
.
àà 
GetTemporaryRT
àà !
(
àà! "
neighborMax
àà" -
,
àà- .
neighborMaxWidth
àà/ ?
,
àà? @
neighborMaxHeight
ààA R
,
ààR S
$num
ààT U
,
ààU V

FilterMode
ààW a
.
ààa b
Point
ààb g
,
ààg h
m_VectorRTFormat
àài y
,
àày z%
RenderTextureReadWriteàà{ ë
.ààë í
Linearààí ò
)ààò ô
;ààô ö
cb
ââ 
.
ââ 
SetGlobalTexture
ââ #
(
ââ# $
Uniforms
ââ$ ,
.
ââ, -
_MainTex
ââ- 5
,
ââ5 6
tile
ââ7 ;
)
ââ; <
;
ââ< =
cb
ää 
.
ää 
Blit
ää 
(
ää 
tile
ää 
,
ää 
neighborMax
ää )
,
ää) *
material
ää+ 3
,
ää3 4
(
ää5 6
int
ää6 9
)
ää9 :
Pass
ää: >
.
ää> ?
NeighborMax
ää? J
)
ääJ K
;
ääK L
cb
ãã 
.
ãã  
ReleaseTemporaryRT
ãã %
(
ãã% &
tile
ãã& *
)
ãã* +
;
ãã+ ,
cb
éé 
.
éé 
SetGlobalFloat
éé !
(
éé! "
Uniforms
éé" *
.
éé* +

_LoopCount
éé+ 5
,
éé5 6
Mathf
éé7 <
.
éé< =
Clamp
éé= B
(
ééB C
settings
ééC K
.
ééK L
sampleCount
ééL W
/
ééX Y
$num
ééZ [
,
éé[ \
$num
éé] ^
,
éé^ _
$num
éé` b
)
ééb c
)
ééc d
;
ééd e
cb
èè 
.
èè 
SetGlobalTexture
èè #
(
èè# $
Uniforms
èè$ ,
.
èè, -
_MainTex
èè- 5
,
èè5 6
source
èè7 =
)
èè= >
;
èè> ?
cb
ëë 
.
ëë 
Blit
ëë 
(
ëë 
source
ëë 
,
ëë 
destination
ëë  +
,
ëë+ ,
material
ëë- 5
,
ëë5 6
(
ëë7 8
int
ëë8 ;
)
ëë; <
Pass
ëë< @
.
ëë@ A
Reconstruction
ëëA O
)
ëëO P
;
ëëP Q
cb
ìì 
.
ìì  
ReleaseTemporaryRT
ìì %
(
ìì% &
vbuffer
ìì& -
)
ìì- .
;
ìì. /
cb
îî 
.
îî  
ReleaseTemporaryRT
îî %
(
îî% &
neighborMax
îî& 1
)
îî1 2
;
îî2 3
}
ïï 
}
ññ 	
public
òò 
class
òò !
FrameBlendingFilter
òò (
{
ôô 	
struct
öö 
Frame
öö 
{
õõ 
public
úú 
RenderTexture
úú $
lumaTexture
úú% 0
;
úú0 1
public
ùù 
RenderTexture
ùù $
chromaTexture
ùù% 2
;
ùù2 3
float
üü 
m_Time
üü 
;
üü $
RenderTargetIdentifier
†† &
[
††& '
]
††' (
m_MRT
††) .
;
††. /
public
¢¢ 
float
¢¢ 
CalculateWeight
¢¢ ,
(
¢¢, -
float
¢¢- 2
strength
¢¢3 ;
,
¢¢; <
float
¢¢= B
currentTime
¢¢C N
)
¢¢N O
{
££ 
if
§§ 
(
§§ 
Mathf
§§ 
.
§§ 
Approximately
§§ +
(
§§+ ,
m_Time
§§, 2
,
§§2 3
$num
§§4 6
)
§§6 7
)
§§7 8
return
•• 
$num
•• !
;
••! "
var
ßß 
coeff
ßß 
=
ßß 
Mathf
ßß  %
.
ßß% &
Lerp
ßß& *
(
ßß* +
$num
ßß+ .
,
ßß. /
$num
ßß0 3
,
ßß3 4
strength
ßß5 =
)
ßß= >
;
ßß> ?
return
®® 
Mathf
®®  
.
®®  !
Exp
®®! $
(
®®$ %
(
®®% &
m_Time
®®& ,
-
®®- .
currentTime
®®/ :
)
®®: ;
*
®®< =
coeff
®®> C
)
®®C D
;
®®D E
}
©© 
public
´´ 
void
´´ 
Release
´´ #
(
´´# $
)
´´$ %
{
¨¨ 
if
≠≠ 
(
≠≠ 
lumaTexture
≠≠ #
!=
≠≠$ &
null
≠≠' +
)
≠≠+ ,
RenderTexture
ÆÆ %
.
ÆÆ% &
ReleaseTemporary
ÆÆ& 6
(
ÆÆ6 7
lumaTexture
ÆÆ7 B
)
ÆÆB C
;
ÆÆC D
if
∞∞ 
(
∞∞ 
chromaTexture
∞∞ %
!=
∞∞& (
null
∞∞) -
)
∞∞- .
RenderTexture
±± %
.
±±% &
ReleaseTemporary
±±& 6
(
±±6 7
chromaTexture
±±7 D
)
±±D E
;
±±E F
lumaTexture
≥≥ 
=
≥≥  !
null
≥≥" &
;
≥≥& '
chromaTexture
¥¥ !
=
¥¥" #
null
¥¥$ (
;
¥¥( )
}
µµ 
public
∑∑ 
void
∑∑ 

MakeRecord
∑∑ &
(
∑∑& '
CommandBuffer
∑∑' 4
cb
∑∑5 7
,
∑∑7 8$
RenderTargetIdentifier
∑∑9 O
source
∑∑P V
,
∑∑V W
int
∑∑X [
width
∑∑\ a
,
∑∑a b
int
∑∑c f
height
∑∑g m
,
∑∑m n
Material
∑∑o w
material∑∑x Ä
)∑∑Ä Å
{
∏∏ 
Release
ππ 
(
ππ 
)
ππ 
;
ππ 
lumaTexture
ªª 
=
ªª  !
RenderTexture
ªª" /
.
ªª/ 0
GetTemporary
ªª0 <
(
ªª< =
width
ªª= B
,
ªªB C
height
ªªD J
,
ªªJ K
$num
ªªL M
,
ªªM N!
RenderTextureFormat
ªªO b
.
ªªb c
R8
ªªc e
,
ªªe f$
RenderTextureReadWrite
ªªg }
.
ªª} ~
Linearªª~ Ñ
)ªªÑ Ö
;ªªÖ Ü
chromaTexture
ºº !
=
ºº" #
RenderTexture
ºº$ 1
.
ºº1 2
GetTemporary
ºº2 >
(
ºº> ?
width
ºº? D
,
ººD E
height
ººF L
,
ººL M
$num
ººN O
,
ººO P!
RenderTextureFormat
ººQ d
.
ººd e
R8
ººe g
,
ººg h$
RenderTextureReadWrite
ººi 
.ºº Ä
LinearººÄ Ü
)ººÜ á
;ººá à
lumaTexture
ææ 
.
ææ  

filterMode
ææ  *
=
ææ+ ,

FilterMode
ææ- 7
.
ææ7 8
Point
ææ8 =
;
ææ= >
chromaTexture
øø !
.
øø! "

filterMode
øø" ,
=
øø- .

FilterMode
øø/ 9
.
øø9 :
Point
øø: ?
;
øø? @
if
¡¡ 
(
¡¡ 
m_MRT
¡¡ 
==
¡¡  
null
¡¡! %
)
¡¡% &
m_MRT
¬¬ 
=
¬¬ 
new
¬¬  #$
RenderTargetIdentifier
¬¬$ :
[
¬¬: ;
$num
¬¬; <
]
¬¬< =
;
¬¬= >
m_MRT
ƒƒ 
[
ƒƒ 
$num
ƒƒ 
]
ƒƒ 
=
ƒƒ 
lumaTexture
ƒƒ *
;
ƒƒ* +
m_MRT
≈≈ 
[
≈≈ 
$num
≈≈ 
]
≈≈ 
=
≈≈ 
chromaTexture
≈≈ ,
;
≈≈, -
cb
«« 
.
«« 
SetGlobalTexture
«« '
(
««' (
Uniforms
««( 0
.
««0 1
_MainTex
««1 9
,
««9 :
source
««; A
)
««A B
;
««B C
cb
»» 
.
»» 
SetRenderTarget
»» &
(
»»& '
m_MRT
»»' ,
,
»», -
lumaTexture
»». 9
)
»»9 :
;
»»: ;
cb
…… 
.
…… 
DrawMesh
…… 
(
……  
GraphicsUtils
……  -
.
……- .
quad
……. 2
,
……2 3
	Matrix4x4
……4 =
.
……= >
identity
……> F
,
……F G
material
……H P
,
……P Q
$num
……R S
,
……S T
(
……U V
int
……V Y
)
……Y Z
Pass
……Z ^
.
……^ _
FrameCompression
……_ o
)
……o p
;
……p q
m_Time
ÀÀ 
=
ÀÀ 
Time
ÀÀ !
.
ÀÀ! "
time
ÀÀ" &
;
ÀÀ& '
}
ÃÃ 
public
ŒŒ 
void
ŒŒ 
MakeRecordRaw
ŒŒ )
(
ŒŒ) *
CommandBuffer
ŒŒ* 7
cb
ŒŒ8 :
,
ŒŒ: ;$
RenderTargetIdentifier
ŒŒ< R
source
ŒŒS Y
,
ŒŒY Z
int
ŒŒ[ ^
width
ŒŒ_ d
,
ŒŒd e
int
ŒŒf i
height
ŒŒj p
,
ŒŒp q"
RenderTextureFormatŒŒr Ö
formatŒŒÜ å
)ŒŒå ç
{
œœ 
Release
–– 
(
–– 
)
–– 
;
–– 
lumaTexture
““ 
=
““  !
RenderTexture
““" /
.
““/ 0
GetTemporary
““0 <
(
““< =
width
““= B
,
““B C
height
““D J
,
““J K
$num
““L M
,
““M N
format
““O U
)
““U V
;
““V W
lumaTexture
”” 
.
””  

filterMode
””  *
=
””+ ,

FilterMode
””- 7
.
””7 8
Point
””8 =
;
””= >
cb
’’ 
.
’’ 
SetGlobalTexture
’’ '
(
’’' (
Uniforms
’’( 0
.
’’0 1
_MainTex
’’1 9
,
’’9 :
source
’’; A
)
’’A B
;
’’B C
cb
÷÷ 
.
÷÷ 
Blit
÷÷ 
(
÷÷ 
source
÷÷ "
,
÷÷" #
lumaTexture
÷÷$ /
)
÷÷/ 0
;
÷÷0 1
m_Time
ÿÿ 
=
ÿÿ 
Time
ÿÿ !
.
ÿÿ! "
time
ÿÿ" &
;
ÿÿ& '
}
ŸŸ 
}
⁄⁄ 
bool
‹‹ 
m_UseCompression
‹‹ !
;
‹‹! "!
RenderTextureFormat
››  
m_RawTextureFormat
››  2
;
››2 3
Frame
ﬂﬂ 
[
ﬂﬂ 
]
ﬂﬂ 
m_FrameList
ﬂﬂ 
;
ﬂﬂ  
int
‡‡ 
m_LastFrameCount
‡‡  
;
‡‡  !
public
‚‚ !
FrameBlendingFilter
‚‚ &
(
‚‚& '
)
‚‚' (
{
„„ 
m_UseCompression
‰‰  
=
‰‰! "%
CheckSupportCompression
‰‰# :
(
‰‰: ;
)
‰‰; <
;
‰‰< = 
m_RawTextureFormat
ÂÂ "
=
ÂÂ# $-
GetPreferredRenderTextureFormat
ÂÂ% D
(
ÂÂD E
)
ÂÂE F
;
ÂÂF G
m_FrameList
ÊÊ 
=
ÊÊ 
new
ÊÊ !
Frame
ÊÊ" '
[
ÊÊ' (
$num
ÊÊ( )
]
ÊÊ) *
;
ÊÊ* +
}
ÁÁ 
public
ÈÈ 
void
ÈÈ 
Dispose
ÈÈ 
(
ÈÈ  
)
ÈÈ  !
{
ÍÍ 
foreach
ÎÎ 
(
ÎÎ 
var
ÎÎ 
frame
ÎÎ "
in
ÎÎ# %
m_FrameList
ÎÎ& 1
)
ÎÎ1 2
frame
ÏÏ 
.
ÏÏ 
Release
ÏÏ !
(
ÏÏ! "
)
ÏÏ" #
;
ÏÏ# $
}
ÌÌ 
public
ÔÔ 
void
ÔÔ 
	PushFrame
ÔÔ !
(
ÔÔ! "
CommandBuffer
ÔÔ" /
cb
ÔÔ0 2
,
ÔÔ2 3$
RenderTargetIdentifier
ÔÔ4 J
source
ÔÔK Q
,
ÔÔQ R
int
ÔÔS V
width
ÔÔW \
,
ÔÔ\ ]
int
ÔÔ^ a
height
ÔÔb h
,
ÔÔh i
Material
ÔÔj r
material
ÔÔs {
)
ÔÔ{ |
{
 
var
ÚÚ 

frameCount
ÚÚ 
=
ÚÚ  
Time
ÚÚ! %
.
ÚÚ% &

frameCount
ÚÚ& 0
;
ÚÚ0 1
if
ÛÛ 
(
ÛÛ 

frameCount
ÛÛ 
==
ÛÛ !
m_LastFrameCount
ÛÛ" 2
)
ÛÛ2 3
return
ÛÛ4 :
;
ÛÛ: ;
var
ˆˆ 
index
ˆˆ 
=
ˆˆ 

frameCount
ˆˆ &
%
ˆˆ' (
m_FrameList
ˆˆ) 4
.
ˆˆ4 5
Length
ˆˆ5 ;
;
ˆˆ; <
if
¯¯ 
(
¯¯ 
m_UseCompression
¯¯ $
)
¯¯$ %
m_FrameList
˘˘ 
[
˘˘  
index
˘˘  %
]
˘˘% &
.
˘˘& '

MakeRecord
˘˘' 1
(
˘˘1 2
cb
˘˘2 4
,
˘˘4 5
source
˘˘6 <
,
˘˘< =
width
˘˘> C
,
˘˘C D
height
˘˘E K
,
˘˘K L
material
˘˘M U
)
˘˘U V
;
˘˘V W
else
˙˙ 
m_FrameList
˚˚ 
[
˚˚  
index
˚˚  %
]
˚˚% &
.
˚˚& '
MakeRecordRaw
˚˚' 4
(
˚˚4 5
cb
˚˚5 7
,
˚˚7 8
source
˚˚9 ?
,
˚˚? @
width
˚˚A F
,
˚˚F G
height
˚˚H N
,
˚˚N O 
m_RawTextureFormat
˚˚P b
)
˚˚b c
;
˚˚c d
m_LastFrameCount
˝˝  
=
˝˝! "

frameCount
˝˝# -
;
˝˝- .
}
˛˛ 
public
ÄÄ 
void
ÄÄ 
BlendFrames
ÄÄ #
(
ÄÄ# $
CommandBuffer
ÄÄ$ 1
cb
ÄÄ2 4
,
ÄÄ4 5
float
ÄÄ6 ;
strength
ÄÄ< D
,
ÄÄD E$
RenderTargetIdentifier
ÄÄF \
source
ÄÄ] c
,
ÄÄc d$
RenderTargetIdentifier
ÄÄe {
destinationÄÄ| á
,ÄÄá à
MaterialÄÄâ ë
materialÄÄí ö
)ÄÄö õ
{
ÅÅ 
var
ÇÇ 
t
ÇÇ 
=
ÇÇ 
Time
ÇÇ 
.
ÇÇ 
time
ÇÇ !
;
ÇÇ! "
var
ÑÑ 
f1
ÑÑ 
=
ÑÑ 
GetFrameRelative
ÑÑ )
(
ÑÑ) *
-
ÑÑ* +
$num
ÑÑ+ ,
)
ÑÑ, -
;
ÑÑ- .
var
ÖÖ 
f2
ÖÖ 
=
ÖÖ 
GetFrameRelative
ÖÖ )
(
ÖÖ) *
-
ÖÖ* +
$num
ÖÖ+ ,
)
ÖÖ, -
;
ÖÖ- .
var
ÜÜ 
f3
ÜÜ 
=
ÜÜ 
GetFrameRelative
ÜÜ )
(
ÜÜ) *
-
ÜÜ* +
$num
ÜÜ+ ,
)
ÜÜ, -
;
ÜÜ- .
var
áá 
f4
áá 
=
áá 
GetFrameRelative
áá )
(
áá) *
-
áá* +
$num
áá+ ,
)
áá, -
;
áá- .
cb
ââ 
.
ââ 
SetGlobalTexture
ââ #
(
ââ# $
Uniforms
ââ$ ,
.
ââ, -
_History1LumaTex
ââ- =
,
ââ= >
f1
ââ? A
.
ââA B
lumaTexture
ââB M
)
ââM N
;
ââN O
cb
ää 
.
ää 
SetGlobalTexture
ää #
(
ää# $
Uniforms
ää$ ,
.
ää, -
_History2LumaTex
ää- =
,
ää= >
f2
ää? A
.
ääA B
lumaTexture
ääB M
)
ääM N
;
ääN O
cb
ãã 
.
ãã 
SetGlobalTexture
ãã #
(
ãã# $
Uniforms
ãã$ ,
.
ãã, -
_History3LumaTex
ãã- =
,
ãã= >
f3
ãã? A
.
ããA B
lumaTexture
ããB M
)
ããM N
;
ããN O
cb
åå 
.
åå 
SetGlobalTexture
åå #
(
åå# $
Uniforms
åå$ ,
.
åå, -
_History4LumaTex
åå- =
,
åå= >
f4
åå? A
.
ååA B
lumaTexture
ååB M
)
ååM N
;
ååN O
cb
éé 
.
éé 
SetGlobalTexture
éé #
(
éé# $
Uniforms
éé$ ,
.
éé, - 
_History1ChromaTex
éé- ?
,
éé? @
f1
ééA C
.
ééC D
chromaTexture
ééD Q
)
ééQ R
;
ééR S
cb
èè 
.
èè 
SetGlobalTexture
èè #
(
èè# $
Uniforms
èè$ ,
.
èè, - 
_History2ChromaTex
èè- ?
,
èè? @
f2
èèA C
.
èèC D
chromaTexture
èèD Q
)
èèQ R
;
èèR S
cb
êê 
.
êê 
SetGlobalTexture
êê #
(
êê# $
Uniforms
êê$ ,
.
êê, - 
_History3ChromaTex
êê- ?
,
êê? @
f3
êêA C
.
êêC D
chromaTexture
êêD Q
)
êêQ R
;
êêR S
cb
ëë 
.
ëë 
SetGlobalTexture
ëë #
(
ëë# $
Uniforms
ëë$ ,
.
ëë, - 
_History4ChromaTex
ëë- ?
,
ëë? @
f4
ëëA C
.
ëëC D
chromaTexture
ëëD Q
)
ëëQ R
;
ëëR S
cb
ìì 
.
ìì 
SetGlobalFloat
ìì !
(
ìì! "
Uniforms
ìì" *
.
ìì* +
_History1Weight
ìì+ :
,
ìì: ;
f1
ìì< >
.
ìì> ?
CalculateWeight
ìì? N
(
ììN O
strength
ììO W
,
ììW X
t
ììY Z
)
ììZ [
)
ìì[ \
;
ìì\ ]
cb
îî 
.
îî 
SetGlobalFloat
îî !
(
îî! "
Uniforms
îî" *
.
îî* +
_History2Weight
îî+ :
,
îî: ;
f2
îî< >
.
îî> ?
CalculateWeight
îî? N
(
îîN O
strength
îîO W
,
îîW X
t
îîY Z
)
îîZ [
)
îî[ \
;
îî\ ]
cb
ïï 
.
ïï 
SetGlobalFloat
ïï !
(
ïï! "
Uniforms
ïï" *
.
ïï* +
_History3Weight
ïï+ :
,
ïï: ;
f3
ïï< >
.
ïï> ?
CalculateWeight
ïï? N
(
ïïN O
strength
ïïO W
,
ïïW X
t
ïïY Z
)
ïïZ [
)
ïï[ \
;
ïï\ ]
cb
ññ 
.
ññ 
SetGlobalFloat
ññ !
(
ññ! "
Uniforms
ññ" *
.
ññ* +
_History4Weight
ññ+ :
,
ññ: ;
f4
ññ< >
.
ññ> ?
CalculateWeight
ññ? N
(
ññN O
strength
ññO W
,
ññW X
t
ññY Z
)
ññZ [
)
ññ[ \
;
ññ\ ]
cb
òò 
.
òò 
SetGlobalTexture
òò #
(
òò# $
Uniforms
òò$ ,
.
òò, -
_MainTex
òò- 5
,
òò5 6
source
òò7 =
)
òò= >
;
òò> ?
cb
ôô 
.
ôô 
Blit
ôô 
(
ôô 
source
ôô 
,
ôô 
destination
ôô  +
,
ôô+ ,
material
ôô- 5
,
ôô5 6
m_UseCompression
ôô7 G
?
ôôH I
(
ôôJ K
int
ôôK N
)
ôôN O
Pass
ôôO S
.
ôôS T!
FrameBlendingChroma
ôôT g
:
ôôh i
(
ôôj k
int
ôôk n
)
ôôn o
Pass
ôôo s
.
ôôs t
FrameBlendingRawôôt Ñ
)ôôÑ Ö
;ôôÖ Ü
}
öö 
static
ùù 
bool
ùù %
CheckSupportCompression
ùù /
(
ùù/ 0
)
ùù0 1
{
ûû 
return
üü 

SystemInfo
†† 
.
†† )
SupportsRenderTextureFormat
†† :
(
††: ;!
RenderTextureFormat
††; N
.
††N O
R8
††O Q
)
††Q R
&&
††S U

SystemInfo
°° 
.
°° (
supportedRenderTargetCount
°° 9
>
°°: ;
$num
°°< =
;
°°= >
}
¢¢ 
static
•• !
RenderTextureFormat
•• &-
GetPreferredRenderTextureFormat
••' F
(
••F G
)
••G H
{
¶¶ !
RenderTextureFormat
ßß #
[
ßß# $
]
ßß$ %
formats
ßß& -
=
ßß. /
{
®® !
RenderTextureFormat
©© '
.
©©' (
RGB565
©©( .
,
©©. /!
RenderTextureFormat
™™ '
.
™™' (
ARGB1555
™™( 0
,
™™0 1!
RenderTextureFormat
´´ '
.
´´' (
ARGB4444
´´( 0
}
¨¨ 
;
¨¨ 
foreach
ÆÆ 
(
ÆÆ 
var
ÆÆ 
f
ÆÆ 
in
ÆÆ !
formats
ÆÆ" )
)
ÆÆ) *
if
ØØ 
(
ØØ 

SystemInfo
ØØ "
.
ØØ" #)
SupportsRenderTextureFormat
ØØ# >
(
ØØ> ?
f
ØØ? @
)
ØØ@ A
)
ØØA B
return
ØØC I
f
ØØJ K
;
ØØK L
return
±± !
RenderTextureFormat
±± *
.
±±* +
Default
±±+ 2
;
±±2 3
}
≤≤ 
Frame
∂∂ 
GetFrameRelative
∂∂ "
(
∂∂" #
int
∂∂# &
offset
∂∂' -
)
∂∂- .
{
∑∑ 
var
∏∏ 
index
∏∏ 
=
∏∏ 
(
∏∏ 
Time
∏∏ !
.
∏∏! "

frameCount
∏∏" ,
+
∏∏- .
m_FrameList
∏∏/ :
.
∏∏: ;
Length
∏∏; A
+
∏∏B C
offset
∏∏D J
)
∏∏J K
%
∏∏L M
m_FrameList
∏∏N Y
.
∏∏Y Z
Length
∏∏Z `
;
∏∏` a
return
ππ 
m_FrameList
ππ "
[
ππ" #
index
ππ# (
]
ππ( )
;
ππ) *
}
∫∫ 
}
ªª 	"
ReconstructionFilter
ΩΩ $
m_ReconstructionFilter
ΩΩ 3
;
ΩΩ3 4
public
ææ "
ReconstructionFilter
ææ #"
reconstructionFilter
ææ$ 8
{
øø 	
get
¿¿ 
{
¡¡ 
if
¬¬ 
(
¬¬ $
m_ReconstructionFilter
¬¬ *
==
¬¬+ -
null
¬¬. 2
)
¬¬2 3$
m_ReconstructionFilter
√√ *
=
√√+ ,
new
√√- 0"
ReconstructionFilter
√√1 E
(
√√E F
)
√√F G
;
√√G H
return
≈≈ $
m_ReconstructionFilter
≈≈ -
;
≈≈- .
}
∆∆ 
}
«« 	!
FrameBlendingFilter
…… #
m_FrameBlendingFilter
…… 1
;
……1 2
public
   !
FrameBlendingFilter
   "!
frameBlendingFilter
  # 6
{
ÀÀ 	
get
ÃÃ 
{
ÕÕ 
if
ŒŒ 
(
ŒŒ #
m_FrameBlendingFilter
ŒŒ )
==
ŒŒ* ,
null
ŒŒ- 1
)
ŒŒ1 2#
m_FrameBlendingFilter
œœ )
=
œœ* +
new
œœ, /!
FrameBlendingFilter
œœ0 C
(
œœC D
)
œœD E
;
œœE F
return
—— #
m_FrameBlendingFilter
—— ,
;
——, -
}
““ 
}
”” 	
bool
’’ 
m_FirstFrame
’’ 
=
’’ 
true
’’  
;
’’  !
public
◊◊ 
override
◊◊ 
bool
◊◊ 
active
◊◊ #
{
ÿÿ 	
get
ŸŸ 
{
⁄⁄ 
var
€€ 
settings
€€ 
=
€€ 
model
€€ $
.
€€$ %
settings
€€% -
;
€€- .
return
‹‹ 
model
‹‹ 
.
‹‹ 
enabled
‹‹ $
&&
›› 
(
›› 
(
›› 
settings
›› $
.
››$ %
shutterAngle
››% 1
>
››2 3
$num
››4 6
&&
››7 9"
reconstructionFilter
››: N
.
››N O
IsSupported
››O Z
(
››Z [
)
››[ \
)
››\ ]
||
››^ `
settings
››a i
.
››i j
frameBlending
››j w
>
››x y
$num
››z |
)
››| }
&&
ﬁﬁ 

SystemInfo
ﬁﬁ $
.
ﬁﬁ$ % 
graphicsDeviceType
ﬁﬁ% 7
!=
ﬁﬁ8 : 
GraphicsDeviceType
ﬁﬁ; M
.
ﬁﬁM N
	OpenGLES2
ﬁﬁN W
&&
ﬂﬂ 
!
ﬂﬂ 
context
ﬂﬂ "
.
ﬂﬂ" #
interrupted
ﬂﬂ# .
;
ﬂﬂ. /
}
‡‡ 
}
·· 	
public
„„ 
override
„„ 
string
„„ 
GetName
„„ &
(
„„& '
)
„„' (
{
‰‰ 	
return
ÂÂ 
$str
ÂÂ  
;
ÂÂ  !
}
ÊÊ 	
public
ËË 
void
ËË 
ResetHistory
ËË  
(
ËË  !
)
ËË! "
{
ÈÈ 	
if
ÍÍ 
(
ÍÍ #
m_FrameBlendingFilter
ÍÍ %
!=
ÍÍ& (
null
ÍÍ) -
)
ÍÍ- .#
m_FrameBlendingFilter
ÎÎ %
.
ÎÎ% &
Dispose
ÎÎ& -
(
ÎÎ- .
)
ÎÎ. /
;
ÎÎ/ 0#
m_FrameBlendingFilter
ÌÌ !
=
ÌÌ" #
null
ÌÌ$ (
;
ÌÌ( )
}
ÓÓ 	
public
 
override
 
DepthTextureMode
 (
GetCameraFlags
) 7
(
7 8
)
8 9
{
ÒÒ 	
return
ÚÚ 
DepthTextureMode
ÚÚ #
.
ÚÚ# $
Depth
ÚÚ$ )
|
ÚÚ* +
DepthTextureMode
ÚÚ, <
.
ÚÚ< =
MotionVectors
ÚÚ= J
;
ÚÚJ K
}
ÛÛ 	
public
ıı 
override
ıı 
CameraEvent
ıı #
GetCameraEvent
ıı$ 2
(
ıı2 3
)
ıı3 4
{
ˆˆ 	
return
˜˜ 
CameraEvent
˜˜ 
.
˜˜  
BeforeImageEffects
˜˜ 1
;
˜˜1 2
}
¯¯ 	
public
˙˙ 
override
˙˙ 
void
˙˙ 
OnEnable
˙˙ %
(
˙˙% &
)
˙˙& '
{
˚˚ 	
m_FirstFrame
¸¸ 
=
¸¸ 
true
¸¸ 
;
¸¸  
}
˝˝ 	
public
ˇˇ 
override
ˇˇ 
void
ˇˇ #
PopulateCommandBuffer
ˇˇ 2
(
ˇˇ2 3
CommandBuffer
ˇˇ3 @
cb
ˇˇA C
)
ˇˇC D
{
ÄÄ 	
if
ÑÑ 
(
ÑÑ 
!
ÑÑ 
Application
ÑÑ 
.
ÑÑ 
	isPlaying
ÑÑ &
)
ÑÑ& '
return
ÖÖ 
;
ÖÖ 
if
ää 
(
ää 
m_FirstFrame
ää 
)
ää 
{
ãã 
m_FirstFrame
åå 
=
åå 
false
åå $
;
åå$ %
return
çç 
;
çç 
}
éé 
var
êê 
material
êê 
=
êê 
context
êê "
.
êê" #
materialFactory
êê# 2
.
êê2 3
Get
êê3 6
(
êê6 7
$str
êê7 S
)
êêS T
;
êêT U
var
ëë 
blitMaterial
ëë 
=
ëë 
context
ëë &
.
ëë& '
materialFactory
ëë' 6
.
ëë6 7
Get
ëë7 :
(
ëë: ;
$str
ëë; P
)
ëëP Q
;
ëëQ R
var
íí 
settings
íí 
=
íí 
model
íí  
.
íí  !
settings
íí! )
;
íí) *
var
îî 
fbFormat
îî 
=
îî 
context
îî "
.
îî" #
isHdr
îî# (
?
ïï !
RenderTextureFormat
ïï %
.
ïï% &

DefaultHDR
ïï& 0
:
ññ !
RenderTextureFormat
ññ %
.
ññ% &
Default
ññ& -
;
ññ- .
int
òò 
tempRT
òò 
=
òò 
Uniforms
òò !
.
òò! "
_TempRT
òò" )
;
òò) *
cb
ôô 
.
ôô 
GetTemporaryRT
ôô 
(
ôô 
tempRT
ôô $
,
ôô$ %
context
ôô& -
.
ôô- .
width
ôô. 3
,
ôô3 4
context
ôô5 <
.
ôô< =
height
ôô= C
,
ôôC D
$num
ôôE F
,
ôôF G

FilterMode
ôôH R
.
ôôR S
Point
ôôS X
,
ôôX Y
fbFormat
ôôZ b
)
ôôb c
;
ôôc d
if
õõ 
(
õõ 
settings
õõ 
.
õõ 
shutterAngle
õõ %
>
õõ& '
$num
õõ( *
&&
õõ+ -
settings
õõ. 6
.
õõ6 7
frameBlending
õõ7 D
>
õõE F
$num
õõG I
)
õõI J
{
úú "
reconstructionFilter
ûû $
.
ûû$ %
ProcessImage
ûû% 1
(
ûû1 2
context
ûû2 9
,
ûû9 :
cb
ûû; =
,
ûû= >
ref
ûû? B
settings
ûûC K
,
ûûK L&
BuiltinRenderTextureType
ûûM e
.
ûûe f
CameraTarget
ûûf r
,
ûûr s
tempRT
ûût z
,
ûûz {
materialûû| Ñ
)ûûÑ Ö
;ûûÖ Ü!
frameBlendingFilter
üü #
.
üü# $
BlendFrames
üü$ /
(
üü/ 0
cb
üü0 2
,
üü2 3
settings
üü4 <
.
üü< =
frameBlending
üü= J
,
üüJ K
tempRT
üüL R
,
üüR S&
BuiltinRenderTextureType
üüT l
.
üül m
CameraTarget
üüm y
,
üüy z
materialüü{ É
)üüÉ Ñ
;üüÑ Ö!
frameBlendingFilter
†† #
.
††# $
	PushFrame
††$ -
(
††- .
cb
††. 0
,
††0 1
tempRT
††2 8
,
††8 9
context
††: A
.
††A B
width
††B G
,
††G H
context
††I P
.
††P Q
height
††Q W
,
††W X
material
††Y a
)
††a b
;
††b c
}
°° 
else
¢¢ 
if
¢¢ 
(
¢¢ 
settings
¢¢ 
.
¢¢ 
shutterAngle
¢¢ *
>
¢¢+ ,
$num
¢¢- /
)
¢¢/ 0
{
££ 
cb
•• 
.
•• 
SetGlobalTexture
•• #
(
••# $
Uniforms
••$ ,
.
••, -
_MainTex
••- 5
,
••5 6&
BuiltinRenderTextureType
••7 O
.
••O P
CameraTarget
••P \
)
••\ ]
;
••] ^
cb
¶¶ 
.
¶¶ 
Blit
¶¶ 
(
¶¶ &
BuiltinRenderTextureType
¶¶ 0
.
¶¶0 1
CameraTarget
¶¶1 =
,
¶¶= >
tempRT
¶¶? E
,
¶¶E F
blitMaterial
¶¶G S
,
¶¶S T
$num
¶¶U V
)
¶¶V W
;
¶¶W X"
reconstructionFilter
ßß $
.
ßß$ %
ProcessImage
ßß% 1
(
ßß1 2
context
ßß2 9
,
ßß9 :
cb
ßß; =
,
ßß= >
ref
ßß? B
settings
ßßC K
,
ßßK L
tempRT
ßßM S
,
ßßS T&
BuiltinRenderTextureType
ßßU m
.
ßßm n
CameraTarget
ßßn z
,
ßßz {
materialßß| Ñ
)ßßÑ Ö
;ßßÖ Ü
}
®® 
else
©© 
if
©© 
(
©© 
settings
©© 
.
©© 
frameBlending
©© +
>
©©, -
$num
©©. 0
)
©©0 1
{
™™ 
cb
¨¨ 
.
¨¨ 
SetGlobalTexture
¨¨ #
(
¨¨# $
Uniforms
¨¨$ ,
.
¨¨, -
_MainTex
¨¨- 5
,
¨¨5 6&
BuiltinRenderTextureType
¨¨7 O
.
¨¨O P
CameraTarget
¨¨P \
)
¨¨\ ]
;
¨¨] ^
cb
≠≠ 
.
≠≠ 
Blit
≠≠ 
(
≠≠ &
BuiltinRenderTextureType
≠≠ 0
.
≠≠0 1
CameraTarget
≠≠1 =
,
≠≠= >
tempRT
≠≠? E
,
≠≠E F
blitMaterial
≠≠G S
,
≠≠S T
$num
≠≠U V
)
≠≠V W
;
≠≠W X!
frameBlendingFilter
ÆÆ #
.
ÆÆ# $
BlendFrames
ÆÆ$ /
(
ÆÆ/ 0
cb
ÆÆ0 2
,
ÆÆ2 3
settings
ÆÆ4 <
.
ÆÆ< =
frameBlending
ÆÆ= J
,
ÆÆJ K
tempRT
ÆÆL R
,
ÆÆR S&
BuiltinRenderTextureType
ÆÆT l
.
ÆÆl m
CameraTarget
ÆÆm y
,
ÆÆy z
materialÆÆ{ É
)ÆÆÉ Ñ
;ÆÆÑ Ö!
frameBlendingFilter
ØØ #
.
ØØ# $
	PushFrame
ØØ$ -
(
ØØ- .
cb
ØØ. 0
,
ØØ0 1
tempRT
ØØ2 8
,
ØØ8 9
context
ØØ: A
.
ØØA B
width
ØØB G
,
ØØG H
context
ØØI P
.
ØØP Q
height
ØØQ W
,
ØØW X
material
ØØY a
)
ØØa b
;
ØØb c
}
∞∞ 
cb
≥≥ 
.
≥≥  
ReleaseTemporaryRT
≥≥ !
(
≥≥! "
tempRT
≥≥" (
)
≥≥( )
;
≥≥) *
}
¥¥ 	
public
∂∂ 
override
∂∂ 
void
∂∂ 
	OnDisable
∂∂ &
(
∂∂& '
)
∂∂' (
{
∑∑ 	
if
∏∏ 
(
∏∏ #
m_FrameBlendingFilter
∏∏ %
!=
∏∏& (
null
∏∏) -
)
∏∏- .#
m_FrameBlendingFilter
ππ %
.
ππ% &
Dispose
ππ& -
(
ππ- .
)
ππ. /
;
ππ/ 0
}
∫∫ 	
}
ªª 
}ºº Ì∞
∑D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\ScreenSpaceReflectionComponent.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class *
ScreenSpaceReflectionComponent 6
:7 80
$PostProcessingComponentCommandBuffer9 ]
<] ^&
ScreenSpaceReflectionModel^ x
>x y
{		 
static

 
class

 
Uniforms

 
{ 	
internal 
static 
readonly $
int% (
_RayStepSize) 5
=E F
ShaderG M
.M N
PropertyToIDN Z
(Z [
$str[ i
)i j
;j k
internal 
static 
readonly $
int% (
_AdditiveReflection) <
=E F
ShaderG M
.M N
PropertyToIDN Z
(Z [
$str[ p
)p q
;q r
internal 
static 
readonly $
int% ( 
_BilateralUpsampling) =
=E F
ShaderG M
.M N
PropertyToIDN Z
(Z [
$str[ q
)q r
;r s
internal 
static 
readonly $
int% (#
_TreatBackfaceHitAsMiss) @
=E F
ShaderG M
.M N
PropertyToIDN Z
(Z [
$str[ t
)t u
;u v
internal 
static 
readonly $
int% (
_AllowBackwardsRays) <
=E F
ShaderG M
.M N
PropertyToIDN Z
(Z [
$str[ p
)p q
;q r
internal 
static 
readonly $
int% (
_TraceBehindObjects) <
=E F
ShaderG M
.M N
PropertyToIDN Z
(Z [
$str[ p
)p q
;q r
internal 
static 
readonly $
int% (
	_MaxSteps) 2
=E F
ShaderG M
.M N
PropertyToIDN Z
(Z [
$str[ f
)f g
;g h
internal 
static 
readonly $
int% ($
_FullResolutionFiltering) A
=E F
ShaderG M
.M N
PropertyToIDN Z
(Z [
$str[ u
)u v
;v w
internal 
static 
readonly $
int% (
_HalfResolution) 8
=E F
ShaderG M
.M N
PropertyToIDN Z
(Z [
$str[ l
)l m
;m n
internal 
static 
readonly $
int% (!
_HighlightSuppression) >
=E F
ShaderG M
.M N
PropertyToIDN Z
(Z [
$str[ r
)r s
;s t
internal 
static 
readonly $
int% (%
_PixelsPerMeterAtOneMeter) B
=E F
ShaderG M
.M N
PropertyToIDN Z
(Z [
$str[ v
)v w
;w x
internal 
static 
readonly $
int% (
_ScreenEdgeFading) :
=E F
ShaderG M
.M N
PropertyToIDN Z
(Z [
$str[ n
)n o
;o p
internal 
static 
readonly $
int% (
_ReflectionBlur) 8
=E F
ShaderG M
.M N
PropertyToIDN Z
(Z [
$str[ l
)l m
;m n
internal 
static 
readonly $
int% ( 
_MaxRayTraceDistance) =
=E F
ShaderG M
.M N
PropertyToIDN Z
(Z [
$str[ q
)q r
;r s
internal 
static 
readonly $
int% (
_FadeDistance) 6
=E F
ShaderG M
.M N
PropertyToIDN Z
(Z [
$str[ j
)j k
;k l
internal 
static 
readonly $
int% (
_LayerThickness) 8
=E F
ShaderG M
.M N
PropertyToIDN Z
(Z [
$str[ l
)l m
;m n
internal 
static 
readonly $
int% (
_SSRMultiplier) 7
=E F
ShaderG M
.M N
PropertyToIDN Z
(Z [
$str[ k
)k l
;l m
internal 
static 
readonly $
int% (
_FresnelFade) 5
=E F
ShaderG M
.M N
PropertyToIDN Z
(Z [
$str[ i
)i j
;j k
internal 
static 
readonly $
int% (
_FresnelFadePower) :
=E F
ShaderG M
.M N
PropertyToIDN Z
(Z [
$str[ n
)n o
;o p
internal 
static 
readonly $
int% (!
_ReflectionBufferSize) >
=E F
ShaderG M
.M N
PropertyToIDN Z
(Z [
$str[ r
)r s
;s t
internal   
static   
readonly   $
int  % (
_ScreenSize  ) 4
=  E F
Shader  G M
.  M N
PropertyToID  N Z
(  Z [
$str  [ h
)  h i
;  i j
internal!! 
static!! 
readonly!! $
int!!% (
_InvScreenSize!!) 7
=!!E F
Shader!!G M
.!!M N
PropertyToID!!N Z
(!!Z [
$str!![ k
)!!k l
;!!l m
internal"" 
static"" 
readonly"" $
int""% (
	_ProjInfo"") 2
=""E F
Shader""G M
.""M N
PropertyToID""N Z
(""Z [
$str""[ f
)""f g
;""g h
internal## 
static## 
readonly## $
int##% (
_CameraClipInfo##) 8
=##E F
Shader##G M
.##M N
PropertyToID##N Z
(##Z [
$str##[ l
)##l m
;##m n
internal$$ 
static$$ 
readonly$$ $
int$$% (!
_ProjectToPixelMatrix$$) >
=$$E F
Shader$$G M
.$$M N
PropertyToID$$N Z
($$Z [
$str$$[ r
)$$r s
;$$s t
internal%% 
static%% 
readonly%% $
int%%% ( 
_WorldToCameraMatrix%%) =
=%%E F
Shader%%G M
.%%M N
PropertyToID%%N Z
(%%Z [
$str%%[ q
)%%q r
;%%r s
internal&& 
static&& 
readonly&& $
int&&% ( 
_CameraToWorldMatrix&&) =
=&&E F
Shader&&G M
.&&M N
PropertyToID&&N Z
(&&Z [
$str&&[ q
)&&q r
;&&r s
internal'' 
static'' 
readonly'' $
int''% (
_Axis'') .
=''E F
Shader''G M
.''M N
PropertyToID''N Z
(''Z [
$str''[ b
)''b c
;''c d
internal(( 
static(( 
readonly(( $
int((% (
_CurrentMipLevel(() 9
=((E F
Shader((G M
.((M N
PropertyToID((N Z
(((Z [
$str(([ m
)((m n
;((n o
internal)) 
static)) 
readonly)) $
int))% (&
_NormalAndRoughnessTexture))) C
=))E F
Shader))G M
.))M N
PropertyToID))N Z
())Z [
$str))[ w
)))w x
;))x y
internal** 
static** 
readonly** $
int**% (
_HitPointTexture**) 9
=**E F
Shader**G M
.**M N
PropertyToID**N Z
(**Z [
$str**[ m
)**m n
;**n o
internal++ 
static++ 
readonly++ $
int++% (
_BlurTexture++) 5
=++E F
Shader++G M
.++M N
PropertyToID++N Z
(++Z [
$str++[ i
)++i j
;++j k
internal,, 
static,, 
readonly,, $
int,,% ( 
_FilteredReflections,,) =
=,,E F
Shader,,G M
.,,M N
PropertyToID,,N Z
(,,Z [
$str,,[ q
),,q r
;,,r s
internal-- 
static-- 
readonly-- $
int--% (#
_FinalReflectionTexture--) @
=--E F
Shader--G M
.--M N
PropertyToID--N Z
(--Z [
$str--[ t
)--t u
;--u v
internal.. 
static.. 
readonly.. $
int..% (
_TempTexture..) 5
=..E F
Shader..G M
...M N
PropertyToID..N Z
(..Z [
$str..[ i
)..i j
;..j k
}// 	
bool22 "
k_HighlightSuppression22 #
=22$ %
false22& +
;22+ ,
bool33  
k_TraceBehindObjects33 !
=33" #
true33$ (
;33( )
bool44 $
k_TreatBackfaceHitAsMiss44 %
=44& '
false44( -
;44- .
bool55 
k_BilateralUpsample55  
=55! "
true55# '
;55' (
enum77 
	PassIndex77 
{88 	
RayTraceStep99 
=99 
$num99 
,99 
CompositeFinal:: 
=:: 
$num:: 
,:: 
Blur;; 
=;; 
$num;; 
,;; 
CompositeSSR<< 
=<< 
$num<< 
,<< 
MinMipGeneration== 
=== 
$num==  
,==  !!
HitPointToReflections>> !
=>>" #
$num>>$ %
,>>% &
BilateralKeyPack?? 
=?? 
$num??  
,??  !
BlitDepthAsCSZ@@ 
=@@ 
$num@@ 
,@@ 
PoissonBlurAA 
=AA 
$numAA 
,AA 
}BB 	
readonlyDD 
intDD 
[DD 
]DD  
m_ReflectionTexturesDD +
=DD, -
newDD. 1
intDD2 5
[DD5 6
$numDD6 7
]DD7 8
;DD8 9
publicGG 
overrideGG 
DepthTextureModeGG (
GetCameraFlagsGG) 7
(GG7 8
)GG8 9
{HH 	
returnII 
DepthTextureModeII #
.II# $
DepthII$ )
;II) *
}JJ 	
publicLL 
overrideLL 
boolLL 
activeLL #
{MM 	
getNN 
{OO 
returnPP 
modelPP 
.PP 
enabledPP $
&&QQ 
contextQQ !
.QQ! "
isGBufferAvailableQQ" 4
&&RR 
!RR 
contextRR "
.RR" #
interruptedRR# .
;RR. /
}SS 
}TT 	
publicVV 
overrideVV 
voidVV 
OnEnableVV %
(VV% &
)VV& '
{WW 	 
m_ReflectionTexturesXX  
[XX  !
$numXX! "
]XX" #
=XX$ %
ShaderXX& ,
.XX, -
PropertyToIDXX- 9
(XX9 :
$strXX: O
)XXO P
;XXP Q 
m_ReflectionTexturesYY  
[YY  !
$numYY! "
]YY" #
=YY$ %
ShaderYY& ,
.YY, -
PropertyToIDYY- 9
(YY9 :
$strYY: O
)YYO P
;YYP Q 
m_ReflectionTexturesZZ  
[ZZ  !
$numZZ! "
]ZZ" #
=ZZ$ %
ShaderZZ& ,
.ZZ, -
PropertyToIDZZ- 9
(ZZ9 :
$strZZ: O
)ZZO P
;ZZP Q 
m_ReflectionTextures[[  
[[[  !
$num[[! "
][[" #
=[[$ %
Shader[[& ,
.[[, -
PropertyToID[[- 9
([[9 :
$str[[: O
)[[O P
;[[P Q 
m_ReflectionTextures\\  
[\\  !
$num\\! "
]\\" #
=\\$ %
Shader\\& ,
.\\, -
PropertyToID\\- 9
(\\9 :
$str\\: O
)\\O P
;\\P Q
}]] 	
public__ 
override__ 
string__ 
GetName__ &
(__& '
)__' (
{`` 	
returnaa 
$straa ,
;aa, -
}bb 	
publicdd 
overridedd 
CameraEventdd #
GetCameraEventdd$ 2
(dd2 3
)dd3 4
{ee 	
returnff 
CameraEventff 
.ff 
AfterFinalPassff -
;ff- .
}gg 	
publicii 
overrideii 
voidii !
PopulateCommandBufferii 2
(ii2 3
CommandBufferii3 @
cbiiA C
)iiC D
{jj 	
varkk 
settingskk 
=kk 
modelkk  
.kk  !
settingskk! )
;kk) *
varll 
camerall 
=ll 
contextll  
.ll  !
camerall! '
;ll' (
intoo 
downsampleAmountoo  
=oo! "
(oo# $
settingsoo$ ,
.oo, -

reflectionoo- 7
.oo7 8
reflectionQualityoo8 I
==ooJ L
SSRResolutionooM Z
.ooZ [
Highoo[ _
)oo_ `
?ooa b
$numooc d
:ooe f
$numoog h
;ooh i
varqq 
rtWqq 
=qq 
contextqq 
.qq 
widthqq #
/qq$ %
downsampleAmountqq& 6
;qq6 7
varrr 
rtHrr 
=rr 
contextrr 
.rr 
heightrr $
/rr% &
downsampleAmountrr' 7
;rr7 8
floattt 
sWidthtt 
=tt 
contexttt "
.tt" #
widthtt# (
;tt( )
floatuu 
sHeightuu 
=uu 
contextuu #
.uu# $
heightuu$ *
;uu* +
floatww 
sxww 
=ww 
sWidthww 
/ww 
$numww  "
;ww" #
floatxx 
syxx 
=xx 
sHeightxx 
/xx  
$numxx! #
;xx# $
varzz 
materialzz 
=zz 
contextzz "
.zz" #
materialFactoryzz# 2
.zz2 3
Getzz3 6
(zz6 7
$strzz7 _
)zz_ `
;zz` a
material|| 
.|| 
SetInt|| 
(|| 
Uniforms|| $
.||$ %
_RayStepSize||% 1
,||1 2
settings||3 ;
.||; <

reflection||< F
.||F G
stepSize||G O
)||O P
;||P Q
material}} 
.}} 
SetInt}} 
(}} 
Uniforms}} $
.}}$ %
_AdditiveReflection}}% 8
,}}8 9
settings}}: B
.}}B C

reflection}}C M
.}}M N
	blendType}}N W
==}}X Z"
SSRReflectionBlendType}}[ q
.}}q r
Additive}}r z
?}}{ |
$num}}} ~
:	}} Ä
$num
}}Å Ç
)
}}Ç É
;
}}É Ñ
material~~ 
.~~ 
SetInt~~ 
(~~ 
Uniforms~~ $
.~~$ % 
_BilateralUpsampling~~% 9
,~~9 :
k_BilateralUpsample~~; N
?~~O P
$num~~Q R
:~~S T
$num~~U V
)~~V W
;~~W X
material 
. 
SetInt 
( 
Uniforms $
.$ %#
_TreatBackfaceHitAsMiss% <
,< =$
k_TreatBackfaceHitAsMiss> V
?W X
$numY Z
:[ \
$num] ^
)^ _
;_ `
material
ÄÄ 
.
ÄÄ 
SetInt
ÄÄ 
(
ÄÄ 
Uniforms
ÄÄ $
.
ÄÄ$ %!
_AllowBackwardsRays
ÄÄ% 8
,
ÄÄ8 9
settings
ÄÄ: B
.
ÄÄB C

reflection
ÄÄC M
.
ÄÄM N
reflectBackfaces
ÄÄN ^
?
ÄÄ_ `
$num
ÄÄa b
:
ÄÄc d
$num
ÄÄe f
)
ÄÄf g
;
ÄÄg h
material
ÅÅ 
.
ÅÅ 
SetInt
ÅÅ 
(
ÅÅ 
Uniforms
ÅÅ $
.
ÅÅ$ %!
_TraceBehindObjects
ÅÅ% 8
,
ÅÅ8 9"
k_TraceBehindObjects
ÅÅ: N
?
ÅÅO P
$num
ÅÅQ R
:
ÅÅS T
$num
ÅÅU V
)
ÅÅV W
;
ÅÅW X
material
ÇÇ 
.
ÇÇ 
SetInt
ÇÇ 
(
ÇÇ 
Uniforms
ÇÇ $
.
ÇÇ$ %
	_MaxSteps
ÇÇ% .
,
ÇÇ. /
settings
ÇÇ0 8
.
ÇÇ8 9

reflection
ÇÇ9 C
.
ÇÇC D
iterationCount
ÇÇD R
)
ÇÇR S
;
ÇÇS T
material
ÉÉ 
.
ÉÉ 
SetInt
ÉÉ 
(
ÉÉ 
Uniforms
ÉÉ $
.
ÉÉ$ %&
_FullResolutionFiltering
ÉÉ% =
,
ÉÉ= >
$num
ÉÉ? @
)
ÉÉ@ A
;
ÉÉA B
material
ÑÑ 
.
ÑÑ 
SetInt
ÑÑ 
(
ÑÑ 
Uniforms
ÑÑ $
.
ÑÑ$ %
_HalfResolution
ÑÑ% 4
,
ÑÑ4 5
(
ÑÑ6 7
settings
ÑÑ7 ?
.
ÑÑ? @

reflection
ÑÑ@ J
.
ÑÑJ K
reflectionQuality
ÑÑK \
!=
ÑÑ] _
SSRResolution
ÑÑ` m
.
ÑÑm n
High
ÑÑn r
)
ÑÑr s
?
ÑÑt u
$num
ÑÑv w
:
ÑÑx y
$num
ÑÑz {
)
ÑÑ{ |
;
ÑÑ| }
material
ÖÖ 
.
ÖÖ 
SetInt
ÖÖ 
(
ÖÖ 
Uniforms
ÖÖ $
.
ÖÖ$ %#
_HighlightSuppression
ÖÖ% :
,
ÖÖ: ;$
k_HighlightSuppression
ÖÖ< R
?
ÖÖS T
$num
ÖÖU V
:
ÖÖW X
$num
ÖÖY Z
)
ÖÖZ [
;
ÖÖ[ \
float
àà &
pixelsPerMeterAtOneMeter
àà *
=
àà+ ,
sWidth
àà- 3
/
àà4 5
(
àà6 7
-
àà7 8
$num
àà8 :
*
àà; <
Mathf
àà= B
.
ààB C
Tan
ààC F
(
ààF G
camera
ààG M
.
ààM N
fieldOfView
ààN Y
/
ààZ [
$num
àà\ `
*
ààa b
Mathf
ààc h
.
ààh i
PI
àài k
*
ààl m
$num
ààn r
)
ààr s
)
ààs t
;
ààt u
material
ää 
.
ää 
SetFloat
ää 
(
ää 
Uniforms
ää &
.
ää& ''
_PixelsPerMeterAtOneMeter
ää' @
,
ää@ A&
pixelsPerMeterAtOneMeter
ääB Z
)
ääZ [
;
ää[ \
material
ãã 
.
ãã 
SetFloat
ãã 
(
ãã 
Uniforms
ãã &
.
ãã& '
_ScreenEdgeFading
ãã' 8
,
ãã8 9
settings
ãã: B
.
ããB C
screenEdgeMask
ããC Q
.
ããQ R
	intensity
ããR [
)
ãã[ \
;
ãã\ ]
material
åå 
.
åå 
SetFloat
åå 
(
åå 
Uniforms
åå &
.
åå& '
_ReflectionBlur
åå' 6
,
åå6 7
settings
åå8 @
.
åå@ A

reflection
ååA K
.
ååK L
reflectionBlur
ååL Z
)
ååZ [
;
åå[ \
material
çç 
.
çç 
SetFloat
çç 
(
çç 
Uniforms
çç &
.
çç& '"
_MaxRayTraceDistance
çç' ;
,
çç; <
settings
çç= E
.
ççE F

reflection
ççF P
.
ççP Q
maxDistance
ççQ \
)
çç\ ]
;
çç] ^
material
éé 
.
éé 
SetFloat
éé 
(
éé 
Uniforms
éé &
.
éé& '
_FadeDistance
éé' 4
,
éé4 5
settings
éé6 >
.
éé> ?
	intensity
éé? H
.
ééH I
fadeDistance
ééI U
)
ééU V
;
ééV W
material
èè 
.
èè 
SetFloat
èè 
(
èè 
Uniforms
èè &
.
èè& '
_LayerThickness
èè' 6
,
èè6 7
settings
èè8 @
.
èè@ A

reflection
èèA K
.
èèK L
widthModifier
èèL Y
)
èèY Z
;
èèZ [
material
êê 
.
êê 
SetFloat
êê 
(
êê 
Uniforms
êê &
.
êê& '
_SSRMultiplier
êê' 5
,
êê5 6
settings
êê7 ?
.
êê? @
	intensity
êê@ I
.
êêI J"
reflectionMultiplier
êêJ ^
)
êê^ _
;
êê_ `
material
ëë 
.
ëë 
SetFloat
ëë 
(
ëë 
Uniforms
ëë &
.
ëë& '
_FresnelFade
ëë' 3
,
ëë3 4
settings
ëë5 =
.
ëë= >
	intensity
ëë> G
.
ëëG H
fresnelFade
ëëH S
)
ëëS T
;
ëëT U
material
íí 
.
íí 
SetFloat
íí 
(
íí 
Uniforms
íí &
.
íí& '
_FresnelFadePower
íí' 8
,
íí8 9
settings
íí: B
.
ííB C
	intensity
ííC L
.
ííL M
fresnelFadePower
ííM ]
)
íí] ^
;
íí^ _
var
îî 
P
îî 
=
îî 
camera
îî 
.
îî 
projectionMatrix
îî +
;
îî+ ,
var
ïï 
projInfo
ïï 
=
ïï 
new
ïï 
Vector4
ïï &
(
ïï& '
-
ññ 
$num
ññ 
/
ññ 
(
ññ 
sWidth
ññ !
*
ññ" #
P
ññ$ %
[
ññ% &
$num
ññ& '
]
ññ' (
)
ññ( )
,
ññ) *
-
óó 
$num
óó 
/
óó 
(
óó 
sHeight
óó "
*
óó# $
P
óó% &
[
óó& '
$num
óó' (
]
óó( )
)
óó) *
,
óó* +
(
òò 
$num
òò 
-
òò 
P
òò 
[
òò 
$num
òò 
]
òò 
)
òò 
/
òò  !
P
òò" #
[
òò# $
$num
òò$ %
]
òò% &
,
òò& '
(
ôô 
$num
ôô 
+
ôô 
P
ôô 
[
ôô 
$num
ôô 
]
ôô 
)
ôô 
/
ôô  !
P
ôô" #
[
ôô# $
$num
ôô$ %
]
ôô% &
)
öö 
;
öö 
var
úú 
cameraClipInfo
úú 
=
úú  
float
úú! &
.
úú& ' 
IsPositiveInfinity
úú' 9
(
úú9 :
camera
úú: @
.
úú@ A
farClipPlane
úúA M
)
úúM N
?
úúO P
new
ùù 
Vector3
ùù 
(
ùù 
camera
ùù "
.
ùù" #
nearClipPlane
ùù# 0
,
ùù0 1
-
ùù2 3
$num
ùù3 5
,
ùù5 6
$num
ùù7 9
)
ùù9 :
:
ùù; <
new
ûû 
Vector3
ûû 
(
ûû 
camera
ûû "
.
ûû" #
nearClipPlane
ûû# 0
*
ûû1 2
camera
ûû3 9
.
ûû9 :
farClipPlane
ûû: F
,
ûûF G
camera
ûûH N
.
ûûN O
nearClipPlane
ûûO \
-
ûû] ^
camera
ûû_ e
.
ûûe f
farClipPlane
ûûf r
,
ûûr s
camera
ûût z
.
ûûz {
farClipPlaneûû{ á
)ûûá à
;ûûà â
material
†† 
.
†† 
	SetVector
†† 
(
†† 
Uniforms
†† '
.
††' (#
_ReflectionBufferSize
††( =
,
††= >
new
††? B
Vector2
††C J
(
††J K
rtW
††K N
,
††N O
rtH
††P S
)
††S T
)
††T U
;
††U V
material
°° 
.
°° 
	SetVector
°° 
(
°° 
Uniforms
°° '
.
°°' (
_ScreenSize
°°( 3
,
°°3 4
new
°°5 8
Vector2
°°9 @
(
°°@ A
sWidth
°°A G
,
°°G H
sHeight
°°I P
)
°°P Q
)
°°Q R
;
°°R S
material
¢¢ 
.
¢¢ 
	SetVector
¢¢ 
(
¢¢ 
Uniforms
¢¢ '
.
¢¢' (
_InvScreenSize
¢¢( 6
,
¢¢6 7
new
¢¢8 ;
Vector2
¢¢< C
(
¢¢C D
$num
¢¢D F
/
¢¢G H
sWidth
¢¢I O
,
¢¢O P
$num
¢¢Q S
/
¢¢T U
sHeight
¢¢V ]
)
¢¢] ^
)
¢¢^ _
;
¢¢_ `
material
££ 
.
££ 
	SetVector
££ 
(
££ 
Uniforms
££ '
.
££' (
	_ProjInfo
££( 1
,
££1 2
projInfo
££3 ;
)
££; <
;
££< =
material
•• 
.
•• 
	SetVector
•• 
(
•• 
Uniforms
•• '
.
••' (
_CameraClipInfo
••( 7
,
••7 8
cameraClipInfo
••9 G
)
••G H
;
••H I
var
ßß %
warpToScreenSpaceMatrix
ßß '
=
ßß( )
new
ßß* -
	Matrix4x4
ßß. 7
(
ßß7 8
)
ßß8 9
;
ßß9 :%
warpToScreenSpaceMatrix
®® #
.
®®# $
SetRow
®®$ *
(
®®* +
$num
®®+ ,
,
®®, -
new
®®. 1
Vector4
®®2 9
(
®®9 :
sx
®®: <
,
®®< =
$num
®®> @
,
®®@ A
$num
®®B D
,
®®D E
sx
®®F H
)
®®H I
)
®®I J
;
®®J K%
warpToScreenSpaceMatrix
©© #
.
©©# $
SetRow
©©$ *
(
©©* +
$num
©©+ ,
,
©©, -
new
©©. 1
Vector4
©©2 9
(
©©9 :
$num
©©: <
,
©©< =
sy
©©> @
,
©©@ A
$num
©©B D
,
©©D E
sy
©©F H
)
©©H I
)
©©I J
;
©©J K%
warpToScreenSpaceMatrix
™™ #
.
™™# $
SetRow
™™$ *
(
™™* +
$num
™™+ ,
,
™™, -
new
™™. 1
Vector4
™™2 9
(
™™9 :
$num
™™: <
,
™™< =
$num
™™> @
,
™™@ A
$num
™™B D
,
™™D E
$num
™™F H
)
™™H I
)
™™I J
;
™™J K%
warpToScreenSpaceMatrix
´´ #
.
´´# $
SetRow
´´$ *
(
´´* +
$num
´´+ ,
,
´´, -
new
´´. 1
Vector4
´´2 9
(
´´9 :
$num
´´: <
,
´´< =
$num
´´> @
,
´´@ A
$num
´´B D
,
´´D E
$num
´´F H
)
´´H I
)
´´I J
;
´´J K
var
≠≠ "
projectToPixelMatrix
≠≠ $
=
≠≠% &%
warpToScreenSpaceMatrix
≠≠' >
*
≠≠? @
P
≠≠A B
;
≠≠B C
material
ØØ 
.
ØØ 
	SetMatrix
ØØ 
(
ØØ 
Uniforms
ØØ '
.
ØØ' (#
_ProjectToPixelMatrix
ØØ( =
,
ØØ= >"
projectToPixelMatrix
ØØ? S
)
ØØS T
;
ØØT U
material
∞∞ 
.
∞∞ 
	SetMatrix
∞∞ 
(
∞∞ 
Uniforms
∞∞ '
.
∞∞' ("
_WorldToCameraMatrix
∞∞( <
,
∞∞< =
camera
∞∞> D
.
∞∞D E!
worldToCameraMatrix
∞∞E X
)
∞∞X Y
;
∞∞Y Z
material
±± 
.
±± 
	SetMatrix
±± 
(
±± 
Uniforms
±± '
.
±±' ("
_CameraToWorldMatrix
±±( <
,
±±< =
camera
±±> D
.
±±D E!
worldToCameraMatrix
±±E X
.
±±X Y
inverse
±±Y `
)
±±` a
;
±±a b
var
¥¥  
intermediateFormat
¥¥ "
=
¥¥# $
context
¥¥% ,
.
¥¥, -
isHdr
¥¥- 2
?
¥¥3 4!
RenderTextureFormat
¥¥5 H
.
¥¥H I
ARGBHalf
¥¥I Q
:
¥¥R S!
RenderTextureFormat
¥¥T g
.
¥¥g h
ARGB32
¥¥h n
;
¥¥n o
const
µµ 
int
µµ 
maxMip
µµ 
=
µµ 
$num
µµ  
;
µµ  !
var
∑∑ (
kNormalAndRoughnessTexture
∑∑ *
=
∑∑+ ,
Uniforms
∑∑- 5
.
∑∑5 6(
_NormalAndRoughnessTexture
∑∑6 P
;
∑∑P Q
var
∏∏ 
kHitPointTexture
∏∏  
=
∏∏! "
Uniforms
∏∏# +
.
∏∏+ ,
_HitPointTexture
∏∏, <
;
∏∏< =
var
ππ 
kBlurTexture
ππ 
=
ππ 
Uniforms
ππ '
.
ππ' (
_BlurTexture
ππ( 4
;
ππ4 5
var
∫∫ "
kFilteredReflections
∫∫ $
=
∫∫% &
Uniforms
∫∫' /
.
∫∫/ 0"
_FilteredReflections
∫∫0 D
;
∫∫D E
var
ªª %
kFinalReflectionTexture
ªª '
=
ªª( )
Uniforms
ªª* 2
.
ªª2 3%
_FinalReflectionTexture
ªª3 J
;
ªªJ K
var
ºº 
kTempTexture
ºº 
=
ºº 
Uniforms
ºº '
.
ºº' (
_TempTexture
ºº( 4
;
ºº4 5
cb
¿¿ 
.
¿¿ 
GetTemporaryRT
¿¿ 
(
¿¿ (
kNormalAndRoughnessTexture
¿¿ 8
,
¿¿8 9
-
¿¿: ;
$num
¿¿; <
,
¿¿< =
-
¿¿> ?
$num
¿¿? @
,
¿¿@ A
$num
¿¿B C
,
¿¿C D

FilterMode
¿¿E O
.
¿¿O P
Point
¿¿P U
,
¿¿U V!
RenderTextureFormat
¿¿W j
.
¿¿j k
ARGB32
¿¿k q
,
¿¿q r%
RenderTextureReadWrite¿¿s â
.¿¿â ä
Linear¿¿ä ê
)¿¿ê ë
;¿¿ë í
cb
¬¬ 
.
¬¬ 
GetTemporaryRT
¬¬ 
(
¬¬ 
kHitPointTexture
¬¬ .
,
¬¬. /
rtW
¬¬0 3
,
¬¬3 4
rtH
¬¬5 8
,
¬¬8 9
$num
¬¬: ;
,
¬¬; <

FilterMode
¬¬= G
.
¬¬G H
Bilinear
¬¬H P
,
¬¬P Q!
RenderTextureFormat
¬¬R e
.
¬¬e f
ARGBHalf
¬¬f n
,
¬¬n o%
RenderTextureReadWrite¬¬p Ü
.¬¬Ü á
Linear¬¬á ç
)¬¬ç é
;¬¬é è
for
ƒƒ 
(
ƒƒ 
int
ƒƒ 
i
ƒƒ 
=
ƒƒ 
$num
ƒƒ 
;
ƒƒ 
i
ƒƒ 
<
ƒƒ 
maxMip
ƒƒ  &
;
ƒƒ& '
++
ƒƒ( *
i
ƒƒ* +
)
ƒƒ+ ,
{
≈≈ 
cb
«« 
.
«« 
GetTemporaryRT
«« !
(
««! ""
m_ReflectionTextures
««" 6
[
««6 7
i
««7 8
]
««8 9
,
««9 :
rtW
««; >
>>
««? A
i
««B C
,
««C D
rtH
««E H
>>
««I K
i
««L M
,
««M N
$num
««O P
,
««P Q

FilterMode
««R \
.
««\ ]
Bilinear
««] e
,
««e f 
intermediateFormat
««g y
)
««y z
;
««z {
}
»» 
cb
   
.
   
GetTemporaryRT
   
(
   "
kFilteredReflections
   2
,
  2 3
rtW
  4 7
,
  7 8
rtH
  9 <
,
  < =
$num
  > ?
,
  ? @!
k_BilateralUpsample
  A T
?
  U V

FilterMode
  W a
.
  a b
Point
  b g
:
  h i

FilterMode
  j t
.
  t u
Bilinear
  u }
,
  } ~!
intermediateFormat   ë
)  ë í
;  í ì
cb
ÀÀ 
.
ÀÀ 
GetTemporaryRT
ÀÀ 
(
ÀÀ %
kFinalReflectionTexture
ÀÀ 5
,
ÀÀ5 6
rtW
ÀÀ7 :
,
ÀÀ: ;
rtH
ÀÀ< ?
,
ÀÀ? @
$num
ÀÀA B
,
ÀÀB C

FilterMode
ÀÀD N
.
ÀÀN O
Point
ÀÀO T
,
ÀÀT U 
intermediateFormat
ÀÀV h
)
ÀÀh i
;
ÀÀi j
cb
ÕÕ 
.
ÕÕ 
Blit
ÕÕ 
(
ÕÕ &
BuiltinRenderTextureType
ÕÕ ,
.
ÕÕ, -
CameraTarget
ÕÕ- 9
,
ÕÕ9 :(
kNormalAndRoughnessTexture
ÕÕ; U
,
ÕÕU V
material
ÕÕW _
,
ÕÕ_ `
(
ÕÕa b
int
ÕÕb e
)
ÕÕe f
	PassIndex
ÕÕf o
.
ÕÕo p
BilateralKeyPackÕÕp Ä
)ÕÕÄ Å
;ÕÕÅ Ç
cb
ŒŒ 
.
ŒŒ 
Blit
ŒŒ 
(
ŒŒ &
BuiltinRenderTextureType
ŒŒ ,
.
ŒŒ, -
CameraTarget
ŒŒ- 9
,
ŒŒ9 :
kHitPointTexture
ŒŒ; K
,
ŒŒK L
material
ŒŒM U
,
ŒŒU V
(
ŒŒW X
int
ŒŒX [
)
ŒŒ[ \
	PassIndex
ŒŒ\ e
.
ŒŒe f
RayTraceStep
ŒŒf r
)
ŒŒr s
;
ŒŒs t
cb
œœ 
.
œœ 
Blit
œœ 
(
œœ &
BuiltinRenderTextureType
œœ ,
.
œœ, -
CameraTarget
œœ- 9
,
œœ9 :"
kFilteredReflections
œœ; O
,
œœO P
material
œœQ Y
,
œœY Z
(
œœ[ \
int
œœ\ _
)
œœ_ `
	PassIndex
œœ` i
.
œœi j#
HitPointToReflections
œœj 
)œœ Ä
;œœÄ Å
cb
–– 
.
–– 
Blit
–– 
(
–– "
kFilteredReflections
–– (
,
––( )"
m_ReflectionTextures
––* >
[
––> ?
$num
––? @
]
––@ A
,
––A B
material
––C K
,
––K L
(
––M N
int
––N Q
)
––Q R
	PassIndex
––R [
.
––[ \
PoissonBlur
––\ g
)
––g h
;
––h i
for
““ 
(
““ 
int
““ 
i
““ 
=
““ 
$num
““ 
;
““ 
i
““ 
<
““ 
maxMip
““  &
;
““& '
++
““( *
i
““* +
)
““+ ,
{
”” 
int
‘‘ 
inputTex
‘‘ 
=
‘‘ "
m_ReflectionTextures
‘‘ 3
[
‘‘3 4
i
‘‘4 5
-
‘‘6 7
$num
‘‘8 9
]
‘‘9 :
;
‘‘: ;
int
÷÷ 
lowMip
÷÷ 
=
÷÷ 
i
÷÷ 
;
÷÷ 
cb
ÿÿ 
.
ÿÿ 
GetTemporaryRT
ÿÿ !
(
ÿÿ! "
kBlurTexture
ÿÿ" .
,
ÿÿ. /
rtW
ÿÿ0 3
>>
ÿÿ4 6
lowMip
ÿÿ7 =
,
ÿÿ= >
rtH
ÿÿ? B
>>
ÿÿC E
lowMip
ÿÿF L
,
ÿÿL M
$num
ÿÿN O
,
ÿÿO P

FilterMode
ÿÿQ [
.
ÿÿ[ \
Bilinear
ÿÿ\ d
,
ÿÿd e 
intermediateFormat
ÿÿf x
)
ÿÿx y
;
ÿÿy z
cb
ŸŸ 
.
ŸŸ 
SetGlobalVector
ŸŸ "
(
ŸŸ" #
Uniforms
ŸŸ# +
.
ŸŸ+ ,
_Axis
ŸŸ, 1
,
ŸŸ1 2
new
ŸŸ3 6
Vector4
ŸŸ7 >
(
ŸŸ> ?
$num
ŸŸ? C
,
ŸŸC D
$num
ŸŸE I
,
ŸŸI J
$num
ŸŸK O
,
ŸŸO P
$num
ŸŸQ U
)
ŸŸU V
)
ŸŸV W
;
ŸŸW X
cb
⁄⁄ 
.
⁄⁄ 
SetGlobalFloat
⁄⁄ !
(
⁄⁄! "
Uniforms
⁄⁄" *
.
⁄⁄* +
_CurrentMipLevel
⁄⁄+ ;
,
⁄⁄; <
i
⁄⁄= >
-
⁄⁄? @
$num
⁄⁄A E
)
⁄⁄E F
;
⁄⁄F G
cb
‹‹ 
.
‹‹ 
Blit
‹‹ 
(
‹‹ 
inputTex
‹‹  
,
‹‹  !
kBlurTexture
‹‹" .
,
‹‹. /
material
‹‹0 8
,
‹‹8 9
(
‹‹: ;
int
‹‹; >
)
‹‹> ?
	PassIndex
‹‹? H
.
‹‹H I
Blur
‹‹I M
)
‹‹M N
;
‹‹N O
cb
ﬁﬁ 
.
ﬁﬁ 
SetGlobalVector
ﬁﬁ "
(
ﬁﬁ" #
Uniforms
ﬁﬁ# +
.
ﬁﬁ+ ,
_Axis
ﬁﬁ, 1
,
ﬁﬁ1 2
new
ﬁﬁ3 6
Vector4
ﬁﬁ7 >
(
ﬁﬁ> ?
$num
ﬁﬁ? C
,
ﬁﬁC D
$num
ﬁﬁE I
,
ﬁﬁI J
$num
ﬁﬁK O
,
ﬁﬁO P
$num
ﬁﬁQ U
)
ﬁﬁU V
)
ﬁﬁV W
;
ﬁﬁW X
inputTex
‡‡ 
=
‡‡ "
m_ReflectionTextures
‡‡ /
[
‡‡/ 0
i
‡‡0 1
]
‡‡1 2
;
‡‡2 3
cb
·· 
.
·· 
Blit
·· 
(
·· 
kBlurTexture
·· $
,
··$ %
inputTex
··& .
,
··. /
material
··0 8
,
··8 9
(
··: ;
int
··; >
)
··> ?
	PassIndex
··? H
.
··H I
Blur
··I M
)
··M N
;
··N O
cb
‚‚ 
.
‚‚  
ReleaseTemporaryRT
‚‚ %
(
‚‚% &
kBlurTexture
‚‚& 2
)
‚‚2 3
;
‚‚3 4
}
„„ 
cb
ÂÂ 
.
ÂÂ 
Blit
ÂÂ 
(
ÂÂ "
m_ReflectionTextures
ÂÂ (
[
ÂÂ( )
$num
ÂÂ) *
]
ÂÂ* +
,
ÂÂ+ ,%
kFinalReflectionTexture
ÂÂ- D
,
ÂÂD E
material
ÂÂF N
,
ÂÂN O
(
ÂÂP Q
int
ÂÂQ T
)
ÂÂT U
	PassIndex
ÂÂU ^
.
ÂÂ^ _
CompositeSSR
ÂÂ_ k
)
ÂÂk l
;
ÂÂl m
cb
ÁÁ 
.
ÁÁ 
GetTemporaryRT
ÁÁ 
(
ÁÁ 
kTempTexture
ÁÁ *
,
ÁÁ* +
camera
ÁÁ, 2
.
ÁÁ2 3

pixelWidth
ÁÁ3 =
,
ÁÁ= >
camera
ÁÁ? E
.
ÁÁE F
pixelHeight
ÁÁF Q
,
ÁÁQ R
$num
ÁÁS T
,
ÁÁT U

FilterMode
ÁÁV `
.
ÁÁ` a
Bilinear
ÁÁa i
,
ÁÁi j 
intermediateFormat
ÁÁk }
)
ÁÁ} ~
;
ÁÁ~ 
cb
ÈÈ 
.
ÈÈ 
Blit
ÈÈ 
(
ÈÈ &
BuiltinRenderTextureType
ÈÈ ,
.
ÈÈ, -
CameraTarget
ÈÈ- 9
,
ÈÈ9 :
kTempTexture
ÈÈ; G
,
ÈÈG H
material
ÈÈI Q
,
ÈÈQ R
(
ÈÈS T
int
ÈÈT W
)
ÈÈW X
	PassIndex
ÈÈX a
.
ÈÈa b
CompositeFinal
ÈÈb p
)
ÈÈp q
;
ÈÈq r
cb
ÍÍ 
.
ÍÍ 
Blit
ÍÍ 
(
ÍÍ 
kTempTexture
ÍÍ  
,
ÍÍ  !&
BuiltinRenderTextureType
ÍÍ" :
.
ÍÍ: ;
CameraTarget
ÍÍ; G
)
ÍÍG H
;
ÍÍH I
cb
ÏÏ 
.
ÏÏ  
ReleaseTemporaryRT
ÏÏ !
(
ÏÏ! "
kTempTexture
ÏÏ" .
)
ÏÏ. /
;
ÏÏ/ 0
}
ÌÌ 	
}
ÓÓ 
}ÔÔ À¿
•D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\TaaComponent.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class 
TaaComponent $
:% &0
$PostProcessingComponentRenderTexture' K
<K L
AntialiasingModelL ]
>] ^
{ 
static 
class 
Uniforms 
{ 	
internal		 
static		 
int		 
_Jitter		  '
=		6 7
Shader		8 >
.		> ?
PropertyToID		? K
(		K L
$str		L U
)		U V
;		V W
internal

 
static

 
int

 
_SharpenParameters

  2
=

6 7
Shader

8 >
.

> ?
PropertyToID

? K
(

K L
$str

L `
)

` a
;

a b
internal 
static 
int !
_FinalBlendParameters  5
=6 7
Shader8 >
.> ?
PropertyToID? K
(K L
$strL c
)c d
;d e
internal 
static 
int 
_HistoryTex  +
=6 7
Shader8 >
.> ?
PropertyToID? K
(K L
$strL Y
)Y Z
;Z [
internal 
static 
int 
_MainTex  (
=6 7
Shader8 >
.> ?
PropertyToID? K
(K L
$strL V
)V W
;W X
} 	
const 
string 
k_ShaderString #
=$ %
$str& M
;M N
const 
int 
k_SampleCount 
=  !
$num" #
;# $
readonly 
RenderBuffer 
[ 
] 
m_MRT  %
=& '
new( +
RenderBuffer, 8
[8 9
$num9 :
]: ;
;; <
int 
m_SampleIndex 
= 
$num 
; 
bool 
m_ResetHistory 
= 
true "
;" #
RenderTexture 
m_HistoryTexture &
;& '
public 
override 
bool 
active #
{ 	
get 
{ 
return 
model 
. 
enabled $
&& 
model 
.  
settings  (
.( )
method) /
==0 2
AntialiasingModel3 D
.D E
MethodE K
.K L
TaaL O
&&   

SystemInfo   $
.  $ %!
supportsMotionVectors  % :
&&!! 

SystemInfo!! $
.!!$ %&
supportedRenderTargetCount!!% ?
>=!!@ B
$num!!C D
&&"" 
!"" 
context"" "
.""" #
interrupted""# .
;"". /
}## 
}$$ 	
public&& 
override&& 
DepthTextureMode&& (
GetCameraFlags&&) 7
(&&7 8
)&&8 9
{'' 	
return(( 
DepthTextureMode(( #
.((# $
Depth(($ )
|((* +
DepthTextureMode((, <
.((< =
MotionVectors((= J
;((J K
})) 	
public++ 
Vector2++ 
jitterVector++ #
{++$ %
get++& )
;++) *
private+++ 2
set++3 6
;++6 7
}++8 9
public-- 
void-- 
ResetHistory--  
(--  !
)--! "
{.. 	
m_ResetHistory// 
=// 
true// !
;//! "
}00 	
public22 
void22 
SetProjectionMatrix22 '
(22' (
Func22( ,
<22, -
Vector222- 4
,224 5
	Matrix4x4226 ?
>22? @
jitteredFunc22A M
)22M N
{33 	
var44 
settings44 
=44 
model44  
.44  !
settings44! )
.44) *
taaSettings44* 5
;445 6
var66 
jitter66 
=66  
GenerateRandomOffset66 -
(66- .
)66. /
;66/ 0
jitter77 
*=77 
settings77 
.77 
jitterSpread77 +
;77+ ,
context99 
.99 
camera99 
.99 '
nonJitteredProjectionMatrix99 6
=997 8
context999 @
.99@ A
camera99A G
.99G H
projectionMatrix99H X
;99X Y
if;; 
(;; 
jitteredFunc;; 
!=;; 
null;;  $
);;$ %
{<< 
context== 
.== 
camera== 
.== 
projectionMatrix== /
===0 1
jitteredFunc==2 >
(==> ?
jitter==? E
)==E F
;==F G
}>> 
else?? 
{@@ 
contextAA 
.AA 
cameraAA 
.AA 
projectionMatrixAA /
=AA0 1
contextAA2 9
.AA9 :
cameraAA: @
.AA@ A
orthographicAAA M
?BB +
GetOrthographicProjectionMatrixBB 5
(BB5 6
jitterBB6 <
)BB< =
:CC *
GetPerspectiveProjectionMatrixCC 4
(CC4 5
jitterCC5 ;
)CC; <
;CC< =
}DD 
contextGG 
.GG 
cameraGG 
.GG >
2useJitteredProjectionMatrixForTransparentRenderingGG M
=GGN O
falseGGP U
;GGU V
jitterJJ 
.JJ 
xJJ 
/=JJ 
contextJJ 
.JJ  
widthJJ  %
;JJ% &
jitterKK 
.KK 
yKK 
/=KK 
contextKK 
.KK  
heightKK  &
;KK& '
varMM 
materialMM 
=MM 
contextMM "
.MM" #
materialFactoryMM# 2
.MM2 3
GetMM3 6
(MM6 7
k_ShaderStringMM7 E
)MME F
;MMF G
materialNN 
.NN 
	SetVectorNN 
(NN 
UniformsNN '
.NN' (
_JitterNN( /
,NN/ 0
jitterNN1 7
)NN7 8
;NN8 9
jitterVectorPP 
=PP 
jitterPP !
;PP! "
}QQ 	
publicSS 
voidSS 
RenderSS 
(SS 
RenderTextureSS (
sourceSS) /
,SS/ 0
RenderTextureSS1 >
destinationSS? J
)SSJ K
{TT 	
varUU 
materialUU 
=UU 
contextUU "
.UU" #
materialFactoryUU# 2
.UU2 3
GetUU3 6
(UU6 7
k_ShaderStringUU7 E
)UUE F
;UUF G
materialVV 
.VV 
shaderKeywordsVV #
=VV$ %
nullVV& *
;VV* +
varXX 
settingsXX 
=XX 
modelXX  
.XX  !
settingsXX! )
.XX) *
taaSettingsXX* 5
;XX5 6
ifZZ 
(ZZ 
m_ResetHistoryZZ 
||ZZ !
m_HistoryTextureZZ" 2
==ZZ3 5
nullZZ6 :
||ZZ; =
m_HistoryTextureZZ> N
.ZZN O
widthZZO T
!=ZZU W
sourceZZX ^
.ZZ^ _
widthZZ_ d
||ZZe g
m_HistoryTextureZZh x
.ZZx y
heightZZy 
!=
ZZÄ Ç
source
ZZÉ â
.
ZZâ ä
height
ZZä ê
)
ZZê ë
{[[ 
if\\ 
(\\ 
m_HistoryTexture\\ $
)\\$ %
RenderTexture]] !
.]]! "
ReleaseTemporary]]" 2
(]]2 3
m_HistoryTexture]]3 C
)]]C D
;]]D E
m_HistoryTexture__  
=__! "
RenderTexture__# 0
.__0 1
GetTemporary__1 =
(__= >
source__> D
.__D E
width__E J
,__J K
source__L R
.__R S
height__S Y
,__Y Z
$num__[ \
,__\ ]
source__^ d
.__d e
format__e k
)__k l
;__l m
m_HistoryTexture``  
.``  !
name``! %
=``& '
$str``( 5
;``5 6
Graphicsbb 
.bb 
Blitbb 
(bb 
sourcebb $
,bb$ %
m_HistoryTexturebb& 6
,bb6 7
materialbb8 @
,bb@ A
$numbbB C
)bbC D
;bbD E
}cc 
constee 
floatee  
kMotionAmplificationee ,
=ee- .
$numee/ 3
*ee4 5
$numee6 9
;ee9 :
materialff 
.ff 
	SetVectorff 
(ff 
Uniformsff '
.ff' (
_SharpenParametersff( :
,ff: ;
newff< ?
Vector4ff@ G
(ffG H
settingsffH P
.ffP Q
sharpenffQ X
,ffX Y
$numffZ \
,ff\ ]
$numff^ `
,ff` a
$numffb d
)ffd e
)ffe f
;fff g
materialgg 
.gg 
	SetVectorgg 
(gg 
Uniformsgg '
.gg' (!
_FinalBlendParametersgg( =
,gg= >
newgg? B
Vector4ggC J
(ggJ K
settingsggK S
.ggS T
stationaryBlendingggT f
,ggf g
settingsggh p
.ggp q
motionBlendingggq 
,	gg Ä"
kMotionAmplification
ggÅ ï
,
ggï ñ
$num
ggó ô
)
ggô ö
)
ggö õ
;
ggõ ú
materialhh 
.hh 

SetTexturehh 
(hh  
Uniformshh  (
.hh( )
_MainTexhh) 1
,hh1 2
sourcehh3 9
)hh9 :
;hh: ;
materialii 
.ii 

SetTextureii 
(ii  
Uniformsii  (
.ii( )
_HistoryTexii) 4
,ii4 5
m_HistoryTextureii6 F
)iiF G
;iiG H
varkk 
tempHistorykk 
=kk 
RenderTexturekk +
.kk+ ,
GetTemporarykk, 8
(kk8 9
sourcekk9 ?
.kk? @
widthkk@ E
,kkE F
sourcekkG M
.kkM N
heightkkN T
,kkT U
$numkkV W
,kkW X
sourcekkY _
.kk_ `
formatkk` f
)kkf g
;kkg h
tempHistoryll 
.ll 
namell 
=ll 
$strll ,
;ll, -
m_MRTnn 
[nn 
$numnn 
]nn 
=nn 
destinationnn "
.nn" #
colorBuffernn# .
;nn. /
m_MRToo 
[oo 
$numoo 
]oo 
=oo 
tempHistoryoo "
.oo" #
colorBufferoo# .
;oo. /
Graphicsqq 
.qq 
SetRenderTargetqq $
(qq$ %
m_MRTqq% *
,qq* +
sourceqq, 2
.qq2 3
depthBufferqq3 >
)qq> ?
;qq? @
GraphicsUtilsrr 
.rr 
Blitrr 
(rr 
materialrr '
,rr' (
contextrr) 0
.rr0 1
camerarr1 7
.rr7 8
orthographicrr8 D
?rrE F
$numrrG H
:rrI J
$numrrK L
)rrL M
;rrM N
RenderTexturett 
.tt 
ReleaseTemporarytt *
(tt* +
m_HistoryTexturett+ ;
)tt; <
;tt< =
m_HistoryTextureuu 
=uu 
tempHistoryuu *
;uu* +
m_ResetHistoryww 
=ww 
falseww "
;ww" #
}xx 	
floatzz 
GetHaltonValuezz 
(zz 
intzz  
indexzz! &
,zz& '
intzz( +
radixzz, 1
)zz1 2
{{{ 	
float|| 
result|| 
=|| 
$num|| 
;|| 
float}} 
fraction}} 
=}} 
$num}} 
/}}  !
(}}" #
float}}# (
)}}( )
radix}}) .
;}}. /
while 
( 
index 
> 
$num 
) 
{
ÄÄ 
result
ÅÅ 
+=
ÅÅ 
(
ÅÅ 
float
ÅÅ  
)
ÅÅ  !
(
ÅÅ! "
index
ÅÅ" '
%
ÅÅ( )
radix
ÅÅ* /
)
ÅÅ/ 0
*
ÅÅ1 2
fraction
ÅÅ3 ;
;
ÅÅ; <
index
ÉÉ 
/=
ÉÉ 
radix
ÉÉ 
;
ÉÉ 
fraction
ÑÑ 
/=
ÑÑ 
(
ÑÑ 
float
ÑÑ "
)
ÑÑ" #
radix
ÑÑ# (
;
ÑÑ( )
}
ÖÖ 
return
áá 
result
áá 
;
áá 
}
àà 	
Vector2
ää "
GenerateRandomOffset
ää $
(
ää$ %
)
ää% &
{
ãã 	
var
åå 
offset
åå 
=
åå 
new
åå 
Vector2
åå $
(
åå$ %
GetHaltonValue
çç "
(
çç" #
m_SampleIndex
çç# 0
&
çç1 2
$num
çç3 7
,
çç7 8
$num
çç9 :
)
çç: ;
,
çç; <
GetHaltonValue
éé "
(
éé" #
m_SampleIndex
éé# 0
&
éé1 2
$num
éé3 7
,
éé7 8
$num
éé9 :
)
éé: ;
)
éé; <
;
éé< =
if
êê 
(
êê 
++
êê 
m_SampleIndex
êê 
>=
êê  "
k_SampleCount
êê# 0
)
êê0 1
m_SampleIndex
ëë 
=
ëë 
$num
ëë  !
;
ëë! "
return
ìì 
offset
ìì 
;
ìì 
}
îî 	
	Matrix4x4
òò ,
GetPerspectiveProjectionMatrix
òò 0
(
òò0 1
Vector2
òò1 8
offset
òò9 ?
)
òò? @
{
ôô 	
float
öö 
vertical
öö 
=
öö 
Mathf
öö "
.
öö" #
Tan
öö# &
(
öö& '
$num
öö' +
*
öö, -
Mathf
öö. 3
.
öö3 4
Deg2Rad
öö4 ;
*
öö< =
context
öö> E
.
ööE F
camera
ööF L
.
ööL M
fieldOfView
ööM X
)
ööX Y
;
ööY Z
float
õõ 

horizontal
õõ 
=
õõ 
vertical
õõ '
*
õõ( )
context
õõ* 1
.
õõ1 2
camera
õõ2 8
.
õõ8 9
aspect
õõ9 ?
;
õõ? @
offset
ùù 
.
ùù 
x
ùù 
*=
ùù 

horizontal
ùù "
/
ùù# $
(
ùù% &
$num
ùù& *
*
ùù+ ,
context
ùù- 4
.
ùù4 5
width
ùù5 :
)
ùù: ;
;
ùù; <
offset
ûû 
.
ûû 
y
ûû 
*=
ûû 
vertical
ûû  
/
ûû! "
(
ûû# $
$num
ûû$ (
*
ûû) *
context
ûû+ 2
.
ûû2 3
height
ûû3 9
)
ûû9 :
;
ûû: ;
float
†† 
left
†† 
=
†† 
(
†† 
offset
††  
.
††  !
x
††! "
-
††# $

horizontal
††% /
)
††/ 0
*
††1 2
context
††3 :
.
††: ;
camera
††; A
.
††A B
nearClipPlane
††B O
;
††O P
float
°° 
right
°° 
=
°° 
(
°° 
offset
°° !
.
°°! "
x
°°" #
+
°°$ %

horizontal
°°& 0
)
°°0 1
*
°°2 3
context
°°4 ;
.
°°; <
camera
°°< B
.
°°B C
nearClipPlane
°°C P
;
°°P Q
float
¢¢ 
top
¢¢ 
=
¢¢ 
(
¢¢ 
offset
¢¢ 
.
¢¢  
y
¢¢  !
+
¢¢" #
vertical
¢¢$ ,
)
¢¢, -
*
¢¢. /
context
¢¢0 7
.
¢¢7 8
camera
¢¢8 >
.
¢¢> ?
nearClipPlane
¢¢? L
;
¢¢L M
float
££ 
bottom
££ 
=
££ 
(
££ 
offset
££ "
.
££" #
y
££# $
-
££% &
vertical
££' /
)
££/ 0
*
££1 2
context
££3 :
.
££: ;
camera
££; A
.
££A B
nearClipPlane
££B O
;
££O P
var
•• 
matrix
•• 
=
•• 
new
•• 
	Matrix4x4
•• &
(
••& '
)
••' (
;
••( )
matrix
ßß 
[
ßß 
$num
ßß 
,
ßß 
$num
ßß 
]
ßß 
=
ßß 
(
ßß 
$num
ßß 
*
ßß  
context
ßß! (
.
ßß( )
camera
ßß) /
.
ßß/ 0
nearClipPlane
ßß0 =
)
ßß= >
/
ßß? @
(
ßßA B
right
ßßB G
-
ßßH I
left
ßßJ N
)
ßßN O
;
ßßO P
matrix
®® 
[
®® 
$num
®® 
,
®® 
$num
®® 
]
®® 
=
®® 
$num
®® 
;
®® 
matrix
©© 
[
©© 
$num
©© 
,
©© 
$num
©© 
]
©© 
=
©© 
(
©© 
right
©© !
+
©©" #
left
©©$ (
)
©©( )
/
©©* +
(
©©, -
right
©©- 2
-
©©3 4
left
©©5 9
)
©©9 :
;
©©: ;
matrix
™™ 
[
™™ 
$num
™™ 
,
™™ 
$num
™™ 
]
™™ 
=
™™ 
$num
™™ 
;
™™ 
matrix
¨¨ 
[
¨¨ 
$num
¨¨ 
,
¨¨ 
$num
¨¨ 
]
¨¨ 
=
¨¨ 
$num
¨¨ 
;
¨¨ 
matrix
≠≠ 
[
≠≠ 
$num
≠≠ 
,
≠≠ 
$num
≠≠ 
]
≠≠ 
=
≠≠ 
(
≠≠ 
$num
≠≠ 
*
≠≠  
context
≠≠! (
.
≠≠( )
camera
≠≠) /
.
≠≠/ 0
nearClipPlane
≠≠0 =
)
≠≠= >
/
≠≠? @
(
≠≠A B
top
≠≠B E
-
≠≠F G
bottom
≠≠H N
)
≠≠N O
;
≠≠O P
matrix
ÆÆ 
[
ÆÆ 
$num
ÆÆ 
,
ÆÆ 
$num
ÆÆ 
]
ÆÆ 
=
ÆÆ 
(
ÆÆ 
top
ÆÆ 
+
ÆÆ  !
bottom
ÆÆ" (
)
ÆÆ( )
/
ÆÆ* +
(
ÆÆ, -
top
ÆÆ- 0
-
ÆÆ1 2
bottom
ÆÆ3 9
)
ÆÆ9 :
;
ÆÆ: ;
matrix
ØØ 
[
ØØ 
$num
ØØ 
,
ØØ 
$num
ØØ 
]
ØØ 
=
ØØ 
$num
ØØ 
;
ØØ 
matrix
±± 
[
±± 
$num
±± 
,
±± 
$num
±± 
]
±± 
=
±± 
$num
±± 
;
±± 
matrix
≤≤ 
[
≤≤ 
$num
≤≤ 
,
≤≤ 
$num
≤≤ 
]
≤≤ 
=
≤≤ 
$num
≤≤ 
;
≤≤ 
matrix
≥≥ 
[
≥≥ 
$num
≥≥ 
,
≥≥ 
$num
≥≥ 
]
≥≥ 
=
≥≥ 
-
≥≥ 
(
≥≥ 
context
≥≥ $
.
≥≥$ %
camera
≥≥% +
.
≥≥+ ,
farClipPlane
≥≥, 8
+
≥≥9 :
context
≥≥; B
.
≥≥B C
camera
≥≥C I
.
≥≥I J
nearClipPlane
≥≥J W
)
≥≥W X
/
≥≥Y Z
(
≥≥[ \
context
≥≥\ c
.
≥≥c d
camera
≥≥d j
.
≥≥j k
farClipPlane
≥≥k w
-
≥≥x y
context≥≥z Å
.≥≥Å Ç
camera≥≥Ç à
.≥≥à â
nearClipPlane≥≥â ñ
)≥≥ñ ó
;≥≥ó ò
matrix
¥¥ 
[
¥¥ 
$num
¥¥ 
,
¥¥ 
$num
¥¥ 
]
¥¥ 
=
¥¥ 
-
¥¥ 
(
¥¥ 
$num
¥¥ 
*
¥¥  !
context
¥¥" )
.
¥¥) *
camera
¥¥* 0
.
¥¥0 1
farClipPlane
¥¥1 =
*
¥¥> ?
context
¥¥@ G
.
¥¥G H
camera
¥¥H N
.
¥¥N O
nearClipPlane
¥¥O \
)
¥¥\ ]
/
¥¥^ _
(
¥¥` a
context
¥¥a h
.
¥¥h i
camera
¥¥i o
.
¥¥o p
farClipPlane
¥¥p |
-
¥¥} ~
context¥¥ Ü
.¥¥Ü á
camera¥¥á ç
.¥¥ç é
nearClipPlane¥¥é õ
)¥¥õ ú
;¥¥ú ù
matrix
∂∂ 
[
∂∂ 
$num
∂∂ 
,
∂∂ 
$num
∂∂ 
]
∂∂ 
=
∂∂ 
$num
∂∂ 
;
∂∂ 
matrix
∑∑ 
[
∑∑ 
$num
∑∑ 
,
∑∑ 
$num
∑∑ 
]
∑∑ 
=
∑∑ 
$num
∑∑ 
;
∑∑ 
matrix
∏∏ 
[
∏∏ 
$num
∏∏ 
,
∏∏ 
$num
∏∏ 
]
∏∏ 
=
∏∏ 
-
∏∏ 
$num
∏∏ 
;
∏∏ 
matrix
ππ 
[
ππ 
$num
ππ 
,
ππ 
$num
ππ 
]
ππ 
=
ππ 
$num
ππ 
;
ππ 
return
ªª 
matrix
ªª 
;
ªª 
}
ºº 	
	Matrix4x4
ææ -
GetOrthographicProjectionMatrix
ææ 1
(
ææ1 2
Vector2
ææ2 9
offset
ææ: @
)
ææ@ A
{
øø 	
float
¿¿ 
vertical
¿¿ 
=
¿¿ 
context
¿¿ $
.
¿¿$ %
camera
¿¿% +
.
¿¿+ ,
orthographicSize
¿¿, <
;
¿¿< =
float
¡¡ 

horizontal
¡¡ 
=
¡¡ 
vertical
¡¡ '
*
¡¡( )
context
¡¡* 1
.
¡¡1 2
camera
¡¡2 8
.
¡¡8 9
aspect
¡¡9 ?
;
¡¡? @
offset
√√ 
.
√√ 
x
√√ 
*=
√√ 

horizontal
√√ "
/
√√# $
(
√√% &
$num
√√& *
*
√√+ ,
context
√√- 4
.
√√4 5
width
√√5 :
)
√√: ;
;
√√; <
offset
ƒƒ 
.
ƒƒ 
y
ƒƒ 
*=
ƒƒ 
vertical
ƒƒ  
/
ƒƒ! "
(
ƒƒ# $
$num
ƒƒ$ (
*
ƒƒ) *
context
ƒƒ+ 2
.
ƒƒ2 3
height
ƒƒ3 9
)
ƒƒ9 :
;
ƒƒ: ;
float
∆∆ 
left
∆∆ 
=
∆∆ 
offset
∆∆ 
.
∆∆  
x
∆∆  !
-
∆∆" #

horizontal
∆∆$ .
;
∆∆. /
float
«« 
right
«« 
=
«« 
offset
««  
.
««  !
x
««! "
+
««# $

horizontal
««% /
;
««/ 0
float
»» 
top
»» 
=
»» 
offset
»» 
.
»» 
y
»»  
+
»»! "
vertical
»»# +
;
»»+ ,
float
…… 
bottom
…… 
=
…… 
offset
…… !
.
……! "
y
……" #
-
……$ %
vertical
……& .
;
……. /
return
ÀÀ 
	Matrix4x4
ÀÀ 
.
ÀÀ 
Ortho
ÀÀ "
(
ÀÀ" #
left
ÀÀ# '
,
ÀÀ' (
right
ÀÀ) .
,
ÀÀ. /
bottom
ÀÀ0 6
,
ÀÀ6 7
top
ÀÀ8 ;
,
ÀÀ; <
context
ÀÀ= D
.
ÀÀD E
camera
ÀÀE K
.
ÀÀK L
nearClipPlane
ÀÀL Y
,
ÀÀY Z
context
ÀÀ[ b
.
ÀÀb c
camera
ÀÀc i
.
ÀÀi j
farClipPlane
ÀÀj v
)
ÀÀv w
;
ÀÀw x
}
ÃÃ 	
public
ŒŒ 
override
ŒŒ 
void
ŒŒ 
	OnDisable
ŒŒ &
(
ŒŒ& '
)
ŒŒ' (
{
œœ 	
if
–– 
(
–– 
m_HistoryTexture
––  
!=
––! #
null
––$ (
)
––( )
RenderTexture
—— 
.
—— 
ReleaseTemporary
—— .
(
——. /
m_HistoryTexture
——/ ?
)
——? @
;
——@ A
m_HistoryTexture
”” 
=
”” 
null
”” #
;
””# $
m_SampleIndex
‘‘ 
=
‘‘ 
$num
‘‘ 
;
‘‘ 
ResetHistory
’’ 
(
’’ 
)
’’ 
;
’’ 
}
÷÷ 	
}
◊◊ 
}ÿÿ œ#
©D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\UserLutComponent.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class 
UserLutComponent (
:) *0
$PostProcessingComponentRenderTexture+ O
<O P
UserLutModelP \
>\ ]
{ 
static 
class 
Uniforms 
{ 	
internal 
static 
readonly $
int% (
_UserLut) 1
=9 :
Shader; A
.A B
PropertyToIDB N
(N O
$strO Y
)Y Z
;Z [
internal 
static 
readonly $
int% (
_UserLut_Params) 8
=9 :
Shader; A
.A B
PropertyToIDB N
(N O
$strO `
)` a
;a b
}		 	
public 
override 
bool 
active #
{ 	
get 
{ 
var 
settings 
= 
model $
.$ %
settings% -
;- .
return 
model 
. 
enabled $
&& 
settings "
." #
lut# &
!=' )
null* .
&& 
settings "
." #
contribution# /
>0 1
$num2 4
&& 
settings "
." #
lut# &
.& '
height' -
==. 0
(1 2
int2 5
)5 6
Mathf6 ;
.; <
Sqrt< @
(@ A
settingsA I
.I J
lutJ M
.M N
widthN S
)S T
&& 
! 
context "
." #
interrupted# .
;. /
} 
} 	
public 
override 
void 
Prepare $
($ %
Material% -
uberMaterial. :
): ;
{ 	
var 
settings 
= 
model  
.  !
settings! )
;) *
uberMaterial 
. 
EnableKeyword &
(& '
$str' 1
)1 2
;2 3
uberMaterial 
. 

SetTexture #
(# $
Uniforms$ ,
., -
_UserLut- 5
,5 6
settings7 ?
.? @
lut@ C
)C D
;D E
uberMaterial 
. 
	SetVector "
(" #
Uniforms# +
.+ ,
_UserLut_Params, ;
,; <
new= @
Vector4A H
(H I
$numI K
/L M
settingsN V
.V W
lutW Z
.Z [
width[ `
,` a
$numb d
/e f
settingsg o
.o p
lutp s
.s t
heightt z
,z {
settings	| Ñ
.
Ñ Ö
lut
Ö à
.
à â
height
â è
-
ê ë
$num
í î
,
î ï
settings
ñ û
.
û ü
contribution
ü ´
)
´ ¨
)
¨ ≠
;
≠ Æ
} 	
public   
void   
OnGUI   
(   
)   
{!! 	
var"" 
settings"" 
="" 
model""  
.""  !
settings""! )
;"") *
var## 
rect## 
=## 
new## 
Rect## 
(##  
context##  '
.##' (
viewport##( 0
.##0 1
x##1 2
*##3 4
Screen##5 ;
.##; <
width##< A
+##B C
$num##D F
,##F G
$num##H J
,##J K
settings##L T
.##T U
lut##U X
.##X Y
width##Y ^
,##^ _
settings##` h
.##h i
lut##i l
.##l m
height##m s
)##s t
;##t u
GUI$$ 
.$$ 
DrawTexture$$ 
($$ 
rect$$  
,$$  !
settings$$" *
.$$* +
lut$$+ .
)$$. /
;$$/ 0
}%% 	
}&& 
}'' é+
™D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\VignetteComponent.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class 
VignetteComponent )
:* +0
$PostProcessingComponentRenderTexture, P
<P Q
VignetteModelQ ^
>^ _
{ 
static 
class 
Uniforms 
{ 	
internal 
static 
readonly $
int% (
_Vignette_Color) 8
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR c
)c d
;d e
internal 
static 
readonly $
int% (
_Vignette_Center) 9
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR d
)d e
;e f
internal		 
static		 
readonly		 $
int		% (
_Vignette_Settings		) ;
=		< =
Shader		> D
.		D E
PropertyToID		E Q
(		Q R
$str		R f
)		f g
;		g h
internal

 
static

 
readonly

 $
int

% (
_Vignette_Mask

) 7
=

< =
Shader

> D
.

D E
PropertyToID

E Q
(

Q R
$str

R b
)

b c
;

c d
internal 
static 
readonly $
int% (
_Vignette_Opacity) :
=< =
Shader> D
.D E
PropertyToIDE Q
(Q R
$strR e
)e f
;f g
} 	
public 
override 
bool 
active #
{ 	
get 
{ 
return 
model 
. 
enabled $
&& 
! 
context "
." #
interrupted# .
;. /
} 
} 	
public 
override 
void 
Prepare $
($ %
Material% -
uberMaterial. :
): ;
{ 	
var 
settings 
= 
model  
.  !
settings! )
;) *
uberMaterial 
. 
SetColor !
(! "
Uniforms" *
.* +
_Vignette_Color+ :
,: ;
settings< D
.D E
colorE J
)J K
;K L
if 
( 
settings 
. 
mode 
==  
VignetteModel! .
.. /
Mode/ 3
.3 4
Classic4 ;
); <
{ 
uberMaterial 
. 
	SetVector &
(& '
Uniforms' /
./ 0
_Vignette_Center0 @
,@ A
settingsB J
.J K
centerK Q
)Q R
;R S
uberMaterial 
. 
EnableKeyword *
(* +
$str+ =
)= >
;> ?
float   
	roundness   
=    !
(  " #
$num  # %
-  & '
settings  ( 0
.  0 1
	roundness  1 :
)  : ;
*  < =
$num  > @
+  A B
settings  C K
.  K L
	roundness  L U
;  U V
uberMaterial!! 
.!! 
	SetVector!! &
(!!& '
Uniforms!!' /
.!!/ 0
_Vignette_Settings!!0 B
,!!B C
new!!D G
Vector4!!H O
(!!O P
settings!!P X
.!!X Y
	intensity!!Y b
*!!c d
$num!!e g
,!!g h
settings!!i q
.!!q r

smoothness!!r |
*!!} ~
$num	!! Å
,
!!Å Ç
	roundness
!!É å
,
!!å ç
settings
!!é ñ
.
!!ñ ó
rounded
!!ó û
?
!!ü †
$num
!!° £
:
!!§ •
$num
!!¶ ®
)
!!® ©
)
!!© ™
;
!!™ ´
}"" 
else## 
if## 
(## 
settings## 
.## 
mode## "
==### %
VignetteModel##& 3
.##3 4
Mode##4 8
.##8 9
Masked##9 ?
)##? @
{$$ 
if%% 
(%% 
settings%% 
.%% 
mask%% !
!=%%" $
null%%% )
&&%%* ,
settings%%- 5
.%%5 6
opacity%%6 =
>%%> ?
$num%%@ B
)%%B C
{&& 
uberMaterial''  
.''  !
EnableKeyword''! .
(''. /
$str''/ @
)''@ A
;''A B
uberMaterial((  
.((  !

SetTexture((! +
(((+ ,
Uniforms((, 4
.((4 5
_Vignette_Mask((5 C
,((C D
settings((E M
.((M N
mask((N R
)((R S
;((S T
uberMaterial))  
.))  !
SetFloat))! )
())) *
Uniforms))* 2
.))2 3
_Vignette_Opacity))3 D
,))D E
settings))F N
.))N O
opacity))O V
)))V W
;))W X
}** 
}++ 
},, 	
}-- 
}.. ÷
™D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\AmbientOcclusionModel.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
[ 
Serializable 
] 
public 

class !
AmbientOcclusionModel &
:' (
PostProcessingModel) <
{ 
public 
enum 
SampleCount 
{		 	
Lowest

 
=

 
$num

 
,

 
Low 
= 
$num 
, 
Medium 
= 
$num 
, 
High 
= 
$num 
} 	
[ 	
Serializable	 
] 
public 
struct 
Settings 
{ 	
[ 
Range 
( 
$num 
, 
$num 
) 
, 
Tooltip !
(! "
$str" N
)N O
]O P
public 
float 
	intensity "
;" #
[ 
Min 
( 
$num 
) 
, 
Tooltip  
(  !
$str! c
)c d
]d e
public 
float 
radius 
;  
[ 
Tooltip 
( 
$str V
)V W
]W X
public 
SampleCount 
sampleCount *
;* +
[ 
Tooltip 
( 
$str q
)q r
]r s
public 
bool 
downsampling $
;$ %
[ 
Tooltip 
( 
$str x
)x y
]y z
public   
bool   %
forceForwardCompatibility   1
;  1 2
["" 
Tooltip"" 
("" 
$str	"" ∂
)
""∂ ∑
]
""∑ ∏
public## 
bool## 
ambientOnly## #
;### $
[%% 
Tooltip%% 
(%% 
$str	%% µ
)
%%µ ∂
]
%%∂ ∑
public&& 
bool&& 
highPrecision&& %
;&&% &
public(( 
static(( 
Settings(( "
defaultSettings((# 2
{)) 
get** 
{++ 
return,, 
new,, 
Settings,, '
{-- 
	intensity.. !
=.." #
$num..$ &
,..& '
radius// 
=//  
$num//! %
,//% &
sampleCount00 #
=00$ %
SampleCount00& 1
.001 2
Medium002 8
,008 9
downsampling11 $
=11% &
true11' +
,11+ ,%
forceForwardCompatibility22 1
=222 3
false224 9
,229 :
ambientOnly33 #
=33$ %
false33& +
,33+ ,
highPrecision44 %
=44& '
false44( -
}55 
;55 
}66 
}77 
}88 	
[:: 	
SerializeField::	 
]:: 
Settings;; 

m_Settings;; 
=;; 
Settings;; &
.;;& '
defaultSettings;;' 6
;;;6 7
public<< 
Settings<< 
settings<<  
{== 	
get>> 
{>> 
return>> 

m_Settings>> #
;>># $
}>>% &
set?? 
{?? 

m_Settings?? 
=?? 
value?? $
;??$ %
}??& '
}@@ 	
publicBB 
overrideBB 
voidBB 
ResetBB "
(BB" #
)BB# $
{CC 	

m_SettingsDD 
=DD 
SettingsDD !
.DD! "
defaultSettingsDD" 1
;DD1 2
}EE 	
}FF 
}GG Èa
¶D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\AntialiasingModel.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
[ 
Serializable 
] 
public 

class 
AntialiasingModel "
:# $
PostProcessingModel% 8
{ 
public 
enum 
Method 
{		 	
Fxaa

 
,

 
Taa 
} 	
public 
enum 

FxaaPreset 
{ 	
ExtremePerformance 
, 
Performance 
, 
Default 
, 
Quality 
, 
ExtremeQuality 
} 	
[ 	
Serializable	 
] 
public 
struct 
FxaaQualitySettings )
{ 	
[ 
Tooltip 
( 
$str n
)n o
]o p
[ 
Range 
( 
$num 
, 
$num 
) 
] 
public   
float   )
subpixelAliasingRemovalAmount   6
;  6 7
["" 
Tooltip"" 
("" 
$str"" o
)""o p
]""p q
[## 
Range## 
(## 
$num## 
,## 
$num## !
)##! "
]##" #
public$$ 
float$$ "
edgeDetectionThreshold$$ /
;$$/ 0
[&& 
Tooltip&& 
(&& 
$str&& v
)&&v w
]&&w x
['' 
Range'' 
('' 
$num'' 
,'' 
$num'' 
)'' 
]''  
public(( 
float(( $
minimumRequiredLuminance(( 1
;((1 2
public** 
static** 
FxaaQualitySettings** -
[**- .
]**. /
presets**0 7
=**8 9
{++ 
new-- 
FxaaQualitySettings-- '
{.. )
subpixelAliasingRemovalAmount// 1
=//2 3
$num//4 6
,//6 7"
edgeDetectionThreshold00 *
=00+ ,
$num00- 3
,003 4$
minimumRequiredLuminance11 ,
=11- .
$num11/ 6
}22 
,22 
new55 
FxaaQualitySettings55 '
{66 )
subpixelAliasingRemovalAmount77 1
=772 3
$num774 9
,779 :"
edgeDetectionThreshold88 *
=88+ ,
$num88- 2
,882 3$
minimumRequiredLuminance99 ,
=99- .
$num99/ 6
}:: 
,:: 
new== 
FxaaQualitySettings== '
{>> )
subpixelAliasingRemovalAmount?? 1
=??2 3
$num??4 9
,??9 :"
edgeDetectionThreshold@@ *
=@@+ ,
$num@@- 3
,@@3 4$
minimumRequiredLuminanceAA ,
=AA- .
$numAA/ 6
}BB 
,BB 
newEE 
FxaaQualitySettingsEE '
{FF )
subpixelAliasingRemovalAmountGG 1
=GG2 3
$numGG4 6
,GG6 7"
edgeDetectionThresholdHH *
=HH+ ,
$numHH- 3
,HH3 4$
minimumRequiredLuminanceII ,
=II- .
$numII/ 6
}JJ 
,JJ 
newMM 
FxaaQualitySettingsMM '
{NN )
subpixelAliasingRemovalAmountOO 1
=OO2 3
$numOO4 6
,OO6 7"
edgeDetectionThresholdPP *
=PP+ ,
$numPP- 3
,PP3 4$
minimumRequiredLuminanceQQ ,
=QQ- .
$numQQ/ 6
}RR 
}SS 
;SS 
}TT 	
[VV 	
SerializableVV	 
]VV 
publicWW 
structWW 
FxaaConsoleSettingsWW )
{XX 	
[YY 
TooltipYY 
(YY 
$strYY x
)YYx y
]YYy z
[ZZ 
RangeZZ 
(ZZ 
$numZZ 
,ZZ 
$numZZ 
)ZZ 
]ZZ  
public[[ 
float[[  
subpixelSpreadAmount[[ -
;[[- .
[]] 
Tooltip]] 
(]] 
$str]] {
)]]{ |
]]]| }
[^^ 
Range^^ 
(^^ 
$num^^ 
,^^ 
$num^^ 
)^^ 
]^^ 
public__ 
float__ 
edgeSharpnessAmount__ ,
;__, -
[aa 
Tooltipaa 
(aa 
$straa o
)aao p
]aap q
[bb 
Rangebb 
(bb 
$numbb 
,bb 
$numbb  
)bb  !
]bb! "
publiccc 
floatcc "
edgeDetectionThresholdcc /
;cc/ 0
[ee 
Tooltipee 
(ee 
$stree v
)eev w
]eew x
[ff 
Rangeff 
(ff 
$numff 
,ff 
$numff 
)ff  
]ff  !
publicgg 
floatgg $
minimumRequiredLuminancegg 1
;gg1 2
publicii 
staticii 
FxaaConsoleSettingsii -
[ii- .
]ii. /
presetsii0 7
=ii8 9
{jj 
newll 
FxaaConsoleSettingsll '
{mm  
subpixelSpreadAmountnn (
=nn) *
$numnn+ 0
,nn0 1
edgeSharpnessAmountoo '
=oo( )
$numoo* ,
,oo, -"
edgeDetectionThresholdpp *
=pp+ ,
$numpp- 2
,pp2 3$
minimumRequiredLuminanceqq ,
=qq- .
$numqq/ 4
}rr 
,rr 
newuu 
FxaaConsoleSettingsuu '
{vv  
subpixelSpreadAmountww (
=ww) *
$numww+ 0
,ww0 1
edgeSharpnessAmountxx '
=xx( )
$numxx* ,
,xx, -"
edgeDetectionThresholdyy *
=yy+ ,
$numyy- 3
,yy3 4$
minimumRequiredLuminancezz ,
=zz- .
$numzz/ 4
}{{ 
,{{ 
new~~ 
FxaaConsoleSettings~~ '
{ "
subpixelSpreadAmount
ÄÄ (
=
ÄÄ) *
$num
ÄÄ+ /
,
ÄÄ/ 0!
edgeSharpnessAmount
ÅÅ '
=
ÅÅ( )
$num
ÅÅ* ,
,
ÅÅ, -$
edgeDetectionThreshold
ÇÇ *
=
ÇÇ+ ,
$num
ÇÇ- 3
,
ÇÇ3 4&
minimumRequiredLuminance
ÉÉ ,
=
ÉÉ- .
$num
ÉÉ/ 4
}
ÑÑ 
,
ÑÑ 
new
áá !
FxaaConsoleSettings
áá '
{
àà "
subpixelSpreadAmount
ââ (
=
ââ) *
$num
ââ+ /
,
ââ/ 0!
edgeSharpnessAmount
ää '
=
ää( )
$num
ää* ,
,
ää, -$
edgeDetectionThreshold
ãã *
=
ãã+ ,
$num
ãã- 3
,
ãã3 4&
minimumRequiredLuminance
åå ,
=
åå- .
$num
åå/ 4
}
çç 
,
çç 
new
êê !
FxaaConsoleSettings
êê '
{
ëë "
subpixelSpreadAmount
íí (
=
íí) *
$num
íí+ /
,
íí/ 0!
edgeSharpnessAmount
ìì '
=
ìì( )
$num
ìì* ,
,
ìì, -$
edgeDetectionThreshold
îî *
=
îî+ ,
$num
îî- 3
,
îî3 4&
minimumRequiredLuminance
ïï ,
=
ïï- .
$num
ïï/ 4
}
ññ 
}
óó 
;
óó 
}
òò 	
[
öö 	
Serializable
öö	 
]
öö 
public
õõ 
struct
õõ 
FxaaSettings
õõ "
{
úú 	
public
ùù 

FxaaPreset
ùù 
preset
ùù $
;
ùù$ %
public
üü 
static
üü 
FxaaSettings
üü &
defaultSettings
üü' 6
{
†† 
get
°° 
{
¢¢ 
return
££ 
new
££ 
FxaaSettings
££ +
{
§§ 
preset
•• 
=
••  

FxaaPreset
••! +
.
••+ ,
Default
••, 3
}
¶¶ 
;
¶¶ 
}
ßß 
}
®® 
}
©© 	
[
≠≠ 	
Serializable
≠≠	 
]
≠≠ 
public
ÆÆ 
struct
ÆÆ 
TaaSettings
ÆÆ !
{
ØØ 	
[
∞∞ 
Tooltip
∞∞ 
(
∞∞ 
$str∞∞ –
)∞∞– —
]∞∞— “
[
±± 
Range
±± 
(
±± 
$num
±± 
,
±± 
$num
±± 
)
±± 
]
±± 
public
≤≤ 
float
≤≤ 
jitterSpread
≤≤ %
;
≤≤% &
[
¥¥ 
Tooltip
¥¥ 
(
¥¥ 
$str
¥¥ U
)
¥¥U V
]
¥¥V W
[
µµ 
Range
µµ 
(
µµ 
$num
µµ 
,
µµ 
$num
µµ 
)
µµ 
]
µµ 
public
∂∂ 
float
∂∂ 
sharpen
∂∂  
;
∂∂  !
[
∏∏ 
Tooltip
∏∏ 
(
∏∏ 
$str∏∏ è
)∏∏è ê
]∏∏ê ë
[
ππ 
Range
ππ 
(
ππ 
$num
ππ 
,
ππ 
$num
ππ 
)
ππ 
]
ππ 
public
∫∫ 
float
∫∫  
stationaryBlending
∫∫ +
;
∫∫+ ,
[
ºº 
Tooltip
ºº 
(
ºº 
$strºº ú
)ººú ù
]ººù û
[
ΩΩ 
Range
ΩΩ 
(
ΩΩ 
$num
ΩΩ 
,
ΩΩ 
$num
ΩΩ 
)
ΩΩ 
]
ΩΩ 
public
ææ 
float
ææ 
motionBlending
ææ '
;
ææ' (
public
¿¿ 
static
¿¿ 
TaaSettings
¿¿ %
defaultSettings
¿¿& 5
{
¡¡ 
get
¬¬ 
{
√√ 
return
ƒƒ 
new
ƒƒ 
TaaSettings
ƒƒ *
{
≈≈ 
jitterSpread
∆∆ $
=
∆∆% &
$num
∆∆' ,
,
∆∆, -
sharpen
«« 
=
««  !
$num
««" &
,
««& ' 
stationaryBlending
»» *
=
»»+ ,
$num
»»- 2
,
»»2 3
motionBlending
…… &
=
……' (
$num
……) .
}
   
;
   
}
ÀÀ 
}
ÃÃ 
}
ÕÕ 	
[
–– 	
Serializable
––	 
]
–– 
public
—— 
struct
—— 
Settings
—— 
{
““ 	
public
”” 
Method
”” 
method
””  
;
””  !
public
‘‘ 
FxaaSettings
‘‘ 
fxaaSettings
‘‘  ,
;
‘‘, -
public
’’ 
TaaSettings
’’ 
taaSettings
’’ *
;
’’* +
public
◊◊ 
static
◊◊ 
Settings
◊◊ "
defaultSettings
◊◊# 2
{
ÿÿ 
get
ŸŸ 
{
⁄⁄ 
return
€€ 
new
€€ 
Settings
€€ '
{
‹‹ 
method
›› 
=
››  
Method
››! '
.
››' (
Fxaa
››( ,
,
››, -
fxaaSettings
ﬁﬁ $
=
ﬁﬁ% &
FxaaSettings
ﬁﬁ' 3
.
ﬁﬁ3 4
defaultSettings
ﬁﬁ4 C
,
ﬁﬁC D
taaSettings
ﬂﬂ #
=
ﬂﬂ$ %
TaaSettings
ﬂﬂ& 1
.
ﬂﬂ1 2
defaultSettings
ﬂﬂ2 A
}
‡‡ 
;
‡‡ 
}
·· 
}
‚‚ 
}
„„ 	
[
ÂÂ 	
SerializeField
ÂÂ	 
]
ÂÂ 
Settings
ÊÊ 

m_Settings
ÊÊ 
=
ÊÊ 
Settings
ÊÊ &
.
ÊÊ& '
defaultSettings
ÊÊ' 6
;
ÊÊ6 7
public
ÁÁ 
Settings
ÁÁ 
settings
ÁÁ  
{
ËË 	
get
ÈÈ 
{
ÈÈ 
return
ÈÈ 

m_Settings
ÈÈ #
;
ÈÈ# $
}
ÈÈ% &
set
ÍÍ 
{
ÍÍ 

m_Settings
ÍÍ 
=
ÍÍ 
value
ÍÍ $
;
ÍÍ$ %
}
ÍÍ& '
}
ÎÎ 	
public
ÌÌ 
override
ÌÌ 
void
ÌÌ 
Reset
ÌÌ "
(
ÌÌ" #
)
ÌÌ# $
{
ÓÓ 	

m_Settings
ÔÔ 
=
ÔÔ 
Settings
ÔÔ !
.
ÔÔ! "
defaultSettings
ÔÔ" 1
;
ÔÔ1 2
}
 	
}
ÒÒ 
}ÚÚ ê,
üD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\BloomModel.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
[ 
Serializable 
] 
public 

class 

BloomModel 
: 
PostProcessingModel 1
{ 
[ 	
Serializable	 
] 
public		 
struct		 
BloomSettings		 #
{

 	
[ 
Min 
( 
$num 
) 
, 
Tooltip 
( 
$str =
)= >
]> ?
public 
float 
	intensity "
;" #
[ 
Min 
( 
$num 
) 
, 
Tooltip 
( 
$str R
)R S
]S T
public 
float 
	threshold "
;" #
public 
float 
thresholdLinear (
{ 
set 
{ 
	threshold 
=  !
Mathf" '
.' (
LinearToGammaSpace( :
(: ;
value; @
)@ A
;A B
}C D
get 
{ 
return 
Mathf "
." #
GammaToLinearSpace# 5
(5 6
	threshold6 ?
)? @
;@ A
}B C
} 
[ 
Range 
( 
$num 
, 
$num 
) 
, 
Tooltip #
(# $
$str	$ Ö
)
Ö Ü
]
Ü á
public 
float 
softKnee !
;! "
[ 
Range 
( 
$num 
, 
$num 
) 
, 
Tooltip #
(# $
$str$ s
)s t
]t u
public 
float 
radius 
;  
[ 
Tooltip 
( 
$str H
)H I
]I J
public 
bool 
antiFlicker #
;# $
public   
static   
BloomSettings   '
defaultSettings  ( 7
{!! 
get"" 
{## 
return$$ 
new$$ 
BloomSettings$$ ,
{%% 
	intensity&& !
=&&" #
$num&&$ (
,&&( )
	threshold'' !
=''" #
$num''$ (
,''( )
softKnee((  
=((! "
$num((# '
,((' (
radius)) 
=))  
$num))! #
,))# $
antiFlicker** #
=**$ %
false**& +
,**+ ,
}++ 
;++ 
},, 
}-- 
}.. 	
[00 	
Serializable00	 
]00 
public11 
struct11 
LensDirtSettings11 &
{22 	
[33 
Tooltip33 
(33 
$str33 L
)33L M
]33M N
public44 
Texture44 
texture44 "
;44" #
[66 
Min66 
(66 
$num66 
)66 
,66 
Tooltip66 
(66 
$str66 9
)669 :
]66: ;
public77 
float77 
	intensity77 "
;77" #
public99 
static99 
LensDirtSettings99 *
defaultSettings99+ :
{:: 
get;; 
{<< 
return== 
new== 
LensDirtSettings== /
{>> 
texture?? 
=??  !
null??" &
,??& '
	intensity@@ !
=@@" #
$num@@$ &
}AA 
;AA 
}BB 
}CC 
}DD 	
[FF 	
SerializableFF	 
]FF 
publicGG 
structGG 
SettingsGG 
{HH 	
publicII 
BloomSettingsII  
bloomII! &
;II& '
publicJJ 
LensDirtSettingsJJ #
lensDirtJJ$ ,
;JJ, -
publicLL 
staticLL 
SettingsLL "
defaultSettingsLL# 2
{MM 
getNN 
{OO 
returnPP 
newPP 
SettingsPP '
{QQ 
bloomRR 
=RR 
BloomSettingsRR  -
.RR- .
defaultSettingsRR. =
,RR= >
lensDirtSS  
=SS! "
LensDirtSettingsSS# 3
.SS3 4
defaultSettingsSS4 C
}TT 
;TT 
}UU 
}VV 
}WW 	
[YY 	
SerializeFieldYY	 
]YY 
SettingsZZ 

m_SettingsZZ 
=ZZ 
SettingsZZ &
.ZZ& '
defaultSettingsZZ' 6
;ZZ6 7
public[[ 
Settings[[ 
settings[[  
{\\ 	
get]] 
{]] 
return]] 

m_Settings]] #
;]]# $
}]]% &
set^^ 
{^^ 

m_Settings^^ 
=^^ 
value^^ $
;^^$ %
}^^& '
}__ 	
publicaa 
overrideaa 
voidaa 
Resetaa "
(aa" #
)aa# $
{bb 	

m_Settingscc 
=cc 
Settingscc !
.cc! "
defaultSettingscc" 1
;cc1 2
}dd 	
}ee 
}ff ÷9
´D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\BuiltinDebugViewsModel.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
[ 
Serializable 
] 
public 

class "
BuiltinDebugViewsModel '
:( )
PostProcessingModel* =
{ 
[ 	
Serializable	 
] 
public		 
struct		 
DepthSettings		 #
{

 	
[ 
Range 
( 
$num 
, 
$num 
) 
, 
Tooltip #
(# $
$str$ b
)b c
]c d
public 
float 
scale 
; 
public 
static 
DepthSettings '
defaultSettings( 7
{ 
get 
{ 
return 
new 
DepthSettings ,
{ 
scale 
= 
$num  "
} 
; 
} 
} 
} 	
[ 	
Serializable	 
] 
public 
struct !
MotionVectorsSettings +
{ 	
[ 
Range 
( 
$num 
, 
$num 
) 
, 
Tooltip #
(# $
$str$ C
)C D
]D E
public 
float 
sourceOpacity &
;& '
[   
Range   
(   
$num   
,   
$num   
)   
,   
Tooltip   #
(  # $
$str  $ T
)  T U
]  U V
public!! 
float!! 
motionImageOpacity!! +
;!!+ ,
[## 
Min## 
(## 
$num## 
)## 
,## 
Tooltip## 
(## 
$str	## â
)
##â ä
]
##ä ã
public$$ 
float$$  
motionImageAmplitude$$ -
;$$- .
[&& 
Range&& 
(&& 
$num&& 
,&& 
$num&& 
)&& 
,&& 
Tooltip&& #
(&&# $
$str&&$ K
)&&K L
]&&L M
public'' 
float''  
motionVectorsOpacity'' -
;''- .
[)) 
Range)) 
()) 
$num)) 
,)) 
$num)) 
))) 
,)) 
Tooltip)) "
())" #
$str))# A
)))A B
]))B C
public** 
int** #
motionVectorsResolution** .
;**. /
[,, 
Min,, 
(,, 
$num,, 
),, 
,,, 
Tooltip,, 
(,, 
$str,, 9
),,9 :
],,: ;
public-- 
float-- "
motionVectorsAmplitude-- /
;--/ 0
public// 
static// !
MotionVectorsSettings// /
defaultSettings//0 ?
{00 
get11 
{22 
return33 
new33 !
MotionVectorsSettings33 4
{44 
sourceOpacity55 %
=55& '
$num55( *
,55* +
motionImageOpacity77 *
=77+ ,
$num77- /
,77/ 0 
motionImageAmplitude88 ,
=88- .
$num88/ 2
,882 3 
motionVectorsOpacity:: ,
=::- .
$num::/ 1
,::1 2#
motionVectorsResolution;; /
=;;0 1
$num;;2 4
,;;4 5"
motionVectorsAmplitude<< .
=<</ 0
$num<<1 4
}== 
;== 
}>> 
}?? 
}@@ 	
publicBB 
enumBB 
ModeBB 
{CC 	
NoneDD 
,DD 
DepthFF 
,FF 
NormalsGG 
,GG 
MotionVectorsHH 
,HH 
AmbientOcclusionJJ 
,JJ 
EyeAdaptationKK 
,KK 

FocusPlaneLL 
,LL 
PreGradingLogMM 
,MM 
LogLutNN 
,NN 
UserLutOO 
}PP 	
[RR 	
SerializableRR	 
]RR 
publicSS 
structSS 
SettingsSS 
{TT 	
publicUU 
ModeUU 
modeUU 
;UU 
publicVV 
DepthSettingsVV  
depthVV! &
;VV& '
publicWW !
MotionVectorsSettingsWW (
motionVectorsWW) 6
;WW6 7
publicYY 
staticYY 
SettingsYY "
defaultSettingsYY# 2
{ZZ 
get[[ 
{\\ 
return]] 
new]] 
Settings]] '
{^^ 
mode__ 
=__ 
Mode__ #
.__# $
None__$ (
,__( )
depth`` 
=`` 
DepthSettings``  -
.``- .
defaultSettings``. =
,``= >
motionVectorsaa %
=aa& '!
MotionVectorsSettingsaa( =
.aa= >
defaultSettingsaa> M
}bb 
;bb 
}cc 
}dd 
}ee 	
[gg 	
SerializeFieldgg	 
]gg 
Settingshh 

m_Settingshh 
=hh 
Settingshh &
.hh& '
defaultSettingshh' 6
;hh6 7
publicii 
Settingsii 
settingsii  
{jj 	
getkk 
{kk 
returnkk 

m_Settingskk #
;kk# $
}kk% &
setll 
{ll 

m_Settingsll 
=ll 
valuell $
;ll$ %
}ll& '
}mm 	
publicoo 
booloo 
willInterruptoo !
{pp 	
getqq 
{rr 
returnss 
!ss 
IsModeActivess $
(ss$ %
Modess% )
.ss) *
Noness* .
)ss. /
&&tt 
!tt 
IsModeActivett '
(tt' (
Modett( ,
.tt, -
EyeAdaptationtt- :
)tt: ;
&&uu 
!uu 
IsModeActiveuu '
(uu' (
Modeuu( ,
.uu, -
PreGradingLoguu- :
)uu: ;
&&vv 
!vv 
IsModeActivevv '
(vv' (
Modevv( ,
.vv, -
LogLutvv- 3
)vv3 4
&&ww 
!ww 
IsModeActiveww '
(ww' (
Modeww( ,
.ww, -
UserLutww- 4
)ww4 5
;ww5 6
}xx 
}yy 	
public{{ 
override{{ 
void{{ 
Reset{{ "
({{" #
){{# $
{|| 	
settings}} 
=}} 
Settings}} 
.}}  
defaultSettings}}  /
;}}/ 0
}~~ 	
public
ÄÄ 
bool
ÄÄ 
IsModeActive
ÄÄ  
(
ÄÄ  !
Mode
ÄÄ! %
mode
ÄÄ& *
)
ÄÄ* +
{
ÅÅ 	
return
ÇÇ 

m_Settings
ÇÇ 
.
ÇÇ 
mode
ÇÇ "
==
ÇÇ# %
mode
ÇÇ& *
;
ÇÇ* +
}
ÉÉ 	
}
ÑÑ 
}ÖÖ á
≠D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\ChromaticAberrationModel.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
[ 
Serializable 
] 
public 

class $
ChromaticAberrationModel )
:* +
PostProcessingModel, ?
{ 
[ 	
Serializable	 
] 
public		 
struct		 
Settings		 
{

 	
[ 
Tooltip 
( 
$str >
)> ?
]? @
public 
	Texture2D 
spectralTexture ,
;, -
[ 
Range 
( 
$num 
, 
$num 
) 
, 
Tooltip #
(# $
$str$ F
)F G
]G H
public 
float 
	intensity "
;" #
public 
static 
Settings "
defaultSettings# 2
{ 
get 
{ 
return 
new 
Settings '
{ 
spectralTexture '
=( )
null* .
,. /
	intensity !
=" #
$num$ (
} 
; 
} 
} 
} 	
[ 	
SerializeField	 
] 
Settings 

m_Settings 
= 
Settings &
.& '
defaultSettings' 6
;6 7
public   
Settings   
settings    
{!! 	
get"" 
{"" 
return"" 

m_Settings"" #
;""# $
}""% &
set## 
{## 

m_Settings## 
=## 
value## $
;##$ %
}##& '
}$$ 	
public&& 
override&& 
void&& 
Reset&& "
(&&" #
)&&# $
{'' 	

m_Settings(( 
=(( 
Settings(( !
.((! "
defaultSettings((" 1
;((1 2
})) 	
}** 
}++ ”∞
¶D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\ColorGradingModel.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
[ 
Serializable 
] 
public 

class 
ColorGradingModel "
:# $
PostProcessingModel% 8
{ 
public 
enum 

Tonemapper 
{		 	
None

 
,

 
ACES 
, 
Neutral 
} 	
[ 	
Serializable	 
] 
public 
struct 
TonemappingSettings )
{ 	
[ 
Tooltip 
( 
$str	 œ
)
œ –
]
– —
public 

Tonemapper 

tonemapper (
;( )
[ 
Range 
( 
- 
$num 
, 
$num 
) 
]  
public 
float 
neutralBlackIn '
;' (
[!! 
Range!! 
(!! 
$num!! 
,!! 
$num!! 
)!! 
]!! 
public"" 
float"" 
neutralWhiteIn"" '
;""' (
[$$ 
Range$$ 
($$ 
-$$ 
$num$$ 
,$$ 
$num$$ 
)$$  
]$$  !
public%% 
float%% 
neutralBlackOut%% (
;%%( )
['' 
Range'' 
('' 
$num'' 
,'' 
$num'' 
)'' 
]'' 
public(( 
float(( 
neutralWhiteOut(( (
;((( )
[** 
Range** 
(** 
$num** 
,** 
$num** 
)** 
]** 
public++ 
float++ 
neutralWhiteLevel++ *
;++* +
[-- 
Range-- 
(-- 
$num-- 
,-- 
$num-- 
)-- 
]-- 
public.. 
float.. 
neutralWhiteClip.. )
;..) *
public00 
static00 
TonemappingSettings00 -
defaultSettings00. =
{11 
get22 
{33 
return44 
new44 
TonemappingSettings44 2
{55 

tonemapper66 "
=66# $

Tonemapper66% /
.66/ 0
Neutral660 7
,667 8
neutralBlackIn88 &
=88' (
$num88) .
,88. /
neutralWhiteIn99 &
=99' (
$num99) ,
,99, -
neutralBlackOut:: '
=::( )
$num::* ,
,::, -
neutralWhiteOut;; '
=;;( )
$num;;* -
,;;- .
neutralWhiteLevel<< )
=<<* +
$num<<, 0
,<<0 1
neutralWhiteClip== (
===) *
$num==+ .
}>> 
;>> 
}?? 
}@@ 
}AA 	
[CC 	
SerializableCC	 
]CC 
publicDD 
structDD 
BasicSettingsDD #
{EE 	
[FF 
TooltipFF 
(FF 
$str	FF Ω
)
FFΩ æ
]
FFæ ø
publicGG 
floatGG 
postExposureGG %
;GG% &
[II 
RangeII 
(II 
-II 
$numII 
,II 
$numII 
)II 
,II  
TooltipII! (
(II( )
$strII) `
)II` a
]IIa b
publicJJ 
floatJJ 
temperatureJJ $
;JJ$ %
[LL 
RangeLL 
(LL 
-LL 
$numLL 
,LL 
$numLL 
)LL 
,LL  
TooltipLL! (
(LL( )
$strLL) l
)LLl m
]LLm n
publicMM 
floatMM 
tintMM 
;MM 
[OO 
RangeOO 
(OO 
-OO 
$numOO 
,OO 
$numOO 
)OO 
,OO  
TooltipOO! (
(OO( )
$strOO) G
)OOG H
]OOH I
publicPP 
floatPP 
hueShiftPP !
;PP! "
[RR 
RangeRR 
(RR 
$numRR 
,RR 
$numRR 
)RR 
,RR 
TooltipRR #
(RR# $
$strRR$ I
)RRI J
]RRJ K
publicSS 
floatSS 

saturationSS #
;SS# $
[UU 
RangeUU 
(UU 
$numUU 
,UU 
$numUU 
)UU 
,UU 
TooltipUU #
(UU# $
$strUU$ [
)UU[ \
]UU\ ]
publicVV 
floatVV 
contrastVV !
;VV! "
publicXX 
staticXX 
BasicSettingsXX '
defaultSettingsXX( 7
{YY 
getZZ 
{[[ 
return\\ 
new\\ 
BasicSettings\\ ,
{]] 
postExposure^^ $
=^^% &
$num^^' )
,^^) *
temperature`` #
=``$ %
$num``& (
,``( )
tintaa 
=aa 
$numaa !
,aa! "
hueShiftcc  
=cc! "
$numcc# %
,cc% &

saturationdd "
=dd# $
$numdd% '
,dd' (
contrastee  
=ee! "
$numee# %
,ee% &
}ff 
;ff 
}gg 
}hh 
}ii 	
[kk 	
Serializablekk	 
]kk 
publicll 
structll  
ChannelMixerSettingsll *
{mm 	
publicnn 
Vector3nn 
rednn 
;nn 
publicoo 
Vector3oo 
greenoo  
;oo  !
publicpp 
Vector3pp 
bluepp 
;pp  
[rr 
HideInInspectorrr 
]rr 
publicss 
intss !
currentEditingChannelss ,
;ss, -
publicuu 
staticuu  
ChannelMixerSettingsuu .
defaultSettingsuu/ >
{vv 
getww 
{xx 
returnyy 
newyy  
ChannelMixerSettingsyy 3
{zz 
red{{ 
={{ 
new{{ !
Vector3{{" )
({{) *
$num{{* ,
,{{, -
$num{{. 0
,{{0 1
$num{{2 4
){{4 5
,{{5 6
green|| 
=|| 
new||  #
Vector3||$ +
(||+ ,
$num||, .
,||. /
$num||0 2
,||2 3
$num||4 6
)||6 7
,||7 8
blue}} 
=}} 
new}} "
Vector3}}# *
(}}* +
$num}}+ -
,}}- .
$num}}/ 1
,}}1 2
$num}}3 5
)}}5 6
,}}6 7!
currentEditingChannel~~ -
=~~. /
$num~~0 1
} 
; 
}
ÄÄ 
}
ÅÅ 
}
ÇÇ 	
[
ÑÑ 	
Serializable
ÑÑ	 
]
ÑÑ 
public
ÖÖ 
struct
ÖÖ 
LogWheelsSettings
ÖÖ '
{
ÜÜ 	
[
áá 
	Trackball
áá 
(
áá 
$str
áá &
)
áá& '
]
áá' (
public
àà 
Color
àà 
slope
àà 
;
àà 
[
ää 
	Trackball
ää 
(
ää 
$str
ää &
)
ää& '
]
ää' (
public
ãã 
Color
ãã 
power
ãã 
;
ãã 
[
çç 
	Trackball
çç 
(
çç 
$str
çç '
)
çç' (
]
çç( )
public
éé 
Color
éé 
offset
éé 
;
éé  
public
êê 
static
êê 
LogWheelsSettings
êê +
defaultSettings
êê, ;
{
ëë 
get
íí 
{
ìì 
return
îî 
new
îî 
LogWheelsSettings
îî 0
{
ïï 
slope
ññ 
=
ññ 
Color
ññ  %
.
ññ% &
clear
ññ& +
,
ññ+ ,
power
óó 
=
óó 
Color
óó  %
.
óó% &
clear
óó& +
,
óó+ ,
offset
òò 
=
òò  
Color
òò! &
.
òò& '
clear
òò' ,
}
ôô 
;
ôô 
}
öö 
}
õõ 
}
úú 	
[
ûû 	
Serializable
ûû	 
]
ûû 
public
üü 
struct
üü "
LinearWheelsSettings
üü *
{
†† 	
[
°° 
	Trackball
°° 
(
°° 
$str
°° %
)
°°% &
]
°°& '
public
¢¢ 
Color
¢¢ 
lift
¢¢ 
;
¢¢ 
[
§§ 
	Trackball
§§ 
(
§§ 
$str
§§ &
)
§§& '
]
§§' (
public
•• 
Color
•• 
gamma
•• 
;
•• 
[
ßß 
	Trackball
ßß 
(
ßß 
$str
ßß %
)
ßß% &
]
ßß& '
public
®® 
Color
®® 
gain
®® 
;
®® 
public
™™ 
static
™™ "
LinearWheelsSettings
™™ .
defaultSettings
™™/ >
{
´´ 
get
¨¨ 
{
≠≠ 
return
ÆÆ 
new
ÆÆ "
LinearWheelsSettings
ÆÆ 3
{
ØØ 
lift
∞∞ 
=
∞∞ 
Color
∞∞ $
.
∞∞$ %
clear
∞∞% *
,
∞∞* +
gamma
±± 
=
±± 
Color
±±  %
.
±±% &
clear
±±& +
,
±±+ ,
gain
≤≤ 
=
≤≤ 
Color
≤≤ $
.
≤≤$ %
clear
≤≤% *
}
≥≥ 
;
≥≥ 
}
¥¥ 
}
µµ 
}
∂∂ 	
public
∏∏ 
enum
∏∏ 
ColorWheelMode
∏∏ 
{
ππ 
Linear
∫∫ 
,
∫∫ 
Log
ªª 
}
ºº 
[
ææ 	
Serializable
ææ	 
]
ææ 
public
øø 
struct
øø !
ColorWheelsSettings
øø )
{
¿¿ 	
public
¡¡	 
ColorWheelMode
¡¡ 
mode
¡¡ #
;
¡¡# $
[
√√ 
TrackballGroup
√√ 
]
√√ 
public
ƒƒ 
LogWheelsSettings
ƒƒ $
log
ƒƒ% (
;
ƒƒ( )
[
∆∆ 
TrackballGroup
∆∆ 
]
∆∆ 
public
«« "
LinearWheelsSettings
«« '
linear
««( .
;
««. /
public
…… 
static
…… !
ColorWheelsSettings
…… -
defaultSettings
……. =
{
   
get
ÀÀ 
{
ÃÃ 
return
ÕÕ 
new
ÕÕ !
ColorWheelsSettings
ÕÕ 2
{
ŒŒ 
mode
œœ 

=
œœ 
ColorWheelMode
œœ 
.
œœ 
Log
œœ 
,
œœ  
log
–– 
=
–– 
LogWheelsSettings
–– /
.
––/ 0
defaultSettings
––0 ?
,
––? @
linear
—— 
=
——  "
LinearWheelsSettings
——! 5
.
——5 6
defaultSettings
——6 E
}
““ 
;
““ 
}
”” 
}
‘‘ 
}
’’ 	
[
◊◊ 	
Serializable
◊◊	 
]
◊◊ 
public
ÿÿ 
struct
ÿÿ 
CurvesSettings
ÿÿ $
{
ŸŸ 	
public
⁄⁄ 
ColorGradingCurve
⁄⁄ $
master
⁄⁄% +
;
⁄⁄+ ,
public
€€ 
ColorGradingCurve
€€ $
red
€€% (
;
€€( )
public
‹‹ 
ColorGradingCurve
‹‹ $
green
‹‹% *
;
‹‹* +
public
›› 
ColorGradingCurve
›› $
blue
››% )
;
››) *
public
ﬁﬁ 
ColorGradingCurve
ﬁﬁ $
hueVShue
ﬁﬁ% -
;
ﬁﬁ- .
public
ﬂﬂ 
ColorGradingCurve
ﬂﬂ $
hueVSsat
ﬂﬂ% -
;
ﬂﬂ- .
public
‡‡ 
ColorGradingCurve
‡‡ $
satVSsat
‡‡% -
;
‡‡- .
public
·· 
ColorGradingCurve
·· $
lumVSsat
··% -
;
··- .
[
‰‰ 
HideInInspector
‰‰ 
]
‰‰ 
public
‰‰ $
int
‰‰% (#
e_CurrentEditingCurve
‰‰) >
;
‰‰> ?
[
ÂÂ 
HideInInspector
ÂÂ 
]
ÂÂ 
public
ÂÂ $
bool
ÂÂ% )
e_CurveY
ÂÂ* 2
;
ÂÂ2 3
[
ÊÊ 
HideInInspector
ÊÊ 
]
ÊÊ 
public
ÊÊ $
bool
ÊÊ% )
e_CurveR
ÊÊ* 2
;
ÊÊ2 3
[
ÁÁ 
HideInInspector
ÁÁ 
]
ÁÁ 
public
ÁÁ $
bool
ÁÁ% )
e_CurveG
ÁÁ* 2
;
ÁÁ2 3
[
ËË 
HideInInspector
ËË 
]
ËË 
public
ËË $
bool
ËË% )
e_CurveB
ËË* 2
;
ËË2 3
public
ÍÍ 
static
ÍÍ 
CurvesSettings
ÍÍ (
defaultSettings
ÍÍ) 8
{
ÎÎ 
get
ÏÏ 
{
ÌÌ 
return
ÓÓ 
new
ÓÓ 
CurvesSettings
ÓÓ -
{
ÔÔ 
master
 
=
  
new
! $
ColorGradingCurve
% 6
(
6 7
new
7 :
AnimationCurve
; I
(
I J
new
J M
Keyframe
N V
(
V W
$num
W Y
,
Y Z
$num
[ ]
,
] ^
$num
_ a
,
a b
$num
c e
)
e f
,
f g
new
h k
Keyframe
l t
(
t u
$num
u w
,
w x
$num
y {
,
{ |
$num
} 
, Ä
$numÅ É
)É Ñ
)Ñ Ö
,Ö Ü
$numá â
,â ä
falseã ê
,ê ë
newí ï
Vector2ñ ù
(ù û
$numû †
,† °
$num¢ §
)§ •
)• ¶
,¶ ß
red
ÒÒ 
=
ÒÒ  
new
ÒÒ! $
ColorGradingCurve
ÒÒ% 6
(
ÒÒ6 7
new
ÒÒ7 :
AnimationCurve
ÒÒ; I
(
ÒÒI J
new
ÒÒJ M
Keyframe
ÒÒN V
(
ÒÒV W
$num
ÒÒW Y
,
ÒÒY Z
$num
ÒÒ[ ]
,
ÒÒ] ^
$num
ÒÒ_ a
,
ÒÒa b
$num
ÒÒc e
)
ÒÒe f
,
ÒÒf g
new
ÒÒh k
Keyframe
ÒÒl t
(
ÒÒt u
$num
ÒÒu w
,
ÒÒw x
$num
ÒÒy {
,
ÒÒ{ |
$num
ÒÒ} 
,ÒÒ Ä
$numÒÒÅ É
)ÒÒÉ Ñ
)ÒÒÑ Ö
,ÒÒÖ Ü
$numÒÒá â
,ÒÒâ ä
falseÒÒã ê
,ÒÒê ë
newÒÒí ï
Vector2ÒÒñ ù
(ÒÒù û
$numÒÒû †
,ÒÒ† °
$numÒÒ¢ §
)ÒÒ§ •
)ÒÒ• ¶
,ÒÒ¶ ß
green
ÚÚ 
=
ÚÚ  
new
ÚÚ! $
ColorGradingCurve
ÚÚ% 6
(
ÚÚ6 7
new
ÚÚ7 :
AnimationCurve
ÚÚ; I
(
ÚÚI J
new
ÚÚJ M
Keyframe
ÚÚN V
(
ÚÚV W
$num
ÚÚW Y
,
ÚÚY Z
$num
ÚÚ[ ]
,
ÚÚ] ^
$num
ÚÚ_ a
,
ÚÚa b
$num
ÚÚc e
)
ÚÚe f
,
ÚÚf g
new
ÚÚh k
Keyframe
ÚÚl t
(
ÚÚt u
$num
ÚÚu w
,
ÚÚw x
$num
ÚÚy {
,
ÚÚ{ |
$num
ÚÚ} 
,ÚÚ Ä
$numÚÚÅ É
)ÚÚÉ Ñ
)ÚÚÑ Ö
,ÚÚÖ Ü
$numÚÚá â
,ÚÚâ ä
falseÚÚã ê
,ÚÚê ë
newÚÚí ï
Vector2ÚÚñ ù
(ÚÚù û
$numÚÚû †
,ÚÚ† °
$numÚÚ¢ §
)ÚÚ§ •
)ÚÚ• ¶
,ÚÚ¶ ß
blue
ÛÛ 
=
ÛÛ  
new
ÛÛ! $
ColorGradingCurve
ÛÛ% 6
(
ÛÛ6 7
new
ÛÛ7 :
AnimationCurve
ÛÛ; I
(
ÛÛI J
new
ÛÛJ M
Keyframe
ÛÛN V
(
ÛÛV W
$num
ÛÛW Y
,
ÛÛY Z
$num
ÛÛ[ ]
,
ÛÛ] ^
$num
ÛÛ_ a
,
ÛÛa b
$num
ÛÛc e
)
ÛÛe f
,
ÛÛf g
new
ÛÛh k
Keyframe
ÛÛl t
(
ÛÛt u
$num
ÛÛu w
,
ÛÛw x
$num
ÛÛy {
,
ÛÛ{ |
$num
ÛÛ} 
,ÛÛ Ä
$numÛÛÅ É
)ÛÛÉ Ñ
)ÛÛÑ Ö
,ÛÛÖ Ü
$numÛÛá â
,ÛÛâ ä
falseÛÛã ê
,ÛÛê ë
newÛÛí ï
Vector2ÛÛñ ù
(ÛÛù û
$numÛÛû †
,ÛÛ† °
$numÛÛ¢ §
)ÛÛ§ •
)ÛÛ• ¶
,ÛÛ¶ ß
hueVShue
ıı  
=
ıı! "
new
ıı# &
ColorGradingCurve
ıı' 8
(
ıı8 9
new
ıı9 <
AnimationCurve
ıı= K
(
ııK L
)
ııL M
,
ııM N
$num
ııO S
,
ııS T
true
ııU Y
,
ııY Z
new
ıı\ _
Vector2
ıı` g
(
ııg h
$num
ııh j
,
ııj k
$num
ııl n
)
ıın o
)
ııo p
,
ııp q
hueVSsat
ˆˆ  
=
ˆˆ! "
new
ˆˆ# &
ColorGradingCurve
ˆˆ' 8
(
ˆˆ8 9
new
ˆˆ9 <
AnimationCurve
ˆˆ= K
(
ˆˆK L
)
ˆˆL M
,
ˆˆM N
$num
ˆˆO S
,
ˆˆS T
true
ˆˆU Y
,
ˆˆY Z
new
ˆˆ\ _
Vector2
ˆˆ` g
(
ˆˆg h
$num
ˆˆh j
,
ˆˆj k
$num
ˆˆl n
)
ˆˆn o
)
ˆˆo p
,
ˆˆp q
satVSsat
˜˜  
=
˜˜! "
new
˜˜# &
ColorGradingCurve
˜˜' 8
(
˜˜8 9
new
˜˜9 <
AnimationCurve
˜˜= K
(
˜˜K L
)
˜˜L M
,
˜˜M N
$num
˜˜O S
,
˜˜S T
false
˜˜U Z
,
˜˜Z [
new
˜˜\ _
Vector2
˜˜` g
(
˜˜g h
$num
˜˜h j
,
˜˜j k
$num
˜˜l n
)
˜˜n o
)
˜˜o p
,
˜˜p q
lumVSsat
¯¯  
=
¯¯! "
new
¯¯# &
ColorGradingCurve
¯¯' 8
(
¯¯8 9
new
¯¯9 <
AnimationCurve
¯¯= K
(
¯¯K L
)
¯¯L M
,
¯¯M N
$num
¯¯O S
,
¯¯S T
false
¯¯U Z
,
¯¯Z [
new
¯¯\ _
Vector2
¯¯` g
(
¯¯g h
$num
¯¯h j
,
¯¯j k
$num
¯¯l n
)
¯¯n o
)
¯¯o p
,
¯¯p q#
e_CurrentEditingCurve
˙˙ -
=
˙˙. /
$num
˙˙0 1
,
˙˙1 2
e_CurveY
˚˚  
=
˚˚! "
true
˚˚# '
,
˚˚' (
e_CurveR
¸¸  
=
¸¸! "
false
¸¸# (
,
¸¸( )
e_CurveG
˝˝  
=
˝˝! "
false
˝˝# (
,
˝˝( )
e_CurveB
˛˛  
=
˛˛! "
false
˛˛# (
}
ˇˇ 
;
ˇˇ 
}
ÄÄ 
}
ÅÅ 
}
ÇÇ 	
[
ÑÑ 	
Serializable
ÑÑ	 
]
ÑÑ 
public
ÖÖ 
struct
ÖÖ 
Settings
ÖÖ 
{
ÜÜ 	
public
áá !
TonemappingSettings
áá &
tonemapping
áá' 2
;
áá2 3
public
àà 
BasicSettings
àà  
basic
àà! &
;
àà& '
public
ââ "
ChannelMixerSettings
ââ '
channelMixer
ââ( 4
;
ââ4 5
public
ää !
ColorWheelsSettings
ää &
colorWheels
ää' 2
;
ää2 3
public
ãã 
CurvesSettings
ãã !
curves
ãã" (
;
ãã( )
public
çç 
static
çç 
Settings
çç "
defaultSettings
çç# 2
{
éé 
get
èè 
{
êê 
return
ëë 
new
ëë 
Settings
ëë '
{
íí 
tonemapping
ìì #
=
ìì$ %!
TonemappingSettings
ìì& 9
.
ìì9 :
defaultSettings
ìì: I
,
ììI J
basic
îî 
=
îî 
BasicSettings
îî  -
.
îî- .
defaultSettings
îî. =
,
îî= >
channelMixer
ïï $
=
ïï% &"
ChannelMixerSettings
ïï' ;
.
ïï; <
defaultSettings
ïï< K
,
ïïK L
colorWheels
ññ #
=
ññ$ %!
ColorWheelsSettings
ññ& 9
.
ññ9 :
defaultSettings
ññ: I
,
ññI J
curves
óó 
=
óó  
CurvesSettings
óó! /
.
óó/ 0
defaultSettings
óó0 ?
}
òò 
;
òò 
}
ôô 
}
öö 
}
õõ 	
[
ùù 	
SerializeField
ùù	 
]
ùù 
Settings
ûû 

m_Settings
ûû 
=
ûû 
Settings
ûû &
.
ûû& '
defaultSettings
ûû' 6
;
ûû6 7
public
üü 
Settings
üü 
settings
üü  
{
†† 	
get
°° 
{
°° 
return
°° 

m_Settings
°° #
;
°°# $
}
°°% &
set
¢¢ 
{
££ 

m_Settings
§§ 
=
§§ 
value
§§ "
;
§§" #

OnValidate
•• 
(
•• 
)
•• 
;
•• 
}
¶¶ 
}
ßß 	
public
©© 
bool
©© 
isDirty
©© 
{
©© 
get
©© !
;
©©! "
internal
©©# +
set
©©, /
;
©©/ 0
}
©©1 2
public
™™ 
RenderTexture
™™ 
bakedLut
™™ %
{
™™& '
get
™™( +
;
™™+ ,
internal
™™- 5
set
™™6 9
;
™™9 :
}
™™; <
public
¨¨ 
override
¨¨ 
void
¨¨ 
Reset
¨¨ "
(
¨¨" #
)
¨¨# $
{
≠≠ 	

m_Settings
ÆÆ 
=
ÆÆ 
Settings
ÆÆ !
.
ÆÆ! "
defaultSettings
ÆÆ" 1
;
ÆÆ1 2

OnValidate
ØØ 
(
ØØ 
)
ØØ 
;
ØØ 
}
∞∞ 	
public
≤≤ 
override
≤≤ 
void
≤≤ 

OnValidate
≤≤ '
(
≤≤' (
)
≤≤( )
{
≥≥ 	
isDirty
¥¥ 
=
¥¥ 
true
¥¥ 
;
¥¥ 
}
µµ 	
}
∂∂ 
}∑∑ ø
¶D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\DepthOfFieldModel.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
[ 
Serializable 
] 
public 

class 
DepthOfFieldModel "
:# $
PostProcessingModel% 8
{ 
public 
enum 

KernelSize 
{		 	
Small

 
,

 
Medium 
, 
Large 
, 
	VeryLarge 
} 	
[ 	
Serializable	 
] 
public 
struct 
Settings 
{ 	
[ 
Min 
( 
$num 
) 
, 
Tooltip 
(  
$str  A
)A B
]B C
public 
float 
focusDistance &
;& '
[ 
Range 
( 
$num 
, 
$num 
) 
, 
Tooltip  '
(' (
$str	( ô
)
ô ö
]
ö õ
public 
float 
aperture !
;! "
[ 
Range 
( 
$num 
, 
$num 
) 
, 
Tooltip %
(% &
$str	& ç
)
ç é
]
é è
public 
float 
focalLength $
;$ %
[ 
Tooltip 
( 
$str	 ï
)
ï ñ
]
ñ ó
public 
bool 
useCameraFov $
;$ %
[ 
Tooltip 
( 
$str	 “
)
“ ”
]
” ‘
public   

KernelSize   

kernelSize   (
;  ( )
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
{'' 
focusDistance(( %
=((& '
$num((( +
,((+ ,
aperture))  
=))! "
$num))# '
,))' (
focalLength** #
=**$ %
$num**& )
,**) *
useCameraFov++ $
=++% &
false++' ,
,++, -

kernelSize,, "
=,,# $

KernelSize,,% /
.,,/ 0
Medium,,0 6
}-- 
;-- 
}.. 
}// 
}00 	
[22 	
SerializeField22	 
]22 
Settings33 

m_Settings33 
=33 
Settings33 &
.33& '
defaultSettings33' 6
;336 7
public44 
Settings44 
settings44  
{55 	
get66 
{66 
return66 

m_Settings66 #
;66# $
}66% &
set77 
{77 

m_Settings77 
=77 
value77 $
;77$ %
}77& '
}88 	
public:: 
override:: 
void:: 
Reset:: "
(::" #
)::# $
{;; 	

m_Settings<< 
=<< 
Settings<< !
.<<! "
defaultSettings<<" 1
;<<1 2
}== 	
}>> 
}?? ë
£D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\DitheringModel.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
[ 
Serializable 
] 
public 

class 
DitheringModel 
:  !
PostProcessingModel" 5
{ 
[ 	
Serializable	 
] 
public		 
struct		 
Settings		 
{

 	
public 
static 
Settings "
defaultSettings# 2
{ 
get 
{ 
return 
new  
Settings! )
() *
)* +
;+ ,
}- .
} 
} 	
[ 	
SerializeField	 
] 
Settings 

m_Settings 
= 
Settings &
.& '
defaultSettings' 6
;6 7
public 
Settings 
settings  
{ 	
get 
{ 
return 

m_Settings #
;# $
}% &
set 
{ 

m_Settings 
= 
value $
;$ %
}& '
} 	
public 
override 
void 
Reset "
(" #
)# $
{ 	

m_Settings 
= 
Settings !
.! "
defaultSettings" 1
;1 2
} 	
} 
} £*
ßD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\EyeAdaptationModel.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
[ 
Serializable 
] 
public 

class 
EyeAdaptationModel #
:$ %
PostProcessingModel& 9
{ 
public 
enum 
EyeAdaptationType %
{		 	
Progressive

 
,

 
Fixed 
} 	
[ 	
Serializable	 
] 
public 
struct 
Settings 
{ 	
[ 
Range 
( 
$num 
, 
$num 
) 
, 
Tooltip $
($ %
$str	% »
)
» …
]
…  
public 
float 

lowPercent #
;# $
[ 
Range 
( 
$num 
, 
$num 
) 
, 
Tooltip $
($ %
$str	%  
)
  À
]
À Ã
public 
float 
highPercent $
;$ %
[ 
Tooltip 
( 
$str W
)W X
]X Y
public 
float 
minLuminance %
;% &
[ 
Tooltip 
( 
$str W
)W X
]X Y
public 
float 
maxLuminance %
;% &
[ 
Min 
( 
$num 
) 
, 
Tooltip 
( 
$str c
)c d
]d e
public 
float 
keyValue !
;! "
[   
Tooltip   
(   
$str   s
)  s t
]  t u
public!! 
bool!! 
dynamicKeyValue!! '
;!!' (
[## 
Tooltip## 
(## 
$str## q
)##q r
]##r s
public$$ 
EyeAdaptationType$$ $
adaptationType$$% 3
;$$3 4
[&& 
Min&& 
(&& 
$num&& 
)&& 
,&& 
Tooltip&& 
(&& 
$str&& T
)&&T U
]&&U V
public'' 
float'' 
speedUp''  
;''  !
[)) 
Min)) 
()) 
$num)) 
))) 
,)) 
Tooltip)) 
()) 
$str)) T
)))T U
]))U V
public** 
float** 
	speedDown** "
;**" #
[,, 
Range,, 
(,, 
-,, 
$num,, 
,,, 
-,, 
$num,, 
),, 
,,, 
Tooltip,, $
(,,$ %
$str	,,% π
)
,,π ∫
]
,,∫ ª
public-- 
int-- 
logMin-- 
;-- 
[// 
Range// 
(// 
$num// 
,// 
$num// 
)// 
,// 
Tooltip// "
(//" #
$str	//# ∑
)
//∑ ∏
]
//∏ π
public00 
int00 
logMax00 
;00 
public22 
static22 
Settings22 "
defaultSettings22# 2
{33 
get44 
{55 
return66 
new66 
Settings66 '
{77 

lowPercent88 "
=88# $
$num88% (
,88( )
highPercent99 #
=99$ %
$num99& )
,99) *
minLuminance;; $
=;;% &
-;;' (
$num;;( *
,;;* +
maxLuminance<< $
=<<% &
$num<<' )
,<<) *
keyValue==  
===! "
$num==# (
,==( )
dynamicKeyValue>> '
=>>( )
true>>* .
,>>. /
adaptationType@@ &
=@@' (
EyeAdaptationType@@) :
.@@: ;
Progressive@@; F
,@@F G
speedUpAA 
=AA  !
$numAA" $
,AA$ %
	speedDownBB !
=BB" #
$numBB$ &
,BB& '
logMinDD 
=DD  
-DD! "
$numDD" #
,DD# $
logMaxEE 
=EE  
$numEE! "
}FF 
;FF 
}GG 
}HH 
}II 	
[KK 	
SerializeFieldKK	 
]KK 
SettingsLL 

m_SettingsLL 
=LL 
SettingsLL &
.LL& '
defaultSettingsLL' 6
;LL6 7
publicMM 
SettingsMM 
settingsMM  
{NN 	
getOO 
{OO 
returnOO 

m_SettingsOO #
;OO# $
}OO% &
setPP 
{PP 

m_SettingsPP 
=PP 
valuePP $
;PP$ %
}PP& '
}QQ 	
publicSS 
overrideSS 
voidSS 
ResetSS "
(SS" #
)SS# $
{TT 	

m_SettingsUU 
=UU 
SettingsUU !
.UU! "
defaultSettingsUU" 1
;UU1 2
}VV 	
}WW 
}XX Ù
ùD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\FogModel.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
[ 
Serializable 
] 
public 

class 
FogModel 
: 
PostProcessingModel /
{ 
[ 	
Serializable	 
] 
public		 
struct		 
Settings		 
{

 	
[ 
Tooltip 
( 
$str 8
)8 9
]9 :
public 
bool 
excludeSkybox %
;% &
public 
static 
Settings "
defaultSettings# 2
{ 
get 
{ 
return 
new 
Settings '
{ 
excludeSkybox %
=& '
true( ,
} 
; 
} 
} 
} 	
[ 	
SerializeField	 
] 
Settings 

m_Settings 
= 
Settings &
.& '
defaultSettings' 6
;6 7
public 
Settings 
settings  
{ 	
get 
{ 
return 

m_Settings #
;# $
}% &
set 
{ 

m_Settings 
= 
value $
;$ %
}& '
}   	
public"" 
override"" 
void"" 
Reset"" "
(""" #
)""# $
{## 	

m_Settings$$ 
=$$ 
Settings$$ !
.$$! "
defaultSettings$$" 1
;$$1 2
}%% 	
}&& 
}'' Ω
üD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\GrainModel.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
[ 
Serializable 
] 
public 

class 

GrainModel 
: 
PostProcessingModel 1
{ 
[ 	
Serializable	 
] 
public		 
struct		 
Settings		 
{

 	
[ 
Tooltip 
( 
$str 7
)7 8
]8 9
public 
bool 
colored 
;  
[ 
Range 
( 
$num 
, 
$num 
) 
, 
Tooltip #
(# $
$str$ V
)V W
]W X
public 
float 
	intensity "
;" #
[ 
Range 
( 
$num 
, 
$num 
) 
, 
Tooltip %
(% &
$str& <
)< =
]= >
public 
float 
size 
; 
[ 
Range 
( 
$num 
, 
$num 
) 
, 
Tooltip #
(# $
$str	$ ë
)
ë í
]
í ì
public 
float !
luminanceContribution .
;. /
public 
static 
Settings "
defaultSettings# 2
{ 
get 
{ 
return 
new 
Settings '
{ 
colored 
=  !
true" &
,& '
	intensity !
=" #
$num$ (
,( )
size 
= 
$num !
,! "!
luminanceContribution   -
=  . /
$num  0 4
}!! 
;!! 
}"" 
}## 
}$$ 	
[&& 	
SerializeField&&	 
]&& 
Settings'' 

m_Settings'' 
='' 
Settings'' &
.''& '
defaultSettings''' 6
;''6 7
public(( 
Settings(( 
settings((  
{)) 	
get** 
{** 
return** 

m_Settings** #
;**# $
}**% &
set++ 
{++ 

m_Settings++ 
=++ 
value++ $
;++$ %
}++& '
},, 	
public.. 
override.. 
void.. 
Reset.. "
(.." #
)..# $
{// 	

m_Settings00 
=00 
Settings00 !
.00! "
defaultSettings00" 1
;001 2
}11 	
}22 
}33 ◊
§D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\MotionBlurModel.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
[ 
Serializable 
] 
public 

class 
MotionBlurModel  
:! "
PostProcessingModel# 6
{ 
[ 	
Serializable	 
] 
public		 
struct		 
Settings		 
{

 	
[ 
Range 
( 
$num 
, 
$num 
) 
, 
Tooltip %
(% &
$str& h
)h i
]i j
public 
float 
shutterAngle %
;% &
[ 
Range 
( 
$num 
, 
$num 
) 
, 
Tooltip "
(" #
$str# i
)i j
]j k
public 
int 
sampleCount "
;" #
[ 
Range 
( 
$num 
, 
$num 
) 
, 
Tooltip #
(# $
$str	$ ©
)
© ™
]
™ ´
public 
float 
frameBlending &
;& '
public 
static 
Settings "
defaultSettings# 2
{ 
get 
{ 
return 
new 
Settings '
{ 
shutterAngle $
=% &
$num' +
,+ ,
sampleCount #
=$ %
$num& (
,( )
frameBlending %
=& '
$num( *
} 
; 
} 
} 
}   	
["" 	
SerializeField""	 
]"" 
Settings## 

m_Settings## 
=## 
Settings## &
.##& '
defaultSettings##' 6
;##6 7
public$$ 
Settings$$ 
settings$$  
{%% 	
get&& 
{&& 
return&& 

m_Settings&& #
;&&# $
}&&% &
set'' 
{'' 

m_Settings'' 
='' 
value'' $
;''$ %
}''& '
}(( 	
public** 
override** 
void** 
Reset** "
(**" #
)**# $
{++ 	

m_Settings,, 
=,, 
Settings,, !
.,,! "
defaultSettings,," 1
;,,1 2
}-- 	
}.. 
}// ’>
ØD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\ScreenSpaceReflectionModel.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
[ 
Serializable 
] 
public 

class &
ScreenSpaceReflectionModel +
:, -
PostProcessingModel. A
{ 
public 
enum 
SSRResolution !
{		 	
High

 
=

 
$num

 
,

 
Low 
= 
$num 
} 	
public 
enum "
SSRReflectionBlendType *
{ 	
PhysicallyBased 
, 
Additive 
} 	
[ 	
Serializable	 
] 
public 
struct 
IntensitySettings '
{ 	
[ 
Tooltip 
( 
$str _
)_ `
]` a
[ 
Range 
( 
$num 
, 
$num 
) 
] 
public 
float  
reflectionMultiplier -
;- .
[ 
Tooltip 
( 
$str M
)M N
]N O
[ 
Range 
( 
$num 
, 
$num  
)  !
]! "
public 
float 
fadeDistance %
;% &
[ 
Tooltip 
( 
$str	 ê
)
ê ë
]
ë í
[   
Range   
(   
$num   
,   
$num   
)   
]   
public!! 
float!! 
fresnelFade!! $
;!!$ %
[## 
Tooltip## 
(## 
$str## z
)##z {
]##{ |
[$$ 
Range$$ 
($$ 
$num$$ 
,$$ 
$num$$ 
)$$ 
]$$  
public%% 
float%% 
fresnelFadePower%% )
;%%) *
}&& 	
[(( 	
Serializable((	 
](( 
public)) 
struct)) 
ReflectionSettings)) (
{** 	
[-- 
Tooltip-- 
(-- 
$str-- G
)--G H
]--H I
public.. "
SSRReflectionBlendType.. )
	blendType..* 3
;..3 4
[00 
Tooltip00 
(00 
$str00 N
)00N O
]00O P
public11 
SSRResolution11  
reflectionQuality11! 2
;112 3
[33 
Tooltip33 
(33 
$str33 B
)33B C
]33C D
[44 
Range44 
(44 
$num44 
,44 
$num44 
)44  
]44  !
public55 
float55 
maxDistance55 $
;55$ %
[88 
Tooltip88 
(88 
$str88 -
)88- .
]88. /
[99 
Range99 
(99 
$num99 
,99 
$num99 
)99 
]99 
public:: 
int:: 
iterationCount:: %
;::% &
[<< 
Tooltip<< 
(<< 
$str	<< Å
)
<<Å Ç
]
<<Ç É
[== 
Range== 
(== 
$num== 
,== 
$num== 
)== 
]== 
public>> 
int>> 
stepSize>> 
;>>  
[@@ 
Tooltip@@ 
(@@ 
$str	@@ Ä
)
@@Ä Å
]
@@Å Ç
[AA 
RangeAA 
(AA 
$numAA 
,AA 
$numAA 
)AA  
]AA  !
publicBB 
floatBB 
widthModifierBB &
;BB& '
[DD 
TooltipDD 
(DD 
$strDD 1
)DD1 2
]DD2 3
[EE 
RangeEE 
(EE 
$numEE 
,EE 
$numEE 
)EE 
]EE 
publicFF 
floatFF 
reflectionBlurFF '
;FF' (
[HH 
TooltipHH 
(HH 
$str	HH ª
)
HHª º
]
HHº Ω
publicII 
boolII 
reflectBackfacesII (
;II( )
}JJ 	
[LL 	
SerializableLL	 
]LL 
publicMM 
structMM 
ScreenEdgeMaskMM $
{NN 	
[OO 
TooltipOO 
(OO 
$strOO |
)OO| }
]OO} ~
[PP 
RangePP 
(PP 
$numPP 
,PP 
$numPP 
)PP 
]PP 
publicQQ 
floatQQ 
	intensityQQ "
;QQ" #
}RR 	
[TT 	
SerializableTT	 
]TT 
publicUU 
structUU 
SettingsUU 
{VV 	
publicWW 
ReflectionSettingsWW %

reflectionWW& 0
;WW0 1
publicXX 
IntensitySettingsXX $
	intensityXX% .
;XX. /
publicYY 
ScreenEdgeMaskYY !
screenEdgeMaskYY" 0
;YY0 1
public[[ 
static[[ 
Settings[[ "
defaultSettings[[# 2
{\\ 
get]] 
{^^ 
return__ 
new__ 
Settings__ '
{`` 

reflectionaa "
=aa# $
newaa% (
ReflectionSettingsaa) ;
{bb 
	blendTypecc %
=cc& '"
SSRReflectionBlendTypecc( >
.cc> ?
PhysicallyBasedcc? N
,ccN O
reflectionQualitydd -
=dd. /
SSRResolutiondd0 =
.dd= >
Lowdd> A
,ddA B
maxDistanceee '
=ee( )
$numee* .
,ee. /
iterationCountff *
=ff+ ,
$numff- 0
,ff0 1
stepSizegg $
=gg% &
$numgg' (
,gg( )
widthModifierhh )
=hh* +
$numhh, 0
,hh0 1
reflectionBlurii *
=ii+ ,
$numii- /
,ii/ 0
reflectBackfacesjj ,
=jj- .
falsejj/ 4
}kk 
,kk 
	intensitymm !
=mm" #
newmm$ '
IntensitySettingsmm( 9
{nn  
reflectionMultiplieroo 0
=oo1 2
$numoo3 5
,oo5 6
fadeDistancepp (
=pp) *
$numpp+ /
,pp/ 0
fresnelFaderr '
=rr( )
$numrr* ,
,rr, -
fresnelFadePowerss ,
=ss- .
$numss/ 1
,ss1 2
}tt 
,tt 
screenEdgeMaskvv &
=vv' (
newvv) ,
ScreenEdgeMaskvv- ;
{ww 
	intensityxx %
=xx& '
$numxx( -
}yy 
}zz 
;zz 
}{{ 
}|| 
}}} 	
[ 	
SerializeField	 
] 
Settings
ÄÄ 

m_Settings
ÄÄ 
=
ÄÄ 
Settings
ÄÄ &
.
ÄÄ& '
defaultSettings
ÄÄ' 6
;
ÄÄ6 7
public
ÅÅ 
Settings
ÅÅ 
settings
ÅÅ  
{
ÇÇ 	
get
ÉÉ 
{
ÉÉ 
return
ÉÉ 

m_Settings
ÉÉ #
;
ÉÉ# $
}
ÉÉ% &
set
ÑÑ 
{
ÑÑ 

m_Settings
ÑÑ 
=
ÑÑ 
value
ÑÑ $
;
ÑÑ$ %
}
ÑÑ& '
}
ÖÖ 	
public
áá 
override
áá 
void
áá 
Reset
áá "
(
áá" #
)
áá# $
{
àà 	

m_Settings
ââ 
=
ââ 
Settings
ââ !
.
ââ! "
defaultSettings
ââ" 1
;
ââ1 2
}
ää 	
}
ãã 
}åå ›
°D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\UserLutModel.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
[ 
Serializable 
] 
public 

class 
UserLutModel 
: 
PostProcessingModel  3
{ 
[ 	
Serializable	 
] 
public		 
struct		 
Settings		 
{

 	
[ 
Tooltip 
( 
$str I
)I J
]J K
public 
	Texture2D 
lut  
;  !
[ 
Range 
( 
$num 
, 
$num 
) 
, 
Tooltip #
(# $
$str$ 6
)6 7
]7 8
public 
float 
contribution %
;% &
public 
static 
Settings "
defaultSettings# 2
{ 
get 
{ 
return 
new 
Settings '
{ 
lut 
= 
null "
," #
contribution $
=% &
$num' )
} 
; 
} 
} 
} 	
[ 	
SerializeField	 
] 
Settings 

m_Settings 
= 
Settings &
.& '
defaultSettings' 6
;6 7
public   
Settings   
settings    
{!! 	
get"" 
{"" 
return"" 

m_Settings"" #
;""# $
}""% &
set## 
{## 

m_Settings## 
=## 
value## $
;##$ %
}##& '
}$$ 	
public&& 
override&& 
void&& 
Reset&& "
(&&" #
)&&# $
{'' 	

m_Settings(( 
=(( 
Settings(( !
.((! "
defaultSettings((" 1
;((1 2
})) 	
}** 
}++ ˙%
¢D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\VignetteModel.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
[ 
Serializable 
] 
public 

class 
VignetteModel 
:  
PostProcessingModel! 4
{ 
public 
enum 
Mode 
{		 	
Classic

 
,

 
Masked 
} 	
[ 	
Serializable	 
] 
public 
struct 
Settings 
{ 	
[ 
Tooltip 
( 
$str ~
)~ 
]	 Ä
public 
Mode 
mode 
; 
[ 

ColorUsage 
( 
false 
) 
] 
[ 
Tooltip 
( 
$str N
)N O
]O P
public 
Color 
color 
; 
[ 
Tooltip 
( 
$str S
)S T
]T U
public 
Vector2 
center !
;! "
[ 
Range 
( 
$num 
, 
$num 
) 
, 
Tooltip #
(# $
$str$ E
)E F
]F G
public 
float 
	intensity "
;" #
[ 
Range 
( 
$num 
, 
$num 
) 
, 
Tooltip &
(& '
$str' L
)L M
]M N
public 
float 

smoothness #
;# $
[!! 
Range!! 
(!! 
$num!! 
,!! 
$num!! 
)!! 
,!! 
Tooltip!! #
(!!# $
$str!!$ S
)!!S T
]!!T U
public"" 
float"" 
	roundness"" "
;""" #
[$$ 
Tooltip$$ 
($$ 
$str$$ C
)$$C D
]$$D E
public%% 
Texture%% 
mask%% 
;%%  
['' 
Range'' 
('' 
$num'' 
,'' 
$num'' 
)'' 
,'' 
Tooltip'' #
(''# $
$str''$ 3
)''3 4
]''4 5
public(( 
float(( 
opacity((  
;((  !
[** 
Tooltip** 
(** 
$str** j
)**j k
]**k l
public++ 
bool++ 
rounded++ 
;++  
public-- 
static-- 
Settings-- "
defaultSettings--# 2
{.. 
get// 
{00 
return11 
new11 
Settings11 '
{22 
mode33 
=33 
Mode33 #
.33# $
Classic33$ +
,33+ ,
color44 
=44 
new44  #
Color44$ )
(44) *
$num44* ,
,44, -
$num44. 0
,440 1
$num442 4
,444 5
$num446 8
)448 9
,449 :
center55 
=55  
new55! $
Vector255% ,
(55, -
$num55- 1
,551 2
$num553 7
)557 8
,558 9
	intensity66 !
=66" #
$num66$ )
,66) *

smoothness77 "
=77# $
$num77% )
,77) *
	roundness88 !
=88" #
$num88$ &
,88& '
mask99 
=99 
null99 #
,99# $
opacity:: 
=::  !
$num::" $
,::$ %
rounded;; 
=;;  !
false;;" '
}<< 
;<< 
}== 
}>> 
}?? 	
[AA 	
SerializeFieldAA	 
]AA 
SettingsBB 

m_SettingsBB 
=BB 
SettingsBB &
.BB& '
defaultSettingsBB' 6
;BB6 7
publicCC 
SettingsCC 
settingsCC  
{DD 	
getEE 
{EE 
returnEE 

m_SettingsEE #
;EE# $
}EE% &
setFF 
{FF 

m_SettingsFF 
=FF 
valueFF $
;FF$ %
}FF& '
}GG 	
publicII 
overrideII 
voidII 
ResetII "
(II" #
)II# $
{JJ 	

m_SettingsKK 
=KK 
SettingsKK !
.KK! "
defaultSettingsKK" 1
;KK1 2
}LL 	
}MM 
}NN ∏ 
•D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\PostProcessingBehaviour.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
[

 )
ImageEffectAllowedInSceneView

 "
]

" #
[ 
RequireComponent 
( 
typeof 
( 
Camera #
)# $
)$ %
,% &%
DisallowMultipleComponent' @
,@ A
ExecuteInEditModeB S
]S T
[ 
AddComponentMenu 
( 
$str 9
,9 :
-; <
$num< =
)= >
]> ?
public 

class #
PostProcessingBehaviour (
:) *
MonoBehaviour+ 8
{ 
public !
PostProcessingProfile $
profile% ,
;, -
public 
Func 
< 
Vector2 
, 
	Matrix4x4 &
>& '
jitteredMatrixFunc( :
;: ;

Dictionary 
< 
Type 
, 
KeyValuePair %
<% &
CameraEvent& 1
,1 2
CommandBuffer3 @
>@ A
>A B
m_CommandBuffersC S
;S T
List 
< '
PostProcessingComponentBase (
>( )
m_Components* 6
;6 7

Dictionary 
< '
PostProcessingComponentBase .
,. /
bool0 4
>4 5
m_ComponentStates6 G
;G H
MaterialFactory 
m_MaterialFactory )
;) * 
RenderTextureFactory "
m_RenderTextureFactory 3
;3 4!
PostProcessingContext 
	m_Context '
;' (
Camera 
m_Camera 
; !
PostProcessingProfile 
m_PreviousProfile /
;/ 0
bool   "
m_RenderingInSceneView   #
=  $ %
false  & +
;  + ,&
BuiltinDebugViewsComponent## "
m_DebugViews### /
;##/ 0%
AmbientOcclusionComponent$$ !
m_AmbientOcclusion$$" 4
;$$4 5*
ScreenSpaceReflectionComponent%% &#
m_ScreenSpaceReflection%%' >
;%%> ?
FogComponent&& 
m_FogComponent&& #
;&&# $
MotionBlurComponent'' 
m_MotionBlur'' (
;''( )
TaaComponent(( 
m_Taa(( 
;(( "
EyeAdaptationComponent)) 
m_EyeAdaptation)) .
;)). /!
DepthOfFieldComponent** 
m_DepthOfField** ,
;**, -
BloomComponent++ 
m_Bloom++ 
;++ (
ChromaticAberrationComponent,, $!
m_ChromaticAberration,,% :
;,,: ;!
ColorGradingComponent-- 
m_ColorGrading-- ,
;--, -
UserLutComponent.. 
	m_UserLut.. "
;.." #
GrainComponent// 
m_Grain// 
;// 
VignetteComponent00 

m_Vignette00 $
;00$ %
DitheringComponent11 
m_Dithering11 &
;11& '
FxaaComponent22 
m_Fxaa22 
;22 
void44 
OnEnable44 
(44 
)44 
{55 	
m_CommandBuffers66 
=66 
new66 "

Dictionary66# -
<66- .
Type66. 2
,662 3
KeyValuePair664 @
<66@ A
CameraEvent66A L
,66L M
CommandBuffer66N [
>66[ \
>66\ ]
(66] ^
)66^ _
;66_ `
m_MaterialFactory77 
=77 
new77  #
MaterialFactory77$ 3
(773 4
)774 5
;775 6"
m_RenderTextureFactory88 "
=88# $
new88% ( 
RenderTextureFactory88) =
(88= >
)88> ?
;88? @
	m_Context99 
=99 
new99 !
PostProcessingContext99 1
(991 2
)992 3
;993 4
m_Components<< 
=<< 
new<< 
List<< #
<<<# $'
PostProcessingComponentBase<<$ ?
><<? @
(<<@ A
)<<A B
;<<B C
m_DebugViews?? 
=?? 
AddComponent?? '
(??' (
new??( +&
BuiltinDebugViewsComponent??, F
(??F G
)??G H
)??H I
;??I J
m_AmbientOcclusion@@ 
=@@  
AddComponent@@! -
(@@- .
new@@. 1%
AmbientOcclusionComponent@@2 K
(@@K L
)@@L M
)@@M N
;@@N O#
m_ScreenSpaceReflectionAA #
=AA$ %
AddComponentAA& 2
(AA2 3
newAA3 6*
ScreenSpaceReflectionComponentAA7 U
(AAU V
)AAV W
)AAW X
;AAX Y
m_FogComponentBB 
=BB 
AddComponentBB )
(BB) *
newBB* -
FogComponentBB. :
(BB: ;
)BB; <
)BB< =
;BB= >
m_MotionBlurCC 
=CC 
AddComponentCC '
(CC' (
newCC( +
MotionBlurComponentCC, ?
(CC? @
)CC@ A
)CCA B
;CCB C
m_TaaDD 
=DD 
AddComponentDD  
(DD  !
newDD! $
TaaComponentDD% 1
(DD1 2
)DD2 3
)DD3 4
;DD4 5
m_EyeAdaptationEE 
=EE 
AddComponentEE *
(EE* +
newEE+ ."
EyeAdaptationComponentEE/ E
(EEE F
)EEF G
)EEG H
;EEH I
m_DepthOfFieldFF 
=FF 
AddComponentFF )
(FF) *
newFF* -!
DepthOfFieldComponentFF. C
(FFC D
)FFD E
)FFE F
;FFF G
m_BloomGG 
=GG 
AddComponentGG "
(GG" #
newGG# &
BloomComponentGG' 5
(GG5 6
)GG6 7
)GG7 8
;GG8 9!
m_ChromaticAberrationHH !
=HH" #
AddComponentHH$ 0
(HH0 1
newHH1 4(
ChromaticAberrationComponentHH5 Q
(HHQ R
)HHR S
)HHS T
;HHT U
m_ColorGradingII 
=II 
AddComponentII )
(II) *
newII* -!
ColorGradingComponentII. C
(IIC D
)IID E
)IIE F
;IIF G
	m_UserLutJJ 
=JJ 
AddComponentJJ $
(JJ$ %
newJJ% (
UserLutComponentJJ) 9
(JJ9 :
)JJ: ;
)JJ; <
;JJ< =
m_GrainKK 
=KK 
AddComponentKK "
(KK" #
newKK# &
GrainComponentKK' 5
(KK5 6
)KK6 7
)KK7 8
;KK8 9

m_VignetteLL 
=LL 
AddComponentLL %
(LL% &
newLL& )
VignetteComponentLL* ;
(LL; <
)LL< =
)LL= >
;LL> ?
m_DitheringMM 
=MM 
AddComponentMM &
(MM& '
newMM' *
DitheringComponentMM+ =
(MM= >
)MM> ?
)MM? @
;MM@ A
m_FxaaNN 
=NN 
AddComponentNN !
(NN! "
newNN" %
FxaaComponentNN& 3
(NN3 4
)NN4 5
)NN5 6
;NN6 7
m_ComponentStatesQQ 
=QQ 
newQQ  #

DictionaryQQ$ .
<QQ. /'
PostProcessingComponentBaseQQ/ J
,QQJ K
boolQQL P
>QQP Q
(QQQ R
)QQR S
;QQS T
foreachSS 
(SS 
varSS 
	componentSS "
inSS# %
m_ComponentsSS& 2
)SS2 3
m_ComponentStatesTT !
.TT! "
AddTT" %
(TT% &
	componentTT& /
,TT/ 0
falseTT1 6
)TT6 7
;TT7 8
useGUILayoutVV 
=VV 
falseVV  
;VV  !
}WW 	
voidYY 
	OnPreCullYY 
(YY 
)YY 
{ZZ 	
m_Camera^^ 
=^^ 
GetComponent^^ #
<^^# $
Camera^^$ *
>^^* +
(^^+ ,
)^^, -
;^^- .
if`` 
(`` 
profile`` 
==`` 
null`` 
||``  "
m_Camera``# +
==``, .
null``/ 3
)``3 4
returnaa 
;aa "
m_RenderingInSceneViewjj "
=jj# $
UnityEditorjj% 0
.jj0 1
	SceneViewjj1 :
.jj: ;#
currentDrawingSceneViewjj; R
!=jjS U
nulljjV Z
&&kk 
UnityEditorkk 
.kk 
	SceneViewkk (
.kk( )#
currentDrawingSceneViewkk) @
.kk@ A
camerakkA G
==kkH J
m_CamerakkK S
;kkS T
varoo 
contextoo 
=oo 
	m_Contextoo #
.oo# $
Resetoo$ )
(oo) *
)oo* +
;oo+ ,
contextpp 
.pp 
profilepp 
=pp 
profilepp %
;pp% &
contextqq 
.qq  
renderTextureFactoryqq (
=qq) *"
m_RenderTextureFactoryqq+ A
;qqA B
contextrr 
.rr 
materialFactoryrr #
=rr$ %
m_MaterialFactoryrr& 7
;rr7 8
contextss 
.ss 
camerass 
=ss 
m_Camerass %
;ss% &
m_DebugViewsvv 
.vv 
Initvv 
(vv 
contextvv %
,vv% &
profilevv' .
.vv. /

debugViewsvv/ 9
)vv9 :
;vv: ;
m_AmbientOcclusionww 
.ww 
Initww #
(ww# $
contextww$ +
,ww+ ,
profileww- 4
.ww4 5
ambientOcclusionww5 E
)wwE F
;wwF G#
m_ScreenSpaceReflectionxx #
.xx# $
Initxx$ (
(xx( )
contextxx) 0
,xx0 1
profilexx2 9
.xx9 :!
screenSpaceReflectionxx: O
)xxO P
;xxP Q
m_FogComponentyy 
.yy 
Inityy 
(yy  
contextyy  '
,yy' (
profileyy) 0
.yy0 1
fogyy1 4
)yy4 5
;yy5 6
m_MotionBlurzz 
.zz 
Initzz 
(zz 
contextzz %
,zz% &
profilezz' .
.zz. /

motionBlurzz/ 9
)zz9 :
;zz: ;
m_Taa{{ 
.{{ 
Init{{ 
({{ 
context{{ 
,{{ 
profile{{  '
.{{' (
antialiasing{{( 4
){{4 5
;{{5 6
m_EyeAdaptation|| 
.|| 
Init||  
(||  !
context||! (
,||( )
profile||* 1
.||1 2
eyeAdaptation||2 ?
)||? @
;||@ A
m_DepthOfField}} 
.}} 
Init}} 
(}}  
context}}  '
,}}' (
profile}}) 0
.}}0 1
depthOfField}}1 =
)}}= >
;}}> ?
m_Bloom~~ 
.~~ 
Init~~ 
(~~ 
context~~  
,~~  !
profile~~" )
.~~) *
bloom~~* /
)~~/ 0
;~~0 1!
m_ChromaticAberration !
.! "
Init" &
(& '
context' .
,. /
profile0 7
.7 8
chromaticAberration8 K
)K L
;L M
m_ColorGrading
ÄÄ 
.
ÄÄ 
Init
ÄÄ 
(
ÄÄ  
context
ÄÄ  '
,
ÄÄ' (
profile
ÄÄ) 0
.
ÄÄ0 1
colorGrading
ÄÄ1 =
)
ÄÄ= >
;
ÄÄ> ?
	m_UserLut
ÅÅ 
.
ÅÅ 
Init
ÅÅ 
(
ÅÅ 
context
ÅÅ "
,
ÅÅ" #
profile
ÅÅ$ +
.
ÅÅ+ ,
userLut
ÅÅ, 3
)
ÅÅ3 4
;
ÅÅ4 5
m_Grain
ÇÇ 
.
ÇÇ 
Init
ÇÇ 
(
ÇÇ 
context
ÇÇ  
,
ÇÇ  !
profile
ÇÇ" )
.
ÇÇ) *
grain
ÇÇ* /
)
ÇÇ/ 0
;
ÇÇ0 1

m_Vignette
ÉÉ 
.
ÉÉ 
Init
ÉÉ 
(
ÉÉ 
context
ÉÉ #
,
ÉÉ# $
profile
ÉÉ% ,
.
ÉÉ, -
vignette
ÉÉ- 5
)
ÉÉ5 6
;
ÉÉ6 7
m_Dithering
ÑÑ 
.
ÑÑ 
Init
ÑÑ 
(
ÑÑ 
context
ÑÑ $
,
ÑÑ$ %
profile
ÑÑ& -
.
ÑÑ- .
	dithering
ÑÑ. 7
)
ÑÑ7 8
;
ÑÑ8 9
m_Fxaa
ÖÖ 
.
ÖÖ 
Init
ÖÖ 
(
ÖÖ 
context
ÖÖ 
,
ÖÖ  
profile
ÖÖ! (
.
ÖÖ( )
antialiasing
ÖÖ) 5
)
ÖÖ5 6
;
ÖÖ6 7
if
àà 
(
àà 
m_PreviousProfile
àà !
!=
àà" $
profile
àà% ,
)
àà, -
{
ââ 
DisableComponents
ää !
(
ää! "
)
ää" #
;
ää# $
m_PreviousProfile
ãã !
=
ãã" #
profile
ãã$ +
;
ãã+ ,
}
åå 
CheckObservers
éé 
(
éé 
)
éé 
;
éé 
var
íí 
flags
íí 
=
íí 
context
íí 
.
íí  
camera
íí  &
.
íí& '
depthTextureMode
íí' 7
;
íí7 8
foreach
ìì 
(
ìì 
var
ìì 
	component
ìì "
in
ìì# %
m_Components
ìì& 2
)
ìì2 3
{
îî 
if
ïï 
(
ïï 
	component
ïï 
.
ïï 
active
ïï $
)
ïï$ %
flags
ññ 
|=
ññ 
	component
ññ &
.
ññ& '
GetCameraFlags
ññ' 5
(
ññ5 6
)
ññ6 7
;
ññ7 8
}
óó 
context
ôô 
.
ôô 
camera
ôô 
.
ôô 
depthTextureMode
ôô +
=
ôô, -
flags
ôô. 3
;
ôô3 4
if
úú 
(
úú 
!
úú $
m_RenderingInSceneView
úú '
&&
úú( *
m_Taa
úú+ 0
.
úú0 1
active
úú1 7
&&
úú8 :
!
úú; <
profile
úú< C
.
úúC D

debugViews
úúD N
.
úúN O
willInterrupt
úúO \
)
úú\ ]
m_Taa
ùù 
.
ùù !
SetProjectionMatrix
ùù )
(
ùù) * 
jitteredMatrixFunc
ùù* <
)
ùù< =
;
ùù= >
}
ûû 	
void
†† 
OnPreRender
†† 
(
†† 
)
†† 
{
°° 	
if
¢¢ 
(
¢¢ 
profile
¢¢ 
==
¢¢ 
null
¢¢ 
)
¢¢  
return
££ 
;
££ %
TryExecuteCommandBuffer
¶¶ #
(
¶¶# $
m_DebugViews
¶¶$ 0
)
¶¶0 1
;
¶¶1 2%
TryExecuteCommandBuffer
ßß #
(
ßß# $ 
m_AmbientOcclusion
ßß$ 6
)
ßß6 7
;
ßß7 8%
TryExecuteCommandBuffer
®® #
(
®®# $%
m_ScreenSpaceReflection
®®$ ;
)
®®; <
;
®®< =%
TryExecuteCommandBuffer
©© #
(
©©# $
m_FogComponent
©©$ 2
)
©©2 3
;
©©3 4
if
´´ 
(
´´ 
!
´´ $
m_RenderingInSceneView
´´ '
)
´´' (%
TryExecuteCommandBuffer
¨¨ '
(
¨¨' (
m_MotionBlur
¨¨( 4
)
¨¨4 5
;
¨¨5 6
}
≠≠ 	
void
ØØ 
OnPostRender
ØØ 
(
ØØ 
)
ØØ 
{
∞∞ 	
if
±± 
(
±± 
profile
±± 
==
±± 
null
±± 
||
±±  "
m_Camera
±±# +
==
±±, .
null
±±/ 3
)
±±3 4
return
≤≤ 
;
≤≤ 
if
¥¥ 
(
¥¥ 
!
¥¥ $
m_RenderingInSceneView
¥¥ '
&&
¥¥( *
m_Taa
¥¥+ 0
.
¥¥0 1
active
¥¥1 7
&&
¥¥8 :
!
¥¥; <
profile
¥¥< C
.
¥¥C D

debugViews
¥¥D N
.
¥¥N O
willInterrupt
¥¥O \
)
¥¥\ ]
	m_Context
µµ 
.
µµ 
camera
µµ  
.
µµ  !#
ResetProjectionMatrix
µµ! 6
(
µµ6 7
)
µµ7 8
;
µµ8 9
}
∂∂ 	
void
ππ 
OnRenderImage
ππ 
(
ππ 
RenderTexture
ππ (
source
ππ) /
,
ππ/ 0
RenderTexture
ππ1 >
destination
ππ? J
)
ππJ K
{
∫∫ 	
if
ªª 
(
ªª 
profile
ªª 
==
ªª 
null
ªª 
||
ªª  "
m_Camera
ªª# +
==
ªª, .
null
ªª/ 3
)
ªª3 4
{
ºº 
Graphics
ΩΩ 
.
ΩΩ 
Blit
ΩΩ 
(
ΩΩ 
source
ΩΩ $
,
ΩΩ$ %
destination
ΩΩ& 1
)
ΩΩ1 2
;
ΩΩ2 3
return
ææ 
;
ææ 
}
øø 
bool
¬¬ 

uberActive
¬¬ 
=
¬¬ 
false
¬¬ #
;
¬¬# $
bool
√√ 

fxaaActive
√√ 
=
√√ 
m_Fxaa
√√ $
.
√√$ %
active
√√% +
;
√√+ ,
bool
ƒƒ 
	taaActive
ƒƒ 
=
ƒƒ 
m_Taa
ƒƒ "
.
ƒƒ" #
active
ƒƒ# )
&&
ƒƒ* ,
!
ƒƒ- .$
m_RenderingInSceneView
ƒƒ. D
;
ƒƒD E
bool
≈≈ 
	dofActive
≈≈ 
=
≈≈ 
m_DepthOfField
≈≈ +
.
≈≈+ ,
active
≈≈, 2
&&
≈≈3 5
!
≈≈6 7$
m_RenderingInSceneView
≈≈7 M
;
≈≈M N
var
«« 
uberMaterial
«« 
=
«« 
m_MaterialFactory
«« 0
.
««0 1
Get
««1 4
(
««4 5
$str
««5 Q
)
««Q R
;
««R S
uberMaterial
»» 
.
»» 
shaderKeywords
»» '
=
»»( )
null
»»* .
;
»». /
var
   
src
   
=
   
source
   
;
   
var
ÀÀ 
dst
ÀÀ 
=
ÀÀ 
destination
ÀÀ !
;
ÀÀ! "
if
ÕÕ 
(
ÕÕ 
	taaActive
ÕÕ 
)
ÕÕ 
{
ŒŒ 
var
œœ 
tempRT
œœ 
=
œœ $
m_RenderTextureFactory
œœ 3
.
œœ3 4
Get
œœ4 7
(
œœ7 8
src
œœ8 ;
)
œœ; <
;
œœ< =
m_Taa
–– 
.
–– 
Render
–– 
(
–– 
src
––  
,
––  !
tempRT
––" (
)
––( )
;
––) *
src
—— 
=
—— 
tempRT
—— 
;
—— 
}
““ 
if
ŸŸ 
(
ŸŸ 
profile
ŸŸ 
.
ŸŸ 
monitors
ŸŸ  
.
ŸŸ  !"
onFrameEndEditorOnly
ŸŸ! 5
!=
ŸŸ6 8
null
ŸŸ9 =
)
ŸŸ= >
dst
⁄⁄ 
=
⁄⁄ $
m_RenderTextureFactory
⁄⁄ ,
.
⁄⁄, -
Get
⁄⁄- 0
(
⁄⁄0 1
src
⁄⁄1 4
)
⁄⁄4 5
;
⁄⁄5 6
Texture
›› 
autoExposure
››  
=
››! "
GraphicsUtils
››# 0
.
››0 1
whiteTexture
››1 =
;
››= >
if
ﬁﬁ 
(
ﬁﬁ 
m_EyeAdaptation
ﬁﬁ 
.
ﬁﬁ  
active
ﬁﬁ  &
)
ﬁﬁ& '
{
ﬂﬂ 

uberActive
‡‡ 
=
‡‡ 
true
‡‡ !
;
‡‡! "
autoExposure
·· 
=
·· 
m_EyeAdaptation
·· .
.
··. /
Prepare
··/ 6
(
··6 7
src
··7 :
,
··: ;
uberMaterial
··< H
)
··H I
;
··I J
}
‚‚ 
uberMaterial
‰‰ 
.
‰‰ 

SetTexture
‰‰ #
(
‰‰# $
$str
‰‰$ 3
,
‰‰3 4
autoExposure
‰‰5 A
)
‰‰A B
;
‰‰B C
if
ÊÊ 
(
ÊÊ 
	dofActive
ÊÊ 
)
ÊÊ 
{
ÁÁ 

uberActive
ËË 
=
ËË 
true
ËË !
;
ËË! "
m_DepthOfField
ÈÈ 
.
ÈÈ 
Prepare
ÈÈ &
(
ÈÈ& '
src
ÈÈ' *
,
ÈÈ* +
uberMaterial
ÈÈ, 8
,
ÈÈ8 9
	taaActive
ÈÈ: C
,
ÈÈC D
m_Taa
ÈÈE J
.
ÈÈJ K
jitterVector
ÈÈK W
,
ÈÈW X
m_Taa
ÈÈY ^
.
ÈÈ^ _
model
ÈÈ_ d
.
ÈÈd e
settings
ÈÈe m
.
ÈÈm n
taaSettings
ÈÈn y
.
ÈÈy z
motionBlendingÈÈz à
)ÈÈà â
;ÈÈâ ä
}
ÍÍ 
if
ÏÏ 
(
ÏÏ 
m_Bloom
ÏÏ 
.
ÏÏ 
active
ÏÏ 
)
ÏÏ 
{
ÌÌ 

uberActive
ÓÓ 
=
ÓÓ 
true
ÓÓ !
;
ÓÓ! "
m_Bloom
ÔÔ 
.
ÔÔ 
Prepare
ÔÔ 
(
ÔÔ  
src
ÔÔ  #
,
ÔÔ# $
uberMaterial
ÔÔ% 1
,
ÔÔ1 2
autoExposure
ÔÔ3 ?
)
ÔÔ? @
;
ÔÔ@ A
}
 

uberActive
ÚÚ 
|=
ÚÚ '
TryPrepareUberImageEffect
ÚÚ 3
(
ÚÚ3 4#
m_ChromaticAberration
ÚÚ4 I
,
ÚÚI J
uberMaterial
ÚÚK W
)
ÚÚW X
;
ÚÚX Y

uberActive
ÛÛ 
|=
ÛÛ '
TryPrepareUberImageEffect
ÛÛ 3
(
ÛÛ3 4
m_ColorGrading
ÛÛ4 B
,
ÛÛB C
uberMaterial
ÛÛD P
)
ÛÛP Q
;
ÛÛQ R

uberActive
ÙÙ 
|=
ÙÙ '
TryPrepareUberImageEffect
ÙÙ 3
(
ÙÙ3 4

m_Vignette
ÙÙ4 >
,
ÙÙ> ?
uberMaterial
ÙÙ@ L
)
ÙÙL M
;
ÙÙM N

uberActive
ıı 
|=
ıı '
TryPrepareUberImageEffect
ıı 3
(
ıı3 4
	m_UserLut
ıı4 =
,
ıı= >
uberMaterial
ıı? K
)
ııK L
;
ııL M
var
˜˜ 
fxaaMaterial
˜˜ 
=
˜˜ 

fxaaActive
˜˜ )
?
¯¯ 
m_MaterialFactory
¯¯ #
.
¯¯# $
Get
¯¯$ '
(
¯¯' (
$str
¯¯( =
)
¯¯= >
:
˘˘ 
null
˘˘ 
;
˘˘ 
if
˚˚ 
(
˚˚ 

fxaaActive
˚˚ 
)
˚˚ 
{
¸¸ 
fxaaMaterial
˝˝ 
.
˝˝ 
shaderKeywords
˝˝ +
=
˝˝, -
null
˝˝. 2
;
˝˝2 3'
TryPrepareUberImageEffect
˛˛ )
(
˛˛) *
m_Grain
˛˛* 1
,
˛˛1 2
fxaaMaterial
˛˛3 ?
)
˛˛? @
;
˛˛@ A'
TryPrepareUberImageEffect
ˇˇ )
(
ˇˇ) *
m_Dithering
ˇˇ* 5
,
ˇˇ5 6
fxaaMaterial
ˇˇ7 C
)
ˇˇC D
;
ˇˇD E
if
ÅÅ 
(
ÅÅ 

uberActive
ÅÅ 
)
ÅÅ 
{
ÇÇ 
var
ÉÉ 
output
ÉÉ 
=
ÉÉ  $
m_RenderTextureFactory
ÉÉ! 7
.
ÉÉ7 8
Get
ÉÉ8 ;
(
ÉÉ; <
src
ÉÉ< ?
)
ÉÉ? @
;
ÉÉ@ A
Graphics
ÑÑ 
.
ÑÑ 
Blit
ÑÑ !
(
ÑÑ! "
src
ÑÑ" %
,
ÑÑ% &
output
ÑÑ' -
,
ÑÑ- .
uberMaterial
ÑÑ/ ;
,
ÑÑ; <
$num
ÑÑ= >
)
ÑÑ> ?
;
ÑÑ? @
src
ÖÖ 
=
ÖÖ 
output
ÖÖ  
;
ÖÖ  !
}
ÜÜ 
m_Fxaa
àà 
.
àà 
Render
àà 
(
àà 
src
àà !
,
àà! "
dst
àà# &
)
àà& '
;
àà' (
}
ââ 
else
ää 
{
ãã 

uberActive
åå 
|=
åå '
TryPrepareUberImageEffect
åå 7
(
åå7 8
m_Grain
åå8 ?
,
åå? @
uberMaterial
ååA M
)
ååM N
;
ååN O

uberActive
çç 
|=
çç '
TryPrepareUberImageEffect
çç 7
(
çç7 8
m_Dithering
çç8 C
,
ççC D
uberMaterial
ççE Q
)
ççQ R
;
ççR S
if
èè 
(
èè 

uberActive
èè 
)
èè 
{
êê 
if
ëë 
(
ëë 
!
ëë 
GraphicsUtils
ëë &
.
ëë& ' 
isLinearColorSpace
ëë' 9
)
ëë9 :
uberMaterial
íí $
.
íí$ %
EnableKeyword
íí% 2
(
íí2 3
$str
íí3 K
)
ííK L
;
ííL M
Graphics
îî 
.
îî 
Blit
îî !
(
îî! "
src
îî" %
,
îî% &
dst
îî' *
,
îî* +
uberMaterial
îî, 8
,
îî8 9
$num
îî: ;
)
îî; <
;
îî< =
}
ïï 
}
ññ 
if
òò 
(
òò 
!
òò 

uberActive
òò 
&&
òò 
!
òò  

fxaaActive
òò  *
)
òò* +
Graphics
ôô 
.
ôô 
Blit
ôô 
(
ôô 
src
ôô !
,
ôô! "
dst
ôô# &
)
ôô& '
;
ôô' (
if
úú 
(
úú 
profile
úú 
.
úú 
monitors
úú  
.
úú  !"
onFrameEndEditorOnly
úú! 5
!=
úú6 8
null
úú9 =
)
úú= >
{
ùù 
Graphics
ûû 
.
ûû 
Blit
ûû 
(
ûû 
dst
ûû !
,
ûû! "
destination
ûû# .
)
ûû. /
;
ûû/ 0
var
†† 
oldRt
†† 
=
†† 
RenderTexture
†† )
.
††) *
active
††* 0
;
††0 1
profile
°° 
.
°° 
monitors
°°  
.
°°  !"
onFrameEndEditorOnly
°°! 5
(
°°5 6
dst
°°6 9
)
°°9 :
;
°°: ;
RenderTexture
¢¢ 
.
¢¢ 
active
¢¢ $
=
¢¢% &
oldRt
¢¢' ,
;
¢¢, -
}
££ $
m_RenderTextureFactory
¶¶ "
.
¶¶" #

ReleaseAll
¶¶# -
(
¶¶- .
)
¶¶. /
;
¶¶/ 0
}
ßß 	
void
©© 
OnGUI
©© 
(
©© 
)
©© 
{
™™ 	
if
´´ 
(
´´ 
Event
´´ 
.
´´ 
current
´´ 
.
´´ 
type
´´ "
!=
´´# %
	EventType
´´& /
.
´´/ 0
Repaint
´´0 7
)
´´7 8
return
¨¨ 
;
¨¨ 
if
ÆÆ 
(
ÆÆ 
profile
ÆÆ 
==
ÆÆ 
null
ÆÆ 
||
ÆÆ  "
m_Camera
ÆÆ# +
==
ÆÆ, .
null
ÆÆ/ 3
)
ÆÆ3 4
return
ØØ 
;
ØØ 
if
±± 
(
±± 
m_EyeAdaptation
±± 
.
±±  
active
±±  &
&&
±±' )
profile
±±* 1
.
±±1 2

debugViews
±±2 <
.
±±< =
IsModeActive
±±= I
(
±±I J
	DebugMode
±±J S
.
±±S T
EyeAdaptation
±±T a
)
±±a b
)
±±b c
m_EyeAdaptation
≤≤ 
.
≤≤  
OnGUI
≤≤  %
(
≤≤% &
)
≤≤& '
;
≤≤' (
else
≥≥ 
if
≥≥ 
(
≥≥ 
m_ColorGrading
≥≥ #
.
≥≥# $
active
≥≥$ *
&&
≥≥+ -
profile
≥≥. 5
.
≥≥5 6

debugViews
≥≥6 @
.
≥≥@ A
IsModeActive
≥≥A M
(
≥≥M N
	DebugMode
≥≥N W
.
≥≥W X
LogLut
≥≥X ^
)
≥≥^ _
)
≥≥_ `
m_ColorGrading
¥¥ 
.
¥¥ 
OnGUI
¥¥ $
(
¥¥$ %
)
¥¥% &
;
¥¥& '
else
µµ 
if
µµ 
(
µµ 
	m_UserLut
µµ 
.
µµ 
active
µµ %
&&
µµ& (
profile
µµ) 0
.
µµ0 1

debugViews
µµ1 ;
.
µµ; <
IsModeActive
µµ< H
(
µµH I
	DebugMode
µµI R
.
µµR S
UserLut
µµS Z
)
µµZ [
)
µµ[ \
	m_UserLut
∂∂ 
.
∂∂ 
OnGUI
∂∂ 
(
∂∂  
)
∂∂  !
;
∂∂! "
}
∑∑ 	
void
ππ 
	OnDisable
ππ 
(
ππ 
)
ππ 
{
∫∫ 	
foreach
ºº 
(
ºº 
var
ºº 
cb
ºº 
in
ºº 
m_CommandBuffers
ºº /
.
ºº/ 0
Values
ºº0 6
)
ºº6 7
{
ΩΩ 
m_Camera
ææ 
.
ææ !
RemoveCommandBuffer
ææ ,
(
ææ, -
cb
ææ- /
.
ææ/ 0
Key
ææ0 3
,
ææ3 4
cb
ææ5 7
.
ææ7 8
Value
ææ8 =
)
ææ= >
;
ææ> ?
cb
øø 
.
øø 
Value
øø 
.
øø 
Dispose
øø  
(
øø  !
)
øø! "
;
øø" #
}
¿¿ 
m_CommandBuffers
¬¬ 
.
¬¬ 
Clear
¬¬ "
(
¬¬" #
)
¬¬# $
;
¬¬$ %
if
≈≈ 
(
≈≈ 
profile
≈≈ 
!=
≈≈ 
null
≈≈ 
)
≈≈  
DisableComponents
∆∆ !
(
∆∆! "
)
∆∆" #
;
∆∆# $
m_Components
»» 
.
»» 
Clear
»» 
(
»» 
)
»»  
;
»»  !
m_MaterialFactory
ÀÀ 
.
ÀÀ 
Dispose
ÀÀ %
(
ÀÀ% &
)
ÀÀ& '
;
ÀÀ' ($
m_RenderTextureFactory
ÃÃ "
.
ÃÃ" #
Dispose
ÃÃ# *
(
ÃÃ* +
)
ÃÃ+ ,
;
ÃÃ, -
GraphicsUtils
ÕÕ 
.
ÕÕ 
Dispose
ÕÕ !
(
ÕÕ! "
)
ÕÕ" #
;
ÕÕ# $
}
ŒŒ 	
public
–– 
void
–– "
ResetTemporalEffects
–– (
(
––( )
)
––) *
{
—— 	
m_Taa
““ 
.
““ 
ResetHistory
““ 
(
““ 
)
““  
;
““  !
m_MotionBlur
”” 
.
”” 
ResetHistory
”” %
(
””% &
)
””& '
;
””' (
m_EyeAdaptation
‘‘ 
.
‘‘ 
ResetHistory
‘‘ (
(
‘‘( )
)
‘‘) *
;
‘‘* +
}
’’ 	
List
ŸŸ 
<
ŸŸ )
PostProcessingComponentBase
ŸŸ (
>
ŸŸ( )"
m_ComponentsToEnable
ŸŸ* >
=
ŸŸ? @
new
ŸŸA D
List
ŸŸE I
<
ŸŸI J)
PostProcessingComponentBase
ŸŸJ e
>
ŸŸe f
(
ŸŸf g
)
ŸŸg h
;
ŸŸh i
List
⁄⁄ 
<
⁄⁄ )
PostProcessingComponentBase
⁄⁄ (
>
⁄⁄( )#
m_ComponentsToDisable
⁄⁄* ?
=
⁄⁄@ A
new
⁄⁄B E
List
⁄⁄F J
<
⁄⁄J K)
PostProcessingComponentBase
⁄⁄K f
>
⁄⁄f g
(
⁄⁄g h
)
⁄⁄h i
;
⁄⁄i j
void
‹‹ 
CheckObservers
‹‹ 
(
‹‹ 
)
‹‹ 
{
›› 	
foreach
ﬁﬁ 
(
ﬁﬁ 
var
ﬁﬁ 
cs
ﬁﬁ 
in
ﬁﬁ 
m_ComponentStates
ﬁﬁ 0
)
ﬁﬁ0 1
{
ﬂﬂ 
var
‡‡ 
	component
‡‡ 
=
‡‡ 
cs
‡‡  "
.
‡‡" #
Key
‡‡# &
;
‡‡& '
var
·· 
state
·· 
=
·· 
	component
·· %
.
··% &
GetModel
··& .
(
··. /
)
··/ 0
.
··0 1
enabled
··1 8
;
··8 9
if
„„ 
(
„„ 
state
„„ 
!=
„„ 
cs
„„ 
.
„„  
Value
„„  %
)
„„% &
{
‰‰ 
if
ÂÂ 
(
ÂÂ 
state
ÂÂ 
)
ÂÂ "
m_ComponentsToEnable
ÂÂ 3
.
ÂÂ3 4
Add
ÂÂ4 7
(
ÂÂ7 8
	component
ÂÂ8 A
)
ÂÂA B
;
ÂÂB C
else
ÊÊ #
m_ComponentsToDisable
ÊÊ .
.
ÊÊ. /
Add
ÊÊ/ 2
(
ÊÊ2 3
	component
ÊÊ3 <
)
ÊÊ< =
;
ÊÊ= >
}
ÁÁ 
}
ËË 
for
ÍÍ 
(
ÍÍ 
int
ÍÍ 
i
ÍÍ 
=
ÍÍ 
$num
ÍÍ 
;
ÍÍ 
i
ÍÍ 
<
ÍÍ #
m_ComponentsToDisable
ÍÍ  5
.
ÍÍ5 6
Count
ÍÍ6 ;
;
ÍÍ; <
i
ÍÍ= >
++
ÍÍ> @
)
ÍÍ@ A
{
ÎÎ 
var
ÏÏ 
c
ÏÏ 
=
ÏÏ #
m_ComponentsToDisable
ÏÏ -
[
ÏÏ- .
i
ÏÏ. /
]
ÏÏ/ 0
;
ÏÏ0 1
m_ComponentStates
ÌÌ !
[
ÌÌ! "
c
ÌÌ" #
]
ÌÌ# $
=
ÌÌ% &
false
ÌÌ' ,
;
ÌÌ, -
c
ÓÓ 
.
ÓÓ 
	OnDisable
ÓÓ 
(
ÓÓ 
)
ÓÓ 
;
ÓÓ 
}
ÔÔ 
for
ÒÒ 
(
ÒÒ 
int
ÒÒ 
i
ÒÒ 
=
ÒÒ 
$num
ÒÒ 
;
ÒÒ 
i
ÒÒ 
<
ÒÒ "
m_ComponentsToEnable
ÒÒ  4
.
ÒÒ4 5
Count
ÒÒ5 :
;
ÒÒ: ;
i
ÒÒ< =
++
ÒÒ= ?
)
ÒÒ? @
{
ÚÚ 
var
ÛÛ 
c
ÛÛ 
=
ÛÛ "
m_ComponentsToEnable
ÛÛ ,
[
ÛÛ, -
i
ÛÛ- .
]
ÛÛ. /
;
ÛÛ/ 0
m_ComponentStates
ÙÙ !
[
ÙÙ! "
c
ÙÙ" #
]
ÙÙ# $
=
ÙÙ% &
true
ÙÙ' +
;
ÙÙ+ ,
c
ıı 
.
ıı 
OnEnable
ıı 
(
ıı 
)
ıı 
;
ıı 
}
ˆˆ #
m_ComponentsToDisable
¯¯ !
.
¯¯! "
Clear
¯¯" '
(
¯¯' (
)
¯¯( )
;
¯¯) *"
m_ComponentsToEnable
˘˘  
.
˘˘  !
Clear
˘˘! &
(
˘˘& '
)
˘˘' (
;
˘˘( )
}
˙˙ 	
void
¸¸ 
DisableComponents
¸¸ 
(
¸¸ 
)
¸¸  
{
˝˝ 	
foreach
˛˛ 
(
˛˛ 
var
˛˛ 
	component
˛˛ "
in
˛˛# %
m_Components
˛˛& 2
)
˛˛2 3
{
ˇˇ 
var
ÄÄ 
model
ÄÄ 
=
ÄÄ 
	component
ÄÄ %
.
ÄÄ% &
GetModel
ÄÄ& .
(
ÄÄ. /
)
ÄÄ/ 0
;
ÄÄ0 1
if
ÅÅ 
(
ÅÅ 
model
ÅÅ 
!=
ÅÅ 
null
ÅÅ !
&&
ÅÅ" $
model
ÅÅ% *
.
ÅÅ* +
enabled
ÅÅ+ 2
)
ÅÅ2 3
	component
ÇÇ 
.
ÇÇ 
	OnDisable
ÇÇ '
(
ÇÇ' (
)
ÇÇ( )
;
ÇÇ) *
}
ÉÉ 
}
ÑÑ 	
CommandBuffer
ãã 
AddCommandBuffer
ãã &
<
ãã& '
T
ãã' (
>
ãã( )
(
ãã) *
CameraEvent
ãã* 5
evt
ãã6 9
,
ãã9 :
string
ãã; A
name
ããB F
)
ããF G
where
åå 
T
åå 
:
åå !
PostProcessingModel
åå )
{
çç 	
var
éé 
cb
éé 
=
éé 
new
éé 
CommandBuffer
éé &
{
éé' (
name
éé) -
=
éé. /
name
éé0 4
}
éé5 6
;
éé6 7
var
èè 
kvp
èè 
=
èè 
new
èè 
KeyValuePair
èè &
<
èè& '
CameraEvent
èè' 2
,
èè2 3
CommandBuffer
èè4 A
>
èèA B
(
èèB C
evt
èèC F
,
èèF G
cb
èèH J
)
èèJ K
;
èèK L
m_CommandBuffers
êê 
.
êê 
Add
êê  
(
êê  !
typeof
êê! '
(
êê' (
T
êê( )
)
êê) *
,
êê* +
kvp
êê, /
)
êê/ 0
;
êê0 1
m_Camera
ëë 
.
ëë 
AddCommandBuffer
ëë %
(
ëë% &
evt
ëë& )
,
ëë) *
kvp
ëë+ .
.
ëë. /
Value
ëë/ 4
)
ëë4 5
;
ëë5 6
return
íí 
kvp
íí 
.
íí 
Value
íí 
;
íí 
}
ìì 	
void
ïï !
RemoveCommandBuffer
ïï  
<
ïï  !
T
ïï! "
>
ïï" #
(
ïï# $
)
ïï$ %
where
ññ 
T
ññ 
:
ññ !
PostProcessingModel
ññ )
{
óó 	
KeyValuePair
òò 
<
òò 
CameraEvent
òò $
,
òò$ %
CommandBuffer
òò& 3
>
òò3 4
kvp
òò5 8
;
òò8 9
var
ôô 
type
ôô 
=
ôô 
typeof
ôô 
(
ôô 
T
ôô 
)
ôô  
;
ôô  !
if
õõ 
(
õõ 
!
õõ 
m_CommandBuffers
õõ !
.
õõ! "
TryGetValue
õõ" -
(
õõ- .
type
õõ. 2
,
õõ2 3
out
õõ4 7
kvp
õõ8 ;
)
õõ; <
)
õõ< =
return
úú 
;
úú 
m_Camera
ûû 
.
ûû !
RemoveCommandBuffer
ûû (
(
ûû( )
kvp
ûû) ,
.
ûû, -
Key
ûû- 0
,
ûû0 1
kvp
ûû2 5
.
ûû5 6
Value
ûû6 ;
)
ûû; <
;
ûû< =
m_CommandBuffers
üü 
.
üü 
Remove
üü #
(
üü# $
type
üü$ (
)
üü( )
;
üü) *
kvp
†† 
.
†† 
Value
†† 
.
†† 
Dispose
†† 
(
†† 
)
†† 
;
††  
}
°° 	
CommandBuffer
££ 
GetCommandBuffer
££ &
<
££& '
T
££' (
>
££( )
(
££) *
CameraEvent
££* 5
evt
££6 9
,
££9 :
string
££; A
name
££B F
)
££F G
where
§§ 
T
§§ 
:
§§ !
PostProcessingModel
§§ )
{
•• 	
CommandBuffer
¶¶ 
cb
¶¶ 
;
¶¶ 
KeyValuePair
ßß 
<
ßß 
CameraEvent
ßß $
,
ßß$ %
CommandBuffer
ßß& 3
>
ßß3 4
kvp
ßß5 8
;
ßß8 9
if
©© 
(
©© 
!
©© 
m_CommandBuffers
©© !
.
©©! "
TryGetValue
©©" -
(
©©- .
typeof
©©. 4
(
©©4 5
T
©©5 6
)
©©6 7
,
©©7 8
out
©©9 <
kvp
©©= @
)
©©@ A
)
©©A B
{
™™ 
cb
´´ 
=
´´ 
AddCommandBuffer
´´ %
<
´´% &
T
´´& '
>
´´' (
(
´´( )
evt
´´) ,
,
´´, -
name
´´. 2
)
´´2 3
;
´´3 4
}
¨¨ 
else
≠≠ 
if
≠≠ 
(
≠≠ 
kvp
≠≠ 
.
≠≠ 
Key
≠≠ 
!=
≠≠ 
evt
≠≠  #
)
≠≠# $
{
ÆÆ !
RemoveCommandBuffer
ØØ #
<
ØØ# $
T
ØØ$ %
>
ØØ% &
(
ØØ& '
)
ØØ' (
;
ØØ( )
cb
∞∞ 
=
∞∞ 
AddCommandBuffer
∞∞ %
<
∞∞% &
T
∞∞& '
>
∞∞' (
(
∞∞( )
evt
∞∞) ,
,
∞∞, -
name
∞∞. 2
)
∞∞2 3
;
∞∞3 4
}
±± 
else
≤≤ 
cb
≤≤ 
=
≤≤ 
kvp
≤≤ 
.
≤≤ 
Value
≤≤ 
;
≤≤  
return
¥¥ 
cb
¥¥ 
;
¥¥ 
}
µµ 	
void
∑∑ %
TryExecuteCommandBuffer
∑∑ $
<
∑∑$ %
T
∑∑% &
>
∑∑& '
(
∑∑' (2
$PostProcessingComponentCommandBuffer
∑∑( L
<
∑∑L M
T
∑∑M N
>
∑∑N O
	component
∑∑P Y
)
∑∑Y Z
where
∏∏ 
T
∏∏ 
:
∏∏ !
PostProcessingModel
∏∏ )
{
ππ 	
if
∫∫ 
(
∫∫ 
	component
∫∫ 
.
∫∫ 
active
∫∫  
)
∫∫  !
{
ªª 
var
ºº 
cb
ºº 
=
ºº 
GetCommandBuffer
ºº )
<
ºº) *
T
ºº* +
>
ºº+ ,
(
ºº, -
	component
ºº- 6
.
ºº6 7
GetCameraEvent
ºº7 E
(
ººE F
)
ººF G
,
ººG H
	component
ººI R
.
ººR S
GetName
ººS Z
(
ººZ [
)
ºº[ \
)
ºº\ ]
;
ºº] ^
cb
ΩΩ 
.
ΩΩ 
Clear
ΩΩ 
(
ΩΩ 
)
ΩΩ 
;
ΩΩ 
	component
ææ 
.
ææ #
PopulateCommandBuffer
ææ /
(
ææ/ 0
cb
ææ0 2
)
ææ2 3
;
ææ3 4
}
øø 
else
¿¿ !
RemoveCommandBuffer
¿¿ $
<
¿¿$ %
T
¿¿% &
>
¿¿& '
(
¿¿' (
)
¿¿( )
;
¿¿) *
}
¡¡ 	
bool
√√ '
TryPrepareUberImageEffect
√√ &
<
√√& '
T
√√' (
>
√√( )
(
√√) *2
$PostProcessingComponentRenderTexture
√√* N
<
√√N O
T
√√O P
>
√√P Q
	component
√√R [
,
√√[ \
Material
√√] e
material
√√f n
)
√√n o
where
ƒƒ 
T
ƒƒ 
:
ƒƒ !
PostProcessingModel
ƒƒ )
{
≈≈ 	
if
∆∆ 
(
∆∆ 
!
∆∆ 
	component
∆∆ 
.
∆∆ 
active
∆∆ !
)
∆∆! "
return
«« 
false
«« 
;
«« 
	component
…… 
.
…… 
Prepare
…… 
(
…… 
material
…… &
)
……& '
;
……' (
return
   
true
   
;
   
}
ÀÀ 	
T
ÕÕ 	
AddComponent
ÕÕ
 
<
ÕÕ 
T
ÕÕ 
>
ÕÕ 
(
ÕÕ 
T
ÕÕ 
	component
ÕÕ %
)
ÕÕ% &
where
ŒŒ 
T
ŒŒ 
:
ŒŒ )
PostProcessingComponentBase
ŒŒ 1
{
œœ 	
m_Components
–– 
.
–– 
Add
–– 
(
–– 
	component
–– &
)
––& '
;
––' (
return
—— 
	component
—— 
;
—— 
}
““ 	
}
’’ 
}÷÷ Ω
•D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\PostProcessingComponent.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

abstract 
class '
PostProcessingComponentBase 5
{ 
public !
PostProcessingContext $
context% ,
;, -
public		 
virtual		 
DepthTextureMode		 '
GetCameraFlags		( 6
(		6 7
)		7 8
{

 	
return 
DepthTextureMode #
.# $
None$ (
;( )
} 	
public 
abstract 
bool 
active #
{$ %
get& )
;) *
}+ ,
public 
virtual 
void 
OnEnable $
($ %
)% &
{ 	
}	 

public 
virtual 
void 
	OnDisable %
(% &
)& '
{ 	
}	 

public 
abstract 
PostProcessingModel +
GetModel, 4
(4 5
)5 6
;6 7
} 
public 

abstract 
class #
PostProcessingComponent 1
<1 2
T2 3
>3 4
:5 6'
PostProcessingComponentBase7 R
where 
T 
: 
PostProcessingModel %
{ 
public 
T 
model 
{ 
get 
; 
internal &
set' *
;* +
}, -
public 
virtual 
void 
Init  
(  !!
PostProcessingContext! 6
pcontext7 ?
,? @
TA B
pmodelC I
)I J
{ 	
context   
=   
pcontext   
;   
model!! 
=!! 
pmodel!! 
;!! 
}"" 	
public$$ 
override$$ 
PostProcessingModel$$ +
GetModel$$, 4
($$4 5
)$$5 6
{%% 	
return&& 
model&& 
;&& 
}'' 	
}(( 
public** 

abstract** 
class** 0
$PostProcessingComponentCommandBuffer** >
<**> ?
T**? @
>**@ A
:**B C#
PostProcessingComponent**D [
<**[ \
T**\ ]
>**] ^
where++ 
T++ 
:++ 
PostProcessingModel++ %
{,, 
public-- 
abstract-- 
CameraEvent-- #
GetCameraEvent--$ 2
(--2 3
)--3 4
;--4 5
public// 
abstract// 
string// 
GetName// &
(//& '
)//' (
;//( )
public11 
abstract11 
void11 !
PopulateCommandBuffer11 2
(112 3
CommandBuffer113 @
cb11A C
)11C D
;11D E
}22 
public44 

abstract44 
class44 0
$PostProcessingComponentRenderTexture44 >
<44> ?
T44? @
>44@ A
:44B C#
PostProcessingComponent44D [
<44[ \
T44\ ]
>44] ^
where55 
T55 
:55 
PostProcessingModel55 %
{66 
public77 
virtual77 
void77 
Prepare77 #
(77# $
Material77$ ,
material77- 5
)775 6
{88 	
}88	 

}99 
}:: Ë
£D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\PostProcessingContext.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

class !
PostProcessingContext &
{ 
public !
PostProcessingProfile $
profile% ,
;, -
public 
Camera 
camera 
; 
public 
MaterialFactory 
materialFactory .
;. /
public		  
RenderTextureFactory		 # 
renderTextureFactory		$ 8
;		8 9
public 
bool 
interrupted 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
public 
void 
	Interrupt 
( 
) 
{ 	
interrupted 
= 
true 
; 
} 	
public !
PostProcessingContext $
Reset% *
(* +
)+ ,
{ 	
profile 
= 
null 
; 
camera 
= 
null 
; 
materialFactory 
= 
null "
;" # 
renderTextureFactory  
=! "
null# '
;' (
interrupted 
= 
false 
;  
return 
this 
; 
} 	
public 
bool 
isGBufferAvailable &
{ 	
get 
{ 
return 
camera 
.  
actualRenderingPath  3
==4 6
RenderingPath7 D
.D E
DeferredShadingE T
;T U
}V W
}   	
public"" 
bool"" 
isHdr"" 
{## 	
get&& 
{&& 
return&& 
camera&& 
.&&  
allowHDR&&  (
;&&( )
}&&* +
}** 	
public,, 
int,, 
width,, 
{-- 	
get.. 
{.. 
return.. 
camera.. 
...  

pixelWidth..  *
;..* +
}.., -
}// 	
public11 
int11 
height11 
{22 	
get33 
{33 
return33 
camera33 
.33  
pixelHeight33  +
;33+ ,
}33- .
}44 	
public66 
Rect66 
viewport66 
{77 	
get88 
{88 
return88 
camera88 
.88  
rect88  $
;88$ %
}88& '
}99 	
};; 
}<< ⁄

°D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\PostProcessingModel.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
[ 
Serializable 
] 
public 

abstract 
class 
PostProcessingModel -
{ 
[ 	
SerializeField	 
, 
GetSet 
(  
$str  )
)) *
]* +
bool		 
	m_Enabled		 
;		 
public

 
bool

 
enabled

 
{ 	
get 
{ 
return 
	m_Enabled "
;" #
}$ %
set 
{ 
	m_Enabled 
= 
value !
;! "
if 
( 
value 
) 

OnValidate 
( 
)  
;  !
} 
} 	
public 
abstract 
void 
Reset "
(" #
)# $
;$ %
public 
virtual 
void 

OnValidate &
(& '
)' (
{ 	
}	 

} 
} Ç*
£D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\PostProcessingProfile.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

class !
PostProcessingProfile &
:' (
ScriptableObject) 9
{ 
public		 "
BuiltinDebugViewsModel		 %

debugViews		& 0
=		1 2
new		3 6"
BuiltinDebugViewsModel		7 M
(		M N
)		N O
;		O P
public

 
FogModel

 
fog

 
=

 
new

 !
FogModel

" *
(

* +
)

+ ,
;

, -
public 
AntialiasingModel  
antialiasing! -
=. /
new0 3
AntialiasingModel4 E
(E F
)F G
;G H
public !
AmbientOcclusionModel $
ambientOcclusion% 5
=6 7
new8 ;!
AmbientOcclusionModel< Q
(Q R
)R S
;S T
public &
ScreenSpaceReflectionModel )!
screenSpaceReflection* ?
=@ A
newB E&
ScreenSpaceReflectionModelF `
(` a
)a b
;b c
public 
DepthOfFieldModel  
depthOfField! -
=. /
new0 3
DepthOfFieldModel4 E
(E F
)F G
;G H
public 
MotionBlurModel 

motionBlur )
=* +
new, /
MotionBlurModel0 ?
(? @
)@ A
;A B
public 
EyeAdaptationModel !
eyeAdaptation" /
=0 1
new2 5
EyeAdaptationModel6 H
(H I
)I J
;J K
public 

BloomModel 
bloom 
=  !
new" %

BloomModel& 0
(0 1
)1 2
;2 3
public 
ColorGradingModel  
colorGrading! -
=. /
new0 3
ColorGradingModel4 E
(E F
)F G
;G H
public 
UserLutModel 
userLut #
=$ %
new& )
UserLutModel* 6
(6 7
)7 8
;8 9
public $
ChromaticAberrationModel '
chromaticAberration( ;
=< =
new> A$
ChromaticAberrationModelB Z
(Z [
)[ \
;\ ]
public 

GrainModel 
grain 
=  !
new" %

GrainModel& 0
(0 1
)1 2
;2 3
public 
VignetteModel 
vignette %
=& '
new( +
VignetteModel, 9
(9 :
): ;
;; <
public 
DitheringModel 
	dithering '
=( )
new* -
DitheringModel. <
(< =
)= >
;> ?
[ 	
Serializable	 
] 
public 
class 
MonitorSettings $
{ 	
public 
Action 
< 
RenderTexture '
>' ( 
onFrameEndEditorOnly) =
;= >
public"" 
int"" 
currentMonitorID"" '
=""( )
$num""* +
;""+ ,
public## 
bool## 
refreshOnPlay## %
=##& '
false##( -
;##- .
public&& 
enum&& 
HistogramMode&& %
{'' 
Red(( 
=(( 
$num(( 
,(( 
Green)) 
=)) 
$num)) 
,)) 
Blue** 
=** 
$num** 
,** 
	Luminance++ 
=++ 
$num++ 
,++ 
	RGBMerged,, 
,,, 
RGBSplit-- 
}.. 
public00 
HistogramMode00  
histogramMode00! .
=00/ 0
HistogramMode001 >
.00> ?
	Luminance00? H
;00H I
public33 
float33 
waveformExposure33 )
=33* +
$num33, 1
;331 2
public44 
bool44 
	waveformY44 !
=44" #
false44$ )
;44) *
public55 
bool55 
	waveformR55 !
=55" #
true55$ (
;55( )
public66 
bool66 
	waveformG66 !
=66" #
true66$ (
;66( )
public77 
bool77 
	waveformB77 !
=77" #
true77$ (
;77( )
public:: 
float:: 
paradeExposure:: '
=::( )
$num::* /
;::/ 0
public== 
float== 
vectorscopeExposure== ,
===- .
$num==/ 4
;==4 5
public>> 
bool>> %
vectorscopeShowBackground>> 1
=>>2 3
true>>4 8
;>>8 9
}?? 	
publicAA 
MonitorSettingsAA 
monitorsAA '
=AA( )
newAA* -
MonitorSettingsAA. =
(AA= >
)AA> ?
;AA? @
}CC 
}DD £ 
•D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Utils\ColorGradingCurve.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
[ 
Serializable 
] 
public 

sealed 
class 
ColorGradingCurve )
{		 
public

 
AnimationCurve

 
curve

 #
;

# $
[ 	
SerializeField	 
] 
bool 
m_Loop 
; 
[ 	
SerializeField	 
] 
float 
m_ZeroValue 
; 
[ 	
SerializeField	 
] 
float 
m_Range 
; 
AnimationCurve "
m_InternalLoopingCurve -
;- .
public 
ColorGradingCurve  
(  !
AnimationCurve! /
curve0 5
,5 6
float7 <
	zeroValue= F
,F G
boolH L
loopM Q
,Q R
Vector2S Z
bounds[ a
)a b
{ 	
this 
. 
curve 
= 
curve 
; 
m_ZeroValue 
= 
	zeroValue #
;# $
m_Loop 
= 
loop 
; 
m_Range 
= 
bounds 
. 
	magnitude &
;& '
} 	
public 
void 
Cache 
( 
) 
{   	
if!! 
(!! 
!!! 
m_Loop!! 
)!! 
return"" 
;"" 
var$$ 
length$$ 
=$$ 
curve$$ 
.$$ 
length$$ %
;$$% &
if&& 
(&& 
length&& 
<&& 
$num&& 
)&& 
return'' 
;'' 
if)) 
()) "
m_InternalLoopingCurve)) &
==))' )
null))* .
))). /"
m_InternalLoopingCurve** &
=**' (
new**) ,
AnimationCurve**- ;
(**; <
)**< =
;**= >
var,, 
prev,, 
=,, 
curve,, 
[,, 
length,, #
-,,$ %
$num,,& '
],,' (
;,,( )
prev-- 
.-- 
time-- 
-=-- 
m_Range--  
;--  !
var.. 
next.. 
=.. 
curve.. 
[.. 
$num.. 
].. 
;..  
next// 
.// 
time// 
+=// 
m_Range//  
;//  !"
m_InternalLoopingCurve00 "
.00" #
keys00# '
=00( )
curve00* /
.00/ 0
keys000 4
;004 5"
m_InternalLoopingCurve11 "
.11" #
AddKey11# )
(11) *
prev11* .
)11. /
;11/ 0"
m_InternalLoopingCurve22 "
.22" #
AddKey22# )
(22) *
next22* .
)22. /
;22/ 0
}33 	
public55 
float55 
Evaluate55 
(55 
float55 #
t55$ %
)55% &
{66 	
if77 
(77 
curve77 
.77 
length77 
==77 
$num77  !
)77! "
return88 
m_ZeroValue88 "
;88" #
if:: 
(:: 
!:: 
m_Loop:: 
||:: 
curve::  
.::  !
length::! '
==::( *
$num::+ ,
)::, -
return;; 
curve;; 
.;; 
Evaluate;; %
(;;% &
t;;& '
);;' (
;;;( )
return== "
m_InternalLoopingCurve== )
.==) *
Evaluate==* 2
(==2 3
t==3 4
)==4 5
;==5 6
}>> 	
}?? 
}@@ ß\
°D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Utils\GraphicsUtils.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

static 
class 
GraphicsUtils %
{ 
public 
static 
bool 
isLinearColorSpace -
{ 	
get		 
{		 
return		 
QualitySettings		 (
.		( )
activeColorSpace		) 9
==		: <

ColorSpace		= G
.		G H
Linear		H N
;		N O
}		P Q
}

 	
public 
static 
bool 
supportsDX11 '
{ 	
get 
{ 
return 

SystemInfo #
.# $
graphicsShaderLevel$ 7
>=8 :
$num; =
&&> @

SystemInfoA K
.K L"
supportsComputeShadersL b
;b c
}d e
} 	
static 
	Texture2D 
s_WhiteTexture '
;' (
public 
static 
	Texture2D 
whiteTexture  ,
{ 	
get 
{ 
if 
( 
s_WhiteTexture "
!=# %
null& *
)* +
return 
s_WhiteTexture )
;) *
s_WhiteTexture 
=  
new! $
	Texture2D% .
(. /
$num/ 0
,0 1
$num2 3
,3 4
TextureFormat5 B
.B C
ARGB32C I
,I J
falseK P
)P Q
;Q R
s_WhiteTexture 
. 
SetPixel '
(' (
$num( )
,) *
$num+ ,
,, -
new. 1
Color2 7
(7 8
$num8 :
,: ;
$num< >
,> ?
$num@ B
,B C
$numD F
)F G
)G H
;H I
s_WhiteTexture 
. 
Apply $
($ %
)% &
;& '
return!! 
s_WhiteTexture!! %
;!!% &
}"" 
}## 	
static%% 
Mesh%% 
s_Quad%% 
;%% 
public&& 
static&& 
Mesh&& 
quad&& 
{'' 	
get(( 
{)) 
if** 
(** 
s_Quad** 
!=** 
null** "
)**" #
return++ 
s_Quad++ !
;++! "
var-- 
vertices-- 
=-- 
new-- "
[--" #
]--# $
{.. 
new// 
Vector3// 
(//  
-//  !
$num//! #
,//# $
-//% &
$num//& (
,//( )
$num//* ,
)//, -
,//- .
new00 
Vector300 
(00  
$num00! #
,00# $
$num00& (
,00( )
$num00* ,
)00, -
,00- .
new11 
Vector311 
(11  
$num11! #
,11# $
-11% &
$num11& (
,11( )
$num11* ,
)11, -
,11- .
new22 
Vector322 
(22  
-22  !
$num22! #
,22# $
$num22& (
,22( )
$num22* ,
)22, -
}33 
;33 
var55 
uvs55 
=55 
new55 
[55 
]55 
{66 
new77 
Vector277 
(77  
$num77  "
,77" #
$num77$ &
)77& '
,77' (
new88 
Vector288 
(88  
$num88  "
,88" #
$num88$ &
)88& '
,88' (
new99 
Vector299 
(99  
$num99  "
,99" #
$num99$ &
)99& '
,99' (
new:: 
Vector2:: 
(::  
$num::  "
,::" #
$num::$ &
)::& '
};; 
;;; 
var== 
indices== 
=== 
new== !
[==! "
]==" #
{==$ %
$num==& '
,==' (
$num==) *
,==* +
$num==, -
,==- .
$num==/ 0
,==0 1
$num==2 3
,==3 4
$num==5 6
}==7 8
;==8 9
s_Quad?? 
=?? 
new?? 
Mesh?? !
{@@ 
verticesAA 
=AA 
verticesAA '
,AA' (
uvBB 
=BB 
uvsBB 
,BB 
	trianglesCC 
=CC 
indicesCC  '
}DD 
;DD 
s_QuadEE 
.EE 
RecalculateNormalsEE )
(EE) *
)EE* +
;EE+ ,
s_QuadFF 
.FF 
RecalculateBoundsFF (
(FF( )
)FF) *
;FF* +
returnHH 
s_QuadHH 
;HH 
}II 
}JJ 	
publicMM 
staticMM 
voidMM 
BlitMM 
(MM  
MaterialMM  (
materialMM) 1
,MM1 2
intMM3 6
passMM7 ;
)MM; <
{NN 	
GLOO 
.OO 

PushMatrixOO 
(OO 
)OO 
;OO 
{PP 
GLQQ 
.QQ 
	LoadOrthoQQ 
(QQ 
)QQ 
;QQ 
materialSS 
.SS 
SetPassSS  
(SS  !
passSS! %
)SS% &
;SS& '
GLUU 
.UU 
BeginUU 
(UU 
GLUU 
.UU 
TRIANGLE_STRIPUU *
)UU* +
;UU+ ,
{VV 
GLWW 
.WW 
	TexCoord2WW  
(WW  !
$numWW! #
,WW# $
$numWW% '
)WW' (
;WW( )
GLWW* ,
.WW, -
Vertex3WW- 4
(WW4 5
$numWW5 7
,WW7 8
$numWW9 ;
,WW; <
$numWW= A
)WWA B
;WWB C
GLXX 
.XX 
	TexCoord2XX  
(XX  !
$numXX! #
,XX# $
$numXX% '
)XX' (
;XX( )
GLXX* ,
.XX, -
Vertex3XX- 4
(XX4 5
$numXX5 7
,XX7 8
$numXX9 ;
,XX; <
$numXX= A
)XXA B
;XXB C
GLYY 
.YY 
	TexCoord2YY  
(YY  !
$numYY! #
,YY# $
$numYY% '
)YY' (
;YY( )
GLYY* ,
.YY, -
Vertex3YY- 4
(YY4 5
$numYY5 7
,YY7 8
$numYY9 ;
,YY; <
$numYY= A
)YYA B
;YYB C
GLZZ 
.ZZ 
	TexCoord2ZZ  
(ZZ  !
$numZZ! #
,ZZ# $
$numZZ% '
)ZZ' (
;ZZ( )
GLZZ* ,
.ZZ, -
Vertex3ZZ- 4
(ZZ4 5
$numZZ5 7
,ZZ7 8
$numZZ9 ;
,ZZ; <
$numZZ= A
)ZZA B
;ZZB C
}[[ 
GL\\ 
.\\ 
End\\ 
(\\ 
)\\ 
;\\ 
}]] 
GL^^ 
.^^ 
	PopMatrix^^ 
(^^ 
)^^ 
;^^ 
}__ 	
publicaa 
staticaa 
voidaa 
ClearAndBlitaa '
(aa' (
Textureaa( /
sourceaa0 6
,aa6 7
RenderTextureaa8 E
destinationaaF Q
,aaQ R
MaterialaaS [
materialaa\ d
,aad e
intaaf i
passaaj n
,aan o
boolaap t

clearColoraau 
=
aaÄ Å
true
aaÇ Ü
,
aaÜ á
bool
aaà å

clearDepth
aaç ó
=
aaò ô
false
aaö ü
)
aaü †
{bb 	
varcc 
oldRTcc 
=cc 
RenderTexturecc %
.cc% &
activecc& ,
;cc, -
RenderTexturedd 
.dd 
activedd  
=dd! "
destinationdd# .
;dd. /
GLff 
.ff 
Clearff 
(ff 
falseff 
,ff 

clearColorff &
,ff& '
Colorff( -
.ff- .
clearff. 3
)ff3 4
;ff4 5
GLgg 
.gg 

PushMatrixgg 
(gg 
)gg 
;gg 
{hh 
GLii 
.ii 
	LoadOrthoii 
(ii 
)ii 
;ii 
materialkk 
.kk 

SetTexturekk #
(kk# $
$strkk$ .
,kk. /
sourcekk0 6
)kk6 7
;kk7 8
materialll 
.ll 
SetPassll  
(ll  !
passll! %
)ll% &
;ll& '
GLnn 
.nn 
Beginnn 
(nn 
GLnn 
.nn 
TRIANGLE_STRIPnn *
)nn* +
;nn+ ,
{oo 
GLpp 
.pp 
	TexCoord2pp  
(pp  !
$numpp! #
,pp# $
$numpp% '
)pp' (
;pp( )
GLpp* ,
.pp, -
Vertex3pp- 4
(pp4 5
$numpp5 7
,pp7 8
$numpp9 ;
,pp; <
$numpp= A
)ppA B
;ppB C
GLqq 
.qq 
	TexCoord2qq  
(qq  !
$numqq! #
,qq# $
$numqq% '
)qq' (
;qq( )
GLqq* ,
.qq, -
Vertex3qq- 4
(qq4 5
$numqq5 7
,qq7 8
$numqq9 ;
,qq; <
$numqq= A
)qqA B
;qqB C
GLrr 
.rr 
	TexCoord2rr  
(rr  !
$numrr! #
,rr# $
$numrr% '
)rr' (
;rr( )
GLrr* ,
.rr, -
Vertex3rr- 4
(rr4 5
$numrr5 7
,rr7 8
$numrr9 ;
,rr; <
$numrr= A
)rrA B
;rrB C
GLss 
.ss 
	TexCoord2ss  
(ss  !
$numss! #
,ss# $
$numss% '
)ss' (
;ss( )
GLss* ,
.ss, -
Vertex3ss- 4
(ss4 5
$numss5 7
,ss7 8
$numss9 ;
,ss; <
$numss= A
)ssA B
;ssB C
}tt 
GLuu 
.uu 
Enduu 
(uu 
)uu 
;uu 
}vv 
GLww 
.ww 
	PopMatrixww 
(ww 
)ww 
;ww 
RenderTextureyy 
.yy 
activeyy  
=yy! "
oldRTyy# (
;yy( )
}zz 	
public|| 
static|| 
void|| 
Destroy|| "
(||" #
UnityObject||# .
obj||/ 2
)||2 3
{}} 	
if~~ 
(~~ 
obj~~ 
!=~~ 
null~~ 
)~~ 
{ 
if
ÅÅ 
(
ÅÅ 
Application
ÅÅ 
.
ÅÅ  
	isPlaying
ÅÅ  )
)
ÅÅ) *
UnityObject
ÇÇ 
.
ÇÇ  
Destroy
ÇÇ  '
(
ÇÇ' (
obj
ÇÇ( +
)
ÇÇ+ ,
;
ÇÇ, -
else
ÉÉ 
UnityObject
ÑÑ 
.
ÑÑ  
DestroyImmediate
ÑÑ  0
(
ÑÑ0 1
obj
ÑÑ1 4
)
ÑÑ4 5
;
ÑÑ5 6
}
àà 
}
ââ 	
public
ãã 
static
ãã 
void
ãã 
Dispose
ãã "
(
ãã" #
)
ãã# $
{
åå 	
Destroy
çç 
(
çç 
s_Quad
çç 
)
çç 
;
çç 
}
éé 	
}
èè 
}êê ÿ
£D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Utils\MaterialFactory.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class 
MaterialFactory '
:( )
IDisposable* 5
{		 

Dictionary

 
<

 
string

 
,

 
Material

 #
>

# $
m_Materials

% 0
;

0 1
public 
MaterialFactory 
( 
)  
{ 	
m_Materials 
= 
new 

Dictionary (
<( )
string) /
,/ 0
Material1 9
>9 :
(: ;
); <
;< =
} 	
public 
Material 
Get 
( 
string "

shaderName# -
)- .
{ 	
Material 
material 
; 
if 
( 
! 
m_Materials 
. 
TryGetValue (
(( )

shaderName) 3
,3 4
out5 8
material9 A
)A B
)B C
{ 
var 
shader 
= 
Shader #
.# $
Find$ (
(( )

shaderName) 3
)3 4
;4 5
if 
( 
shader 
== 
null "
)" #
throw 
new 
ArgumentException /
(/ 0
string0 6
.6 7
Format7 =
(= >
$str> V
,V W

shaderNameX b
)b c
)c d
;d e
material 
= 
new 
Material '
(' (
shader( .
). /
{ 
name 
= 
string !
.! "
Format" (
(( )
$str) 7
,7 8

shaderName9 C
.C D
	SubstringD M
(M N

shaderNameN X
.X Y
LastIndexOfY d
(d e
$stre h
)h i
+j k
$numl m
)m n
)n o
,o p
	hideFlags 
= 
	HideFlags  )
.) *
DontSave* 2
}   
;   
m_Materials"" 
."" 
Add"" 
(""  

shaderName""  *
,""* +
material"", 4
)""4 5
;""5 6
}## 
return%% 
material%% 
;%% 
}&& 	
public(( 
void(( 
Dispose(( 
((( 
)(( 
{)) 	
var** 

enumerator** 
=** 
m_Materials** (
.**( )
GetEnumerator**) 6
(**6 7
)**7 8
;**8 9
while++ 
(++ 

enumerator++ 
.++ 
MoveNext++ &
(++& '
)++' (
)++( )
{,, 
var-- 
material-- 
=-- 

enumerator-- )
.--) *
Current--* 1
.--1 2
Value--2 7
;--7 8
GraphicsUtils.. 
... 
Destroy.. %
(..% &
material..& .
)... /
;../ 0
}// 
m_Materials11 
.11 
Clear11 
(11 
)11 
;11  
}22 	
}33 
}44 ƒ+
®D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Utils\RenderTextureFactory.cs
	namespace 	
UnityEngine
 
. 
PostProcessing $
{ 
public 

sealed 
class  
RenderTextureFactory ,
:- .
IDisposable/ :
{ 
HashSet 
< 
RenderTexture 
> 
m_TemporaryRTs -
;- .
public

  
RenderTextureFactory

 #
(

# $
)

$ %
{ 	
m_TemporaryRTs 
= 
new  
HashSet! (
<( )
RenderTexture) 6
>6 7
(7 8
)8 9
;9 :
} 	
public 
RenderTexture 
Get  
(  !
RenderTexture! .
baseRenderTexture/ @
)@ A
{ 	
return 
Get 
( 
baseRenderTexture !
.! "
width" '
,' (
baseRenderTexture !
.! "
height" (
,( )
baseRenderTexture !
.! "
depth" '
,' (
baseRenderTexture !
.! "
format" (
,( )
baseRenderTexture !
.! "
sRGB" &
?' ("
RenderTextureReadWrite) ?
.? @
sRGB@ D
:E F"
RenderTextureReadWriteG ]
.] ^
Linear^ d
,d e
baseRenderTexture !
.! "

filterMode" ,
,, -
baseRenderTexture !
.! "
wrapMode" *
) 
; 
} 	
public 
RenderTexture 
Get  
(  !
int! $
width% *
,* +
int, /
height0 6
,6 7
int8 ;
depthBuffer< G
=H I
$numJ K
,K L
RenderTextureFormatM `
formata g
=h i
RenderTextureFormatj }
.} ~
ARGBHalf	~ Ü
,
Ü á$
RenderTextureReadWrite
à û
rw
ü °
=
¢ £$
RenderTextureReadWrite
§ ∫
.
∫ ª
Default
ª ¬
,
¬ √

FilterMode
ƒ Œ

filterMode
œ Ÿ
=
⁄ €

FilterMode
‹ Ê
.
Ê Á
Bilinear
Á Ô
,
Ô 
TextureWrapMode
Ò Ä
wrapMode
Å â
=
ä ã
TextureWrapMode
å õ
.
õ ú
Clamp
ú °
,
° ¢
string
£ ©
name
™ Æ
=
Ø ∞
$str
± ≈
)
≈ ∆
{ 	
var 
rt 
= 
RenderTexture "
." #
GetTemporary# /
(/ 0
width0 5
,5 6
height7 =
,= >
depthBuffer? J
,J K
formatL R
,R S
rwT V
)V W
;W X
rt 
. 

filterMode 
= 

filterMode &
;& '
rt   
.   
wrapMode   
=   
wrapMode   "
;  " #
rt!! 
.!! 
name!! 
=!! 
name!! 
;!! 
m_TemporaryRTs"" 
."" 
Add"" 
("" 
rt"" !
)""! "
;""" #
return## 
rt## 
;## 
}$$ 	
public&& 
void&& 
Release&& 
(&& 
RenderTexture&& )
rt&&* ,
)&&, -
{'' 	
if(( 
((( 
rt(( 
==(( 
null(( 
)(( 
return)) 
;)) 
if++ 
(++ 
!++ 
m_TemporaryRTs++ 
.++  
Contains++  (
(++( )
rt++) +
)+++ ,
)++, -
throw,, 
new,, 
ArgumentException,, +
(,,+ ,
string,,, 2
.,,2 3
Format,,3 9
(,,9 :
$str,,: |
,,,| }
rt	,,~ Ä
)
,,Ä Å
)
,,Å Ç
;
,,Ç É
m_TemporaryRTs.. 
... 
Remove.. !
(..! "
rt.." $
)..$ %
;..% &
RenderTexture// 
.// 
ReleaseTemporary// *
(//* +
rt//+ -
)//- .
;//. /
}00 	
public22 
void22 

ReleaseAll22 
(22 
)22  
{33 	
var44 

enumerator44 
=44 
m_TemporaryRTs44 +
.44+ ,
GetEnumerator44, 9
(449 :
)44: ;
;44; <
while55 
(55 

enumerator55 
.55 
MoveNext55 &
(55& '
)55' (
)55( )
RenderTexture66 
.66 
ReleaseTemporary66 .
(66. /

enumerator66/ 9
.669 :
Current66: A
)66A B
;66B C
m_TemporaryRTs88 
.88 
Clear88  
(88  !
)88! "
;88" #
}99 	
public;; 
void;; 
Dispose;; 
(;; 
);; 
{<< 	

ReleaseAll== 
(== 
)== 
;== 
}>> 	
}?? 
}@@ ƒ
∫D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Utilities\CustomMotionTexture\ExampleWheelController.cs
public 
class "
ExampleWheelController #
:$ %
MonoBehaviour& 3
{ 
public 

float 
acceleration 
; 
public 

Renderer  
motionVectorRenderer (
;( )
	Rigidbody 
m_Rigidbody 
; 
static

 

class

 
Uniforms

 
{ 
internal 
static 
readonly  
int! $
_MotionAmount% 2
=3 4
Shader5 ;
.; <
PropertyToID< H
(H I
$strI X
)X Y
;Y Z
} 
void 
Start	 
( 
) 
{ 
m_Rigidbody 
= 
GetComponent "
<" #
	Rigidbody# ,
>, -
(- .
). /
;/ 0
m_Rigidbody 
. 
maxAngularVelocity &
=' (
$num) ,
;, -
} 
void 
Update	 
( 
) 
{ 
if 

( 
Input 
. 
GetKey 
( 
KeyCode !
.! "
UpArrow" )
)) *
)* +
m_Rigidbody 
. 
AddRelativeTorque )
() *
new* -
Vector3. 5
(5 6
-6 7
$num7 8
*9 :
acceleration; G
,G H
$numI J
,J K
$numL M
)M N
,N O
	ForceModeP Y
.Y Z
AccelerationZ f
)f g
;g h
else 
if 
( 
Input 
. 
GetKey 
( 
KeyCode &
.& '
	DownArrow' 0
)0 1
)1 2
m_Rigidbody 
. 
AddRelativeTorque )
() *
new* -
Vector3. 5
(5 6
$num6 7
*8 9
acceleration: F
,F G
$numH I
,I J
$numK L
)L M
,M N
	ForceModeO X
.X Y
AccelerationY e
)e f
;f g
float 
m 
= 
- 
m_Rigidbody 
. 
angularVelocity .
.. /
x/ 0
/1 2
$num3 6
;6 7
if 

(  
motionVectorRenderer  
)  ! 
motionVectorRenderer  
.  !
material! )
.) *
SetFloat* 2
(2 3
Uniforms3 ;
.; <
_MotionAmount< I
,I J
MathfK P
.P Q
ClampQ V
(V W
mW X
,X Y
-Z [
$num[ `
,` a
$numb g
)g h
)h i
;i j
}   
}!! —
óD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\alien_boss_bullet_script.cs
public 
class $
alien_boss_bullet_script %
:& '
MonoBehaviour( 5
{ 
private 
	Rigidbody 
rb 
; 
private 
int 
speed 
= 
$num 
; 
private 
int 
rebounds_number 
;  
public		 

static		 
bool		 
change		 
;		 
private 
void 
Start 
( 
) 
{ 
rb 

= 
this 
. 
GetComponent 
< 
	Rigidbody (
>( )
() *
)* +
;+ ,
rb 

.
 
velocity 
= 
	transform 
.  
forward  '
*( )
speed* /
;/ 0
} 
private 
void 
OnTriggerExit 
( 
Collider '
collider( 0
)0 1
{ 
if 

( 
collider 
. 
tag 
== 
$str '
)' (
{ 	
Destroy 
( 

gameObject 
) 
;  
} 	
} 
private 
void 
OnTriggerEnter 
(  
Collider  (
other) .
). /
{ 
if 

( 
( 
other 
. 

gameObject 
. 

CompareTag (
(( )
$str) 1
)1 2
)2 3
||4 6
(7 8
other8 =
.= >

gameObject> H
.H I

CompareTagI S
(S T
$strT Z
)Z [
)[ \
)\ ]
{ 	
Destroy 
( 
this 
. 

gameObject #
)# $
;$ %
if 
( 
other 
. 

gameObject  
.  !

CompareTag! +
(+ ,
$str, 4
)4 5
)5 6
SceneManager8 D
.D E
	LoadSceneE N
(N O
$strO [
)[ \
;\ ]
if 
( 
other 
. 

gameObject  
.  !

CompareTag! +
(+ ,
$str, 2
)2 3
)3 4
change6 <
== >
true? C
;C D
Destroy   
(   
other   
.   

gameObject   $
,  $ %
$num  & *
)  * +
;  + ,
}!! 	
}## 
}$$ ˇ&
íD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\alien_boss_movement.cs
public 
class 
alien_boss_movement  
:! "
MonoBehaviour# 0
{ 
public 


GameObject 
bullet 
; 
private 
int 
xFinish 
; 
private 
bool 
	nextPhase 
; 
private 
Vector3 
movement 
; 
private		 
int		 

shotNumber		 
;		 
public

 

int

 
bulletLimit

 
;

 
public 

float 
angle 
; 
void 
Start	 
( 
) 
{ 
xFinish 
= 
$num 
; 
movement 
= 
new 
Vector3 
( 
$num  
,  !
$num! "
," #
$num# $
)$ %
;% &
} 
void 
Update	 
( 
) 
{ 
	transform 
. 
GetChild 
( 
$num 
) 
. 
GetComponent *
<* +
	Transform+ 4
>4 5
(5 6
)6 7
.7 8
Rotate8 >
(> ?
new? B
Vector3C J
(J K
$numK L
,L M
$numN O
,O P
$numQ R
)R S
,S T
$numU V
)V W
;W X
	transform 
. 
LookAt 
( !
Player_movement_2DNew .
.. /
thisPosition/ ;
); <
;< =
if 

( 
! 
	nextPhase 
) 
{ 	
	transform 
. 
	Translate 
(  
movement  (
*) *
Time+ /
./ 0
	deltaTime0 9
,9 :
Space; @
.@ A
WorldA F
)F G
;G H
if 
( 
	transform 
. 
position "
." #
x# $
>% &
xFinish' .
). /
{ 
	nextPhase 
= 
true  
;  !
}   
}!! 	
if"" 

("" 
	nextPhase"" 
)"" 
{## 	
Debug$$ 
.$$ 
Log$$ 
($$ 
$str$$ $
)$$$ %
;$$% &
	transform%% 
.%% 
RotateAround%% "
(%%" #
new%%# &
Vector3%%' .
(%%. /
$num%%/ 0
,%%0 1
$num%%2 3
,%%3 4
$num%%5 6
)%%6 7
,%%7 8
new%%9 <
Vector3%%= D
(%%D E
$num%%E F
,%%F G
$num%%H I
,%%I J
$num%%K L
)%%L M
,%%M N
angle%%O T
)%%T U
;%%U V
}&& 	
if,, 

(,, 

shotNumber,, 
<=,, 
bulletLimit,, %
),,% &
{-- 	
if.. 
(.. 

shotNumber.. 
%.. 
$num.. 
==.. 
$num.. 
).. 
shoot..  %
(..% &
)..& '
;..' (

shotNumber// 
++// 
;// 
}11 	
else22 
if22 
(22 

shotNumber22 
>=22 
(22  
bulletLimit22  +
+22+ ,
$num22, -
)22- .
&&22/ 1

shotNumber222 <
<=22= ?
(22@ A
bulletLimit22A L
*22L M
$num22M O
)22O P
)22P Q
{33 	

shotNumber44 
++44 
;44 
if55 
(55 

shotNumber55 
==55 
(55 
bulletLimit55 *
*55* +
$num55+ -
)55- .
)55. /

shotNumber66 
=66 
$num66 
;66 
}77 	
}:: 
void<< 
shoot<<	 
(<< 
)<< 
{== 

gameObject?? 
.?? 
GetComponent?? 
<??  
AudioSource??  +
>??+ ,
(??, -
)??- .
.??. /
Play??/ 3
(??3 4
)??4 5
;??5 6
Instantiate@@ 
(@@ 
bullet@@ 
,@@ 
this@@  
.@@  !
	transform@@! *
.@@* +
position@@+ 3
,@@3 4
this@@5 9
.@@9 :
	transform@@: C
.@@C D
rotation@@D L
)@@L M
;@@M N
}AA 
}DD ˆ
ïD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\alien_movement_minus13.cs
public 
class "
alien_movement_minus13 #
:$ %
MonoBehaviour& 3
{ 
Vector3 
movement 
; 
public		 

int		 
speed		 
;		 
public

 

under13_variables

 
scoreFunction

 *
;

* +
void 
Start	 
( 
) 
{ 
movement 
= 
new 
Vector3 
( 
$num  
,  !
$num" #
,# $
-% &
$num& '
)' (
*) *
speed+ 0
;0 1
scoreFunction 
= 

GameObject "
." #
Find# '
(' (
$str( 4
)4 5
.5 6
GetComponent6 B
<B C
under13_variablesC T
>T U
(U V
)V W
;W X
} 
void 
Update	 
( 
) 
{ 
if 

( 
Time 
. 
	timeScale 
== 
$num 
)  
{ 	
speed 
= 
$num 
; 
} 	
else
 
if 
( 
Time 
. 
	timeScale !
==" $
$num% &
)& '
{ 	
	transform 
. 
	Translate 
(  
movement  (
*) *
Time+ /
./ 0
	deltaTime0 9
)9 :
;: ;
} 	
} 
private 
void 
OnTriggerExit 
( 
Collider '
collider( 0
)0 1
{ 
if 

( 
collider 
. 
tag 
== 
$str '
)' (
{ 	
Destroy   
(   

gameObject   
)   
;    
scoreFunction!! 
.!! 
AddScore!! "
(!!" #
)!!# $
;!!$ %
}"" 	
}## 
private$$ 
void$$ 
OnTriggerEnter$$ 
($$  
Collider$$  (
collider$$) 1
)$$1 2
{%% 
if&& 

(&& 
collider&& 
.&& 
tag&& 
==&& 
$str&& $
)&&$ %
{'' 	
SceneManager(( 
.(( 
	LoadScene(( "
(((" #
$str((# 0
)((0 1
;((1 2
Destroy)) 
()) 
collider)) 
))) 
;)) 
}** 	
if++ 

(++ 
collider++ 
.++ 
tag++ 
==++ 
$str++ "
)++" #
{,, 	
Destroy-- 
(-- 
collider-- 
.-- 

gameObject-- '
)--' (
;--( )
Destroy.. 
(.. 

gameObject.. 
).. 
;..  
scoreFunction// 
.// 
AddScore// "
(//" #
)//# $
;//$ %
}00 	
}11 
}22 Ö
êD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\alien_movementNew.cs
public 
class 
alien_movementNew 
:  
MonoBehaviour! .
{ 
Vector3		 
movement		 
;		 
public

 

int

 
speed

 
;

 
private 
int 
xRand 
; 
private 
int 
zRand 
; 
public 


GameObject 
impact 
; 
void 
Start	 
( 
) 
{ 
xRand 
= 
( 
int 
) 
Random 
. 
Range !
(! "
-" #
$num# %
,% &
$num' )
)) *
;* +
zRand 
= 
( 
int 
) 
Random 
. 
Range !
(! "
-" #
$num# %
,% &
$num' )
)) *
;* +
movement 
= 
new 
Vector3 
( 
xRand $
,$ %
$num& '
,' (
zRand) .
). /
*0 1
speed2 7
;7 8
} 
void 
Update	 
( 
) 
{ 
	transform 
. 
LookAt 
( !
Player_movement_2DNew .
.. /
thisPosition/ ;
); <
;< =
movement 
= !
Player_movement_2DNew (
.( )
thisPosition) 5
.5 6

normalized6 @
*A B
speedC H
;H I
if 

( 
Time 
. 
	timeScale 
== 
$num 
)  
{ 	
	transform 
. 
	Translate 
(  
(  !
new! $
Vector3% ,
(, -
$num- 1
,1 2
$num3 7
,7 8
$num9 =
)= >
)> ?
)? @
;@ A
} 	
else   
if   
(   
Time   
.   
	timeScale   
==    "
$num  # $
)  $ %
{!! 	
	transform"" 
."" 
	Translate"" 
(""  
movement""  (
*"") *
Time""+ /
.""/ 0
	deltaTime""0 9
,""9 :
Space""; @
.""@ A
World""A F
)""F G
;""G H
}## 	
}&& 
private)) 
void)) 
OnTriggerExit)) 
()) 
Collider)) '
collider))( 0
)))0 1
{** 
if++ 

(++ 
collider++ 
.++ 
tag++ 
==++ 
$str++ '
)++' (
{,, 	
Instantiate-- 
(-- 
impact-- 
,-- 
	transform--  )
.--) *
position--* 2
,--2 3
	transform--4 =
.--= >
rotation--> F
)--F G
;--G H
Destroy.. 
(.. 

gameObject.. 
).. 
;..  
}// 	
}00 
private22 
void22 
OnTriggerEnter22 
(22  
Collider22  (
collider22) 1
)221 2
{33 
if44 

(44 
collider44 
.44 
tag44 
==44 
$str44 $
)44$ %
{55 	
SceneManager66 
.66 
	LoadScene66 "
(66" #
$str66# /
)66/ 0
;660 1
}77 	
}99 
}== Æ
éD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\AlienGeneration.cs
public 
class 
AlienGeneration 
: 
MonoBehaviour ,
{ 
public 


GameObject 
alien 
; 
public 


GameObject 
boss 
; 
private		 

GameObject		 

actualBoss		 !
;		! "
public

 

float

 
newAlienRespawnTime

 $
;

$ %
public 

float 
newBossRespawnTime #
;# $
private 
float 
timeLimitAlien  
;  !
private 
float 
timeLimitBoss 
;  
[ 
HideInInspector 
] 
public 
bool !
canSpawnBoss" .
;. /
void 
Start	 
( 
) 
{ 
timeLimitAlien 
= 
Time 
. 
time "
+# $
newAlienRespawnTime% 8
;8 9
timeLimitBoss 
= 
Time 
. 
time !
+" #
newBossRespawnTime$ 6
;6 7
canSpawnBoss 
= 
true 
; 
} 
void 
Update	 
( 
) 
{ 
if 

( 

actualBoss 
== 
null 
&& !
!" #
canSpawnBoss# /
)/ 0
{ 	
timeLimitBoss 
= 
Time  
.  !
time! %
+& '
newBossRespawnTime( :
;: ;
canSpawnBoss 
= 
true 
;  
} 	
if 

( 
timeLimitAlien 
< 
Time !
.! "
time" &
)& '
{   	
Instantiate"" 
("" 
alien"" 
,"" 
new"" "
Vector3""# *
(""* +
$num""+ ,
,"", -
$num"". /
,""/ 0
$num""1 2
)""2 3
,""3 4
this""5 9
.""9 :
	transform"": C
.""C D
rotation""D L
)""L M
;""M N
timeLimitAlien## 
=## 
Time## !
.##! "
time##" &
+##' (
newAlienRespawnTime##) <
;##< =
}$$ 	
if'' 

('' 
timeLimitBoss'' 
<'' 
Time''  
.''  !
time''! %
&&''& (
canSpawnBoss'') 5
)''5 6
{(( 	

actualBoss)) 
=)) 
Instantiate)) $
())$ %
boss))% )
,))) *
new))+ .
Vector3))/ 6
())6 7
$num))7 8
,))8 9
$num)): ;
,)); <
$num))= >
)))> ?
,))? @
this))A E
.))E F
	transform))F O
.))O P
rotation))P X
)))X Y
;))Y Z
canSpawnBoss** 
=** 
false**  
;**  !
}++ 	
}-- 
}// £%
éD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\collision_enemy.cs
public 
class 
collision_enemy 
: 
MonoBehaviour ,
{ 
private 
	Rigidbody 
rb 
; 
public 

float 
speed 
= 
$num 
; 
public 


GameObject 
impact 
; 
Vector3		 
lookat		 
;		 
void 
Start	 
( 
) 
{ 
rb 

= 
this 
. 
GetComponent 
< 
	Rigidbody (
>( )
() *
)* +
;+ ,
lookat 
= !
Player_movement_2DNew &
.& '
lookat' -
.- .

normalized. 8
;8 9
rb 

.
 
velocity 
= 
lookat 
* 
speed $
;$ %
	transform 
. 
LookAt 
( 
	transform "
." #
position# +
+, -
rb. 0
.0 1
velocity1 9
.9 :

normalized: D
)D E
;E F
} 
private 
void 
OnTriggerEnter 
(  !
Collider! )
other* /
)/ 0
{ 
if 

( 
other 
. 

gameObject 
. 

CompareTag '
(' (
$str( /
)/ 0
||1 3
other4 9
.9 :

gameObject: D
.D E

CompareTagE O
(O P
$strP V
)V W
||X Z
other[ `
.` a

gameObjecta k
.k l

CompareTagl v
(v w
$str	w É
)
É Ñ
)
Ñ Ö
{ 	
GetComponent 
< 
AudioSource $
>$ %
(% &
)& '
.' (
Play( ,
(, -
)- .
;. /
Destroy 
( 
other 
. 

gameObject $
,$ %
$num% )
)) *
;* +
if 
( 
other 
. 

gameObject  
.  !

CompareTag! +
(+ ,
$str, 3
)3 4
)4 5
{6 7
over13_variables  
.  !
add! $
=% &
true' +
;+ ,
} 
if 
( 
other 
. 

gameObject  
.  !

CompareTag! +
(+ ,
$str, 2
)2 3
)3 4
{5 6
over13_variables  
.  !
addBoss! (
=) *
true+ /
;/ 0
} 
Destroy   
(   
this   
.   

gameObject   #
,  # $
$num  % )
)  ) *
;  * +
}!! 	
if## 

(## 
other## 
.## 

gameObject## 
.## 

CompareTag## '
(##' (
$str##( .
)##. /
)##/ 0
{##1 2
Destroy$$ 
($$ 
this$$ 
.$$ 

gameObject$$ #
,$$# $
$num$$% )
)$$) *
;$$* +
}%% 	
}(( 
private)) 
void)) 
OnTriggerExit)) 
()) 
Collider)) '
other))( -
)))- .
{** 
if++ 

(++ 
other++ 
.++ 

CompareTag++ 
(++ 
$str++ (
)++( )
)++) *
{,, 	

Quaternion-- 
rotation-- 
=--  !

Quaternion--" ,
.--, -
LookRotation--- 9
(--9 :
new--: =
Vector3--> E
(--E F
$num--F G
,--G H
$num--H I
,--I J
$num--J K
)--K L
,--L M
Vector3--N U
.--U V
up--V X
)--X Y
;--Y Z
Instantiate// 
(// 
impact// 
,// 
	transform//  )
.//) *
position//* 2
,//2 3
rotation//4 <
)//< =
;//= >
Destroy11 
(11 
this11 
.11 

gameObject11 #
)11# $
;11$ %
}22 	
}44 
}55 –
ÉD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\exit.cs
public 
class 
exit 
: 
MonoBehaviour !
{ 
public 

void 
doexit 
( 
) 
=> 
Application (
.( )
Quit) -
(- .
). /
;/ 0
} ˝
áD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\levelmgr.cs
public 
class 
levelmgr 
: 
MonoBehaviour %
{ 
public 

void 

cargaNivel 
( 
string !

pLevelName" ,
), -
=>. 0
SceneManager2 >
.> ?
	LoadScene? H
(H I

pLevelNameI S
)S T
;T U
public 

void 
setTimeNormal 
( 
) 
=>  "
Time# '
.' (
	timeScale( 1
=2 3
$num4 5
;5 6
} ôÀ
ÉD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\menu.cs
public 
class 
menu 
: 
MonoBehaviour !
{		 
int

 
aux

 
;

 
bool 
dir	 
; 
Vector3 
positionOver 
; 
Vector3 
positionUnder 
; 
public 

Image 
rankingo13_on 
; 
void 
Start	 
( 
) 
{ 
aux 
= 
$num 
; 
dir 
= 
true 
; 
} 
void 
Update	 
( 
) 
{ 
Button 
buttonA 
= 

GameObject #
.# $
Find$ (
(( )
$str) 5
)5 6
.6 7
GetComponent7 C
<C D
ButtonD J
>J K
(K L
)L M
;M N
Button 
buttonB 
= 

GameObject #
.# $
Find$ (
(( )
$str) 4
)4 5
.5 6
GetComponent6 B
<B C
ButtonC I
>I J
(J K
)K L
;L M
Button 
buttonC 
= 

GameObject #
.# $
Find$ (
(( )
$str) 8
)8 9
.9 :
GetComponent: F
<F G
ButtonG M
>M N
(N O
)O P
;P Q
Button 
buttonD 
= 

GameObject #
.# $
Find$ (
(( )
$str) 9
)9 :
.: ;
GetComponent; G
<G H
ButtonH N
>N O
(O P
)P Q
;Q R
Button   
buttonE   
=   

GameObject   #
.  # $
Find  $ (
(  ( )
$str  ) 1
)  1 2
.  2 3
GetComponent  3 ?
<  ? @
Button  @ F
>  F G
(  G H
)  H I
;  I J
Button!! 
buttonF!! 
=!! 

GameObject!! #
.!!# $
Find!!$ (
(!!( )
$str!!) 1
)!!1 2
.!!2 3
GetComponent!!3 ?
<!!? @
Button!!@ F
>!!F G
(!!G H
)!!H I
;!!I J

GameObject"" 
alienA"" 
="" 

GameObject"" &
.""& '
Find""' +
(""+ ,
$str"", 4
)""4 5
;""5 6

GameObject## 
alienB## 
=## 

GameObject## &
.##& '
Find##' +
(##+ ,
$str##, 4
)##4 5
;##5 6

GameObject$$ 

alien_boss$$ 
=$$ 

GameObject$$  *
.$$* +
Find$$+ /
($$/ 0
$str$$0 <
)$$< =
;$$= >

GameObject%% 
	over_text%% 
=%% 

GameObject%% )
.%%) *
Find%%* .
(%%. /
$str%%/ B
)%%B C
;%%C D

GameObject&& 

under_text&& 
=&& 

GameObject&&  *
.&&* +
Find&&+ /
(&&/ 0
$str&&0 D
)&&D E
;&&E F

GameObject'' 
controls_text''  
=''! "

GameObject''# -
.''- .
Find''. 2
(''2 3
$str''3 B
)''B C
;''C D

GameObject(( 
credits_text(( 
=((  !

GameObject((" ,
.((, -
Find((- 1
(((1 2
$str((2 @
)((@ A
;((A B

GameObject)) 
	play_text)) 
=)) 

GameObject)) )
.))) *
Find))* .
()). /
$str))/ :
))): ;
;)); <

GameObject** 
	ship_over** 
=** 

GameObject** )
.**) *
Find*** .
(**. /
$str**/ :
)**: ;
;**; <

GameObject++ 

ship_under++ 
=++ 

GameObject++  *
.++* +
Find+++ /
(++/ 0
$str++0 <
)++< =
;++= >
if11 

(11 
aux11 
==11 
-11 
$num11 
)11 
dir22 
=22 
true22 
;22 
if33 

(33 
aux33 
==33 
$num33 
)33 
dir44 
=44 
false44 
;44 
Vector366 
posA66 
=66 
buttonA66 
.66 
	transform66 (
.66( )
position66) 1
;661 2
Vector377 
posB77 
=77 
buttonB77 
.77 
	transform77 (
.77( )
position77) 1
;771 2
Vector388 
posAA88 
=88 
alienA88 
.88 
	transform88 (
.88( )
position88) 1
;881 2
Vector399 
posAB99 
=99 
alienB99 
.99 
	transform99 (
.99( )
position99) 1
;991 2
Vector3:: 
pos_boss:: 
=:: 

alien_boss:: %
.::% &
	transform::& /
.::/ 0
position::0 8
;::8 9
if<< 

(<< 
dir<< 
==<< 
true<< 
)<< 
{== 	
aux>> 
+=>> 
$num>> 
;>> 
if?? 
(?? 
controls_text?? 
==??  
true??! %
)??% &
{@@ 
posAAA 
.AA 
yAA 
-=AA 
$numAA 
;AA 
posAABB 
.BB 
yBB 
-=BB 
(BB 
floatBB !
)BB! "
$numBB" '
;BB' (
}CC 
ifDD 
(DD 
credits_textDD 
==DD 
trueDD  $
)DD$ %
{EE 
posBFF 
.FF 
yFF 
+=FF 
$numFF 
;FF 
posABGG 
.GG 
yGG 
+=GG 
(GG 
floatGG !
)GG! "
$numGG" '
;GG' (
}HH 
}II 	
ifKK 

(KK 
dirKK 
==KK 
falseKK 
)KK 
{LL 	
auxMM 
-=MM 
$numMM 
;MM 
ifNN 
(NN 
controls_textNN 
==NN  
trueNN! %
)NN% &
{OO 
posAPP 
.PP 
yPP 
+=PP 
$numPP 
;PP 
posAAQQ 
.QQ 
yQQ 
+=QQ 
(QQ 
floatQQ !
)QQ! "
$numQQ" '
;QQ' (
}RR 
ifSS 
(SS 
credits_textSS 
==SS 
trueSS  $
)SS$ %
{TT 
posBUU 
.UU 
yUU 
-=UU 
$numUU 
;UU 
posABVV 
.VV 
yVV 
-=VV 
(VV 
floatVV !
)VV! "
$numVV" '
;VV' (
}WW 
}XX 	
buttonAZZ 
.ZZ 
	transformZZ 
.ZZ 
positionZZ "
=ZZ# $
posAZZ% )
;ZZ) *
alienA[[ 
.[[ 
	transform[[ 
.[[ 
position[[ !
=[[" #
posAA[[$ )
;[[) *
buttonB\\ 
.\\ 
	transform\\ 
.\\ 
position\\ "
=\\# $
posB\\% )
;\\) *
alienB]] 
.]] 
	transform]] 
.]] 
position]] !
=]]" #
posAB]]$ )
;]]) *
Vector3bb 
auxiliarbb 
=bb 
newbb 
Vector3bb &
(bb& '
$numbb' (
,bb( )
$numbb* +
,bb+ ,
$numbb- .
)bb. /
;bb/ 0
positionOverdd 
=dd 
	ship_overdd  
.dd  !
	transformdd! *
.dd* +
positiondd+ 3
;dd3 4
positionUnderee 
=ee 

ship_underee "
.ee" #
	transformee# ,
.ee, -
positionee- 5
;ee5 6
buttonAgg 
.gg 
onClickgg 
.gg 
AddListenergg #
(gg# $
offControlsgg$ /
)gg/ 0
;gg0 1
ifhh 

(hh 
buttonAhh 
.hh 
	transformhh 
.hh 

localScalehh (
==hh) +
auxiliarhh, 4
)hh4 5
{ii 	
ifjj 
(jj 
posAAjj 
.jj 
xjj 
>=jj 
-jj 
$numjj  
&&jj! #
posAAjj$ )
.jj) *
yjj* +
<=jj, .
$numjj/ 0
&&jj1 3
posAAjj4 9
.jj9 :
zjj: ;
<=jj< >
-jj? @
$numjj@ A
)jjA B
{kk 
SceneManagerll 
.ll 
	LoadScenell &
(ll& '
$strll' 7
)ll7 8
;ll8 9
}mm 
elsenn 
{oo 
ifpp 
(pp 
posAApp 
.pp 
xpp 
<pp 
-pp 
$numpp #
)pp# $
posAAqq 
.qq 
xqq 
+=qq 
(qq  
floatqq  %
)qq% &
$numqq& *
;qq* +
ifrr 
(rr 
posAArr 
.rr 
yrr 
>rr 
$numrr 
)rr  
posAAss 
.ss 
yss 
-=ss 
(ss  
floatss  %
)ss% &
$numss& *
;ss* +
iftt 
(tt 
posAAtt 
.tt 
ztt 
>tt 
-tt 
$numtt "
)tt" #
posAAuu 
.uu 
zuu 
-=uu 
(uu  
floatuu  %
)uu% &
$numuu& *
;uu* +
alienAvv 
.vv 
	transformvv  
.vv  !
positionvv! )
=vv* +
posAAvv, 1
;vv1 2
}ww 
}xx 	
buttonBzz 
.zz 
onClickzz 
.zz 
AddListenerzz #
(zz# $

offCreditszz$ .
)zz. /
;zz/ 0
if{{ 

({{ 
buttonB{{ 
.{{ 
	transform{{ 
.{{ 

localScale{{ (
=={{) +
auxiliar{{, 4
){{4 5
{|| 	
if}} 
(}} 
posAB}} 
.}} 
x}} 
<}} 
$num}} 
&&}} 
posAB}} $
.}}$ %
y}}% &
<=}}' )
$num}}* +
&&}}, .
posAB}}/ 4
.}}4 5
z}}5 6
<=}}7 9
-}}: ;
$num}}; <
)}}< =
{~~ 
SceneManager 
. 
	LoadScene &
(& '
$str' 0
)0 1
;1 2
}
ÄÄ 
else
ÅÅ 
{
ÇÇ 
if
ÉÉ 
(
ÉÉ 
posAB
ÉÉ 
.
ÉÉ 
x
ÉÉ 
>=
ÉÉ 
$num
ÉÉ  
)
ÉÉ  !
posAB
ÑÑ 
.
ÑÑ 
x
ÑÑ 
-=
ÑÑ 
(
ÑÑ  
float
ÑÑ  %
)
ÑÑ% &
$num
ÑÑ& *
;
ÑÑ* +
if
ÖÖ 
(
ÖÖ 
posAB
ÖÖ 
.
ÖÖ 
y
ÖÖ 
>
ÖÖ 
$num
ÖÖ 
)
ÖÖ  
posAB
ÜÜ 
.
ÜÜ 
y
ÜÜ 
-=
ÜÜ 
(
ÜÜ  
float
ÜÜ  %
)
ÜÜ% &
$num
ÜÜ& *
;
ÜÜ* +
if
áá 
(
áá 
posAB
áá 
.
áá 
z
áá 
>
áá 
-
áá 
$num
áá "
)
áá" #
posAB
àà 
.
àà 
z
àà 
-=
àà 
(
àà  
float
àà  %
)
àà% &
$num
àà& *
;
àà* +
alienB
ââ 
.
ââ 
	transform
ââ  
.
ââ  !
position
ââ! )
=
ââ* +
posAB
ââ, 1
;
ââ1 2
}
ää 
}
ãã 	
buttonC
èè 
.
èè 
onClick
èè 
.
èè 
AddListener
èè #
(
èè# $
offOver
èè$ +
)
èè+ ,
;
èè, -
if
êê 

(
êê 
buttonC
êê 
.
êê 
	transform
êê 
.
êê 

localScale
êê (
==
êê) +
auxiliar
êê, 4
)
êê4 5
{
ëë 	
if
íí 
(
íí 
positionOver
íí 
.
íí 
y
íí 
>=
íí !
$num
íí" %
)
íí% &
{
ìì 
SceneManager
îî 
.
îî 
	LoadScene
îî &
(
îî& '
$str
îî' 0
)
îî0 1
;
îî1 2
}
ïï 
else
ññ 
if
ññ 
(
ññ 
positionOver
ññ !
.
ññ! "
y
ññ" #
<
ññ$ %
$num
ññ& )
)
ññ) *
{
óó 
positionOver
òò 
.
òò 
y
òò 
+=
òò !
(
òò" #
float
òò# (
)
òò( )
$num
òò) -
;
òò- .
	ship_over
ôô 
.
ôô 
	transform
ôô #
.
ôô# $
position
ôô$ ,
=
ôô- .
positionOver
ôô/ ;
;
ôô; <
}
öö 
}
õõ 	
buttonD
ûû 
.
ûû 
onClick
ûû 
.
ûû 
AddListener
ûû #
(
ûû# $
offUnder
ûû$ ,
)
ûû, -
;
ûû- .
if
üü 

(
üü 
buttonD
üü 
.
üü 
	transform
üü 
.
üü 

localScale
üü (
==
üü) +
auxiliar
üü, 4
)
üü4 5
{
†† 	
if
°° 
(
°° 
positionUnder
°° 
.
°° 
y
°° 
>=
°°  "
$num
°°# &
)
°°& '
{
¢¢ 
SceneManager
££ 
.
££ 
	LoadScene
££ &
(
££& '
$str
££' 8
)
££8 9
;
££9 :
}
§§ 
else
•• 
if
•• 
(
•• 
positionUnder
•• "
.
••" #
y
••# $
<
••% &
$num
••' *
)
••* +
{
¶¶ 
positionUnder
ßß 
.
ßß 
y
ßß 
+=
ßß  "
(
ßß# $
float
ßß$ )
)
ßß) *
$num
ßß* .
;
ßß. /

ship_under
®® 
.
®® 
	transform
®® $
.
®®$ %
position
®®% -
=
®®. /
positionUnder
®®0 =
;
®®= >
}
©© 
}
™™ 	
buttonE
¨¨ 
.
¨¨ 
onClick
¨¨ 
.
¨¨ 
AddListener
¨¨ #
(
¨¨# $
offPlay
¨¨$ +
)
¨¨+ ,
;
¨¨, -
if
≠≠ 

(
≠≠ 
buttonE
≠≠ 
.
≠≠ 
	transform
≠≠ 
.
≠≠ 

localScale
≠≠ (
==
≠≠) +
auxiliar
≠≠, 4
)
≠≠4 5
{
ÆÆ 	
if
ØØ 
(
ØØ 
pos_boss
ØØ 
.
ØØ 
z
ØØ 
<=
ØØ 
-
ØØ 
$num
ØØ  
)
ØØ  !
{
∞∞ 
SceneManager
±± 
.
±± 
	LoadScene
±± &
(
±±& '
$str
±±' 3
)
±±3 4
;
±±4 5
}
≤≤ 
else
≥≥ 
{
¥¥ 
if
µµ 
(
µµ 
pos_boss
µµ 
.
µµ 
z
µµ 
>
µµ  
-
µµ! "
$num
µµ" #
)
µµ# $
pos_boss
∂∂ 
.
∂∂ 
z
∂∂ 
-=
∂∂ !
(
∂∂" #
float
∂∂# (
)
∂∂( )
$num
∂∂) -
;
∂∂- .

alien_boss
∑∑ 
.
∑∑ 
	transform
∑∑ $
.
∑∑$ %
position
∑∑% -
=
∑∑. /
pos_boss
∑∑0 8
;
∑∑8 9
}
∏∏ 
}
ππ 	
buttonF
∫∫ 
.
∫∫ 
onClick
∫∫ 
.
∫∫ 
AddListener
∫∫ #
(
∫∫# $
exit
∫∫$ (
)
∫∫( )
;
∫∫) *
}
ªª 
public
ºº 

void
ºº 
offOver
ºº 
(
ºº 
)
ºº 
{
ΩΩ 
Button
ææ 
buttonC
ææ 
=
ææ 

GameObject
ææ #
.
ææ# $
Find
ææ$ (
(
ææ( )
$str
ææ) 8
)
ææ8 9
.
ææ9 :
GetComponent
ææ: F
<
ææF G
Button
ææG M
>
ææM N
(
ææN O
)
ææO P
;
ææP Q
buttonC
øø 
.
øø 
	transform
øø 
.
øø 

localScale
øø $
=
øø% &
new
øø' *
Vector3
øø+ 2
(
øø2 3
$num
øø3 4
,
øø4 5
$num
øø6 7
,
øø7 8
$num
øø9 :
)
øø: ;
;
øø; <
}
¿¿ 
public
¬¬ 

void
¬¬ 
offUnder
¬¬ 
(
¬¬ 
)
¬¬ 
{
√√ 
Button
ƒƒ 
buttonD
ƒƒ 
=
ƒƒ 

GameObject
ƒƒ #
.
ƒƒ# $
Find
ƒƒ$ (
(
ƒƒ( )
$str
ƒƒ) 9
)
ƒƒ9 :
.
ƒƒ: ;
GetComponent
ƒƒ; G
<
ƒƒG H
Button
ƒƒH N
>
ƒƒN O
(
ƒƒO P
)
ƒƒP Q
;
ƒƒQ R
buttonD
≈≈ 
.
≈≈ 
	transform
≈≈ 
.
≈≈ 

localScale
≈≈ $
=
≈≈% &
new
≈≈' *
Vector3
≈≈+ 2
(
≈≈2 3
$num
≈≈3 4
,
≈≈4 5
$num
≈≈6 7
,
≈≈7 8
$num
≈≈9 :
)
≈≈: ;
;
≈≈; <
}
∆∆ 
public
»» 

void
»» 

offCredits
»» 
(
»» 
)
»» 
{
…… 
Button
   
buttonA
   
=
   

GameObject
   #
.
  # $
Find
  $ (
(
  ( )
$str
  ) 5
)
  5 6
.
  6 7
GetComponent
  7 C
<
  C D
Button
  D J
>
  J K
(
  K L
)
  L M
;
  M N
Button
ÀÀ 
buttonB
ÀÀ 
=
ÀÀ 

GameObject
ÀÀ #
.
ÀÀ# $
Find
ÀÀ$ (
(
ÀÀ( )
$str
ÀÀ) 4
)
ÀÀ4 5
.
ÀÀ5 6
GetComponent
ÀÀ6 B
<
ÀÀB C
Button
ÀÀC I
>
ÀÀI J
(
ÀÀJ K
)
ÀÀK L
;
ÀÀL M
Button
ÃÃ 
buttonE
ÃÃ 
=
ÃÃ 

GameObject
ÃÃ #
.
ÃÃ# $
Find
ÃÃ$ (
(
ÃÃ( )
$str
ÃÃ) 1
)
ÃÃ1 2
.
ÃÃ2 3
GetComponent
ÃÃ3 ?
<
ÃÃ? @
Button
ÃÃ@ F
>
ÃÃF G
(
ÃÃG H
)
ÃÃH I
;
ÃÃI J
Button
ÕÕ 
buttonF
ÕÕ 
=
ÕÕ 

GameObject
ÕÕ #
.
ÕÕ# $
Find
ÕÕ$ (
(
ÕÕ( )
$str
ÕÕ) 1
)
ÕÕ1 2
.
ÕÕ2 3
GetComponent
ÕÕ3 ?
<
ÕÕ? @
Button
ÕÕ@ F
>
ÕÕF G
(
ÕÕG H
)
ÕÕH I
;
ÕÕI J
buttonA
ŒŒ 
.
ŒŒ 
	transform
ŒŒ 
.
ŒŒ 
position
ŒŒ "
=
ŒŒ# $
new
ŒŒ% (
Vector3
ŒŒ) 0
(
ŒŒ0 1
$num
ŒŒ1 6
,
ŒŒ6 7
$num
ŒŒ8 9
,
ŒŒ9 :
$num
ŒŒ; <
)
ŒŒ< =
;
ŒŒ= >
buttonB
œœ 
.
œœ 
	transform
œœ 
.
œœ 

localScale
œœ $
=
œœ% &
new
œœ' *
Vector3
œœ+ 2
(
œœ2 3
$num
œœ3 4
,
œœ4 5
$num
œœ6 7
,
œœ7 8
$num
œœ9 :
)
œœ: ;
;
œœ; <
buttonE
–– 
.
–– 
	transform
–– 
.
–– 
position
–– "
=
––# $
new
––% (
Vector3
––) 0
(
––0 1
$num
––1 6
,
––6 7
$num
––8 9
,
––9 :
$num
––; <
)
––< =
;
––= >
buttonF
—— 
.
—— 
	transform
—— 
.
—— 

localScale
—— $
=
——% &
new
——' *
Vector3
——+ 2
(
——2 3
$num
——3 4
,
——4 5
$num
——6 7
,
——7 8
$num
——9 :
)
——: ;
;
——; <
}
““ 
public
‘‘ 

void
‘‘ 
offControls
‘‘ 
(
‘‘ 
)
‘‘ 
{
’’ 
Button
÷÷ 
buttonA
÷÷ 
=
÷÷ 

GameObject
÷÷ #
.
÷÷# $
Find
÷÷$ (
(
÷÷( )
$str
÷÷) 5
)
÷÷5 6
.
÷÷6 7
GetComponent
÷÷7 C
<
÷÷C D
Button
÷÷D J
>
÷÷J K
(
÷÷K L
)
÷÷L M
;
÷÷M N
Button
◊◊ 
buttonB
◊◊ 
=
◊◊ 

GameObject
◊◊ #
.
◊◊# $
Find
◊◊$ (
(
◊◊( )
$str
◊◊) 4
)
◊◊4 5
.
◊◊5 6
GetComponent
◊◊6 B
<
◊◊B C
Button
◊◊C I
>
◊◊I J
(
◊◊J K
)
◊◊K L
;
◊◊L M
Button
ÿÿ 
buttonE
ÿÿ 
=
ÿÿ 

GameObject
ÿÿ #
.
ÿÿ# $
Find
ÿÿ$ (
(
ÿÿ( )
$str
ÿÿ) 1
)
ÿÿ1 2
.
ÿÿ2 3
GetComponent
ÿÿ3 ?
<
ÿÿ? @
Button
ÿÿ@ F
>
ÿÿF G
(
ÿÿG H
)
ÿÿH I
;
ÿÿI J
Button
ŸŸ 
buttonF
ŸŸ 
=
ŸŸ 

GameObject
ŸŸ #
.
ŸŸ# $
Find
ŸŸ$ (
(
ŸŸ( )
$str
ŸŸ) 1
)
ŸŸ1 2
.
ŸŸ2 3
GetComponent
ŸŸ3 ?
<
ŸŸ? @
Button
ŸŸ@ F
>
ŸŸF G
(
ŸŸG H
)
ŸŸH I
;
ŸŸI J
buttonB
⁄⁄ 
.
⁄⁄ 
	transform
⁄⁄ 
.
⁄⁄ 
position
⁄⁄ "
=
⁄⁄# $
new
⁄⁄% (
Vector3
⁄⁄) 0
(
⁄⁄0 1
$num
⁄⁄1 6
,
⁄⁄6 7
$num
⁄⁄8 9
,
⁄⁄9 :
$num
⁄⁄; <
)
⁄⁄< =
;
⁄⁄= >
buttonA
€€ 
.
€€ 
	transform
€€ 
.
€€ 

localScale
€€ $
=
€€% &
new
€€' *
Vector3
€€+ 2
(
€€2 3
$num
€€3 4
,
€€4 5
$num
€€6 7
,
€€7 8
$num
€€9 :
)
€€: ;
;
€€; <
buttonE
‹‹ 
.
‹‹ 
	transform
‹‹ 
.
‹‹ 
position
‹‹ "
=
‹‹# $
new
‹‹% (
Vector3
‹‹) 0
(
‹‹0 1
$num
‹‹1 6
,
‹‹6 7
$num
‹‹8 9
,
‹‹9 :
$num
‹‹; <
)
‹‹< =
;
‹‹= >
buttonF
›› 
.
›› 
	transform
›› 
.
›› 

localScale
›› $
=
››% &
new
››' *
Vector3
››+ 2
(
››2 3
$num
››3 4
,
››4 5
$num
››6 7
,
››7 8
$num
››9 :
)
››: ;
;
››; <
}
ﬁﬁ 
public
‡‡ 

void
‡‡ 
offPlay
‡‡ 
(
‡‡ 
)
‡‡ 
{
·· 
Button
‚‚ 
buttonA
‚‚ 
=
‚‚ 

GameObject
‚‚ #
.
‚‚# $
Find
‚‚$ (
(
‚‚( )
$str
‚‚) 5
)
‚‚5 6
.
‚‚6 7
GetComponent
‚‚7 C
<
‚‚C D
Button
‚‚D J
>
‚‚J K
(
‚‚K L
)
‚‚L M
;
‚‚M N
Button
„„ 
buttonB
„„ 
=
„„ 

GameObject
„„ #
.
„„# $
Find
„„$ (
(
„„( )
$str
„„) 4
)
„„4 5
.
„„5 6
GetComponent
„„6 B
<
„„B C
Button
„„C I
>
„„I J
(
„„J K
)
„„K L
;
„„L M
Button
‰‰ 
buttonE
‰‰ 
=
‰‰ 

GameObject
‰‰ #
.
‰‰# $
Find
‰‰$ (
(
‰‰( )
$str
‰‰) 1
)
‰‰1 2
.
‰‰2 3
GetComponent
‰‰3 ?
<
‰‰? @
Button
‰‰@ F
>
‰‰F G
(
‰‰G H
)
‰‰H I
;
‰‰I J
buttonA
ÂÂ 
.
ÂÂ 
	transform
ÂÂ 
.
ÂÂ 
position
ÂÂ "
=
ÂÂ# $
new
ÂÂ% (
Vector3
ÂÂ) 0
(
ÂÂ0 1
$num
ÂÂ1 6
,
ÂÂ6 7
$num
ÂÂ8 9
,
ÂÂ9 :
$num
ÂÂ; <
)
ÂÂ< =
;
ÂÂ= >
buttonB
ÊÊ 
.
ÊÊ 
	transform
ÊÊ 
.
ÊÊ 
position
ÊÊ "
=
ÊÊ# $
new
ÊÊ% (
Vector3
ÊÊ) 0
(
ÊÊ0 1
$num
ÊÊ1 6
,
ÊÊ6 7
$num
ÊÊ8 9
,
ÊÊ9 :
$num
ÊÊ; <
)
ÊÊ< =
;
ÊÊ= >
buttonE
ÁÁ 
.
ÁÁ 
	transform
ÁÁ 
.
ÁÁ 

localScale
ÁÁ $
=
ÁÁ% &
new
ÁÁ' *
Vector3
ÁÁ+ 2
(
ÁÁ2 3
$num
ÁÁ3 4
,
ÁÁ4 5
$num
ÁÁ6 7
,
ÁÁ7 8
$num
ÁÁ9 :
)
ÁÁ: ;
;
ÁÁ; <
}
ËË 
public
ÈÈ 

void
ÈÈ 
exit
ÈÈ 
(
ÈÈ 
)
ÈÈ 
{
ÍÍ 
Application
ÎÎ 
.
ÎÎ 
Quit
ÎÎ 
(
ÎÎ 
)
ÎÎ 
;
ÎÎ 
}
ÏÏ 
}ÓÓ È
ãD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\menu_manager.cs
public 
class 
menu_manager 
: 
MonoBehaviour )
{ 
Vector3 
position 
; 
public		 

void		 
Manage		 
(		 
string		 
option		 $
)		$ %
{

 

GameObject 
	ship_over 
= 

GameObject )
.) *
Find* .
(. /
$str/ :
): ;
;; <

GameObject 

ship_under 
= 

GameObject  *
.* +
Find+ /
(/ 0
$str0 <
)< =
;= >

GameObject 
alienA 
= 

GameObject &
.& '
Find' +
(+ ,
$str, 4
)4 5
;5 6

GameObject 
alienB 
= 

GameObject &
.& '
Find' +
(+ ,
$str, 4
)4 5
;5 6

GameObject 
boss 
= 

GameObject $
.$ %
Find% )
() *
$str* 6
)6 7
;7 8

GameObject 
	over_text 
= 

GameObject )
.) *
Find* .
(. /
$str/ B
)B C
;C D

GameObject 

under_text 
= 

GameObject  *
.* +
Find+ /
(/ 0
$str0 D
)D E
;E F
switch 
( 
option 
) 
{ 	
case 
$str 
: 
	over_text 
. 
	SetActive #
(# $
false$ )
)) *
;* +
position 
= 
	ship_over $
.$ %
	transform% .
.. /
position/ 7
;7 8
do 
{ 
position 
. 
y 
+= !
(" #
float# (
)( )
$num) .
;. /
	ship_over 
. 
	transform '
.' (
position( 0
=1 2
position3 ;
;; <
} 
while 
( 
position !
.! "
y" #
<$ %
$num& )
)) *
;* +
SceneManager 
. 
	LoadScene &
(& '
$str' 0
)0 1
;1 2
break 
; 
case 
$str 
: 
break!! 
;!! 
}## 	
}$$ 
}'' ò
èD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\over13_variables.cs
public 
class 
over13_variables 
: 
MonoBehaviour  -
{ 
public 

Text 
	scoreText 
; 
private 
int 
score 
; 
public		 

static		 
int		 
score2		 
;		 
public

 

int

 

scoreValue

 
;

 
public 

static 
bool 
add 
; 
public 

static 
bool 
addBoss 
; 
private 
float 
timer 
; 
void 
Start	 
( 
) 
{ 
PlayerPrefs 
. 
SetInt 
( 
$str (
,( )
$num* +
)+ ,
;, -
UpdateScore 
( 
) 
; 
timer 
= 
Time 
. 
time 
+ 
$num 
; 
} 
void 
Update	 
( 
) 
{ 
if 

( 
add 
) 
AddScore 
( 
) 
; 
if 

( 
addBoss 
) 
{ 	

scoreValue 
= 
$num 
; 
AddScore 
( 
) 
; 
} 	
}   
public"" 

void"" 
AddScore"" 
("" 
)"" 
{## 
PlayerPrefs%% 
.%% 
SetInt%% 
(%% 
$str%% (
,%%( )
PlayerPrefs%%* 5
.%%5 6
GetInt%%6 <
(%%< =
$str%%= J
,%%J K
$num%%L M
)%%M N
+%%N O

scoreValue%%O Y
)%%Y Z
;%%Z [
UpdateScore&& 
(&& 
)&& 
;&& 
add'' 
='' 
false'' 
;'' 
addBoss(( 
=(( 
false(( 
;(( 

scoreValue)) 
=)) 
$num)) 
;)) 
}** 
void++ 
UpdateScore++	 
(++ 
)++ 
=>++ 
	scoreText++ #
.++# $
text++$ (
=++) *
$str+++ 4
+++5 6
PlayerPrefs++7 B
.++B C
GetInt++C I
(++I J
$str++J W
,++W X
$num++Y Z
)++Z [
;++[ \
},, ‘
ÑD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\Pausa.cs
public 
class 
Pausa 
: 
MonoBehaviour "
{ 
Canvas 

canvas 
; 
public		 
!
Player_movement_2DNew		  !
disableMovementPlayer		! 6
;		6 7
public

 

wall_rotation

 
disableWallRotation

 ,
;

, -
public 

AlienGeneration "
disableAlienGeneration 1
;1 2
void 
Start	 
( 
) 
{ 
canvas 
= 
GetComponent 
< 
Canvas $
>$ %
(% &
)& '
;' (
canvas 
. 
enabled 
= 
false 
; !
disableMovementPlayer 
= 

GameObject  *
.* +
Find+ /
(/ 0
$str0 6
)6 7
.7 8
GetComponent8 D
<D E!
Player_movement_2DNewE Z
>Z [
([ \
)\ ]
;] ^
disableWallRotation 
= 

GameObject (
.( )
Find) -
(- .
$str. 5
)5 6
.6 7
GetComponent7 C
<C D
wall_rotationD Q
>Q R
(R S
)S T
;T U"
disableAlienGeneration 
=  

GameObject! +
.+ ,
Find, 0
(0 1
$str1 =
)= >
.> ?
GetComponent? K
<K L
AlienGenerationL [
>[ \
(\ ]
)] ^
;^ _
} 
void 
Update	 
( 
) 
{ 
if 

( 
Input 
. 

GetKeyDown 
( 
KeyCode $
.$ %
Escape% +
)+ ,
), -
{ 	
if 
( 
canvas 
. 
enabled 
== !
false" '
)' (
{ 
canvas   
.   
enabled   
=    
true  ! %
;  % &!
disableMovementPlayer!! %
.!!% &
enabled!!& -
=!!. /
false!!0 5
;!!5 6
disableWallRotation"" #
.""# $
enabled""$ +
="", -
false"". 3
;""3 4"
disableAlienGeneration## &
.##& '
enabled##' .
=##/ 0
false##1 6
;##6 7
Time$$ 
.$$ 
	timeScale$$ 
=$$  
$num$$! "
;$$" #
}%% 
else&& 
{'' 
canvas)) 
.)) 
enabled)) 
=))  
false))! &
;))& '!
disableMovementPlayer** %
.**% &
enabled**& -
=**. /
true**0 4
;**4 5
disableWallRotation++ #
.++# $
enabled++$ +
=++, -
true++. 2
;++2 3"
disableAlienGeneration,, &
.,,& '
enabled,,' .
=,,/ 0
true,,1 5
;,,5 6
Time-- 
.-- 
	timeScale-- 
=--  
$num--! "
;--" #
}.. 
}// 	
}00 
}11 Ú
åD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\Pausa_minus13.cs
public 
class 
Pausa_minus13 
: 
MonoBehaviour *
{ 
Canvas 

canvas 
; 
public		 
"
alien_movement_minus13		 ! 
disableMovementAlien		" 6
;		6 7
public

 

Player_movement_2D

 !
disableMovementPlayer

 3
;

3 4
void 
Start	 
( 
) 
{ 
canvas 
= 
GetComponent 
< 
Canvas $
>$ %
(% &
)& '
;' (
canvas 
. 
enabled 
= 
false 
;  
disableMovementAlien 
= 

GameObject )
.) *
Find* .
(. /
$str/ =
)= >
.> ?
GetComponent? K
<K L"
alien_movement_minus13L b
>b c
(c d
)d e
;e f!
disableMovementPlayer 
= 

GameObject  *
.* +
Find+ /
(/ 0
$str0 8
)8 9
.9 :
GetComponent: F
<F G
Player_movement_2DG Y
>Y Z
(Z [
)[ \
;\ ]
} 
void 
Update	 
( 
) 
{ 
if 

( 
Input 
. 

GetKeyDown 
( 
KeyCode $
.$ %
Escape% +
)+ ,
), -
{ 	
if 
( 
canvas 
. 
enabled 
== !
false" '
)' (
{ 
canvas 
. 
enabled 
=  
true! %
;% & 
disableMovementAlien $
.$ %
enabled% ,
=- .
false/ 4
;4 5!
disableMovementPlayer   %
.  % &
enabled  & -
=  . /
false  0 5
;  5 6
Time!! 
.!! 
	timeScale!! 
=!!  
$num!!! "
;!!" #
}"" 
else## 
{$$ 
canvas&& 
.&& 
enabled&& 
=&&  
false&&! &
;&&& ' 
disableMovementAlien'' $
.''$ %
enabled''% ,
=''- .
true''/ 3
;''3 4!
disableMovementPlayer(( %
.((% &
enabled((& -
=((. /
true((0 4
;((4 5
Time)) 
.)) 
	timeScale)) 
=))  
$num))! "
;))" #
}** 
}++ 	
},, 
}-- í9
ëD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\Player_movement_2D.cs
public 
class 
Player_movement_2D 
:  !
MonoBehaviour" /
{ 
public 

float 
maxSpeed 
; 
public 

float 
acceleration 
; 
public 

float 
frictionConstant !
;! "
public		 

static		 
Vector3		 
lookat		  
;		  !
public

 

static

 
Vector3

 
thisPosition

 &
;

& '
Vector3 
velocity 
; 
public 


GameObject 
bullet 
; 
private 
bool 
whileShooting 
; 
float 	
advanceTime
 
; 
public 

string 
gameOverScene 
;  
void 
Start	 
( 
) 
{ 
velocity 
= 
new 
Vector3 
( 
$num #
,# $
$num% )
,) *
$num+ 0
)0 1
;1 2
} 
void 
FixedUpdate	 
( 
) 
{ 
if 

( 
Input 
. 
GetKey 
( 
$str  
)  !
)! "
velocity" *
.* +
x+ ,
+=- /
acceleration0 <
;< =
if 

( 
Input 
. 
GetKey 
( 
$str 
)  
)  !
velocity" *
.* +
x+ ,
-=- /
acceleration0 <
;< =
if 

( 
Input 
. 
GetKey 
( 
$str 
) 
) 
velocity '
.' (
z( )
+=* ,
acceleration- 9
;9 :
if 

( 
Input 
. 
GetKey 
( 
$str 
)  
)  !
velocity! )
.) *
z* +
-=, .
acceleration/ ;
;; <
if 

( 
velocity 
. 
	magnitude 
>= !
maxSpeed" *
)* +
velocity, 4
=5 6
velocity7 ?
.? @

normalized@ J
*K L
maxSpeedM U
;U V

gameObject 
. 
GetComponent 
<  
CharacterController  3
>3 4
(4 5
)5 6
.6 7
Move7 ;
(; <
velocity< D
*E F
TimeG K
.K L
	deltaTimeL U
)U V
;V W
lookat 
= 
Vector3 
. 
	Normalize "
(" #
new# &
Vector3' .
(. /
velocity/ 7
.7 8
x8 9
,9 :
$num; ?
,? @
velocityA I
.I J
zJ K
)K L
)L M
;M N
thisPosition 
= 
	transform  
.  !
position! )
;) *
	transform   
.   
LookAt   
(   
	transform   "
.  " #
position  # +
+  , -
lookat  . 4
)  4 5
;  5 6
velocity!! 
*=!! 
frictionConstant!! $
;!!$ %
lookat"" 
="" 
this"" 
."" 
	transform"" 
.""  
forward""  '
;""' (
if## 

(## 
(## 
Input## 
.## 
GetButtonDown##  
(##  !
$str##! (
)##( )
||##* ,
Input##- 2
.##2 3

GetKeyDown##3 =
(##= >
KeyCode##> E
.##E F
Space##F K
)##K L
)##L M
&&##N P
!##Q R
whileShooting##R _
)##_ `
{##a b
Instantiate$$ 
($$ 
bullet$$ 
,$$ 
this$$  $
.$$$ %
	transform$$% .
.$$. /
position$$/ 7
,$$7 8
this$$9 =
.$$= >
	transform$$> G
.$$G H
rotation$$H P
)$$Q R
;$$R S
advanceTime%% 
=%% 
Time%% 
.%% 
time%% #
+%%$ %
$num%%& *
;%%* +
whileShooting&& 
=&& 
true&&  
;&&  !
}'' 	
float(( 
timeLeft(( 
=(( 
advanceTime(( $
-((% &
Time((' +
.((+ ,
time((, 0
;((0 1
if)) 

()) 
timeLeft)) 
<)) 
$num)) 
&&)) 
whileShooting)) )
)))) *
whileShooting))+ 8
=))9 :
false)); @
;))@ A
}** 
private,, 
void,, 
OnTriggerEnter,, 
(,,  
Collider,,  (
other,,) .
),,. /
{-- 
if.. 

(.. 
other.. 
... 

gameObject.. 
... 

CompareTag.. '
(..' (
$str..( .
)... /
||..0 2
other..3 8
...8 9

gameObject..9 C
...C D

CompareTag..D N
(..N O
$str..O U
)..U V
)..V W
{// 	
Destroy00 
(00 
other00 
.00 

gameObject00 $
)00$ %
;00% &
if11 
(11 
(11 
PlayerPrefs11 
.11 
GetInt11 "
(11" #
$str11# -
,11- .
$num11. /
)11/ 0
)110 1
<=112 4
(115 6
PlayerPrefs116 A
.11A B
GetInt11B H
(11H I
$str11I V
,11V W
$num11X Y
)11Y Z
)11Z [
)11[ \
{11\ ]
SceneManager22 
.22 
	LoadScene22 &
(22& '
gameOverScene22' 4
)224 5
;225 6
}33 
else33 
if33 
(33 
(33 
PlayerPrefs33 "
.33" #
GetInt33# )
(33) *
$str33* 4
,334 5
$num336 7
)337 8
)338 9
>33: ;
(33< =
PlayerPrefs33= H
.33H I
GetInt33I O
(33O P
$str33P ]
,33] ^
$num33_ `
)33` a
)33a b
)33b c
{33c d
SceneManager44 
.44 
	LoadScene44 &
(44& '
$str44' 4
)444 5
;445 6
}55 
Destroy66 
(66 
this66 
.66 

gameObject66 #
)66# $
;66$ %
}77 	
}88 
}99 »f
îD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\Player_movement_2DNew.cs
public 
class !
Player_movement_2DNew "
:# $
MonoBehaviour% 2
{ 
public		 

string		 
gameOverScene		 
;		  
private 
	Rigidbody 
rb 
; 
public 

float 
maxSpeed 
; 
public 

float 
acc 
; 
public 

float 
frictionConstant !
;! "
public 

float 
angle 
; 
private 
float 
velocity 
; 
private 
int 
right 
; 
private 
	Transform 
body 
; 
private 

GameObject 
coneleft 
;  
private 

GameObject 
	coneright  
;  !
public 

float 
rotationAngle 
; 
public 

static 
Vector3 
lookat  
;  !
public 

static 
Vector3 
thisPosition &
;& '
public 


GameObject 
bullet 
; 
private 
bool 
whileShooting 
; 
float   	
advanceTime  
 
;   
AudioSource"" 
shot"" 
;"" 
AudioSource## 
dead## 
;## 
void%% 
Start%%	 
(%% 
)%% 
{&& 
var'' 
aSources'' 
='' 

gameObject'' !
.''! "
GetComponents''" /
<''/ 0
AudioSource''0 ;
>''; <
(''< =
)''= >
;''> ?
shot(( 
=(( 
aSources(( 
[(( 
$num(( 
](( 
;(( 
dead)) 
=)) 
aSources)) 
[)) 
$num)) 
])) 
;)) 
velocity++ 
=++ 
$num++ 
;++ 
rb,, 

=,, 
GetComponent,, 
<,, 
	Rigidbody,, #
>,,# $
(,,$ %
),,% &
;,,& '
body.. 
=.. 
	transform.. 
... 
GetChild.. !
(..! "
$num.." #
)..# $
;..$ %
}// 
private00 
void00 
FixedUpdate00 
(00 
)00 
{11 
Vector333 
	tempTrans33 
=33 
new33 
Vector333  '
(33' (
)33( )
;33) *
if44 

(44 
Input44 
.44 
GetKey44 
(44 
$str44 
)44 
)44 
	tempTrans44  )
.44) *
z44* +
+=44, .
$num44/ 0
;440 1
if55 

(55 
Input55 
.55 
GetKey55 
(55 
$str55 
)55  
)55  !
	tempTrans55" +
.55+ ,
z55, -
-=55. 0
$num551 2
;552 3
if88 

(88 
Input88 
.88 
GetKey88 
(88 
$str88 
)88  
)88  !
{99 	
right:: 
-=:: 
$num:: 
;:: 
	transform;; 
.;; 
GetChild;; 
(;; 
$num;;  
);;  !
.;;! "

gameObject;;" ,
.;;, -
	SetActive;;- 6
(;;6 7
true;;7 ;
);;; <
;;;< =
if<< 
(<< 
body<< 
.<< 
rotation<< 
.<< 
eulerAngles<< )
.<<) *
z<<* +
<<<, -
$num<<. 0
||<<1 3
body<<4 8
.<<8 9
rotation<<9 A
.<<A B
eulerAngles<<B M
.<<M N
z<<N O
><<P Q
$num<<R U
)<<U V
body<<W [
.<<[ \
Rotate<<\ b
(<<b c
new<<c f
Vector3<<g n
(<<n o
$num<<o p
,<<p q
$num<<r s
,<<s t
$num<<u v
)<<v w
,<<w x
rotationAngle	<<y Ü
)
<<Ü á
;
<<á à
}== 	
else>> 
if>> 
(>> 
Input>> 
.>> 
GetKey>> 
(>> 
$str>> %
)>>% &
)>>& '
{?? 	
right@@ 
+=@@ 
$num@@ 
;@@ 
	transformAA 
.AA 
GetChildAA 
(AA 
$numAA  
)AA  !
.AA! "

gameObjectAA" ,
.AA, -
	SetActiveAA- 6
(AA6 7
trueAA7 ;
)AA; <
;AA< =
ifBB 
(BB 
bodyBB 
.BB 
rotationBB 
.BB 
eulerAnglesBB )
.BB) *
zBB* +
>BB, -
$numBB. 1
||BB2 4
bodyBB5 9
.BB9 :
rotationBB: B
.BBB C
eulerAnglesBBC N
.BBN O
zBBO P
<BBQ R
$numBBS U
)BBU V
bodyBBW [
.BB[ \
RotateBB\ b
(BBb c
newBBc f
Vector3BBg n
(BBn o
$numBBo p
,BBp q
$numBBr s
,BBs t
-BBu v
$numBBv w
)BBw x
,BBx y
rotationAngle	BBz á
)
BBá à
;
BBà â
}CC 	
elseDD 
ifDD 
(DD 
bodyDD 
.DD 
rotationDD 
.DD 
eulerAnglesDD *
.DD* +
zDD+ ,
>DD- .
$numDD/ 2
&&DD3 5
bodyDD6 :
.DD: ;
rotationDD; C
.DDC D
eulerAnglesDDD O
.DDO P
zDDP Q
<DDR S
$numDDT Y
)DDY Z
{EE 	
	transformFF 
.FF 
GetChildFF 
(FF 
$numFF  
)FF  !
.FF! "

gameObjectFF" ,
.FF, -
	SetActiveFF- 6
(FF6 7
falseFF7 <
)FF< =
;FF= >
	transformGG 
.GG 
GetChildGG 
(GG 
$numGG  
)GG  !
.GG! "

gameObjectGG" ,
.GG, -
	SetActiveGG- 6
(GG6 7
falseGG7 <
)GG< =
;GG= >
bodyHH 
.HH 
RotateHH 
(HH 
newHH 
Vector3HH #
(HH# $
$numHH$ %
,HH% &
$numHH' (
,HH( )
$numHH* +
)HH+ ,
,HH, -
rotationAngleHH. ;
)HH; <
;HH< =
}II 	
elseJJ 
ifJJ 
(JJ 
bodyJJ 
.JJ 
rotationJJ 
.JJ 
eulerAnglesJJ *
.JJ* +
zJJ+ ,
<JJ- .
$numJJ/ 1
&&JJ2 4
bodyJJ5 9
.JJ9 :
rotationJJ: B
.JJB C
eulerAnglesJJC N
.JJN O
zJJO P
>JJQ R
$numJJS V
)JJV W
{KK 	
bodyLL 
.LL 
RotateLL 
(LL 
newLL 
Vector3LL #
(LL# $
$numLL$ %
,LL% &
$numLL' (
,LL( )
-LL* +
$numLL+ ,
)LL, -
,LL- .
rotationAngleLL/ <
)LL< =
;LL= >
	transformMM 
.MM 
GetChildMM 
(MM 
$numMM  
)MM  !
.MM! "

gameObjectMM" ,
.MM, -
	SetActiveMM- 6
(MM6 7
falseMM7 <
)MM< =
;MM= >
	transformNN 
.NN 
GetChildNN 
(NN 
$numNN  
)NN  !
.NN! "

gameObjectNN" ,
.NN, -
	SetActiveNN- 6
(NN6 7
falseNN7 <
)NN< =
;NN= >
}OO 	
ifRR 

(RR 
rightRR 
>RR 
$numRR 
)RR 
rightRR 
=RR 
$numRR  "
;RR" #
ifSS 

(SS 
rightSS 
<SS 
-SS 
$numSS 
)SS 
rightSS 
=SS  
-SS! "
$numSS" $
;SS$ %
	tempTransUU 
=UU 
	tempTransUU 
.UU 

normalizedUU (
*UU) *
accUU+ .
*UU/ 0
TimeUU1 5
.UU5 6
	deltaTimeUU6 ?
;UU? @
ifVV 

(VV
 
	tempTransVV 
.VV 
	magnitudeVV 
!=VV !
$numVV" #
)VV# $
{WW 	
velocityXX 
=XX 
maxSpeedXX 
*XX  !
	tempTransXX" +
.XX+ ,
zXX, -
;XX- .
}YY 	
elseYY
 
velocityYY 
*=YY 
frictionConstantYY +
;YY+ ,
rbZZ 

.ZZ
 
MovePositionZZ 
(ZZ 
	transformZZ !
.ZZ! "
positionZZ" *
+ZZ+ ,
	tempTransZZ- 6
+ZZ7 8
	transformZZ9 B
.ZZB C
forwardZZC J
.ZZJ K

normalizedZZK U
*ZZV W
velocityZZX `
)ZZ` a
;ZZa b

Quaternion\\ 
deltaRotation\\  
=\\! "

Quaternion\\# -
.\\- .
Euler\\. 3
(\\3 4
new\\4 7
Vector3\\8 ?
(\\? @
$num\\@ A
,\\A B
angle\\C H
*\\I J
right\\K P
,\\P Q
$num\\R S
)\\S T
*\\U V
Time\\W [
.\\[ \
	deltaTime\\\ e
)\\e f
;\\f g
rb]] 

.]]
 
MoveRotation]] 
(]] 
rb]] 
.]] 
rotation]] #
.]]# $

normalized]]$ .
*]]/ 0
deltaRotation]]1 >
)]]> ?
;]]? @
thisPosition`` 
=`` 
	transform``  
.``  !
position``! )
;``) *
lookataa 
=aa 
thisaa 
.aa 
	transformaa 
.aa  
forwardaa  '
;aa' (
}dd 
voidee 
Updateee	 
(ee 
)ee 
{ff 
ifgg 

(gg 
(gg 
Inputgg 
.gg 
GetButtonDowngg  
(gg  !
$strgg! (
)gg( )
||gg* ,
Inputgg- 2
.gg2 3

GetKeyDowngg3 =
(gg= >
KeyCodegg> E
.ggE F
SpaceggF K
)ggK L
)ggL M
&&ggN P
!ggQ R
whileShootingggR _
)gg_ `
{hh 	
shotii 
.ii 
Playii 
(ii 
)ii 
;ii 
Instantiatejj 
(jj 
bulletjj 
,jj 
thisjj  $
.jj$ %
	transformjj% .
.jj. /
positionjj/ 7
,jj7 8
thisjj9 =
.jj= >
	transformjj> G
.jjG H
rotationjjH P
)jjP Q
;jjQ R
advanceTimekk 
=kk 
Timekk 
.kk 
timekk #
+kk$ %
$numkk& *
;kk* +
whileShootingll 
=ll 
truell  
;ll  !
}mm 	
floatnn 
timeLeftnn 
=nn 
advanceTimenn $
-nn% &
Timenn' +
.nn+ ,
timenn, 0
;nn0 1
ifoo 

(oo 
timeLeftoo 
<oo 
$numoo 
&&oo 
whileShootingoo )
)oo) *
whileShootingoo+ 8
=oo9 :
falseoo; @
;oo@ A
}pp 
privaterr 
voidrr 
OnTriggerEnterrr 
(rr  
Colliderrr  (
otherrr) .
)rr. /
{ss 
iftt 

(tt 
othertt 
.tt 

gameObjecttt 
.tt 

CompareTagtt '
(tt' (
$strtt( .
)tt. /
||tt0 2
othertt3 8
.tt8 9

gameObjecttt9 C
.ttC D

CompareTagttD N
(ttN O
$strttO U
)ttU V
)ttV W
{uu 	
deadvv 
.vv 
Playvv 
(vv 
)vv 
;vv 
Destroyww 
(ww 
otherww 
.ww 

gameObjectww $
)ww$ %
;ww% &
SceneManagerxx 
.xx 
	LoadScenexx "
(xx" #
gameOverScenexx# 0
)xx0 1
;xx1 2
Destroyyy 
(yy 
thisyy 
.yy 

gameObjectyy #
,yy# $
$numyy$ (
)yy( )
;yy) *
}zz 	
}{{ 
}|| Î'
çD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\ShowFinalScore.cs
public 
class 
ShowFinalScore 
: 
MonoBehaviour +
{ 
public 

Text 
	scoreText 
; 
public 


InputField 
	enterName 
;  
public 

string 
	marcador2 
; 
public		 

Image		 
record		 
;		 
void 
Start	 
( 
) 
{ 
record 
. 
enabled 
= 
false 
; 
int 
punt 
= 
PlayerPrefs 
. 
GetInt %
(% &
$str& 3
,3 4
$num5 6
)6 7
;7 8
	scoreText 
. 
text 
= 
$str "
+# $
punt% )
;) *
int 
i 
= 
$num 
; 
int 
final 
= 
$num 
; 
int 
terminar 
= 
$num 
; 
string 
marcador 
; 
string 
aux 
; 
string 
aux2 
; 
string 
aux3 
; 
string 
aux4 
; 
if 

(
 
PlayerPrefs 
. 
GetInt 
( 
$str +
,+ ,
$num- .
). /
>=0 2
PlayerPrefs3 >
.> ?
GetInt? E
(E F
$strF P
,P Q
$numR S
)S T
)T U
{U V
record 
. 
enabled 
= 
true !
;! "
} 	
do 

{ 
marcador 
= 
$str $
+% &
i' (
;( )
	marcador2   
=   
$str   #
+  $ %
i  & '
;  ' (
if!! 
(!! 
punt!! 
<!! 
PlayerPrefs!! &
.!!& '
GetInt!!' -
(!!- .
marcador!!. 6
,!!6 7
$num!!8 9
)!!9 :
)!!: ;
{!!< =
i"" 
++"" 
;"" 
}## 
else$$ 
{$$ 
for%% 
(%% 
int%% 
j%% 
=%% 
$num%%  !
;%%! "
j%%# $
!=%%% '
(%%( )
$num%%) +
-%%, -
i%%. /
)%%/ 0
;%%0 1
j%%2 3
++%%3 5
)%%5 6
{&& 
aux'' 
='' 
$str'' '
+''( )
(''* +
final''+ 0
-''1 2
j''3 4
)''4 5
;''5 6
aux2(( 
=(( 
$str(( '
+((( )
(((* +
final((+ 0
-((1 2
j((3 4
-((5 6
$num((7 8
)((8 9
;((9 :
PlayerPrefs)) #
.))# $
SetInt))$ *
())* +
aux))+ .
,)). /
())/ 0
PlayerPrefs))0 ;
.)); <
GetInt))< B
())B C
aux2))C G
,))G H
$num))I J
)))J K
)))K L
)))L M
;))M N
aux3** 
=** 
$str** &
+**' (
(**) *
final*** /
-**0 1
j**2 3
)**3 4
;**4 5
aux4++ 
=++ 
$str++ &
+++' (
(++) *
final++* /
-++0 1
j++2 3
-++4 5
$num++6 7
)++7 8
;++8 9
PlayerPrefs,, #
.,,# $
	SetString,,$ -
(,,- .
aux3,,. 2
,,,2 3
(,,4 5
PlayerPrefs,,5 @
.,,@ A
	GetString,,A J
(,,J K
aux4,,K O
,,,O P
$str,,Q ^
),,^ _
),,_ `
),,` a
;,,a b
}-- 
PlayerPrefs.. 
...  
SetInt..  &
(..& '
marcador..' /
,../ 0
punt..1 5
)..5 6
;..6 7
terminar// 
=// 
$num//  
;//  !
}00 
}11 
while11 
(11 
i11 
<11 
final11 
&&11 
terminar11  (
==11( *
$num11* +
)11+ ,
;11, -
}33 
public44 

void44 
Submit44 
(44 
)44 
{55 
PlayerPrefs66 
.66 
	SetString66 !
(66! "
	marcador266" +
,66+ ,
	enterName66- 6
.666 7
text667 ;
)66; <
;66< =
}77 
}88 ˚'
ïD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\ShowFinalScore_under13.cs
public 
class "
ShowFinalScore_under13 #
:$ %
MonoBehaviour& 3
{ 
public 

Text 
	scoreText 
; 
public 


InputField 
	enterName 
;  
public 

string 
	marcador2 
; 
public		 

Image		 
record		 
;		 
void 
Start	 
( 
) 
{ 
record 
. 
enabled 
= 
false 
; 
int 
punt 
= 
PlayerPrefs 
. 
GetInt %
(% &
$str& 3
,3 4
$num5 6
)6 7
;7 8
	scoreText 
. 
text 
= 
$str "
+# $
punt% )
;) *
int 
i 
= 
$num 
; 
int 
final 
= 
$num 
; 
int 
terminar 
= 
$num 
; 
string 
marcador 
; 
string 
aux 
; 
string 
aux2 
; 
string 
aux3 
; 
string 
aux4 
; 
if 

( 
PlayerPrefs 
. 
GetInt 
( 
$str ,
,, -
$num. /
)/ 0
>=1 3
PlayerPrefs4 ?
.? @
GetInt@ F
(F G
$strG Q
,Q R
$numS T
)T U
)U V
{ 	
record 
. 
enabled 
= 
true !
;! "
} 	
do 

{ 	
marcador   
=   
$str    
+  ! "
i  # $
;  $ %
	marcador2!! 
=!! 
$str!! 
+!!  !
i!!" #
;!!# $
if"" 
("" 
punt"" 
<"" 
PlayerPrefs"" "
.""" #
GetInt""# )
("") *
marcador""* 2
,""2 3
$num""4 5
)""5 6
)""6 7
{## 
i$$ 
++$$ 
;$$ 
}%% 
else&& 
{'' 
for(( 
((( 
int(( 
j(( 
=(( 
$num(( 
;(( 
j((  !
!=((" $
(((% &
$num((& (
-(() *
i((+ ,
)((, -
;((- .
j((/ 0
++((0 2
)((2 3
{)) 
aux** 
=** 
$str** #
+**$ %
(**& '
final**' ,
-**- .
j**/ 0
)**0 1
;**1 2
aux2++ 
=++ 
$str++ $
+++% &
(++' (
final++( -
-++. /
j++0 1
-++2 3
$num++4 5
)++5 6
;++6 7
PlayerPrefs,, 
.,,  
SetInt,,  &
(,,& '
aux,,' *
,,,* +
(,,, -
PlayerPrefs,,- 8
.,,8 9
GetInt,,9 ?
(,,? @
aux2,,@ D
,,,D E
$num,,F G
),,G H
),,H I
),,I J
;,,J K
aux3-- 
=-- 
$str-- "
+--# $
(--% &
final--& +
---, -
j--. /
)--/ 0
;--0 1
aux4.. 
=.. 
$str.. "
+..# $
(..% &
final..& +
-.., -
j... /
-..0 1
$num..2 3
)..3 4
;..4 5
PlayerPrefs// 
.//  
	SetString//  )
(//) *
aux3//* .
,//. /
(//0 1
PlayerPrefs//1 <
.//< =
	GetString//= F
(//F G
aux4//G K
,//K L
$str//M Z
)//Z [
)//[ \
)//\ ]
;//] ^
}00 
PlayerPrefs11 
.11 
SetInt11 "
(11" #
marcador11# +
,11+ ,
punt11- 1
)111 2
;112 3
terminar22 
=22 
$num22 
;22 
}33 
}44 	
while44
 
(44 
i44 
<44 
final44 
&&44 
terminar44 &
==44' )
$num44* +
)44+ ,
;44, -
}66 
public77 

void77 
Submit77 
(77 
)77 
{88 
PlayerPrefs99 
.99 
	SetString99 
(99 
	marcador299 '
,99' (
	enterName99) 2
.992 3
text993 7
)997 8
;998 9
}:: 
};; É
äD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\ShowRanking.cs
public 
class 
ShowRanking 
: 
MonoBehaviour (
{ 
public 

Text 
ranking 
; 
string		 

marcador		 
;		 
string

 

	marcador2

 
;

 
void 
Start	 
( 
) 
{ 
for 
( 
int 
i 
= 
$num 
; 
i 
< 
$num 
; 
i  !
++! #
)# $
{ 	
marcador 
= 
$str 
+  
i! "
;" #
	marcador2 
= 
$str !
+" #
i$ %
;% &
ranking 
. 
text 
+= 
$str  
+! "
PlayerPrefs# .
.. /
	GetString/ 8
(8 9
marcador9 A
,A B
$strC P
)P Q
;Q R
ranking 
. 
text 
+= 
$str  
+! "
PlayerPrefs# .
.. /
GetInt/ 5
(5 6
	marcador26 ?
,? @
$numA B
)B C
;C D
} 	
} 
} ì
íD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\ShowRanking_under13.cs
public 
class 
ShowRanking_under13  
:! "
MonoBehaviour# 0
{ 
public 

Text 
ranking 
; 
string		 

marcador		 
;		 
string

 

	marcador2

 
;

 
void 
Start	 
( 
) 
{ 
for 
( 
int 
i 
= 
$num 
; 
i 
< 
$num 
; 
i  !
++! #
)# $
{ 	
marcador 
= 
$str 
+  
i! "
;" #
	marcador2 
= 
$str !
+" #
i$ %
;% &
ranking 
. 
text 
+= 
$str  
+! "
PlayerPrefs# .
.. /
	GetString/ 8
(8 9
marcador9 A
,A B
$strC P
)P Q
;Q R
ranking 
. 
text 
+= 
$str  
+! "
PlayerPrefs# .
.. /
GetInt/ 5
(5 6
	marcador26 ?
,? @
$numA B
)B C
;C D
} 	
} 
} ﬂ
êD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\under13_variables.cs
public 
class 
under13_variables 
:  
MonoBehaviour! .
{ 
public		 


GameObject		 
alien		 
;		 
private

 
bool

 
alienAppearance

  
;

  !
private 
float 
timer 
; 
public 

Text 
	scoreText 
; 
public 

int 

scoreValue 
; 
void 
Start	 
( 
) 
{ 
PlayerPrefs 
. 
SetInt 
( 
$str (
,( )
$num* +
)+ ,
;, -
UpdateScore 
( 
) 
; 
timer 
= 
Time 
. 
time 
+ 
$num 
; 
} 
void 
Update	 
( 
) 
{ 
if 

( 
! 
alienAppearance 
) 
{ 	
float 
timeLeft 
= 
timer "
-# $
Time% )
.) *
time* .
;. /
if 
( 
timeLeft 
< 
$num 
) 
alienAppearance -
=. /
true0 4
;4 5
} 	
else 
if 
( 
alienAppearance  
)  !
{ 	
Debug 
. 
Log 
( 
$str (
)( )
;) *
Instantiate   
(   
alien   
,   
new   "
Vector3  # *
(  * +
Random  + 1
.  1 2
Range  2 7
(  7 8
-  8 9
$num  9 ;
,  ; <
$num  = ?
)  ? @
,  @ A
$num  B D
,  D E
$num  F I
)  I J
,  J K
this  L P
.  P Q
	transform  Q Z
.  Z [
rotation  [ c
)  c d
;  d e
alienAppearance!! 
=!! 
false!! #
;!!# $
timer"" 
="" 
Time"" 
."" 
time"" 
+"" 
$num""  !
;""! "
}## 	
}$$ 
public&& 

void&& 
AddScore&& 
(&& 
)&& 
{'' 
PlayerPrefs)) 
.)) 
SetInt)) 
()) 
$str)) (
,))( )
PlayerPrefs))* 5
.))5 6
GetInt))6 <
())< =
$str))= J
,))J K
$num))L M
)))M N
+))O P

scoreValue))Q [
)))[ \
;))\ ]

scoreValue** 
=** 
$num** 
;** 
UpdateScore++ 
(++ 
)++ 
;++ 
},, 
void.. 
UpdateScore..	 
(.. 
).. 
=>.. 
	scoreText.. #
...# $
text..$ (
=..) *
$str..+ 4
+..5 6
PlayerPrefs..7 B
...B C
GetInt..C I
(..I J
$str..J W
,..W X
$num..Y Z
)..Z [
;..[ \
}// ∞
åD:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\wall_rotation.cs
public 
class 
wall_rotation 
: 
MonoBehaviour *
{ 
public 

float 
angle 
; 
void 
Update	 
( 
) 
=> 
	transform 
. 
Rotate #
(# $
new$ '
Vector3( /
(/ 0
$num0 1
,1 2
angle2 7
,7 8
$num8 9
)9 :
): ;
;; <
} 