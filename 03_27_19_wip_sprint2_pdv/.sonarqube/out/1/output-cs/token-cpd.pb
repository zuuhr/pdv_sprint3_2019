�
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Music\MenuAudioPlay.cs
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
} �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Attributes\GetSetAttribute.cs
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
} �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Attributes\MinAttribute.cs
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
} �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Attributes\TrackballAttribute.cs
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
} �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Attributes\TrackballGroupAttribute.cs
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
} К
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\AmbientOcclusionComponent.cs
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
forceForwardCompatibility	77v �
;
77� �
}
77� �
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
mm� �
.
mm� �
fogEndDistance
mm� �
)
mm� �
)
mm� �
;
mm� �
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
�� 
tw
�� 
=
�� 
context
�� 
.
�� 
width
�� "
;
��" #
int
�� 
th
�� 
=
�� 
context
�� 
.
�� 
height
�� #
;
��# $
int
�� 
ts
�� 
=
�� 
settings
�� 
.
�� 
downsampling
�� *
?
��+ ,
$num
��- .
:
��/ 0
$num
��1 2
;
��2 3
const
�� !
RenderTextureFormat
�� %
kFormat
��& -
=
��. /!
RenderTextureFormat
��0 C
.
��C D
ARGB32
��D J
;
��J K
const
�� $
RenderTextureReadWrite
�� (
kRWMode
��) 0
=
��1 2$
RenderTextureReadWrite
��3 I
.
��I J
Linear
��J P
;
��P Q
const
�� 

FilterMode
�� 
kFilter
�� $
=
��% &

FilterMode
��' 1
.
��1 2
Bilinear
��2 :
;
��: ;
var
�� 
rtMask
�� 
=
�� 
Uniforms
�� !
.
��! " 
_OcclusionTexture1
��" 4
;
��4 5
cb
�� 
.
�� 
GetTemporaryRT
�� 
(
�� 
rtMask
�� $
,
��$ %
tw
��& (
/
��) *
ts
��+ -
,
��- .
th
��/ 1
/
��2 3
ts
��4 6
,
��6 7
$num
��8 9
,
��9 :
kFilter
��; B
,
��B C
kFormat
��D K
,
��K L
kRWMode
��M T
)
��T U
;
��U V
cb
�� 
.
�� 
Blit
�� 
(
�� 
(
�� 
Texture
�� 
)
�� 
null
�� !
,
��! "
rtMask
��# )
,
��) *
material
��+ 3
,
��3 4
(
��5 6
int
��6 9
)
��9 :
occlusionSource
��: I
)
��I J
;
��J K
var
�� 
rtBlur
�� 
=
�� 
Uniforms
�� !
.
��! " 
_OcclusionTexture2
��" 4
;
��4 5
cb
�� 
.
�� 
GetTemporaryRT
�� 
(
�� 
rtBlur
�� $
,
��$ %
tw
��& (
,
��( )
th
��* ,
,
��, -
$num
��. /
,
��/ 0
kFilter
��1 8
,
��8 9
kFormat
��: A
,
��A B
kRWMode
��C J
)
��J K
;
��K L
cb
�� 
.
�� 
SetGlobalTexture
�� 
(
��  
Uniforms
��  (
.
��( )
_MainTex
��) 1
,
��1 2
rtMask
��3 9
)
��9 :
;
��: ;
cb
�� 
.
�� 
Blit
�� 
(
�� 
rtMask
�� 
,
�� 
rtBlur
�� "
,
��" #
material
��$ ,
,
��, -
occlusionSource
��. =
==
��> @
OcclusionSource
��A P
.
��P Q
GBuffer
��Q X
?
��Y Z
$num
��[ \
:
��] ^
$num
��_ `
)
��` a
;
��a b
cb
�� 
.
��  
ReleaseTemporaryRT
�� !
(
��! "
rtMask
��" (
)
��( )
;
��) *
rtMask
�� 
=
�� 
Uniforms
�� 
.
�� 
_OcclusionTexture
�� /
;
��/ 0
cb
�� 
.
�� 
GetTemporaryRT
�� 
(
�� 
rtMask
�� $
,
��$ %
tw
��& (
,
��( )
th
��* ,
,
��, -
$num
��. /
,
��/ 0
kFilter
��1 8
,
��8 9
kFormat
��: A
,
��A B
kRWMode
��C J
)
��J K
;
��K L
cb
�� 
.
�� 
SetGlobalTexture
�� 
(
��  
Uniforms
��  (
.
��( )
_MainTex
��) 1
,
��1 2
rtBlur
��3 9
)
��9 :
;
��: ;
cb
�� 
.
�� 
Blit
�� 
(
�� 
rtBlur
�� 
,
�� 
rtMask
�� "
,
��" #
material
��$ ,
,
��, -
$num
��. /
)
��/ 0
;
��0 1
cb
�� 
.
��  
ReleaseTemporaryRT
�� !
(
��! "
rtBlur
��" (
)
��( )
;
��) *
if
�� 
(
�� 
context
�� 
.
�� 
profile
�� 
.
��  

debugViews
��  *
.
��* +
IsModeActive
��+ 7
(
��7 8
	DebugMode
��8 A
.
��A B
AmbientOcclusion
��B R
)
��R S
)
��S T
{
�� 
cb
�� 
.
�� 
SetGlobalTexture
�� #
(
��# $
Uniforms
��$ ,
.
��, -
_MainTex
��- 5
,
��5 6
rtMask
��7 =
)
��= >
;
��> ?
cb
�� 
.
�� 
Blit
�� 
(
�� 
rtMask
�� 
,
�� &
BuiltinRenderTextureType
��  8
.
��8 9
CameraTarget
��9 E
,
��E F
material
��G O
,
��O P
$num
��Q R
)
��R S
;
��S T
context
�� 
.
�� 
	Interrupt
�� !
(
��! "
)
��" #
;
��# $
}
�� 
else
�� 
if
�� 
(
�� "
ambientOnlySupported
�� )
)
��) *
{
�� 
cb
�� 
.
�� 
SetRenderTarget
�� "
(
��" #
m_MRT
��# (
,
��( )&
BuiltinRenderTextureType
��* B
.
��B C
CameraTarget
��C O
)
��O P
;
��P Q
cb
�� 
.
�� 
DrawMesh
�� 
(
�� 
GraphicsUtils
�� )
.
��) *
quad
��* .
,
��. /
	Matrix4x4
��0 9
.
��9 :
identity
��: B
,
��B C
material
��D L
,
��L M
$num
��N O
,
��O P
$num
��Q R
)
��R S
;
��S T
}
�� 
else
�� 
{
�� 
var
�� 
fbFormat
�� 
=
�� 
context
�� &
.
��& '
isHdr
��' ,
?
��- .!
RenderTextureFormat
��/ B
.
��B C

DefaultHDR
��C M
:
��N O!
RenderTextureFormat
��P c
.
��c d
Default
��d k
;
��k l
int
�� 
tempRT
�� 
=
�� 
Uniforms
�� %
.
��% &
_TempRT
��& -
;
��- .
cb
�� 
.
�� 
GetTemporaryRT
�� !
(
��! "
tempRT
��" (
,
��( )
context
��* 1
.
��1 2
width
��2 7
,
��7 8
context
��9 @
.
��@ A
height
��A G
,
��G H
$num
��I J
,
��J K

FilterMode
��L V
.
��V W
Bilinear
��W _
,
��_ `
fbFormat
��a i
)
��i j
;
��j k
cb
�� 
.
�� 
Blit
�� 
(
�� &
BuiltinRenderTextureType
�� 0
.
��0 1
CameraTarget
��1 =
,
��= >
tempRT
��? E
,
��E F
blitMaterial
��G S
,
��S T
$num
��U V
)
��V W
;
��W X
cb
�� 
.
�� 
SetGlobalTexture
�� #
(
��# $
Uniforms
��$ ,
.
��, -
_MainTex
��- 5
,
��5 6
tempRT
��7 =
)
��= >
;
��> ?
cb
�� 
.
�� 
Blit
�� 
(
�� 
tempRT
�� 
,
�� &
BuiltinRenderTextureType
��  8
.
��8 9
CameraTarget
��9 E
,
��E F
material
��G O
,
��O P
$num
��Q R
)
��R S
;
��S T
cb
�� 
.
��  
ReleaseTemporaryRT
�� %
(
��% &
tempRT
��& ,
)
��, -
;
��- .
}
�� 
cb
�� 
.
��  
ReleaseTemporaryRT
�� !
(
��! "
rtMask
��" (
)
��( )
;
��) *
}
�� 	
}
�� 
}�� �z
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\BloomComponent.cs
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
�� 
.
�� 

SetTexture
�� #
(
��# $
Uniforms
��$ ,
.
��, -
	_BloomTex
��- 6
,
��6 7
bloomTex
��8 @
)
��@ A
;
��A B
uberMaterial
�� 
.
�� 
	SetVector
�� "
(
��" #
Uniforms
��# +
.
��+ ,
_Bloom_Settings
��, ;
,
��; <
new
��= @
Vector2
��A H
(
��H I
sampleScale
��I T
,
��T U
bloom
��V [
.
��[ \
	intensity
��\ e
)
��e f
)
��f g
;
��g h
if
�� 
(
�� 
lensDirt
�� 
.
�� 
	intensity
�� "
>
��# $
$num
��% '
&&
��( *
lensDirt
��+ 3
.
��3 4
texture
��4 ;
!=
��< >
null
��? C
)
��C D
{
�� 
uberMaterial
�� 
.
�� 

SetTexture
�� '
(
��' (
Uniforms
��( 0
.
��0 1
_Bloom_DirtTex
��1 ?
,
��? @
lensDirt
��A I
.
��I J
texture
��J Q
)
��Q R
;
��R S
uberMaterial
�� 
.
�� 
SetFloat
�� %
(
��% &
Uniforms
��& .
.
��. /"
_Bloom_DirtIntensity
��/ C
,
��C D
lensDirt
��E M
.
��M N
	intensity
��N W
)
��W X
;
��X Y
uberMaterial
�� 
.
�� 
EnableKeyword
�� *
(
��* +
$str
��+ <
)
��< =
;
��= >
}
�� 
else
�� 
{
�� 
uberMaterial
�� 
.
�� 
EnableKeyword
�� *
(
��* +
$str
��+ 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
}
�� 
}�� ��
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\BuiltinDebugViewsComponent.cs
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
�� 
flags
�� 
;
�� 
}
�� 	
public
�� 
override
�� 
CameraEvent
�� #
GetCameraEvent
��$ 2
(
��2 3
)
��3 4
{
�� 	
return
�� 
model
�� 
.
�� 
settings
�� !
.
��! "
mode
��" &
==
��' )
Mode
��* .
.
��. /
MotionVectors
��/ <
?
�� 
CameraEvent
��  
.
��  ! 
BeforeImageEffects
��! 3
:
�� 
CameraEvent
��  
.
��  !&
BeforeImageEffectsOpaque
��! 9
;
��9 :
}
�� 	
public
�� 
override
�� 
string
�� 
GetName
�� &
(
��& '
)
��' (
{
�� 	
return
�� 
$str
�� (
;
��( )
}
�� 	
public
�� 
override
�� 
void
�� #
PopulateCommandBuffer
�� 2
(
��2 3
CommandBuffer
��3 @
cb
��A C
)
��C D
{
�� 	
var
�� 
settings
�� 
=
�� 
model
��  
.
��  !
settings
��! )
;
��) *
var
�� 
material
�� 
=
�� 
context
�� "
.
��" #
materialFactory
��# 2
.
��2 3
Get
��3 6
(
��6 7
k_ShaderString
��7 E
)
��E F
;
��F G
material
�� 
.
�� 
shaderKeywords
�� #
=
��$ %
null
��& *
;
��* +
if
�� 
(
�� 
context
�� 
.
��  
isGBufferAvailable
�� *
)
��* +
material
�� 
.
�� 
EnableKeyword
�� &
(
��& '
$str
��' 7
)
��7 8
;
��8 9
switch
�� 
(
�� 
settings
�� 
.
�� 
mode
�� !
)
��! "
{
�� 
case
�� 
Mode
�� 
.
�� 
Depth
�� 
:
��  
	DepthPass
�� 
(
�� 
cb
��  
)
��  !
;
��! "
break
�� 
;
�� 
case
�� 
Mode
�� 
.
�� 
Normals
�� !
:
��! "
DepthNormalsPass
�� $
(
��$ %
cb
��% '
)
��' (
;
��( )
break
�� 
;
�� 
case
�� 
Mode
�� 
.
�� 
MotionVectors
�� '
:
��' (
MotionVectorsPass
�� %
(
��% &
cb
��& (
)
��( )
;
��) *
break
�� 
;
�� 
}
�� 
context
�� 
.
�� 
	Interrupt
�� 
(
�� 
)
�� 
;
��  
}
�� 	
void
�� 
	DepthPass
�� 
(
�� 
CommandBuffer
�� $
cb
��% '
)
��' (
{
�� 	
var
�� 
material
�� 
=
�� 
context
�� "
.
��" #
materialFactory
��# 2
.
��2 3
Get
��3 6
(
��6 7
k_ShaderString
��7 E
)
��E F
;
��F G
var
�� 
settings
�� 
=
�� 
model
��  
.
��  !
settings
��! )
.
��) *
depth
��* /
;
��/ 0
cb
�� 
.
�� 
SetGlobalFloat
�� 
(
�� 
Uniforms
�� &
.
��& '
_DepthScale
��' 2
,
��2 3
$num
��4 6
/
��7 8
settings
��9 A
.
��A B
scale
��B G
)
��G H
;
��H I
cb
�� 
.
�� 
Blit
�� 
(
�� 
(
�� 
Texture
�� 
)
�� 
null
�� !
,
��! "&
BuiltinRenderTextureType
��# ;
.
��; <
CameraTarget
��< H
,
��H I
material
��J R
,
��R S
(
��T U
int
��U X
)
��X Y
Pass
��Y ]
.
��] ^
Depth
��^ c
)
��c d
;
��d e
}
�� 	
void
�� 
DepthNormalsPass
�� 
(
�� 
CommandBuffer
�� +
cb
��, .
)
��. /
{
�� 	
var
�� 
material
�� 
=
�� 
context
�� "
.
��" #
materialFactory
��# 2
.
��2 3
Get
��3 6
(
��6 7
k_ShaderString
��7 E
)
��E F
;
��F G
cb
�� 
.
�� 
Blit
�� 
(
�� 
(
�� 
Texture
�� 
)
�� 
null
�� !
,
��! "&
BuiltinRenderTextureType
��# ;
.
��; <
CameraTarget
��< H
,
��H I
material
��J R
,
��R S
(
��T U
int
��U X
)
��X Y
Pass
��Y ]
.
��] ^
Normals
��^ e
)
��e f
;
��f g
}
�� 	
void
�� 
MotionVectorsPass
�� 
(
�� 
CommandBuffer
�� ,
cb
��- /
)
��/ 0
{
�� 	
if
�� 
(
�� 
!
�� 
Application
�� 
.
�� 
	isPlaying
�� &
)
��& '
return
�� 
;
�� 
var
�� 
material
�� 
=
�� 
context
�� "
.
��" #
materialFactory
��# 2
.
��2 3
Get
��3 6
(
��6 7
k_ShaderString
��7 E
)
��E F
;
��F G
var
�� 
settings
�� 
=
�� 
model
��  
.
��  !
settings
��! )
.
��) *
motionVectors
��* 7
;
��7 8
int
�� 
tempRT
�� 
=
�� 
Uniforms
�� !
.
��! "
_TempRT
��" )
;
��) *
cb
�� 
.
�� 
GetTemporaryRT
�� 
(
�� 
tempRT
�� $
,
��$ %
context
��& -
.
��- .
width
��. 3
,
��3 4
context
��5 <
.
��< =
height
��= C
,
��C D
$num
��E F
,
��F G

FilterMode
��H R
.
��R S
Bilinear
��S [
)
��[ \
;
��\ ]
cb
�� 
.
�� 
SetGlobalFloat
�� 
(
�� 
Uniforms
�� &
.
��& '
_Opacity
��' /
,
��/ 0
settings
��1 9
.
��9 :
sourceOpacity
��: G
)
��G H
;
��H I
cb
�� 
.
�� 
SetGlobalTexture
�� 
(
��  
Uniforms
��  (
.
��( )
_MainTex
��) 1
,
��1 2&
BuiltinRenderTextureType
��3 K
.
��K L
CameraTarget
��L X
)
��X Y
;
��Y Z
cb
�� 
.
�� 
Blit
�� 
(
�� &
BuiltinRenderTextureType
�� ,
.
��, -
CameraTarget
��- 9
,
��9 :
tempRT
��; A
,
��A B
material
��C K
,
��K L
(
��M N
int
��N Q
)
��Q R
Pass
��R V
.
��V W
MovecOpacity
��W c
)
��c d
;
��d e
if
�� 
(
�� 
settings
�� 
.
��  
motionImageOpacity
�� +
>
��, -
$num
��. 0
&&
��1 3
settings
��4 <
.
��< ="
motionImageAmplitude
��= Q
>
��R S
$num
��T V
)
��V W
{
�� 
int
�� 
tempRT2
�� 
=
�� 
Uniforms
�� &
.
��& '
_TempRT2
��' /
;
��/ 0
cb
�� 
.
�� 
GetTemporaryRT
�� !
(
��! "
tempRT2
��" )
,
��) *
context
��+ 2
.
��2 3
width
��3 8
,
��8 9
context
��: A
.
��A B
height
��B H
,
��H I
$num
��J K
,
��K L

FilterMode
��M W
.
��W X
Bilinear
��X `
)
��` a
;
��a b
cb
�� 
.
�� 
SetGlobalFloat
�� !
(
��! "
Uniforms
��" *
.
��* +
_Opacity
��+ 3
,
��3 4
settings
��5 =
.
��= > 
motionImageOpacity
��> P
)
��P Q
;
��Q R
cb
�� 
.
�� 
SetGlobalFloat
�� !
(
��! "
Uniforms
��" *
.
��* +

_Amplitude
��+ 5
,
��5 6
settings
��7 ?
.
��? @"
motionImageAmplitude
��@ T
)
��T U
;
��U V
cb
�� 
.
�� 
SetGlobalTexture
�� #
(
��# $
Uniforms
��$ ,
.
��, -
_MainTex
��- 5
,
��5 6
tempRT
��7 =
)
��= >
;
��> ?
cb
�� 
.
�� 
Blit
�� 
(
�� 
tempRT
�� 
,
�� 
tempRT2
��  '
,
��' (
material
��) 1
,
��1 2
(
��3 4
int
��4 7
)
��7 8
Pass
��8 <
.
��< =
MovecImaging
��= I
)
��I J
;
��J K
cb
�� 
.
��  
ReleaseTemporaryRT
�� %
(
��% &
tempRT
��& ,
)
��, -
;
��- .
tempRT
�� 
=
�� 
tempRT2
��  
;
��  !
}
�� 
if
�� 
(
�� 
settings
�� 
.
�� "
motionVectorsOpacity
�� -
>
��. /
$num
��0 2
&&
��3 5
settings
��6 >
.
��> ?$
motionVectorsAmplitude
��? U
>
��V W
$num
��X Z
)
��Z [
{
�� 
PrepareArrows
�� 
(
�� 
)
�� 
;
��  
float
�� 
sy
�� 
=
�� 
$num
�� 
/
�� 
settings
��  (
.
��( )%
motionVectorsResolution
��) @
;
��@ A
float
�� 
sx
�� 
=
�� 
sy
�� 
*
�� 
context
��  '
.
��' (
height
��( .
/
��/ 0
context
��1 8
.
��8 9
width
��9 >
;
��> ?
cb
�� 
.
�� 
SetGlobalVector
�� "
(
��" #
Uniforms
��# +
.
��+ ,
_Scale
��, 2
,
��2 3
new
��4 7
Vector2
��8 ?
(
��? @
sx
��@ B
,
��B C
sy
��D F
)
��F G
)
��G H
;
��H I
cb
�� 
.
�� 
SetGlobalFloat
�� !
(
��! "
Uniforms
��" *
.
��* +
_Opacity
��+ 3
,
��3 4
settings
��5 =
.
��= >"
motionVectorsOpacity
��> R
)
��R S
;
��S T
cb
�� 
.
�� 
SetGlobalFloat
�� !
(
��! "
Uniforms
��" *
.
��* +

_Amplitude
��+ 5
,
��5 6
settings
��7 ?
.
��? @$
motionVectorsAmplitude
��@ V
)
��V W
;
��W X
cb
�� 
.
�� 
DrawMesh
�� 
(
�� 
m_Arrows
�� $
.
��$ %
mesh
��% )
,
��) *
	Matrix4x4
��+ 4
.
��4 5
identity
��5 =
,
��= >
material
��? G
,
��G H
$num
��I J
,
��J K
(
��L M
int
��M P
)
��P Q
Pass
��Q U
.
��U V
MovecArrows
��V a
)
��a b
;
��b c
}
�� 
cb
�� 
.
�� 
SetGlobalTexture
�� 
(
��  
Uniforms
��  (
.
��( )
_MainTex
��) 1
,
��1 2
tempRT
��3 9
)
��9 :
;
��: ;
cb
�� 
.
�� 
Blit
�� 
(
�� 
tempRT
�� 
,
�� &
BuiltinRenderTextureType
�� 4
.
��4 5
CameraTarget
��5 A
)
��A B
;
��B C
cb
�� 
.
��  
ReleaseTemporaryRT
�� !
(
��! "
tempRT
��" (
)
��( )
;
��) *
}
�� 	
void
�� 
PrepareArrows
�� 
(
�� 
)
�� 
{
�� 	
int
�� 
row
�� 
=
�� 
model
�� 
.
�� 
settings
�� $
.
��$ %
motionVectors
��% 2
.
��2 3%
motionVectorsResolution
��3 J
;
��J K
int
�� 
col
�� 
=
�� 
row
�� 
*
�� 
Screen
�� "
.
��" #
width
��# (
/
��) *
Screen
��+ 1
.
��1 2
height
��2 8
;
��8 9
if
�� 
(
�� 
m_Arrows
�� 
==
�� 
null
��  
)
��  !
m_Arrows
�� 
=
�� 
new
�� 

ArrowArray
�� )
(
��) *
)
��* +
;
��+ ,
if
�� 
(
�� 
m_Arrows
�� 
.
�� 
columnCount
�� $
!=
��% '
col
��( +
||
��, .
m_Arrows
��/ 7
.
��7 8
rowCount
��8 @
!=
��A C
row
��D G
)
��G H
{
�� 
m_Arrows
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
��" #
m_Arrows
�� 
.
�� 
	BuildMesh
�� "
(
��" #
col
��# &
,
��& '
row
��( +
)
��+ ,
;
��, -
}
�� 
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
�� 	
if
�� 
(
�� 
m_Arrows
�� 
!=
�� 
null
��  
)
��  !
m_Arrows
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
��" #
m_Arrows
�� 
=
�� 
null
�� 
;
�� 
}
�� 	
}
�� 
}�� �*
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\ChromaticAberrationComponent.cs
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
}?? ��
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\ColorGradingComponent.cs
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
�� 	
const
�� 
float
�� 
kGammaScale
�� #
=
��$ %
$num
��& *
;
��* +
const
�� 
float
�� 
	kMinGamma
�� !
=
��" #
$num
��$ )
;
��) *
var
�� 
nGamma
�� 
=
�� 
NormalizeColor
�� '
(
��' (
gamma
��( -
)
��- .
;
��. /
float
�� 
avgGamma
�� 
=
�� 
(
�� 
nGamma
�� $
.
��$ %
r
��% &
+
��' (
nGamma
��) /
.
��/ 0
g
��0 1
+
��2 3
nGamma
��4 :
.
��: ;
b
��; <
)
��< =
/
��> ?
$num
��@ B
;
��B C
gamma
�� 
.
�� 
a
�� 
*=
�� 
gamma
�� 
.
�� 
a
�� 
<
��  
$num
��! #
?
��$ %
$num
��& *
:
��+ ,
$num
��- /
;
��/ 0
float
�� 
gammaR
�� 
=
�� 
Mathf
��  
.
��  !
Pow
��! $
(
��$ %
$num
��% '
,
��' (
(
��) *
nGamma
��* 0
.
��0 1
r
��1 2
-
��3 4
avgGamma
��5 =
)
��= >
*
��? @
kGammaScale
��A L
)
��L M
+
��N O
gamma
��P U
.
��U V
a
��V W
;
��W X
float
�� 
gammaG
�� 
=
�� 
Mathf
��  
.
��  !
Pow
��! $
(
��$ %
$num
��% '
,
��' (
(
��) *
nGamma
��* 0
.
��0 1
g
��1 2
-
��3 4
avgGamma
��5 =
)
��= >
*
��? @
kGammaScale
��A L
)
��L M
+
��N O
gamma
��P U
.
��U V
a
��V W
;
��W X
float
�� 
gammaB
�� 
=
�� 
Mathf
��  
.
��  !
Pow
��! $
(
��$ %
$num
��% '
,
��' (
(
��) *
nGamma
��* 0
.
��0 1
b
��1 2
-
��3 4
avgGamma
��5 =
)
��= >
*
��? @
kGammaScale
��A L
)
��L M
+
��N O
gamma
��P U
.
��U V
a
��V W
;
��W X
float
�� 
	invGammaR
�� 
=
�� 
$num
��  
/
��! "
Mathf
��# (
.
��( )
Max
��) ,
(
��, -
	kMinGamma
��- 6
,
��6 7
gammaR
��8 >
)
��> ?
;
��? @
float
�� 
	invGammaG
�� 
=
�� 
$num
��  
/
��! "
Mathf
��# (
.
��( )
Max
��) ,
(
��, -
	kMinGamma
��- 6
,
��6 7
gammaG
��8 >
)
��> ?
;
��? @
float
�� 
	invGammaB
�� 
=
�� 
$num
��  
/
��! "
Mathf
��# (
.
��( )
Max
��) ,
(
��, -
	kMinGamma
��- 6
,
��6 7
gammaB
��8 >
)
��> ?
;
��? @
return
�� 
ClampVector
�� 
(
�� 
new
�� "
Vector3
��# *
(
��* +
	invGammaR
��+ 4
,
��4 5
	invGammaG
��6 ?
,
��? @
	invGammaB
��A J
)
��J K
,
��K L
$num
��M O
,
��O P
$num
��Q S
)
��S T
;
��T U
}
�� 	
public
�� 
static
�� 
Vector3
�� 
GetGainValue
�� *
(
��* +
Color
��+ 0
gain
��1 5
)
��5 6
{
�� 	
const
�� 
float
�� 

kGainScale
�� "
=
��# $
$num
��% )
;
��) *
var
�� 
nGain
�� 
=
�� 
NormalizeColor
�� &
(
��& '
gain
��' +
)
��+ ,
;
��, -
float
�� 
avgGain
�� 
=
�� 
(
�� 
nGain
�� "
.
��" #
r
��# $
+
��% &
nGain
��' ,
.
��, -
g
��- .
+
��/ 0
nGain
��1 6
.
��6 7
b
��7 8
)
��8 9
/
��: ;
$num
��< >
;
��> ?
gain
�� 
.
�� 
a
�� 
*=
�� 
gain
�� 
.
�� 
a
�� 
>
�� 
$num
�� !
?
��" #
$num
��$ &
:
��' (
$num
��) +
;
��+ ,
float
�� 
gainR
�� 
=
�� 
Mathf
�� 
.
��  
Pow
��  #
(
��# $
$num
��$ &
,
��& '
(
��( )
nGain
��) .
.
��. /
r
��/ 0
-
��1 2
avgGain
��3 :
)
��: ;
*
��< =

kGainScale
��> H
)
��H I
+
��J K
gain
��L P
.
��P Q
a
��Q R
;
��R S
float
�� 
gainG
�� 
=
�� 
Mathf
�� 
.
��  
Pow
��  #
(
��# $
$num
��$ &
,
��& '
(
��( )
nGain
��) .
.
��. /
g
��/ 0
-
��1 2
avgGain
��3 :
)
��: ;
*
��< =

kGainScale
��> H
)
��H I
+
��J K
gain
��L P
.
��P Q
a
��Q R
;
��R S
float
�� 
gainB
�� 
=
�� 
Mathf
�� 
.
��  
Pow
��  #
(
��# $
$num
��$ &
,
��& '
(
��( )
nGain
��) .
.
��. /
b
��/ 0
-
��1 2
avgGain
��3 :
)
��: ;
*
��< =

kGainScale
��> H
)
��H I
+
��J K
gain
��L P
.
��P Q
a
��Q R
;
��R S
return
�� 
ClampVector
�� 
(
�� 
new
�� "
Vector3
��# *
(
��* +
gainR
��+ 0
,
��0 1
gainG
��2 7
,
��7 8
gainB
��9 >
)
��> ?
,
��? @
$num
��A C
,
��C D
$num
��E G
)
��G H
;
��H I
}
�� 	
public
�� 
static
�� 
void
�� $
CalculateLiftGammaGain
�� 1
(
��1 2
Color
��2 7
lift
��8 <
,
��< =
Color
��> C
gamma
��D I
,
��I J
Color
��K P
gain
��Q U
,
��U V
out
��W Z
Vector3
��[ b
outLift
��c j
,
��j k
out
��l o
Vector3
��p w
outGamma��x �
,��� �
out��� �
Vector3��� �
outGain��� �
)��� �
{
�� 	
outLift
�� 
=
�� 
GetLiftValue
�� "
(
��" #
lift
��# '
)
��' (
;
��( )
outGamma
�� 
=
�� 
GetGammaValue
�� $
(
��$ %
gamma
��% *
)
��* +
;
��+ ,
outGain
�� 
=
�� 
GetGainValue
�� "
(
��" #
gain
��# '
)
��' (
;
��( )
}
�� 	
public
�� 
static
�� 
Vector3
�� 
GetSlopeValue
�� +
(
��+ ,
Color
��, 1
slope
��2 7
)
��7 8
{
�� 	
const
�� 
float
�� 
kSlopeScale
�� #
=
��$ %
$num
��& *
;
��* +
var
�� 
nSlope
�� 
=
�� 
NormalizeColor
�� '
(
��' (
slope
��( -
)
��- .
;
��. /
float
�� 
avgSlope
�� 
=
�� 
(
�� 
nSlope
�� $
.
��$ %
r
��% &
+
��' (
nSlope
��) /
.
��/ 0
g
��0 1
+
��2 3
nSlope
��4 :
.
��: ;
b
��; <
)
��< =
/
��> ?
$num
��@ B
;
��B C
slope
�� 
.
�� 
a
�� 
*=
�� 
$num
�� 
;
�� 
float
�� 
slopeR
�� 
=
�� 
(
�� 
nSlope
�� "
.
��" #
r
��# $
-
��% &
avgSlope
��' /
)
��/ 0
*
��1 2
kSlopeScale
��3 >
+
��? @
slope
��A F
.
��F G
a
��G H
+
��I J
$num
��K M
;
��M N
float
�� 
slopeG
�� 
=
�� 
(
�� 
nSlope
�� "
.
��" #
g
��# $
-
��% &
avgSlope
��' /
)
��/ 0
*
��1 2
kSlopeScale
��3 >
+
��? @
slope
��A F
.
��F G
a
��G H
+
��I J
$num
��K M
;
��M N
float
�� 
slopeB
�� 
=
�� 
(
�� 
nSlope
�� "
.
��" #
b
��# $
-
��% &
avgSlope
��' /
)
��/ 0
*
��1 2
kSlopeScale
��3 >
+
��? @
slope
��A F
.
��F G
a
��G H
+
��I J
$num
��K M
;
��M N
return
�� 
ClampVector
�� 
(
�� 
new
�� "
Vector3
��# *
(
��* +
slopeR
��+ 1
,
��1 2
slopeG
��3 9
,
��9 :
slopeB
��; A
)
��A B
,
��B C
$num
��D F
,
��F G
$num
��H J
)
��J K
;
��K L
}
�� 	
public
�� 
static
�� 
Vector3
�� 
GetPowerValue
�� +
(
��+ ,
Color
��, 1
power
��2 7
)
��7 8
{
�� 	
const
�� 
float
�� 
kPowerScale
�� #
=
��$ %
$num
��& *
;
��* +
const
�� 
float
�� 
minPower
��  
=
��! "
$num
��# (
;
��( )
var
�� 
nPower
�� 
=
�� 
NormalizeColor
�� '
(
��' (
power
��( -
)
��- .
;
��. /
float
�� 
avgPower
�� 
=
�� 
(
�� 
nPower
�� $
.
��$ %
r
��% &
+
��' (
nPower
��) /
.
��/ 0
g
��0 1
+
��2 3
nPower
��4 :
.
��: ;
b
��; <
)
��< =
/
��> ?
$num
��@ B
;
��B C
power
�� 
.
�� 
a
�� 
*=
�� 
$num
�� 
;
�� 
float
�� 
powerR
�� 
=
�� 
(
�� 
nPower
�� "
.
��" #
r
��# $
-
��% &
avgPower
��' /
)
��/ 0
*
��1 2
kPowerScale
��3 >
+
��? @
power
��A F
.
��F G
a
��G H
+
��I J
$num
��K M
;
��M N
float
�� 
powerG
�� 
=
�� 
(
�� 
nPower
�� "
.
��" #
g
��# $
-
��% &
avgPower
��' /
)
��/ 0
*
��1 2
kPowerScale
��3 >
+
��? @
power
��A F
.
��F G
a
��G H
+
��I J
$num
��K M
;
��M N
float
�� 
powerB
�� 
=
�� 
(
�� 
nPower
�� "
.
��" #
b
��# $
-
��% &
avgPower
��' /
)
��/ 0
*
��1 2
kPowerScale
��3 >
+
��? @
power
��A F
.
��F G
a
��G H
+
��I J
$num
��K M
;
��M N
float
�� 
	invPowerR
�� 
=
�� 
$num
��  
/
��! "
Mathf
��# (
.
��( )
Max
��) ,
(
��, -
minPower
��- 5
,
��5 6
powerR
��7 =
)
��= >
;
��> ?
float
�� 
	invPowerG
�� 
=
�� 
$num
��  
/
��! "
Mathf
��# (
.
��( )
Max
��) ,
(
��, -
minPower
��- 5
,
��5 6
powerG
��7 =
)
��= >
;
��> ?
float
�� 
	invPowerB
�� 
=
�� 
$num
��  
/
��! "
Mathf
��# (
.
��( )
Max
��) ,
(
��, -
minPower
��- 5
,
��5 6
powerB
��7 =
)
��= >
;
��> ?
return
�� 
ClampVector
�� 
(
�� 
new
�� "
Vector3
��# *
(
��* +
	invPowerR
��+ 4
,
��4 5
	invPowerG
��6 ?
,
��? @
	invPowerB
��A J
)
��J K
,
��K L
$num
��M Q
,
��Q R
$num
��S W
)
��W X
;
��X Y
}
�� 	
public
�� 
static
�� 
Vector3
�� 
GetOffsetValue
�� ,
(
��, -
Color
��- 2
offset
��3 9
)
��9 :
{
�� 	
const
�� 
float
�� 
kOffsetScale
�� $
=
��% &
$num
��' ,
;
��, -
var
�� 
nOffset
�� 
=
�� 
NormalizeColor
�� (
(
��( )
offset
��) /
)
��/ 0
;
��0 1
float
�� 
	avgOffset
�� 
=
�� 
(
�� 
nOffset
�� &
.
��& '
r
��' (
+
��) *
nOffset
��+ 2
.
��2 3
g
��3 4
+
��5 6
nOffset
��7 >
.
��> ?
b
��? @
)
��@ A
/
��B C
$num
��D F
;
��F G
offset
�� 
.
�� 
a
�� 
*=
�� 
$num
�� 
;
�� 
float
�� 
offsetR
�� 
=
�� 
(
�� 
nOffset
�� $
.
��$ %
r
��% &
-
��' (
	avgOffset
��) 2
)
��2 3
*
��4 5
kOffsetScale
��6 B
+
��C D
offset
��E K
.
��K L
a
��L M
;
��M N
float
�� 
offsetG
�� 
=
�� 
(
�� 
nOffset
�� $
.
��$ %
g
��% &
-
��' (
	avgOffset
��) 2
)
��2 3
*
��4 5
kOffsetScale
��6 B
+
��C D
offset
��E K
.
��K L
a
��L M
;
��M N
float
�� 
offsetB
�� 
=
�� 
(
�� 
nOffset
�� $
.
��$ %
b
��% &
-
��' (
	avgOffset
��) 2
)
��2 3
*
��4 5
kOffsetScale
��6 B
+
��C D
offset
��E K
.
��K L
a
��L M
;
��M N
return
�� 
ClampVector
�� 
(
�� 
new
�� "
Vector3
��# *
(
��* +
offsetR
��+ 2
,
��2 3
offsetG
��4 ;
,
��; <
offsetB
��= D
)
��D E
,
��E F
-
��G H
$num
��H L
,
��L M
$num
��N R
)
��R S
;
��S T
}
�� 	
public
�� 
static
�� 
void
�� '
CalculateSlopePowerOffset
�� 4
(
��4 5
Color
��5 :
slope
��; @
,
��@ A
Color
��B G
power
��H M
,
��M N
Color
��O T
offset
��U [
,
��[ \
out
��] `
Vector3
��a h
outSlope
��i q
,
��q r
out
��s v
Vector3
��w ~
outPower�� �
,��� �
out��� �
Vector3��� �
	outOffset��� �
)��� �
{
�� 	
outSlope
�� 
=
�� 
GetSlopeValue
�� $
(
��$ %
slope
��% *
)
��* +
;
��+ ,
outPower
�� 
=
�� 
GetPowerValue
�� $
(
��$ %
power
��% *
)
��* +
;
��+ ,
	outOffset
�� 
=
�� 
GetOffsetValue
�� &
(
��& '
offset
��' -
)
��- .
;
��. /
}
�� 	
TextureFormat
�� 
GetCurveFormat
�� $
(
��$ %
)
��% &
{
�� 	
if
�� 
(
�� 

SystemInfo
�� 
.
�� #
SupportsTextureFormat
�� 0
(
��0 1
TextureFormat
��1 >
.
��> ?
RGBAHalf
��? G
)
��G H
)
��H I
return
�� 
TextureFormat
�� $
.
��$ %
RGBAHalf
��% -
;
��- .
return
�� 
TextureFormat
��  
.
��  !
RGBA32
��! '
;
��' (
}
�� 	
	Texture2D
�� 
GetCurveTexture
�� !
(
��! "
)
��" #
{
�� 	
if
�� 
(
�� 
m_GradingCurves
�� 
==
��  "
null
��# '
)
��' (
{
�� 
m_GradingCurves
�� 
=
��  !
new
��" %
	Texture2D
��& /
(
��/ 0
k_CurvePrecision
��0 @
,
��@ A
$num
��B C
,
��C D
GetCurveFormat
��E S
(
��S T
)
��T U
,
��U V
false
��W \
,
��\ ]
true
��^ b
)
��b c
{
�� 
name
�� 
=
�� 
$str
�� 4
,
��4 5
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
��2 3

anisoLevel
�� 
=
��  
$num
��! "
,
��" #
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
�� 
var
�� 
curves
�� 
=
�� 
model
�� 
.
�� 
settings
�� '
.
��' (
curves
��( .
;
��. /
curves
�� 
.
�� 
hueVShue
�� 
.
�� 
Cache
�� !
(
��! "
)
��" #
;
��# $
curves
�� 
.
�� 
hueVSsat
�� 
.
�� 
Cache
�� !
(
��! "
)
��" #
;
��# $
for
�� 
(
�� 
int
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
�� 
k_CurvePrecision
��  0
;
��0 1
i
��2 3
++
��3 5
)
��5 6
{
�� 
float
�� 
t
�� 
=
�� 
i
�� 
*
�� 
k_CurveStep
�� )
;
��) *
float
�� 
x
�� 
=
�� 
curves
��  
.
��  !
hueVShue
��! )
.
��) *
Evaluate
��* 2
(
��2 3
t
��3 4
)
��4 5
;
��5 6
float
�� 
y
�� 
=
�� 
curves
��  
.
��  !
hueVSsat
��! )
.
��) *
Evaluate
��* 2
(
��2 3
t
��3 4
)
��4 5
;
��5 6
float
�� 
z
�� 
=
�� 
curves
��  
.
��  !
satVSsat
��! )
.
��) *
Evaluate
��* 2
(
��2 3
t
��3 4
)
��4 5
;
��5 6
float
�� 
w
�� 
=
�� 
curves
��  
.
��  !
lumVSsat
��! )
.
��) *
Evaluate
��* 2
(
��2 3
t
��3 4
)
��4 5
;
��5 6
m_pixels
�� 
[
�� 
i
�� 
]
�� 
=
�� 
new
�� !
Color
��" '
(
��' (
x
��( )
,
��) *
y
��+ ,
,
��, -
z
��. /
,
��/ 0
w
��1 2
)
��2 3
;
��3 4
float
�� 
m
�� 
=
�� 
curves
��  
.
��  !
master
��! '
.
��' (
Evaluate
��( 0
(
��0 1
t
��1 2
)
��2 3
;
��3 4
float
�� 
r
�� 
=
�� 
curves
��  
.
��  !
red
��! $
.
��$ %
Evaluate
��% -
(
��- .
t
��. /
)
��/ 0
;
��0 1
float
�� 
g
�� 
=
�� 
curves
��  
.
��  !
green
��! &
.
��& '
Evaluate
��' /
(
��/ 0
t
��0 1
)
��1 2
;
��2 3
float
�� 
b
�� 
=
�� 
curves
��  
.
��  !
blue
��! %
.
��% &
Evaluate
��& .
(
��. /
t
��/ 0
)
��0 1
;
��1 2
m_pixels
�� 
[
�� 
i
�� 
+
�� 
k_CurvePrecision
�� -
]
��- .
=
��/ 0
new
��1 4
Color
��5 :
(
��: ;
r
��; <
,
��< =
g
��> ?
,
��? @
b
��A B
,
��B C
m
��D E
)
��E F
;
��F G
}
�� 
m_GradingCurves
�� 
.
�� 
	SetPixels
�� %
(
��% &
m_pixels
��& .
)
��. /
;
��/ 0
m_GradingCurves
�� 
.
�� 
Apply
�� !
(
��! "
false
��" '
,
��' (
false
��) .
)
��. /
;
��/ 0
return
�� 
m_GradingCurves
�� "
;
��" #
}
�� 	
bool
�� 
IsLogLutValid
�� 
(
�� 
RenderTexture
�� (
lut
��) ,
)
��, -
{
�� 	
return
�� 
lut
�� 
!=
�� 
null
�� 
&&
�� !
lut
��" %
.
��% &
	IsCreated
��& /
(
��/ 0
)
��0 1
&&
��2 4
lut
��5 8
.
��8 9
height
��9 ?
==
��@ B"
k_InternalLogLutSize
��C W
;
��W X
}
�� 	!
RenderTextureFormat
�� 
GetLutFormat
�� (
(
��( )
)
��) *
{
�� 	
if
�� 
(
�� 

SystemInfo
�� 
.
�� )
SupportsRenderTextureFormat
�� 6
(
��6 7!
RenderTextureFormat
��7 J
.
��J K
ARGBHalf
��K S
)
��S T
)
��T U
return
�� !
RenderTextureFormat
�� *
.
��* +
ARGBHalf
��+ 3
;
��3 4
return
�� !
RenderTextureFormat
�� &
.
��& '
ARGB32
��' -
;
��- .
}
�� 	
void
�� 
GenerateLut
�� 
(
�� 
)
�� 
{
�� 	
var
�� 
settings
�� 
=
�� 
model
��  
.
��  !
settings
��! )
;
��) *
if
�� 
(
�� 
!
�� 
IsLogLutValid
�� 
(
�� 
model
�� $
.
��$ %
bakedLut
��% -
)
��- .
)
��. /
{
�� 
GraphicsUtils
�� 
.
�� 
Destroy
�� %
(
��% &
model
��& +
.
��+ ,
bakedLut
��, 4
)
��4 5
;
��5 6
model
�� 
.
�� 
bakedLut
�� 
=
��  
new
��! $
RenderTexture
��% 2
(
��2 3"
k_InternalLogLutSize
��3 G
*
��H I"
k_InternalLogLutSize
��J ^
,
��^ _"
k_InternalLogLutSize
��` t
,
��t u
$num
��v w
,
��w x
GetLutFormat��y �
(��� �
)��� �
)��� �
{
�� 
name
�� 
=
�� 
$str
�� 2
,
��2 3
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
��2 3

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
,
��4 5
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

anisoLevel
�� 
=
��  
$num
��! "
}
�� 
;
�� 
}
�� 
var
�� 
lutMaterial
�� 
=
�� 
context
�� %
.
��% &
materialFactory
��& 5
.
��5 6
Get
��6 9
(
��9 :
$str
��: X
)
��X Y
;
��Y Z
lutMaterial
�� 
.
�� 
	SetVector
�� !
(
��! "
Uniforms
��" *
.
��* +

_LutParams
��+ 5
,
��5 6
new
��7 :
Vector4
��; B
(
��B C"
k_InternalLogLutSize
�� (
,
��( )
$num
�� 
/
�� 
(
�� "
k_InternalLogLutSize
�� 0
*
��1 2"
k_InternalLogLutSize
��3 G
)
��G H
,
��H I
$num
�� 
/
�� "
k_InternalLogLutSize
�� /
,
��/ 0"
k_InternalLogLutSize
�� (
/
��) *
(
��+ ,"
k_InternalLogLutSize
��, @
-
��A B
$num
��C E
)
��E F
)
��F G
)
�� 
;
�� 
lutMaterial
�� 
.
�� 
shaderKeywords
�� &
=
��' (
null
��) -
;
��- .
var
�� 
tonemapping
�� 
=
�� 
settings
�� &
.
��& '
tonemapping
��' 2
;
��2 3
switch
�� 
(
�� 
tonemapping
�� 
.
��  

tonemapper
��  *
)
��* +
{
�� 
case
�� 
ColorGradingModel
�� &
.
��& '

Tonemapper
��' 1
.
��1 2
Neutral
��2 9
:
��9 :
{
�� 
lutMaterial
�� 
.
��  
EnableKeyword
��  -
(
��- .
$str
��. C
)
��C D
;
��D E
const
�� 
float
�� 
scaleFactor
��  +
=
��, -
$num
��. 1
;
��1 2
const
�� 
float
�� 
scaleFactorHalf
��  /
=
��0 1
scaleFactor
��2 =
*
��> ?
$num
��@ D
;
��D E
float
�� 
inBlack
�� !
=
��" #
tonemapping
��$ /
.
��/ 0
neutralBlackIn
��0 >
*
��? @
scaleFactor
��A L
+
��M N
$num
��O Q
;
��Q R
float
�� 
outBlack
�� "
=
��# $
tonemapping
��% 0
.
��0 1
neutralBlackOut
��1 @
*
��A B
scaleFactorHalf
��C R
+
��S T
$num
��U W
;
��W X
float
�� 
inWhite
�� !
=
��" #
tonemapping
��$ /
.
��/ 0
neutralWhiteIn
��0 >
/
��? @
scaleFactor
��A L
;
��L M
float
�� 
outWhite
�� "
=
��# $
$num
��% '
-
��( )
tonemapping
��* 5
.
��5 6
neutralWhiteOut
��6 E
/
��F G
scaleFactor
��H S
;
��S T
float
�� 

blackRatio
�� $
=
��% &
inBlack
��' .
/
��/ 0
outBlack
��1 9
;
��9 :
float
�� 

whiteRatio
�� $
=
��% &
inWhite
��' .
/
��/ 0
outWhite
��1 9
;
��9 :
const
�� 
float
�� 
a
��  !
=
��" #
$num
��$ (
;
��( )
float
�� 
b
�� 
=
�� 
Mathf
�� #
.
��# $
Max
��$ '
(
��' (
$num
��( *
,
��* +
Mathf
��, 1
.
��1 2
LerpUnclamped
��2 ?
(
��? @
$num
��@ E
,
��E F
$num
��G L
,
��L M

blackRatio
��N X
)
��X Y
)
��Y Z
;
��Z [
float
�� 
c
�� 
=
�� 
Mathf
�� #
.
��# $
LerpUnclamped
��$ 1
(
��1 2
$num
��2 7
,
��7 8
$num
��9 >
,
��> ?

whiteRatio
��@ J
)
��J K
;
��K L
float
�� 
d
�� 
=
�� 
Mathf
�� #
.
��# $
Max
��$ '
(
��' (
$num
��( *
,
��* +
Mathf
��, 1
.
��1 2
LerpUnclamped
��2 ?
(
��? @
$num
��@ E
,
��E F
$num
��G L
,
��L M

blackRatio
��N X
)
��X Y
)
��Y Z
;
��Z [
const
�� 
float
�� 
e
��  !
=
��" #
$num
��$ )
;
��) *
const
�� 
float
�� 
f
��  !
=
��" #
$num
��$ )
;
��) *
lutMaterial
�� 
.
��  
	SetVector
��  )
(
��) *
Uniforms
��* 2
.
��2 3'
_NeutralTonemapperParams1
��3 L
,
��L M
new
��N Q
Vector4
��R Y
(
��Y Z
a
��Z [
,
��[ \
b
��] ^
,
��^ _
c
��` a
,
��a b
d
��c d
)
��d e
)
��e f
;
��f g
lutMaterial
�� 
.
��  
	SetVector
��  )
(
��) *
Uniforms
��* 2
.
��2 3'
_NeutralTonemapperParams2
��3 L
,
��L M
new
��N Q
Vector4
��R Y
(
��Y Z
e
��Z [
,
��[ \
f
��] ^
,
��^ _
tonemapping
��` k
.
��k l
neutralWhiteLevel
��l }
,
��} ~
tonemapping�� �
.��� � 
neutralWhiteClip��� �
/��� �
scaleFactorHalf��� �
)��� �
)��� �
;��� �
break
�� 
;
�� 
}
�� 
case
�� 
ColorGradingModel
�� &
.
��& '

Tonemapper
��' 1
.
��1 2
ACES
��2 6
:
��6 7
{
�� 
lutMaterial
�� 
.
��  
EnableKeyword
��  -
(
��- .
$str
��. B
)
��B C
;
��C D
break
�� 
;
�� 
}
�� 
}
�� 
lutMaterial
�� 
.
�� 
SetFloat
��  
(
��  !
Uniforms
��! )
.
��) *
	_HueShift
��* 3
,
��3 4
settings
��5 =
.
��= >
basic
��> C
.
��C D
hueShift
��D L
/
��M N
$num
��O S
)
��S T
;
��T U
lutMaterial
�� 
.
�� 
SetFloat
��  
(
��  !
Uniforms
��! )
.
��) *
_Saturation
��* 5
,
��5 6
settings
��7 ?
.
��? @
basic
��@ E
.
��E F

saturation
��F P
)
��P Q
;
��Q R
lutMaterial
�� 
.
�� 
SetFloat
��  
(
��  !
Uniforms
��! )
.
��) *
	_Contrast
��* 3
,
��3 4
settings
��5 =
.
��= >
basic
��> C
.
��C D
contrast
��D L
)
��L M
;
��M N
lutMaterial
�� 
.
�� 
	SetVector
�� !
(
��! "
Uniforms
��" *
.
��* +
_Balance
��+ 3
,
��3 4#
CalculateColorBalance
��5 J
(
��J K
settings
��K S
.
��S T
basic
��T Y
.
��Y Z
temperature
��Z e
,
��e f
settings
��g o
.
��o p
basic
��p u
.
��u v
tint
��v z
)
��z {
)
��{ |
;
��| }
Vector3
�� 
lift
�� 
,
�� 
gamma
�� 
,
��  
gain
��! %
;
��% &$
CalculateLiftGammaGain
�� "
(
��" #
settings
�� 
.
�� 
colorWheels
�� $
.
��$ %
linear
��% +
.
��+ ,
lift
��, 0
,
��0 1
settings
�� 
.
�� 
colorWheels
�� $
.
��$ %
linear
��% +
.
��+ ,
gamma
��, 1
,
��1 2
settings
�� 
.
�� 
colorWheels
�� $
.
��$ %
linear
��% +
.
��+ ,
gain
��, 0
,
��0 1
out
�� 
lift
�� 
,
�� 
out
�� 
gamma
�� #
,
��# $
out
��% (
gain
��) -
)
�� 
;
�� 
lutMaterial
�� 
.
�� 
	SetVector
�� !
(
��! "
Uniforms
��" *
.
��* +
_Lift
��+ 0
,
��0 1
lift
��2 6
)
��6 7
;
��7 8
lutMaterial
�� 
.
�� 
	SetVector
�� !
(
��! "
Uniforms
��" *
.
��* +
	_InvGamma
��+ 4
,
��4 5
gamma
��6 ;
)
��; <
;
��< =
lutMaterial
�� 
.
�� 
	SetVector
�� !
(
��! "
Uniforms
��" *
.
��* +
_Gain
��+ 0
,
��0 1
gain
��2 6
)
��6 7
;
��7 8
Vector3
�� 
slope
�� 
,
�� 
power
��  
,
��  !
offset
��" (
;
��( )'
CalculateSlopePowerOffset
�� %
(
��% &
settings
�� 
.
�� 
colorWheels
�� $
.
��$ %
log
��% (
.
��( )
slope
��) .
,
��. /
settings
�� 
.
�� 
colorWheels
�� $
.
��$ %
log
��% (
.
��( )
power
��) .
,
��. /
settings
�� 
.
�� 
colorWheels
�� $
.
��$ %
log
��% (
.
��( )
offset
��) /
,
��/ 0
out
�� 
slope
�� 
,
�� 
out
�� 
power
�� $
,
��$ %
out
��& )
offset
��* 0
)
�� 
;
�� 
lutMaterial
�� 
.
�� 
	SetVector
�� !
(
��! "
Uniforms
��" *
.
��* +
_Slope
��+ 1
,
��1 2
slope
��3 8
)
��8 9
;
��9 :
lutMaterial
�� 
.
�� 
	SetVector
�� !
(
��! "
Uniforms
��" *
.
��* +
_Power
��+ 1
,
��1 2
power
��3 8
)
��8 9
;
��9 :
lutMaterial
�� 
.
�� 
	SetVector
�� !
(
��! "
Uniforms
��" *
.
��* +
_Offset
��+ 2
,
��2 3
offset
��4 :
)
��: ;
;
��; <
lutMaterial
�� 
.
�� 
	SetVector
�� !
(
��! "
Uniforms
��" *
.
��* +
_ChannelMixerRed
��+ ;
,
��; <
settings
��= E
.
��E F
channelMixer
��F R
.
��R S
red
��S V
)
��V W
;
��W X
lutMaterial
�� 
.
�� 
	SetVector
�� !
(
��! "
Uniforms
��" *
.
��* + 
_ChannelMixerGreen
��+ =
,
��= >
settings
��? G
.
��G H
channelMixer
��H T
.
��T U
green
��U Z
)
��Z [
;
��[ \
lutMaterial
�� 
.
�� 
	SetVector
�� !
(
��! "
Uniforms
��" *
.
��* +
_ChannelMixerBlue
��+ <
,
��< =
settings
��> F
.
��F G
channelMixer
��G S
.
��S T
blue
��T X
)
��X Y
;
��Y Z
lutMaterial
�� 
.
�� 

SetTexture
�� "
(
��" #
Uniforms
��# +
.
��+ ,
_Curves
��, 3
,
��3 4
GetCurveTexture
��5 D
(
��D E
)
��E F
)
��F G
;
��G H
Graphics
�� 
.
�� 
Blit
�� 
(
�� 
null
�� 
,
�� 
model
��  %
.
��% &
bakedLut
��& .
,
��. /
lutMaterial
��0 ;
,
��; <
$num
��= >
)
��> ?
;
��? @
}
�� 	
public
�� 
override
�� 
void
�� 
Prepare
�� $
(
��$ %
Material
��% -
uberMaterial
��. :
)
��: ;
{
�� 	
if
�� 
(
�� 
model
�� 
.
�� 
isDirty
�� 
||
��  
!
��! "
IsLogLutValid
��" /
(
��/ 0
model
��0 5
.
��5 6
bakedLut
��6 >
)
��> ?
)
��? @
{
�� 
GenerateLut
�� 
(
�� 
)
�� 
;
�� 
model
�� 
.
�� 
isDirty
�� 
=
�� 
false
��  %
;
��% &
}
�� 
uberMaterial
�� 
.
�� 
EnableKeyword
�� &
(
��& '
context
�� 
.
�� 
profile
�� 
.
��  

debugViews
��  *
.
��* +
IsModeActive
��+ 7
(
��7 8
	DebugMode
��8 A
.
��A B
PreGradingLog
��B O
)
��O P
?
�� 
$str
�� *
:
�� 
$str
�� !
)
�� 
;
�� 
var
�� 
bakedLut
�� 
=
�� 
model
��  
.
��  !
bakedLut
��! )
;
��) *
uberMaterial
�� 
.
�� 

SetTexture
�� #
(
��# $
Uniforms
��$ ,
.
��, -
_LogLut
��- 4
,
��4 5
bakedLut
��6 >
)
��> ?
;
��? @
uberMaterial
�� 
.
�� 
	SetVector
�� "
(
��" #
Uniforms
��# +
.
��+ ,
_LogLut_Params
��, :
,
��: ;
new
��< ?
Vector3
��@ G
(
��G H
$num
��H J
/
��K L
bakedLut
��M U
.
��U V
width
��V [
,
��[ \
$num
��] _
/
��` a
bakedLut
��b j
.
��j k
height
��k q
,
��q r
bakedLut
��s {
.
��{ |
height��| �
-��� �
$num��� �
)��� �
)��� �
;��� �
float
�� 
ev
�� 
=
�� 
Mathf
�� 
.
�� 
Exp
��  
(
��  !
model
��! &
.
��& '
settings
��' /
.
��/ 0
basic
��0 5
.
��5 6
postExposure
��6 B
*
��C D
$num
��E h
)
��h i
;
��i j
uberMaterial
�� 
.
�� 
SetFloat
�� !
(
��! "
Uniforms
��" *
.
��* +
_ExposureEV
��+ 6
,
��6 7
ev
��8 :
)
��: ;
;
��; <
}
�� 	
public
�� 
void
�� 
OnGUI
�� 
(
�� 
)
�� 
{
�� 	
var
�� 
bakedLut
�� 
=
�� 
model
��  
.
��  !
bakedLut
��! )
;
��) *
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
��  
context
��  '
.
��' (
viewport
��( 0
.
��0 1
x
��1 2
*
��3 4
Screen
��5 ;
.
��; <
width
��< A
+
��B C
$num
��D F
,
��F G
$num
��H J
,
��J K
bakedLut
��L T
.
��T U
width
��U Z
,
��Z [
bakedLut
��\ d
.
��d e
height
��e k
)
��k l
;
��l m
GUI
�� 
.
�� 
DrawTexture
�� 
(
�� 
rect
��  
,
��  !
bakedLut
��" *
)
��* +
;
��+ ,
}
�� 	
public
�� 
override
�� 
void
�� 
	OnDisable
�� &
(
��& '
)
��' (
{
�� 	
GraphicsUtils
�� 
.
�� 
Destroy
�� !
(
��! "
m_GradingCurves
��" 1
)
��1 2
;
��2 3
GraphicsUtils
�� 
.
�� 
Destroy
�� !
(
��! "
model
��" '
.
��' (
bakedLut
��( 0
)
��0 1
;
��1 2
m_GradingCurves
�� 
=
�� 
null
�� "
;
��" #
model
�� 
.
�� 
bakedLut
�� 
=
�� 
null
�� !
;
��! "
}
�� 	
}
�� 
}�� ��
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\DepthOfFieldComponent.cs
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
taaBlending	PPu �
)
PP� �
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
Linear	kk} �
)
kk� �
;
kk� �
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
�� 
rt1
�� 
=
�� 
context
�� 
.
�� "
renderTextureFactory
�� 2
.
��2 3
Get
��3 6
(
��6 7
context
��7 >
.
��> ?
width
��? D
/
��E F
$num
��G H
,
��H I
context
��J Q
.
��Q R
height
��R X
/
��Y Z
$num
��[ \
,
��\ ]
$num
��^ _
,
��_ `
colorFormat
��a l
)
��l m
;
��m n
material
�� 
.
�� 

SetTexture
�� 
(
��  
Uniforms
��  (
.
��( )
_CoCTex
��) 0
,
��0 1
rtCoC
��2 7
)
��7 8
;
��8 9
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
��  !
rt1
��" %
,
��% &
material
��' /
,
��/ 0
$num
��1 2
)
��2 3
;
��3 4
var
�� 
rt2
�� 
=
�� 
context
�� 
.
�� "
renderTextureFactory
�� 2
.
��2 3
Get
��3 6
(
��6 7
context
��7 >
.
��> ?
width
��? D
/
��E F
$num
��G H
,
��H I
context
��J Q
.
��Q R
height
��R X
/
��Y Z
$num
��[ \
,
��\ ]
$num
��^ _
,
��_ `
colorFormat
��a l
)
��l m
;
��m n
Graphics
�� 
.
�� 
Blit
�� 
(
�� 
rt1
�� 
,
�� 
rt2
�� "
,
��" #
material
��$ ,
,
��, -
$num
��. /
+
��0 1
(
��2 3
int
��3 6
)
��6 7
settings
��7 ?
.
��? @

kernelSize
��@ J
)
��J K
;
��K L
Graphics
�� 
.
�� 
Blit
�� 
(
�� 
rt2
�� 
,
�� 
rt1
�� "
,
��" #
material
��$ ,
,
��, -
$num
��. /
)
��/ 0
;
��0 1
uberMaterial
�� 
.
�� 
	SetVector
�� "
(
��" #
Uniforms
��# +
.
��+ ,!
_DepthOfFieldParams
��, ?
,
��? @
new
��A D
Vector3
��E L
(
��L M
s1
��M O
,
��O P
coeff
��Q V
,
��V W
maxCoC
��X ^
)
��^ _
)
��_ `
;
��` a
if
�� 
(
�� 
context
�� 
.
�� 
profile
�� 
.
��  

debugViews
��  *
.
��* +
IsModeActive
��+ 7
(
��7 8
	DebugMode
��8 A
.
��A B

FocusPlane
��B L
)
��L M
)
��M N
{
�� 
uberMaterial
�� 
.
�� 
EnableKeyword
�� *
(
��* +
$str
��+ D
)
��D E
;
��E F
context
�� 
.
�� 
	Interrupt
�� !
(
��! "
)
��" #
;
��# $
}
�� 
else
�� 
{
�� 
uberMaterial
�� 
.
�� 

SetTexture
�� '
(
��' (
Uniforms
��( 0
.
��0 1
_DepthOfFieldTex
��1 A
,
��A B
rt1
��C F
)
��F G
;
��G H
uberMaterial
�� 
.
�� 

SetTexture
�� '
(
��' (
Uniforms
��( 0
.
��0 1!
_DepthOfFieldCoCTex
��1 D
,
��D E
rtCoC
��F K
)
��K L
;
��L M
uberMaterial
�� 
.
�� 
EnableKeyword
�� *
(
��* +
$str
��+ ;
)
��; <
;
��< =
}
�� 
context
�� 
.
�� "
renderTextureFactory
�� (
.
��( )
Release
��) 0
(
��0 1
rt2
��1 4
)
��4 5
;
��5 6
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
�� 	
if
�� 
(
�� 
m_CoCHistory
�� 
!=
�� 
null
��  $
)
��$ %
RenderTexture
�� 
.
�� 
ReleaseTemporary
�� .
(
��. /
m_CoCHistory
��/ ;
)
��; <
;
��< =
m_CoCHistory
�� 
=
�� 
null
�� 
;
��  
}
�� 	
}
�� 
}�� �&
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\DitheringComponent.cs
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
}GG ֠
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\EyeAdaptationComponent.cs
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
float	tt~ �
)
tt� � 
k_HistogramThreadY
tt� �
)
tt� �
,
tt� �
$num
tt� �
)
tt� �
;
tt� �
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
�� 
.
�� 
	SetVector
�� 
(
�� 
Uniforms
�� '
.
��' (
_Params
��( /
,
��/ 0
new
��1 4
Vector4
��5 <
(
��< =
settings
��= E
.
��E F

lowPercent
��F P
*
��Q R
$num
��S X
,
��X Y
settings
��Z b
.
��b c
highPercent
��c n
*
��o p
$num
��q v
,
��v w
Mathf
��x }
.
��} ~
Exp��~ �
(��� �
settings��� �
.��� �
minLuminance��� �
*��� �
$num��� �
)��� �
,��� �
Mathf��� �
.��� �
Exp��� �
(��� �
settings��� �
.��� �
maxLuminance��� �
*��� �
$num��� �
)��� �
)��� �
)��� �
;��� �
material
�� 
.
�� 
	SetVector
�� 
(
�� 
Uniforms
�� '
.
��' (
_Speed
��( .
,
��. /
new
��0 3
Vector2
��4 ;
(
��; <
settings
��< D
.
��D E
	speedDown
��E N
,
��N O
settings
��P X
.
��X Y
speedUp
��Y `
)
��` a
)
��a b
;
��b c
material
�� 
.
�� 
	SetVector
�� 
(
�� 
Uniforms
�� '
.
��' (
_ScaleOffsetRes
��( 7
,
��7 8
scaleOffsetRes
��9 G
)
��G H
;
��H I
material
�� 
.
�� 
SetFloat
�� 
(
�� 
Uniforms
�� &
.
��& '#
_ExposureCompensation
��' <
,
��< =
settings
��> F
.
��F G
keyValue
��G O
)
��O P
;
��P Q
if
�� 
(
�� 
settings
�� 
.
�� 
dynamicKeyValue
�� (
)
��( )
material
�� 
.
�� 
EnableKeyword
�� &
(
��& '
$str
��' 7
)
��7 8
;
��8 9
if
�� 
(
�� 
m_FirstFrame
�� 
||
�� 
!
��  !
Application
��! ,
.
��, -
	isPlaying
��- 6
)
��6 7
{
�� #
m_CurrentAutoExposure
�� %
=
��& ' 
m_AutoExposurePool
��( :
[
��: ;
$num
��; <
]
��< =
;
��= >
Graphics
�� 
.
�� 
Blit
�� 
(
�� 
null
�� "
,
��" ##
m_CurrentAutoExposure
��$ 9
,
��9 :
material
��; C
,
��C D
(
��E F
int
��F I
)
��I J 
EyeAdaptationModel
��J \
.
��\ ]
EyeAdaptationType
��] n
.
��n o
Fixed
��o t
)
��t u
;
��u v
Graphics
�� 
.
�� 
Blit
�� 
(
��  
m_AutoExposurePool
�� 0
[
��0 1
$num
��1 2
]
��2 3
,
��3 4 
m_AutoExposurePool
��5 G
[
��G H
$num
��H I
]
��I J
)
��J K
;
��K L
}
�� 
else
�� 
{
�� 
int
�� 
pp
�� 
=
�� $
m_AutoExposurePingPing
�� /
;
��/ 0
var
�� 
src
�� 
=
��  
m_AutoExposurePool
�� ,
[
��, -
++
��- /
pp
��/ 1
%
��2 3
$num
��4 5
]
��5 6
;
��6 7
var
�� 
dst
�� 
=
��  
m_AutoExposurePool
�� ,
[
��, -
++
��- /
pp
��/ 1
%
��2 3
$num
��4 5
]
��5 6
;
��6 7
Graphics
�� 
.
�� 
Blit
�� 
(
�� 
src
�� !
,
��! "
dst
��# &
,
��& '
material
��( 0
,
��0 1
(
��2 3
int
��3 6
)
��6 7
settings
��7 ?
.
��? @
adaptationType
��@ N
)
��N O
;
��O P$
m_AutoExposurePingPing
�� &
=
��' (
++
��) +
pp
��+ -
%
��. /
$num
��0 1
;
��1 2#
m_CurrentAutoExposure
�� %
=
��& '
dst
��( +
;
��+ ,
}
�� 
if
�� 
(
�� 
context
�� 
.
�� 
profile
�� 
.
��  

debugViews
��  *
.
��* +
IsModeActive
��+ 7
(
��7 8$
BuiltinDebugViewsModel
��8 N
.
��N O
Mode
��O S
.
��S T
EyeAdaptation
��T a
)
��a b
)
��b c
{
�� 
if
�� 
(
�� 
m_DebugHistogram
�� $
==
��% '
null
��( ,
||
��- /
!
��0 1
m_DebugHistogram
��1 A
.
��A B
	IsCreated
��B K
(
��K L
)
��L M
)
��M N
{
�� 
m_DebugHistogram
�� $
=
��% &
new
��' *
RenderTexture
��+ 8
(
��8 9
$num
��9 <
,
��< =
$num
��> A
,
��A B
$num
��C D
,
��D E!
RenderTextureFormat
��F Y
.
��Y Z
ARGB32
��Z `
)
��` a
{
�� 

filterMode
�� "
=
��# $

FilterMode
��% /
.
��/ 0
Point
��0 5
,
��5 6
wrapMode
��  
=
��! "
TextureWrapMode
��# 2
.
��2 3
Clamp
��3 8
}
�� 
;
�� 
}
�� 
material
�� 
.
�� 
SetFloat
�� !
(
��! "
Uniforms
��" *
.
��* +
_DebugWidth
��+ 6
,
��6 7
m_DebugHistogram
��8 H
.
��H I
width
��I N
)
��N O
;
��O P
Graphics
�� 
.
�� 
Blit
�� 
(
�� 
null
�� "
,
��" #
m_DebugHistogram
��$ 4
,
��4 5
material
��6 >
,
��> ?
$num
��@ A
)
��A B
;
��B C
}
�� 
m_FirstFrame
�� 
=
�� 
false
��  
;
��  !
return
�� #
m_CurrentAutoExposure
�� (
;
��( )
}
�� 	
public
�� 
void
�� 
OnGUI
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
m_DebugHistogram
��  
==
��! #
null
��$ (
||
��) +
!
��, -
m_DebugHistogram
��- =
.
��= >
	IsCreated
��> G
(
��G H
)
��H I
)
��I J
return
�� 
;
�� 
var
�� 
rect
�� 
=
�� 
new
�� 
Rect
�� 
(
��  
context
��  '
.
��' (
viewport
��( 0
.
��0 1
x
��1 2
*
��3 4
Screen
��5 ;
.
��; <
width
��< A
+
��B C
$num
��D F
,
��F G
$num
��H J
,
��J K
m_DebugHistogram
��L \
.
��\ ]
width
��] b
,
��b c
m_DebugHistogram
��d t
.
��t u
height
��u {
)
��{ |
;
��| }
GUI
�� 
.
�� 
DrawTexture
�� 
(
�� 
rect
��  
,
��  !
m_DebugHistogram
��" 2
)
��2 3
;
��3 4
}
�� 	
}
�� 
}�� �;
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\FogComponent.cs
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
}OO �!
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\FxaaComponent.cs
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
}00 �9
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\GrainComponent.cs
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
$num	KK} �
)
KK� �
)
KK� �
;
KK� �
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
settings	LL~ �
.
LL� �
size
LL� �
,
LL� �
(
LL� �
float
LL� �
)
LL� �
context
LL� �
.
LL� �
height
LL� �
/
LL� �
(
LL� �
float
LL� �
)
LL� �
m_GrainLookupRT
LL� �
.
LL� �
height
LL� �
/
LL� �
settings
LL� �
.
LL� �
size
LL� �
,
LL� �

rndOffsetX
LL� �
,
LL� �

rndOffsetY
LL� �
)
LL� �
)
LL� �
;
LL� �
}MM 	
}NN 
}OO �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\MotionBlurComponent.cs
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
RenderTargetIdentifier	PPm �
source
PP� �
,
PP� �$
RenderTargetIdentifier
PP� �
destination
PP� �
,
PP� �
Material
PP� �
material
PP� �
)
PP� �
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
RenderTextureReadWrite	bbq �
.
bb� �
Linear
bb� �
)
bb� �
;
bb� �
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
RenderTextureReadWrite	ggw �
.
gg� �
Linear
gg� �
)
gg� �
;
gg� �
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
RenderTextureReadWrite	mmw �
.
mm� �
Linear
mm� �
)
mm� �
;
mm� �
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
RenderTextureReadWrite	ttw �
.
tt� �
Linear
tt� �
)
tt� �
;
tt� �
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
m_VectorRTFormat	r �
,
� �$
RenderTextureReadWrite
� �
.
� �
Linear
� �
)
� �
;
� �
cb
�� 
.
�� 
SetGlobalTexture
�� #
(
��# $
Uniforms
��$ ,
.
��, -
_MainTex
��- 5
,
��5 6
tile8
��7 <
)
��< =
;
��= >
cb
�� 
.
�� 
Blit
�� 
(
�� 
tile8
�� 
,
�� 
tile
�� #
,
��# $
material
��% -
,
��- .
(
��/ 0
int
��0 3
)
��3 4
Pass
��4 8
.
��8 9
TileMaxV
��9 A
)
��A B
;
��B C
cb
�� 
.
��  
ReleaseTemporaryRT
�� %
(
��% &
tile8
��& +
)
��+ ,
;
��, -
int
�� 
neighborMax
�� 
=
��  !
Uniforms
��" *
.
��* +
_NeighborMaxTex
��+ :
;
��: ;
int
�� 
neighborMaxWidth
�� $
=
��% &
context
��' .
.
��. /
width
��/ 4
/
��5 6
tileSize
��7 ?
;
��? @
int
�� 
neighborMaxHeight
�� %
=
��& '
context
��( /
.
��/ 0
height
��0 6
/
��7 8
tileSize
��9 A
;
��A B
cb
�� 
.
�� 
GetTemporaryRT
�� !
(
��! "
neighborMax
��" -
,
��- .
neighborMaxWidth
��/ ?
,
��? @
neighborMaxHeight
��A R
,
��R S
$num
��T U
,
��U V

FilterMode
��W a
.
��a b
Point
��b g
,
��g h
m_VectorRTFormat
��i y
,
��y z%
RenderTextureReadWrite��{ �
.��� �
Linear��� �
)��� �
;��� �
cb
�� 
.
�� 
SetGlobalTexture
�� #
(
��# $
Uniforms
��$ ,
.
��, -
_MainTex
��- 5
,
��5 6
tile
��7 ;
)
��; <
;
��< =
cb
�� 
.
�� 
Blit
�� 
(
�� 
tile
�� 
,
�� 
neighborMax
�� )
,
��) *
material
��+ 3
,
��3 4
(
��5 6
int
��6 9
)
��9 :
Pass
��: >
.
��> ?
NeighborMax
��? J
)
��J K
;
��K L
cb
�� 
.
��  
ReleaseTemporaryRT
�� %
(
��% &
tile
��& *
)
��* +
;
��+ ,
cb
�� 
.
�� 
SetGlobalFloat
�� !
(
��! "
Uniforms
��" *
.
��* +

_LoopCount
��+ 5
,
��5 6
Mathf
��7 <
.
��< =
Clamp
��= B
(
��B C
settings
��C K
.
��K L
sampleCount
��L W
/
��X Y
$num
��Z [
,
��[ \
$num
��] ^
,
��^ _
$num
��` b
)
��b c
)
��c d
;
��d e
cb
�� 
.
�� 
SetGlobalTexture
�� #
(
��# $
Uniforms
��$ ,
.
��, -
_MainTex
��- 5
,
��5 6
source
��7 =
)
��= >
;
��> ?
cb
�� 
.
�� 
Blit
�� 
(
�� 
source
�� 
,
�� 
destination
��  +
,
��+ ,
material
��- 5
,
��5 6
(
��7 8
int
��8 ;
)
��; <
Pass
��< @
.
��@ A
Reconstruction
��A O
)
��O P
;
��P Q
cb
�� 
.
��  
ReleaseTemporaryRT
�� %
(
��% &
vbuffer
��& -
)
��- .
;
��. /
cb
�� 
.
��  
ReleaseTemporaryRT
�� %
(
��% &
neighborMax
��& 1
)
��1 2
;
��2 3
}
�� 
}
�� 	
public
�� 
class
�� !
FrameBlendingFilter
�� (
{
�� 	
struct
�� 
Frame
�� 
{
�� 
public
�� 
RenderTexture
�� $
lumaTexture
��% 0
;
��0 1
public
�� 
RenderTexture
�� $
chromaTexture
��% 2
;
��2 3
float
�� 
m_Time
�� 
;
�� $
RenderTargetIdentifier
�� &
[
��& '
]
��' (
m_MRT
��) .
;
��. /
public
�� 
float
�� 
CalculateWeight
�� ,
(
��, -
float
��- 2
strength
��3 ;
,
��; <
float
��= B
currentTime
��C N
)
��N O
{
�� 
if
�� 
(
�� 
Mathf
�� 
.
�� 
Approximately
�� +
(
��+ ,
m_Time
��, 2
,
��2 3
$num
��4 6
)
��6 7
)
��7 8
return
�� 
$num
�� !
;
��! "
var
�� 
coeff
�� 
=
�� 
Mathf
��  %
.
��% &
Lerp
��& *
(
��* +
$num
��+ .
,
��. /
$num
��0 3
,
��3 4
strength
��5 =
)
��= >
;
��> ?
return
�� 
Mathf
��  
.
��  !
Exp
��! $
(
��$ %
(
��% &
m_Time
��& ,
-
��- .
currentTime
��/ :
)
��: ;
*
��< =
coeff
��> C
)
��C D
;
��D E
}
�� 
public
�� 
void
�� 
Release
�� #
(
��# $
)
��$ %
{
�� 
if
�� 
(
�� 
lumaTexture
�� #
!=
��$ &
null
��' +
)
��+ ,
RenderTexture
�� %
.
��% &
ReleaseTemporary
��& 6
(
��6 7
lumaTexture
��7 B
)
��B C
;
��C D
if
�� 
(
�� 
chromaTexture
�� %
!=
��& (
null
��) -
)
��- .
RenderTexture
�� %
.
��% &
ReleaseTemporary
��& 6
(
��6 7
chromaTexture
��7 D
)
��D E
;
��E F
lumaTexture
�� 
=
��  !
null
��" &
;
��& '
chromaTexture
�� !
=
��" #
null
��$ (
;
��( )
}
�� 
public
�� 
void
�� 

MakeRecord
�� &
(
��& '
CommandBuffer
��' 4
cb
��5 7
,
��7 8$
RenderTargetIdentifier
��9 O
source
��P V
,
��V W
int
��X [
width
��\ a
,
��a b
int
��c f
height
��g m
,
��m n
Material
��o w
material��x �
)��� �
{
�� 
Release
�� 
(
�� 
)
�� 
;
�� 
lumaTexture
�� 
=
��  !
RenderTexture
��" /
.
��/ 0
GetTemporary
��0 <
(
��< =
width
��= B
,
��B C
height
��D J
,
��J K
$num
��L M
,
��M N!
RenderTextureFormat
��O b
.
��b c
R8
��c e
,
��e f$
RenderTextureReadWrite
��g }
.
��} ~
Linear��~ �
)��� �
;��� �
chromaTexture
�� !
=
��" #
RenderTexture
��$ 1
.
��1 2
GetTemporary
��2 >
(
��> ?
width
��? D
,
��D E
height
��F L
,
��L M
$num
��N O
,
��O P!
RenderTextureFormat
��Q d
.
��d e
R8
��e g
,
��g h$
RenderTextureReadWrite
��i 
.�� �
Linear��� �
)��� �
;��� �
lumaTexture
�� 
.
��  

filterMode
��  *
=
��+ ,

FilterMode
��- 7
.
��7 8
Point
��8 =
;
��= >
chromaTexture
�� !
.
��! "

filterMode
��" ,
=
��- .

FilterMode
��/ 9
.
��9 :
Point
��: ?
;
��? @
if
�� 
(
�� 
m_MRT
�� 
==
��  
null
��! %
)
��% &
m_MRT
�� 
=
�� 
new
��  #$
RenderTargetIdentifier
��$ :
[
��: ;
$num
��; <
]
��< =
;
��= >
m_MRT
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
lumaTexture
�� *
;
��* +
m_MRT
�� 
[
�� 
$num
�� 
]
�� 
=
�� 
chromaTexture
�� ,
;
��, -
cb
�� 
.
�� 
SetGlobalTexture
�� '
(
��' (
Uniforms
��( 0
.
��0 1
_MainTex
��1 9
,
��9 :
source
��; A
)
��A B
;
��B C
cb
�� 
.
�� 
SetRenderTarget
�� &
(
��& '
m_MRT
��' ,
,
��, -
lumaTexture
��. 9
)
��9 :
;
��: ;
cb
�� 
.
�� 
DrawMesh
�� 
(
��  
GraphicsUtils
��  -
.
��- .
quad
��. 2
,
��2 3
	Matrix4x4
��4 =
.
��= >
identity
��> F
,
��F G
material
��H P
,
��P Q
$num
��R S
,
��S T
(
��U V
int
��V Y
)
��Y Z
Pass
��Z ^
.
��^ _
FrameCompression
��_ o
)
��o p
;
��p q
m_Time
�� 
=
�� 
Time
�� !
.
��! "
time
��" &
;
��& '
}
�� 
public
�� 
void
�� 
MakeRecordRaw
�� )
(
��) *
CommandBuffer
��* 7
cb
��8 :
,
��: ;$
RenderTargetIdentifier
��< R
source
��S Y
,
��Y Z
int
��[ ^
width
��_ d
,
��d e
int
��f i
height
��j p
,
��p q"
RenderTextureFormat��r �
format��� �
)��� �
{
�� 
Release
�� 
(
�� 
)
�� 
;
�� 
lumaTexture
�� 
=
��  !
RenderTexture
��" /
.
��/ 0
GetTemporary
��0 <
(
��< =
width
��= B
,
��B C
height
��D J
,
��J K
$num
��L M
,
��M N
format
��O U
)
��U V
;
��V W
lumaTexture
�� 
.
��  

filterMode
��  *
=
��+ ,

FilterMode
��- 7
.
��7 8
Point
��8 =
;
��= >
cb
�� 
.
�� 
SetGlobalTexture
�� '
(
��' (
Uniforms
��( 0
.
��0 1
_MainTex
��1 9
,
��9 :
source
��; A
)
��A B
;
��B C
cb
�� 
.
�� 
Blit
�� 
(
�� 
source
�� "
,
��" #
lumaTexture
��$ /
)
��/ 0
;
��0 1
m_Time
�� 
=
�� 
Time
�� !
.
��! "
time
��" &
;
��& '
}
�� 
}
�� 
bool
�� 
m_UseCompression
�� !
;
��! "!
RenderTextureFormat
��  
m_RawTextureFormat
��  2
;
��2 3
Frame
�� 
[
�� 
]
�� 
m_FrameList
�� 
;
��  
int
�� 
m_LastFrameCount
��  
;
��  !
public
�� !
FrameBlendingFilter
�� &
(
��& '
)
��' (
{
�� 
m_UseCompression
��  
=
��! "%
CheckSupportCompression
��# :
(
��: ;
)
��; <
;
��< = 
m_RawTextureFormat
�� "
=
��# $-
GetPreferredRenderTextureFormat
��% D
(
��D E
)
��E F
;
��F G
m_FrameList
�� 
=
�� 
new
�� !
Frame
��" '
[
��' (
$num
��( )
]
��) *
;
��* +
}
�� 
public
�� 
void
�� 
Dispose
�� 
(
��  
)
��  !
{
�� 
foreach
�� 
(
�� 
var
�� 
frame
�� "
in
��# %
m_FrameList
��& 1
)
��1 2
frame
�� 
.
�� 
Release
�� !
(
��! "
)
��" #
;
��# $
}
�� 
public
�� 
void
�� 
	PushFrame
�� !
(
��! "
CommandBuffer
��" /
cb
��0 2
,
��2 3$
RenderTargetIdentifier
��4 J
source
��K Q
,
��Q R
int
��S V
width
��W \
,
��\ ]
int
��^ a
height
��b h
,
��h i
Material
��j r
material
��s {
)
��{ |
{
�� 
var
�� 

frameCount
�� 
=
��  
Time
��! %
.
��% &

frameCount
��& 0
;
��0 1
if
�� 
(
�� 

frameCount
�� 
==
�� !
m_LastFrameCount
��" 2
)
��2 3
return
��4 :
;
��: ;
var
�� 
index
�� 
=
�� 

frameCount
�� &
%
��' (
m_FrameList
��) 4
.
��4 5
Length
��5 ;
;
��; <
if
�� 
(
�� 
m_UseCompression
�� $
)
��$ %
m_FrameList
�� 
[
��  
index
��  %
]
��% &
.
��& '

MakeRecord
��' 1
(
��1 2
cb
��2 4
,
��4 5
source
��6 <
,
��< =
width
��> C
,
��C D
height
��E K
,
��K L
material
��M U
)
��U V
;
��V W
else
�� 
m_FrameList
�� 
[
��  
index
��  %
]
��% &
.
��& '
MakeRecordRaw
��' 4
(
��4 5
cb
��5 7
,
��7 8
source
��9 ?
,
��? @
width
��A F
,
��F G
height
��H N
,
��N O 
m_RawTextureFormat
��P b
)
��b c
;
��c d
m_LastFrameCount
��  
=
��! "

frameCount
��# -
;
��- .
}
�� 
public
�� 
void
�� 
BlendFrames
�� #
(
��# $
CommandBuffer
��$ 1
cb
��2 4
,
��4 5
float
��6 ;
strength
��< D
,
��D E$
RenderTargetIdentifier
��F \
source
��] c
,
��c d$
RenderTargetIdentifier
��e {
destination��| �
,��� �
Material��� �
material��� �
)��� �
{
�� 
var
�� 
t
�� 
=
�� 
Time
�� 
.
�� 
time
�� !
;
��! "
var
�� 
f1
�� 
=
�� 
GetFrameRelative
�� )
(
��) *
-
��* +
$num
��+ ,
)
��, -
;
��- .
var
�� 
f2
�� 
=
�� 
GetFrameRelative
�� )
(
��) *
-
��* +
$num
��+ ,
)
��, -
;
��- .
var
�� 
f3
�� 
=
�� 
GetFrameRelative
�� )
(
��) *
-
��* +
$num
��+ ,
)
��, -
;
��- .
var
�� 
f4
�� 
=
�� 
GetFrameRelative
�� )
(
��) *
-
��* +
$num
��+ ,
)
��, -
;
��- .
cb
�� 
.
�� 
SetGlobalTexture
�� #
(
��# $
Uniforms
��$ ,
.
��, -
_History1LumaTex
��- =
,
��= >
f1
��? A
.
��A B
lumaTexture
��B M
)
��M N
;
��N O
cb
�� 
.
�� 
SetGlobalTexture
�� #
(
��# $
Uniforms
��$ ,
.
��, -
_History2LumaTex
��- =
,
��= >
f2
��? A
.
��A B
lumaTexture
��B M
)
��M N
;
��N O
cb
�� 
.
�� 
SetGlobalTexture
�� #
(
��# $
Uniforms
��$ ,
.
��, -
_History3LumaTex
��- =
,
��= >
f3
��? A
.
��A B
lumaTexture
��B M
)
��M N
;
��N O
cb
�� 
.
�� 
SetGlobalTexture
�� #
(
��# $
Uniforms
��$ ,
.
��, -
_History4LumaTex
��- =
,
��= >
f4
��? A
.
��A B
lumaTexture
��B M
)
��M N
;
��N O
cb
�� 
.
�� 
SetGlobalTexture
�� #
(
��# $
Uniforms
��$ ,
.
��, - 
_History1ChromaTex
��- ?
,
��? @
f1
��A C
.
��C D
chromaTexture
��D Q
)
��Q R
;
��R S
cb
�� 
.
�� 
SetGlobalTexture
�� #
(
��# $
Uniforms
��$ ,
.
��, - 
_History2ChromaTex
��- ?
,
��? @
f2
��A C
.
��C D
chromaTexture
��D Q
)
��Q R
;
��R S
cb
�� 
.
�� 
SetGlobalTexture
�� #
(
��# $
Uniforms
��$ ,
.
��, - 
_History3ChromaTex
��- ?
,
��? @
f3
��A C
.
��C D
chromaTexture
��D Q
)
��Q R
;
��R S
cb
�� 
.
�� 
SetGlobalTexture
�� #
(
��# $
Uniforms
��$ ,
.
��, - 
_History4ChromaTex
��- ?
,
��? @
f4
��A C
.
��C D
chromaTexture
��D Q
)
��Q R
;
��R S
cb
�� 
.
�� 
SetGlobalFloat
�� !
(
��! "
Uniforms
��" *
.
��* +
_History1Weight
��+ :
,
��: ;
f1
��< >
.
��> ?
CalculateWeight
��? N
(
��N O
strength
��O W
,
��W X
t
��Y Z
)
��Z [
)
��[ \
;
��\ ]
cb
�� 
.
�� 
SetGlobalFloat
�� !
(
��! "
Uniforms
��" *
.
��* +
_History2Weight
��+ :
,
��: ;
f2
��< >
.
��> ?
CalculateWeight
��? N
(
��N O
strength
��O W
,
��W X
t
��Y Z
)
��Z [
)
��[ \
;
��\ ]
cb
�� 
.
�� 
SetGlobalFloat
�� !
(
��! "
Uniforms
��" *
.
��* +
_History3Weight
��+ :
,
��: ;
f3
��< >
.
��> ?
CalculateWeight
��? N
(
��N O
strength
��O W
,
��W X
t
��Y Z
)
��Z [
)
��[ \
;
��\ ]
cb
�� 
.
�� 
SetGlobalFloat
�� !
(
��! "
Uniforms
��" *
.
��* +
_History4Weight
��+ :
,
��: ;
f4
��< >
.
��> ?
CalculateWeight
��? N
(
��N O
strength
��O W
,
��W X
t
��Y Z
)
��Z [
)
��[ \
;
��\ ]
cb
�� 
.
�� 
SetGlobalTexture
�� #
(
��# $
Uniforms
��$ ,
.
��, -
_MainTex
��- 5
,
��5 6
source
��7 =
)
��= >
;
��> ?
cb
�� 
.
�� 
Blit
�� 
(
�� 
source
�� 
,
�� 
destination
��  +
,
��+ ,
material
��- 5
,
��5 6
m_UseCompression
��7 G
?
��H I
(
��J K
int
��K N
)
��N O
Pass
��O S
.
��S T!
FrameBlendingChroma
��T g
:
��h i
(
��j k
int
��k n
)
��n o
Pass
��o s
.
��s t
FrameBlendingRaw��t �
)��� �
;��� �
}
�� 
static
�� 
bool
�� %
CheckSupportCompression
�� /
(
��/ 0
)
��0 1
{
�� 
return
�� 

SystemInfo
�� 
.
�� )
SupportsRenderTextureFormat
�� :
(
��: ;!
RenderTextureFormat
��; N
.
��N O
R8
��O Q
)
��Q R
&&
��S U

SystemInfo
�� 
.
�� (
supportedRenderTargetCount
�� 9
>
��: ;
$num
��< =
;
��= >
}
�� 
static
�� !
RenderTextureFormat
�� &-
GetPreferredRenderTextureFormat
��' F
(
��F G
)
��G H
{
�� !
RenderTextureFormat
�� #
[
��# $
]
��$ %
formats
��& -
=
��. /
{
�� !
RenderTextureFormat
�� '
.
��' (
RGB565
��( .
,
��. /!
RenderTextureFormat
�� '
.
��' (
ARGB1555
��( 0
,
��0 1!
RenderTextureFormat
�� '
.
��' (
ARGB4444
��( 0
}
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
f
�� 
in
�� !
formats
��" )
)
��) *
if
�� 
(
�� 

SystemInfo
�� "
.
��" #)
SupportsRenderTextureFormat
��# >
(
��> ?
f
��? @
)
��@ A
)
��A B
return
��C I
f
��J K
;
��K L
return
�� !
RenderTextureFormat
�� *
.
��* +
Default
��+ 2
;
��2 3
}
�� 
Frame
�� 
GetFrameRelative
�� "
(
��" #
int
��# &
offset
��' -
)
��- .
{
�� 
var
�� 
index
�� 
=
�� 
(
�� 
Time
�� !
.
��! "

frameCount
��" ,
+
��- .
m_FrameList
��/ :
.
��: ;
Length
��; A
+
��B C
offset
��D J
)
��J K
%
��L M
m_FrameList
��N Y
.
��Y Z
Length
��Z `
;
��` a
return
�� 
m_FrameList
�� "
[
��" #
index
��# (
]
��( )
;
��) *
}
�� 
}
�� 	"
ReconstructionFilter
�� $
m_ReconstructionFilter
�� 3
;
��3 4
public
�� "
ReconstructionFilter
�� #"
reconstructionFilter
��$ 8
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� $
m_ReconstructionFilter
�� *
==
��+ -
null
��. 2
)
��2 3$
m_ReconstructionFilter
�� *
=
��+ ,
new
��- 0"
ReconstructionFilter
��1 E
(
��E F
)
��F G
;
��G H
return
�� $
m_ReconstructionFilter
�� -
;
��- .
}
�� 
}
�� 	!
FrameBlendingFilter
�� #
m_FrameBlendingFilter
�� 1
;
��1 2
public
�� !
FrameBlendingFilter
�� "!
frameBlendingFilter
��# 6
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� #
m_FrameBlendingFilter
�� )
==
��* ,
null
��- 1
)
��1 2#
m_FrameBlendingFilter
�� )
=
��* +
new
��, /!
FrameBlendingFilter
��0 C
(
��C D
)
��D E
;
��E F
return
�� #
m_FrameBlendingFilter
�� ,
;
��, -
}
�� 
}
�� 	
bool
�� 
m_FirstFrame
�� 
=
�� 
true
��  
;
��  !
public
�� 
override
�� 
bool
�� 
active
�� #
{
�� 	
get
�� 
{
�� 
var
�� 
settings
�� 
=
�� 
model
�� $
.
��$ %
settings
��% -
;
��- .
return
�� 
model
�� 
.
�� 
enabled
�� $
&&
�� 
(
�� 
(
�� 
settings
�� $
.
��$ %
shutterAngle
��% 1
>
��2 3
$num
��4 6
&&
��7 9"
reconstructionFilter
��: N
.
��N O
IsSupported
��O Z
(
��Z [
)
��[ \
)
��\ ]
||
��^ `
settings
��a i
.
��i j
frameBlending
��j w
>
��x y
$num
��z |
)
��| }
&&
�� 

SystemInfo
�� $
.
��$ % 
graphicsDeviceType
��% 7
!=
��8 : 
GraphicsDeviceType
��; M
.
��M N
	OpenGLES2
��N W
&&
�� 
!
�� 
context
�� "
.
��" #
interrupted
��# .
;
��. /
}
�� 
}
�� 	
public
�� 
override
�� 
string
�� 
GetName
�� &
(
��& '
)
��' (
{
�� 	
return
�� 
$str
��  
;
��  !
}
�� 	
public
�� 
void
�� 
ResetHistory
��  
(
��  !
)
��! "
{
�� 	
if
�� 
(
�� #
m_FrameBlendingFilter
�� %
!=
��& (
null
��) -
)
��- .#
m_FrameBlendingFilter
�� %
.
��% &
Dispose
��& -
(
��- .
)
��. /
;
��/ 0#
m_FrameBlendingFilter
�� !
=
��" #
null
��$ (
;
��( )
}
�� 	
public
�� 
override
�� 
DepthTextureMode
�� (
GetCameraFlags
��) 7
(
��7 8
)
��8 9
{
�� 	
return
�� 
DepthTextureMode
�� #
.
��# $
Depth
��$ )
|
��* +
DepthTextureMode
��, <
.
��< =
MotionVectors
��= J
;
��J K
}
�� 	
public
�� 
override
�� 
CameraEvent
�� #
GetCameraEvent
��$ 2
(
��2 3
)
��3 4
{
�� 	
return
�� 
CameraEvent
�� 
.
��  
BeforeImageEffects
�� 1
;
��1 2
}
�� 	
public
�� 
override
�� 
void
�� 
OnEnable
�� %
(
��% &
)
��& '
{
�� 	
m_FirstFrame
�� 
=
�� 
true
�� 
;
��  
}
�� 	
public
�� 
override
�� 
void
�� #
PopulateCommandBuffer
�� 2
(
��2 3
CommandBuffer
��3 @
cb
��A C
)
��C D
{
�� 	
if
�� 
(
�� 
!
�� 
Application
�� 
.
�� 
	isPlaying
�� &
)
��& '
return
�� 
;
�� 
if
�� 
(
�� 
m_FirstFrame
�� 
)
�� 
{
�� 
m_FirstFrame
�� 
=
�� 
false
�� $
;
��$ %
return
�� 
;
�� 
}
�� 
var
�� 
material
�� 
=
�� 
context
�� "
.
��" #
materialFactory
��# 2
.
��2 3
Get
��3 6
(
��6 7
$str
��7 S
)
��S T
;
��T U
var
�� 
blitMaterial
�� 
=
�� 
context
�� &
.
��& '
materialFactory
��' 6
.
��6 7
Get
��7 :
(
��: ;
$str
��; P
)
��P Q
;
��Q R
var
�� 
settings
�� 
=
�� 
model
��  
.
��  !
settings
��! )
;
��) *
var
�� 
fbFormat
�� 
=
�� 
context
�� "
.
��" #
isHdr
��# (
?
�� !
RenderTextureFormat
�� %
.
��% &

DefaultHDR
��& 0
:
�� !
RenderTextureFormat
�� %
.
��% &
Default
��& -
;
��- .
int
�� 
tempRT
�� 
=
�� 
Uniforms
�� !
.
��! "
_TempRT
��" )
;
��) *
cb
�� 
.
�� 
GetTemporaryRT
�� 
(
�� 
tempRT
�� $
,
��$ %
context
��& -
.
��- .
width
��. 3
,
��3 4
context
��5 <
.
��< =
height
��= C
,
��C D
$num
��E F
,
��F G

FilterMode
��H R
.
��R S
Point
��S X
,
��X Y
fbFormat
��Z b
)
��b c
;
��c d
if
�� 
(
�� 
settings
�� 
.
�� 
shutterAngle
�� %
>
��& '
$num
��( *
&&
��+ -
settings
��. 6
.
��6 7
frameBlending
��7 D
>
��E F
$num
��G I
)
��I J
{
�� "
reconstructionFilter
�� $
.
��$ %
ProcessImage
��% 1
(
��1 2
context
��2 9
,
��9 :
cb
��; =
,
��= >
ref
��? B
settings
��C K
,
��K L&
BuiltinRenderTextureType
��M e
.
��e f
CameraTarget
��f r
,
��r s
tempRT
��t z
,
��z {
material��| �
)��� �
;��� �!
frameBlendingFilter
�� #
.
��# $
BlendFrames
��$ /
(
��/ 0
cb
��0 2
,
��2 3
settings
��4 <
.
��< =
frameBlending
��= J
,
��J K
tempRT
��L R
,
��R S&
BuiltinRenderTextureType
��T l
.
��l m
CameraTarget
��m y
,
��y z
material��{ �
)��� �
;��� �!
frameBlendingFilter
�� #
.
��# $
	PushFrame
��$ -
(
��- .
cb
��. 0
,
��0 1
tempRT
��2 8
,
��8 9
context
��: A
.
��A B
width
��B G
,
��G H
context
��I P
.
��P Q
height
��Q W
,
��W X
material
��Y a
)
��a b
;
��b c
}
�� 
else
�� 
if
�� 
(
�� 
settings
�� 
.
�� 
shutterAngle
�� *
>
��+ ,
$num
��- /
)
��/ 0
{
�� 
cb
�� 
.
�� 
SetGlobalTexture
�� #
(
��# $
Uniforms
��$ ,
.
��, -
_MainTex
��- 5
,
��5 6&
BuiltinRenderTextureType
��7 O
.
��O P
CameraTarget
��P \
)
��\ ]
;
��] ^
cb
�� 
.
�� 
Blit
�� 
(
�� &
BuiltinRenderTextureType
�� 0
.
��0 1
CameraTarget
��1 =
,
��= >
tempRT
��? E
,
��E F
blitMaterial
��G S
,
��S T
$num
��U V
)
��V W
;
��W X"
reconstructionFilter
�� $
.
��$ %
ProcessImage
��% 1
(
��1 2
context
��2 9
,
��9 :
cb
��; =
,
��= >
ref
��? B
settings
��C K
,
��K L
tempRT
��M S
,
��S T&
BuiltinRenderTextureType
��U m
.
��m n
CameraTarget
��n z
,
��z {
material��| �
)��� �
;��� �
}
�� 
else
�� 
if
�� 
(
�� 
settings
�� 
.
�� 
frameBlending
�� +
>
��, -
$num
��. 0
)
��0 1
{
�� 
cb
�� 
.
�� 
SetGlobalTexture
�� #
(
��# $
Uniforms
��$ ,
.
��, -
_MainTex
��- 5
,
��5 6&
BuiltinRenderTextureType
��7 O
.
��O P
CameraTarget
��P \
)
��\ ]
;
��] ^
cb
�� 
.
�� 
Blit
�� 
(
�� &
BuiltinRenderTextureType
�� 0
.
��0 1
CameraTarget
��1 =
,
��= >
tempRT
��? E
,
��E F
blitMaterial
��G S
,
��S T
$num
��U V
)
��V W
;
��W X!
frameBlendingFilter
�� #
.
��# $
BlendFrames
��$ /
(
��/ 0
cb
��0 2
,
��2 3
settings
��4 <
.
��< =
frameBlending
��= J
,
��J K
tempRT
��L R
,
��R S&
BuiltinRenderTextureType
��T l
.
��l m
CameraTarget
��m y
,
��y z
material��{ �
)��� �
;��� �!
frameBlendingFilter
�� #
.
��# $
	PushFrame
��$ -
(
��- .
cb
��. 0
,
��0 1
tempRT
��2 8
,
��8 9
context
��: A
.
��A B
width
��B G
,
��G H
context
��I P
.
��P Q
height
��Q W
,
��W X
material
��Y a
)
��a b
;
��b c
}
�� 
cb
�� 
.
��  
ReleaseTemporaryRT
�� !
(
��! "
tempRT
��" (
)
��( )
;
��) *
}
�� 	
public
�� 
override
�� 
void
�� 
	OnDisable
�� &
(
��& '
)
��' (
{
�� 	
if
�� 
(
�� #
m_FrameBlendingFilter
�� %
!=
��& (
null
��) -
)
��- .#
m_FrameBlendingFilter
�� %
.
��% &
Dispose
��& -
(
��- .
)
��. /
;
��/ 0
}
�� 	
}
�� 
}�� �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\ScreenSpaceReflectionComponent.cs
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
:	}} �
$num
}}� �
)
}}� �
;
}}� �
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
�� 
.
�� 
SetInt
�� 
(
�� 
Uniforms
�� $
.
��$ %!
_AllowBackwardsRays
��% 8
,
��8 9
settings
��: B
.
��B C

reflection
��C M
.
��M N
reflectBackfaces
��N ^
?
��_ `
$num
��a b
:
��c d
$num
��e f
)
��f g
;
��g h
material
�� 
.
�� 
SetInt
�� 
(
�� 
Uniforms
�� $
.
��$ %!
_TraceBehindObjects
��% 8
,
��8 9"
k_TraceBehindObjects
��: N
?
��O P
$num
��Q R
:
��S T
$num
��U V
)
��V W
;
��W X
material
�� 
.
�� 
SetInt
�� 
(
�� 
Uniforms
�� $
.
��$ %
	_MaxSteps
��% .
,
��. /
settings
��0 8
.
��8 9

reflection
��9 C
.
��C D
iterationCount
��D R
)
��R S
;
��S T
material
�� 
.
�� 
SetInt
�� 
(
�� 
Uniforms
�� $
.
��$ %&
_FullResolutionFiltering
��% =
,
��= >
$num
��? @
)
��@ A
;
��A B
material
�� 
.
�� 
SetInt
�� 
(
�� 
Uniforms
�� $
.
��$ %
_HalfResolution
��% 4
,
��4 5
(
��6 7
settings
��7 ?
.
��? @

reflection
��@ J
.
��J K
reflectionQuality
��K \
!=
��] _
SSRResolution
��` m
.
��m n
High
��n r
)
��r s
?
��t u
$num
��v w
:
��x y
$num
��z {
)
��{ |
;
��| }
material
�� 
.
�� 
SetInt
�� 
(
�� 
Uniforms
�� $
.
��$ %#
_HighlightSuppression
��% :
,
��: ;$
k_HighlightSuppression
��< R
?
��S T
$num
��U V
:
��W X
$num
��Y Z
)
��Z [
;
��[ \
float
�� &
pixelsPerMeterAtOneMeter
�� *
=
��+ ,
sWidth
��- 3
/
��4 5
(
��6 7
-
��7 8
$num
��8 :
*
��; <
Mathf
��= B
.
��B C
Tan
��C F
(
��F G
camera
��G M
.
��M N
fieldOfView
��N Y
/
��Z [
$num
��\ `
*
��a b
Mathf
��c h
.
��h i
PI
��i k
*
��l m
$num
��n r
)
��r s
)
��s t
;
��t u
material
�� 
.
�� 
SetFloat
�� 
(
�� 
Uniforms
�� &
.
��& ''
_PixelsPerMeterAtOneMeter
��' @
,
��@ A&
pixelsPerMeterAtOneMeter
��B Z
)
��Z [
;
��[ \
material
�� 
.
�� 
SetFloat
�� 
(
�� 
Uniforms
�� &
.
��& '
_ScreenEdgeFading
��' 8
,
��8 9
settings
��: B
.
��B C
screenEdgeMask
��C Q
.
��Q R
	intensity
��R [
)
��[ \
;
��\ ]
material
�� 
.
�� 
SetFloat
�� 
(
�� 
Uniforms
�� &
.
��& '
_ReflectionBlur
��' 6
,
��6 7
settings
��8 @
.
��@ A

reflection
��A K
.
��K L
reflectionBlur
��L Z
)
��Z [
;
��[ \
material
�� 
.
�� 
SetFloat
�� 
(
�� 
Uniforms
�� &
.
��& '"
_MaxRayTraceDistance
��' ;
,
��; <
settings
��= E
.
��E F

reflection
��F P
.
��P Q
maxDistance
��Q \
)
��\ ]
;
��] ^
material
�� 
.
�� 
SetFloat
�� 
(
�� 
Uniforms
�� &
.
��& '
_FadeDistance
��' 4
,
��4 5
settings
��6 >
.
��> ?
	intensity
��? H
.
��H I
fadeDistance
��I U
)
��U V
;
��V W
material
�� 
.
�� 
SetFloat
�� 
(
�� 
Uniforms
�� &
.
��& '
_LayerThickness
��' 6
,
��6 7
settings
��8 @
.
��@ A

reflection
��A K
.
��K L
widthModifier
��L Y
)
��Y Z
;
��Z [
material
�� 
.
�� 
SetFloat
�� 
(
�� 
Uniforms
�� &
.
��& '
_SSRMultiplier
��' 5
,
��5 6
settings
��7 ?
.
��? @
	intensity
��@ I
.
��I J"
reflectionMultiplier
��J ^
)
��^ _
;
��_ `
material
�� 
.
�� 
SetFloat
�� 
(
�� 
Uniforms
�� &
.
��& '
_FresnelFade
��' 3
,
��3 4
settings
��5 =
.
��= >
	intensity
��> G
.
��G H
fresnelFade
��H S
)
��S T
;
��T U
material
�� 
.
�� 
SetFloat
�� 
(
�� 
Uniforms
�� &
.
��& '
_FresnelFadePower
��' 8
,
��8 9
settings
��: B
.
��B C
	intensity
��C L
.
��L M
fresnelFadePower
��M ]
)
��] ^
;
��^ _
var
�� 
P
�� 
=
�� 
camera
�� 
.
�� 
projectionMatrix
�� +
;
��+ ,
var
�� 
projInfo
�� 
=
�� 
new
�� 
Vector4
�� &
(
��& '
-
�� 
$num
�� 
/
�� 
(
�� 
sWidth
�� !
*
��" #
P
��$ %
[
��% &
$num
��& '
]
��' (
)
��( )
,
��) *
-
�� 
$num
�� 
/
�� 
(
�� 
sHeight
�� "
*
��# $
P
��% &
[
��& '
$num
��' (
]
��( )
)
��) *
,
��* +
(
�� 
$num
�� 
-
�� 
P
�� 
[
�� 
$num
�� 
]
�� 
)
�� 
/
��  !
P
��" #
[
��# $
$num
��$ %
]
��% &
,
��& '
(
�� 
$num
�� 
+
�� 
P
�� 
[
�� 
$num
�� 
]
�� 
)
�� 
/
��  !
P
��" #
[
��# $
$num
��$ %
]
��% &
)
�� 
;
�� 
var
�� 
cameraClipInfo
�� 
=
��  
float
��! &
.
��& ' 
IsPositiveInfinity
��' 9
(
��9 :
camera
��: @
.
��@ A
farClipPlane
��A M
)
��M N
?
��O P
new
�� 
Vector3
�� 
(
�� 
camera
�� "
.
��" #
nearClipPlane
��# 0
,
��0 1
-
��2 3
$num
��3 5
,
��5 6
$num
��7 9
)
��9 :
:
��; <
new
�� 
Vector3
�� 
(
�� 
camera
�� "
.
��" #
nearClipPlane
��# 0
*
��1 2
camera
��3 9
.
��9 :
farClipPlane
��: F
,
��F G
camera
��H N
.
��N O
nearClipPlane
��O \
-
��] ^
camera
��_ e
.
��e f
farClipPlane
��f r
,
��r s
camera
��t z
.
��z {
farClipPlane��{ �
)��� �
;��� �
material
�� 
.
�� 
	SetVector
�� 
(
�� 
Uniforms
�� '
.
��' (#
_ReflectionBufferSize
��( =
,
��= >
new
��? B
Vector2
��C J
(
��J K
rtW
��K N
,
��N O
rtH
��P S
)
��S T
)
��T U
;
��U V
material
�� 
.
�� 
	SetVector
�� 
(
�� 
Uniforms
�� '
.
��' (
_ScreenSize
��( 3
,
��3 4
new
��5 8
Vector2
��9 @
(
��@ A
sWidth
��A G
,
��G H
sHeight
��I P
)
��P Q
)
��Q R
;
��R S
material
�� 
.
�� 
	SetVector
�� 
(
�� 
Uniforms
�� '
.
��' (
_InvScreenSize
��( 6
,
��6 7
new
��8 ;
Vector2
��< C
(
��C D
$num
��D F
/
��G H
sWidth
��I O
,
��O P
$num
��Q S
/
��T U
sHeight
��V ]
)
��] ^
)
��^ _
;
��_ `
material
�� 
.
�� 
	SetVector
�� 
(
�� 
Uniforms
�� '
.
��' (
	_ProjInfo
��( 1
,
��1 2
projInfo
��3 ;
)
��; <
;
��< =
material
�� 
.
�� 
	SetVector
�� 
(
�� 
Uniforms
�� '
.
��' (
_CameraClipInfo
��( 7
,
��7 8
cameraClipInfo
��9 G
)
��G H
;
��H I
var
�� %
warpToScreenSpaceMatrix
�� '
=
��( )
new
��* -
	Matrix4x4
��. 7
(
��7 8
)
��8 9
;
��9 :%
warpToScreenSpaceMatrix
�� #
.
��# $
SetRow
��$ *
(
��* +
$num
��+ ,
,
��, -
new
��. 1
Vector4
��2 9
(
��9 :
sx
��: <
,
��< =
$num
��> @
,
��@ A
$num
��B D
,
��D E
sx
��F H
)
��H I
)
��I J
;
��J K%
warpToScreenSpaceMatrix
�� #
.
��# $
SetRow
��$ *
(
��* +
$num
��+ ,
,
��, -
new
��. 1
Vector4
��2 9
(
��9 :
$num
��: <
,
��< =
sy
��> @
,
��@ A
$num
��B D
,
��D E
sy
��F H
)
��H I
)
��I J
;
��J K%
warpToScreenSpaceMatrix
�� #
.
��# $
SetRow
��$ *
(
��* +
$num
��+ ,
,
��, -
new
��. 1
Vector4
��2 9
(
��9 :
$num
��: <
,
��< =
$num
��> @
,
��@ A
$num
��B D
,
��D E
$num
��F H
)
��H I
)
��I J
;
��J K%
warpToScreenSpaceMatrix
�� #
.
��# $
SetRow
��$ *
(
��* +
$num
��+ ,
,
��, -
new
��. 1
Vector4
��2 9
(
��9 :
$num
��: <
,
��< =
$num
��> @
,
��@ A
$num
��B D
,
��D E
$num
��F H
)
��H I
)
��I J
;
��J K
var
�� "
projectToPixelMatrix
�� $
=
��% &%
warpToScreenSpaceMatrix
��' >
*
��? @
P
��A B
;
��B C
material
�� 
.
�� 
	SetMatrix
�� 
(
�� 
Uniforms
�� '
.
��' (#
_ProjectToPixelMatrix
��( =
,
��= >"
projectToPixelMatrix
��? S
)
��S T
;
��T U
material
�� 
.
�� 
	SetMatrix
�� 
(
�� 
Uniforms
�� '
.
��' ("
_WorldToCameraMatrix
��( <
,
��< =
camera
��> D
.
��D E!
worldToCameraMatrix
��E X
)
��X Y
;
��Y Z
material
�� 
.
�� 
	SetMatrix
�� 
(
�� 
Uniforms
�� '
.
��' ("
_CameraToWorldMatrix
��( <
,
��< =
camera
��> D
.
��D E!
worldToCameraMatrix
��E X
.
��X Y
inverse
��Y `
)
��` a
;
��a b
var
��  
intermediateFormat
�� "
=
��# $
context
��% ,
.
��, -
isHdr
��- 2
?
��3 4!
RenderTextureFormat
��5 H
.
��H I
ARGBHalf
��I Q
:
��R S!
RenderTextureFormat
��T g
.
��g h
ARGB32
��h n
;
��n o
const
�� 
int
�� 
maxMip
�� 
=
�� 
$num
��  
;
��  !
var
�� (
kNormalAndRoughnessTexture
�� *
=
��+ ,
Uniforms
��- 5
.
��5 6(
_NormalAndRoughnessTexture
��6 P
;
��P Q
var
�� 
kHitPointTexture
��  
=
��! "
Uniforms
��# +
.
��+ ,
_HitPointTexture
��, <
;
��< =
var
�� 
kBlurTexture
�� 
=
�� 
Uniforms
�� '
.
��' (
_BlurTexture
��( 4
;
��4 5
var
�� "
kFilteredReflections
�� $
=
��% &
Uniforms
��' /
.
��/ 0"
_FilteredReflections
��0 D
;
��D E
var
�� %
kFinalReflectionTexture
�� '
=
��( )
Uniforms
��* 2
.
��2 3%
_FinalReflectionTexture
��3 J
;
��J K
var
�� 
kTempTexture
�� 
=
�� 
Uniforms
�� '
.
��' (
_TempTexture
��( 4
;
��4 5
cb
�� 
.
�� 
GetTemporaryRT
�� 
(
�� (
kNormalAndRoughnessTexture
�� 8
,
��8 9
-
��: ;
$num
��; <
,
��< =
-
��> ?
$num
��? @
,
��@ A
$num
��B C
,
��C D

FilterMode
��E O
.
��O P
Point
��P U
,
��U V!
RenderTextureFormat
��W j
.
��j k
ARGB32
��k q
,
��q r%
RenderTextureReadWrite��s �
.��� �
Linear��� �
)��� �
;��� �
cb
�� 
.
�� 
GetTemporaryRT
�� 
(
�� 
kHitPointTexture
�� .
,
��. /
rtW
��0 3
,
��3 4
rtH
��5 8
,
��8 9
$num
��: ;
,
��; <

FilterMode
��= G
.
��G H
Bilinear
��H P
,
��P Q!
RenderTextureFormat
��R e
.
��e f
ARGBHalf
��f n
,
��n o%
RenderTextureReadWrite��p �
.��� �
Linear��� �
)��� �
;��� �
for
�� 
(
�� 
int
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
�� 
maxMip
��  &
;
��& '
++
��( *
i
��* +
)
��+ ,
{
�� 
cb
�� 
.
�� 
GetTemporaryRT
�� !
(
��! ""
m_ReflectionTextures
��" 6
[
��6 7
i
��7 8
]
��8 9
,
��9 :
rtW
��; >
>>
��? A
i
��B C
,
��C D
rtH
��E H
>>
��I K
i
��L M
,
��M N
$num
��O P
,
��P Q

FilterMode
��R \
.
��\ ]
Bilinear
��] e
,
��e f 
intermediateFormat
��g y
)
��y z
;
��z {
}
�� 
cb
�� 
.
�� 
GetTemporaryRT
�� 
(
�� "
kFilteredReflections
�� 2
,
��2 3
rtW
��4 7
,
��7 8
rtH
��9 <
,
��< =
$num
��> ?
,
��? @!
k_BilateralUpsample
��A T
?
��U V

FilterMode
��W a
.
��a b
Point
��b g
:
��h i

FilterMode
��j t
.
��t u
Bilinear
��u }
,
��} ~!
intermediateFormat�� �
)��� �
;��� �
cb
�� 
.
�� 
GetTemporaryRT
�� 
(
�� %
kFinalReflectionTexture
�� 5
,
��5 6
rtW
��7 :
,
��: ;
rtH
��< ?
,
��? @
$num
��A B
,
��B C

FilterMode
��D N
.
��N O
Point
��O T
,
��T U 
intermediateFormat
��V h
)
��h i
;
��i j
cb
�� 
.
�� 
Blit
�� 
(
�� &
BuiltinRenderTextureType
�� ,
.
��, -
CameraTarget
��- 9
,
��9 :(
kNormalAndRoughnessTexture
��; U
,
��U V
material
��W _
,
��_ `
(
��a b
int
��b e
)
��e f
	PassIndex
��f o
.
��o p
BilateralKeyPack��p �
)��� �
;��� �
cb
�� 
.
�� 
Blit
�� 
(
�� &
BuiltinRenderTextureType
�� ,
.
��, -
CameraTarget
��- 9
,
��9 :
kHitPointTexture
��; K
,
��K L
material
��M U
,
��U V
(
��W X
int
��X [
)
��[ \
	PassIndex
��\ e
.
��e f
RayTraceStep
��f r
)
��r s
;
��s t
cb
�� 
.
�� 
Blit
�� 
(
�� &
BuiltinRenderTextureType
�� ,
.
��, -
CameraTarget
��- 9
,
��9 :"
kFilteredReflections
��; O
,
��O P
material
��Q Y
,
��Y Z
(
��[ \
int
��\ _
)
��_ `
	PassIndex
��` i
.
��i j#
HitPointToReflections
��j 
)�� �
;��� �
cb
�� 
.
�� 
Blit
�� 
(
�� "
kFilteredReflections
�� (
,
��( )"
m_ReflectionTextures
��* >
[
��> ?
$num
��? @
]
��@ A
,
��A B
material
��C K
,
��K L
(
��M N
int
��N Q
)
��Q R
	PassIndex
��R [
.
��[ \
PoissonBlur
��\ g
)
��g h
;
��h i
for
�� 
(
�� 
int
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
�� 
maxMip
��  &
;
��& '
++
��( *
i
��* +
)
��+ ,
{
�� 
int
�� 
inputTex
�� 
=
�� "
m_ReflectionTextures
�� 3
[
��3 4
i
��4 5
-
��6 7
$num
��8 9
]
��9 :
;
��: ;
int
�� 
lowMip
�� 
=
�� 
i
�� 
;
�� 
cb
�� 
.
�� 
GetTemporaryRT
�� !
(
��! "
kBlurTexture
��" .
,
��. /
rtW
��0 3
>>
��4 6
lowMip
��7 =
,
��= >
rtH
��? B
>>
��C E
lowMip
��F L
,
��L M
$num
��N O
,
��O P

FilterMode
��Q [
.
��[ \
Bilinear
��\ d
,
��d e 
intermediateFormat
��f x
)
��x y
;
��y z
cb
�� 
.
�� 
SetGlobalVector
�� "
(
��" #
Uniforms
��# +
.
��+ ,
_Axis
��, 1
,
��1 2
new
��3 6
Vector4
��7 >
(
��> ?
$num
��? C
,
��C D
$num
��E I
,
��I J
$num
��K O
,
��O P
$num
��Q U
)
��U V
)
��V W
;
��W X
cb
�� 
.
�� 
SetGlobalFloat
�� !
(
��! "
Uniforms
��" *
.
��* +
_CurrentMipLevel
��+ ;
,
��; <
i
��= >
-
��? @
$num
��A E
)
��E F
;
��F G
cb
�� 
.
�� 
Blit
�� 
(
�� 
inputTex
��  
,
��  !
kBlurTexture
��" .
,
��. /
material
��0 8
,
��8 9
(
��: ;
int
��; >
)
��> ?
	PassIndex
��? H
.
��H I
Blur
��I M
)
��M N
;
��N O
cb
�� 
.
�� 
SetGlobalVector
�� "
(
��" #
Uniforms
��# +
.
��+ ,
_Axis
��, 1
,
��1 2
new
��3 6
Vector4
��7 >
(
��> ?
$num
��? C
,
��C D
$num
��E I
,
��I J
$num
��K O
,
��O P
$num
��Q U
)
��U V
)
��V W
;
��W X
inputTex
�� 
=
�� "
m_ReflectionTextures
�� /
[
��/ 0
i
��0 1
]
��1 2
;
��2 3
cb
�� 
.
�� 
Blit
�� 
(
�� 
kBlurTexture
�� $
,
��$ %
inputTex
��& .
,
��. /
material
��0 8
,
��8 9
(
��: ;
int
��; >
)
��> ?
	PassIndex
��? H
.
��H I
Blur
��I M
)
��M N
;
��N O
cb
�� 
.
��  
ReleaseTemporaryRT
�� %
(
��% &
kBlurTexture
��& 2
)
��2 3
;
��3 4
}
�� 
cb
�� 
.
�� 
Blit
�� 
(
�� "
m_ReflectionTextures
�� (
[
��( )
$num
��) *
]
��* +
,
��+ ,%
kFinalReflectionTexture
��- D
,
��D E
material
��F N
,
��N O
(
��P Q
int
��Q T
)
��T U
	PassIndex
��U ^
.
��^ _
CompositeSSR
��_ k
)
��k l
;
��l m
cb
�� 
.
�� 
GetTemporaryRT
�� 
(
�� 
kTempTexture
�� *
,
��* +
camera
��, 2
.
��2 3

pixelWidth
��3 =
,
��= >
camera
��? E
.
��E F
pixelHeight
��F Q
,
��Q R
$num
��S T
,
��T U

FilterMode
��V `
.
��` a
Bilinear
��a i
,
��i j 
intermediateFormat
��k }
)
��} ~
;
��~ 
cb
�� 
.
�� 
Blit
�� 
(
�� &
BuiltinRenderTextureType
�� ,
.
��, -
CameraTarget
��- 9
,
��9 :
kTempTexture
��; G
,
��G H
material
��I Q
,
��Q R
(
��S T
int
��T W
)
��W X
	PassIndex
��X a
.
��a b
CompositeFinal
��b p
)
��p q
;
��q r
cb
�� 
.
�� 
Blit
�� 
(
�� 
kTempTexture
��  
,
��  !&
BuiltinRenderTextureType
��" :
.
��: ;
CameraTarget
��; G
)
��G H
;
��H I
cb
�� 
.
��  
ReleaseTemporaryRT
�� !
(
��! "
kTempTexture
��" .
)
��. /
;
��/ 0
}
�� 	
}
�� 
}�� ��
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\TaaComponent.cs
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
ZZ� �
source
ZZ� �
.
ZZ� �
height
ZZ� �
)
ZZ� �
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
,	gg �"
kMotionAmplification
gg� �
,
gg� �
$num
gg� �
)
gg� �
)
gg� �
;
gg� �
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
�� 
result
�� 
+=
�� 
(
�� 
float
��  
)
��  !
(
��! "
index
��" '
%
��( )
radix
��* /
)
��/ 0
*
��1 2
fraction
��3 ;
;
��; <
index
�� 
/=
�� 
radix
�� 
;
�� 
fraction
�� 
/=
�� 
(
�� 
float
�� "
)
��" #
radix
��# (
;
��( )
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
Vector2
�� "
GenerateRandomOffset
�� $
(
��$ %
)
��% &
{
�� 	
var
�� 
offset
�� 
=
�� 
new
�� 
Vector2
�� $
(
��$ %
GetHaltonValue
�� "
(
��" #
m_SampleIndex
��# 0
&
��1 2
$num
��3 7
,
��7 8
$num
��9 :
)
��: ;
,
��; <
GetHaltonValue
�� "
(
��" #
m_SampleIndex
��# 0
&
��1 2
$num
��3 7
,
��7 8
$num
��9 :
)
��: ;
)
��; <
;
��< =
if
�� 
(
�� 
++
�� 
m_SampleIndex
�� 
>=
��  "
k_SampleCount
��# 0
)
��0 1
m_SampleIndex
�� 
=
�� 
$num
��  !
;
��! "
return
�� 
offset
�� 
;
�� 
}
�� 	
	Matrix4x4
�� ,
GetPerspectiveProjectionMatrix
�� 0
(
��0 1
Vector2
��1 8
offset
��9 ?
)
��? @
{
�� 	
float
�� 
vertical
�� 
=
�� 
Mathf
�� "
.
��" #
Tan
��# &
(
��& '
$num
��' +
*
��, -
Mathf
��. 3
.
��3 4
Deg2Rad
��4 ;
*
��< =
context
��> E
.
��E F
camera
��F L
.
��L M
fieldOfView
��M X
)
��X Y
;
��Y Z
float
�� 

horizontal
�� 
=
�� 
vertical
�� '
*
��( )
context
��* 1
.
��1 2
camera
��2 8
.
��8 9
aspect
��9 ?
;
��? @
offset
�� 
.
�� 
x
�� 
*=
�� 

horizontal
�� "
/
��# $
(
��% &
$num
��& *
*
��+ ,
context
��- 4
.
��4 5
width
��5 :
)
��: ;
;
��; <
offset
�� 
.
�� 
y
�� 
*=
�� 
vertical
��  
/
��! "
(
��# $
$num
��$ (
*
��) *
context
��+ 2
.
��2 3
height
��3 9
)
��9 :
;
��: ;
float
�� 
left
�� 
=
�� 
(
�� 
offset
��  
.
��  !
x
��! "
-
��# $

horizontal
��% /
)
��/ 0
*
��1 2
context
��3 :
.
��: ;
camera
��; A
.
��A B
nearClipPlane
��B O
;
��O P
float
�� 
right
�� 
=
�� 
(
�� 
offset
�� !
.
��! "
x
��" #
+
��$ %

horizontal
��& 0
)
��0 1
*
��2 3
context
��4 ;
.
��; <
camera
��< B
.
��B C
nearClipPlane
��C P
;
��P Q
float
�� 
top
�� 
=
�� 
(
�� 
offset
�� 
.
��  
y
��  !
+
��" #
vertical
��$ ,
)
��, -
*
��. /
context
��0 7
.
��7 8
camera
��8 >
.
��> ?
nearClipPlane
��? L
;
��L M
float
�� 
bottom
�� 
=
�� 
(
�� 
offset
�� "
.
��" #
y
��# $
-
��% &
vertical
��' /
)
��/ 0
*
��1 2
context
��3 :
.
��: ;
camera
��; A
.
��A B
nearClipPlane
��B O
;
��O P
var
�� 
matrix
�� 
=
�� 
new
�� 
	Matrix4x4
�� &
(
��& '
)
��' (
;
��( )
matrix
�� 
[
�� 
$num
�� 
,
�� 
$num
�� 
]
�� 
=
�� 
(
�� 
$num
�� 
*
��  
context
��! (
.
��( )
camera
��) /
.
��/ 0
nearClipPlane
��0 =
)
��= >
/
��? @
(
��A B
right
��B G
-
��H I
left
��J N
)
��N O
;
��O P
matrix
�� 
[
�� 
$num
�� 
,
�� 
$num
�� 
]
�� 
=
�� 
$num
�� 
;
�� 
matrix
�� 
[
�� 
$num
�� 
,
�� 
$num
�� 
]
�� 
=
�� 
(
�� 
right
�� !
+
��" #
left
��$ (
)
��( )
/
��* +
(
��, -
right
��- 2
-
��3 4
left
��5 9
)
��9 :
;
��: ;
matrix
�� 
[
�� 
$num
�� 
,
�� 
$num
�� 
]
�� 
=
�� 
$num
�� 
;
�� 
matrix
�� 
[
�� 
$num
�� 
,
�� 
$num
�� 
]
�� 
=
�� 
$num
�� 
;
�� 
matrix
�� 
[
�� 
$num
�� 
,
�� 
$num
�� 
]
�� 
=
�� 
(
�� 
$num
�� 
*
��  
context
��! (
.
��( )
camera
��) /
.
��/ 0
nearClipPlane
��0 =
)
��= >
/
��? @
(
��A B
top
��B E
-
��F G
bottom
��H N
)
��N O
;
��O P
matrix
�� 
[
�� 
$num
�� 
,
�� 
$num
�� 
]
�� 
=
�� 
(
�� 
top
�� 
+
��  !
bottom
��" (
)
��( )
/
��* +
(
��, -
top
��- 0
-
��1 2
bottom
��3 9
)
��9 :
;
��: ;
matrix
�� 
[
�� 
$num
�� 
,
�� 
$num
�� 
]
�� 
=
�� 
$num
�� 
;
�� 
matrix
�� 
[
�� 
$num
�� 
,
�� 
$num
�� 
]
�� 
=
�� 
$num
�� 
;
�� 
matrix
�� 
[
�� 
$num
�� 
,
�� 
$num
�� 
]
�� 
=
�� 
$num
�� 
;
�� 
matrix
�� 
[
�� 
$num
�� 
,
�� 
$num
�� 
]
�� 
=
�� 
-
�� 
(
�� 
context
�� $
.
��$ %
camera
��% +
.
��+ ,
farClipPlane
��, 8
+
��9 :
context
��; B
.
��B C
camera
��C I
.
��I J
nearClipPlane
��J W
)
��W X
/
��Y Z
(
��[ \
context
��\ c
.
��c d
camera
��d j
.
��j k
farClipPlane
��k w
-
��x y
context��z �
.��� �
camera��� �
.��� �
nearClipPlane��� �
)��� �
;��� �
matrix
�� 
[
�� 
$num
�� 
,
�� 
$num
�� 
]
�� 
=
�� 
-
�� 
(
�� 
$num
�� 
*
��  !
context
��" )
.
��) *
camera
��* 0
.
��0 1
farClipPlane
��1 =
*
��> ?
context
��@ G
.
��G H
camera
��H N
.
��N O
nearClipPlane
��O \
)
��\ ]
/
��^ _
(
��` a
context
��a h
.
��h i
camera
��i o
.
��o p
farClipPlane
��p |
-
��} ~
context�� �
.��� �
camera��� �
.��� �
nearClipPlane��� �
)��� �
;��� �
matrix
�� 
[
�� 
$num
�� 
,
�� 
$num
�� 
]
�� 
=
�� 
$num
�� 
;
�� 
matrix
�� 
[
�� 
$num
�� 
,
�� 
$num
�� 
]
�� 
=
�� 
$num
�� 
;
�� 
matrix
�� 
[
�� 
$num
�� 
,
�� 
$num
�� 
]
�� 
=
�� 
-
�� 
$num
�� 
;
�� 
matrix
�� 
[
�� 
$num
�� 
,
�� 
$num
�� 
]
�� 
=
�� 
$num
�� 
;
�� 
return
�� 
matrix
�� 
;
�� 
}
�� 	
	Matrix4x4
�� -
GetOrthographicProjectionMatrix
�� 1
(
��1 2
Vector2
��2 9
offset
��: @
)
��@ A
{
�� 	
float
�� 
vertical
�� 
=
�� 
context
�� $
.
��$ %
camera
��% +
.
��+ ,
orthographicSize
��, <
;
��< =
float
�� 

horizontal
�� 
=
�� 
vertical
�� '
*
��( )
context
��* 1
.
��1 2
camera
��2 8
.
��8 9
aspect
��9 ?
;
��? @
offset
�� 
.
�� 
x
�� 
*=
�� 

horizontal
�� "
/
��# $
(
��% &
$num
��& *
*
��+ ,
context
��- 4
.
��4 5
width
��5 :
)
��: ;
;
��; <
offset
�� 
.
�� 
y
�� 
*=
�� 
vertical
��  
/
��! "
(
��# $
$num
��$ (
*
��) *
context
��+ 2
.
��2 3
height
��3 9
)
��9 :
;
��: ;
float
�� 
left
�� 
=
�� 
offset
�� 
.
��  
x
��  !
-
��" #

horizontal
��$ .
;
��. /
float
�� 
right
�� 
=
�� 
offset
��  
.
��  !
x
��! "
+
��# $

horizontal
��% /
;
��/ 0
float
�� 
top
�� 
=
�� 
offset
�� 
.
�� 
y
��  
+
��! "
vertical
��# +
;
��+ ,
float
�� 
bottom
�� 
=
�� 
offset
�� !
.
��! "
y
��" #
-
��$ %
vertical
��& .
;
��. /
return
�� 
	Matrix4x4
�� 
.
�� 
Ortho
�� "
(
��" #
left
��# '
,
��' (
right
��) .
,
��. /
bottom
��0 6
,
��6 7
top
��8 ;
,
��; <
context
��= D
.
��D E
camera
��E K
.
��K L
nearClipPlane
��L Y
,
��Y Z
context
��[ b
.
��b c
camera
��c i
.
��i j
farClipPlane
��j v
)
��v w
;
��w x
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
�� 	
if
�� 
(
�� 
m_HistoryTexture
��  
!=
��! #
null
��$ (
)
��( )
RenderTexture
�� 
.
�� 
ReleaseTemporary
�� .
(
��. /
m_HistoryTexture
��/ ?
)
��? @
;
��@ A
m_HistoryTexture
�� 
=
�� 
null
�� #
;
��# $
m_SampleIndex
�� 
=
�� 
$num
�� 
;
�� 
ResetHistory
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �#
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\UserLutComponent.cs
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
settings	| �
.
� �
lut
� �
.
� �
height
� �
-
� �
$num
� �
,
� �
settings
� �
.
� �
contribution
� �
)
� �
)
� �
;
� �
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
}'' �+
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Components\VignetteComponent.cs
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
$num	!! �
,
!!� �
	roundness
!!� �
,
!!� �
settings
!!� �
.
!!� �
rounded
!!� �
?
!!� �
$num
!!� �
:
!!� �
$num
!!� �
)
!!� �
)
!!� �
;
!!� �
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
}.. �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\AmbientOcclusionModel.cs
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
$str	"" �
)
""� �
]
""� �
public## 
bool## 
ambientOnly## #
;### $
[%% 
Tooltip%% 
(%% 
$str	%% �
)
%%� �
]
%%� �
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
}GG �a
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\AntialiasingModel.cs
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
�� (
=
��) *
$num
��+ /
,
��/ 0!
edgeSharpnessAmount
�� '
=
��( )
$num
��* ,
,
��, -$
edgeDetectionThreshold
�� *
=
��+ ,
$num
��- 3
,
��3 4&
minimumRequiredLuminance
�� ,
=
��- .
$num
��/ 4
}
�� 
,
�� 
new
�� !
FxaaConsoleSettings
�� '
{
�� "
subpixelSpreadAmount
�� (
=
��) *
$num
��+ /
,
��/ 0!
edgeSharpnessAmount
�� '
=
��( )
$num
��* ,
,
��, -$
edgeDetectionThreshold
�� *
=
��+ ,
$num
��- 3
,
��3 4&
minimumRequiredLuminance
�� ,
=
��- .
$num
��/ 4
}
�� 
,
�� 
new
�� !
FxaaConsoleSettings
�� '
{
�� "
subpixelSpreadAmount
�� (
=
��) *
$num
��+ /
,
��/ 0!
edgeSharpnessAmount
�� '
=
��( )
$num
��* ,
,
��, -$
edgeDetectionThreshold
�� *
=
��+ ,
$num
��- 3
,
��3 4&
minimumRequiredLuminance
�� ,
=
��- .
$num
��/ 4
}
�� 
}
�� 
;
�� 
}
�� 	
[
�� 	
Serializable
��	 
]
�� 
public
�� 
struct
�� 
FxaaSettings
�� "
{
�� 	
public
�� 

FxaaPreset
�� 
preset
�� $
;
��$ %
public
�� 
static
�� 
FxaaSettings
�� &
defaultSettings
��' 6
{
�� 
get
�� 
{
�� 
return
�� 
new
�� 
FxaaSettings
�� +
{
�� 
preset
�� 
=
��  

FxaaPreset
��! +
.
��+ ,
Default
��, 3
}
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
[
�� 	
Serializable
��	 
]
�� 
public
�� 
struct
�� 
TaaSettings
�� !
{
�� 	
[
�� 
Tooltip
�� 
(
�� 
$str�� �
)��� �
]��� �
[
�� 
Range
�� 
(
�� 
$num
�� 
,
�� 
$num
�� 
)
�� 
]
�� 
public
�� 
float
�� 
jitterSpread
�� %
;
��% &
[
�� 
Tooltip
�� 
(
�� 
$str
�� U
)
��U V
]
��V W
[
�� 
Range
�� 
(
�� 
$num
�� 
,
�� 
$num
�� 
)
�� 
]
�� 
public
�� 
float
�� 
sharpen
��  
;
��  !
[
�� 
Tooltip
�� 
(
�� 
$str�� �
)��� �
]��� �
[
�� 
Range
�� 
(
�� 
$num
�� 
,
�� 
$num
�� 
)
�� 
]
�� 
public
�� 
float
��  
stationaryBlending
�� +
;
��+ ,
[
�� 
Tooltip
�� 
(
�� 
$str�� �
)��� �
]��� �
[
�� 
Range
�� 
(
�� 
$num
�� 
,
�� 
$num
�� 
)
�� 
]
�� 
public
�� 
float
�� 
motionBlending
�� '
;
��' (
public
�� 
static
�� 
TaaSettings
�� %
defaultSettings
��& 5
{
�� 
get
�� 
{
�� 
return
�� 
new
�� 
TaaSettings
�� *
{
�� 
jitterSpread
�� $
=
��% &
$num
��' ,
,
��, -
sharpen
�� 
=
��  !
$num
��" &
,
��& ' 
stationaryBlending
�� *
=
��+ ,
$num
��- 2
,
��2 3
motionBlending
�� &
=
��' (
$num
��) .
}
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
[
�� 	
Serializable
��	 
]
�� 
public
�� 
struct
�� 
Settings
�� 
{
�� 	
public
�� 
Method
�� 
method
��  
;
��  !
public
�� 
FxaaSettings
�� 
fxaaSettings
��  ,
;
��, -
public
�� 
TaaSettings
�� 
taaSettings
�� *
;
��* +
public
�� 
static
�� 
Settings
�� "
defaultSettings
��# 2
{
�� 
get
�� 
{
�� 
return
�� 
new
�� 
Settings
�� '
{
�� 
method
�� 
=
��  
Method
��! '
.
��' (
Fxaa
��( ,
,
��, -
fxaaSettings
�� $
=
��% &
FxaaSettings
��' 3
.
��3 4
defaultSettings
��4 C
,
��C D
taaSettings
�� #
=
��$ %
TaaSettings
��& 1
.
��1 2
defaultSettings
��2 A
}
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
[
�� 	
SerializeField
��	 
]
�� 
Settings
�� 

m_Settings
�� 
=
�� 
Settings
�� &
.
��& '
defaultSettings
��' 6
;
��6 7
public
�� 
Settings
�� 
settings
��  
{
�� 	
get
�� 
{
�� 
return
�� 

m_Settings
�� #
;
��# $
}
��% &
set
�� 
{
�� 

m_Settings
�� 
=
�� 
value
�� $
;
��$ %
}
��& '
}
�� 	
public
�� 
override
�� 
void
�� 
Reset
�� "
(
��" #
)
��# $
{
�� 	

m_Settings
�� 
=
�� 
Settings
�� !
.
��! "
defaultSettings
��" 1
;
��1 2
}
�� 	
}
�� 
}�� �,
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\BloomModel.cs
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
$str	$ �
)
� �
]
� �
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
}ff �9
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\BuiltinDebugViewsModel.cs
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
$str	## �
)
##� �
]
##� �
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
�� 
bool
�� 
IsModeActive
��  
(
��  !
Mode
��! %
mode
��& *
)
��* +
{
�� 	
return
�� 

m_Settings
�� 
.
�� 
mode
�� "
==
��# %
mode
��& *
;
��* +
}
�� 	
}
�� 
}�� �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\ChromaticAberrationModel.cs
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
}++ Ӱ
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\ColorGradingModel.cs
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
$str	 �
)
� �
]
� �
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
$str	FF �
)
FF� �
]
FF� �
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
�� 
}
�� 
}
�� 	
[
�� 	
Serializable
��	 
]
�� 
public
�� 
struct
�� 
LogWheelsSettings
�� '
{
�� 	
[
�� 
	Trackball
�� 
(
�� 
$str
�� &
)
��& '
]
��' (
public
�� 
Color
�� 
slope
�� 
;
�� 
[
�� 
	Trackball
�� 
(
�� 
$str
�� &
)
��& '
]
��' (
public
�� 
Color
�� 
power
�� 
;
�� 
[
�� 
	Trackball
�� 
(
�� 
$str
�� '
)
��' (
]
��( )
public
�� 
Color
�� 
offset
�� 
;
��  
public
�� 
static
�� 
LogWheelsSettings
�� +
defaultSettings
��, ;
{
�� 
get
�� 
{
�� 
return
�� 
new
�� 
LogWheelsSettings
�� 0
{
�� 
slope
�� 
=
�� 
Color
��  %
.
��% &
clear
��& +
,
��+ ,
power
�� 
=
�� 
Color
��  %
.
��% &
clear
��& +
,
��+ ,
offset
�� 
=
��  
Color
��! &
.
��& '
clear
��' ,
}
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
[
�� 	
Serializable
��	 
]
�� 
public
�� 
struct
�� "
LinearWheelsSettings
�� *
{
�� 	
[
�� 
	Trackball
�� 
(
�� 
$str
�� %
)
��% &
]
��& '
public
�� 
Color
�� 
lift
�� 
;
�� 
[
�� 
	Trackball
�� 
(
�� 
$str
�� &
)
��& '
]
��' (
public
�� 
Color
�� 
gamma
�� 
;
�� 
[
�� 
	Trackball
�� 
(
�� 
$str
�� %
)
��% &
]
��& '
public
�� 
Color
�� 
gain
�� 
;
�� 
public
�� 
static
�� "
LinearWheelsSettings
�� .
defaultSettings
��/ >
{
�� 
get
�� 
{
�� 
return
�� 
new
�� "
LinearWheelsSettings
�� 3
{
�� 
lift
�� 
=
�� 
Color
�� $
.
��$ %
clear
��% *
,
��* +
gamma
�� 
=
�� 
Color
��  %
.
��% &
clear
��& +
,
��+ ,
gain
�� 
=
�� 
Color
�� $
.
��$ %
clear
��% *
}
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
public
�� 
enum
�� 
ColorWheelMode
�� 
{
�� 
Linear
�� 
,
�� 
Log
�� 
}
�� 
[
�� 	
Serializable
��	 
]
�� 
public
�� 
struct
�� !
ColorWheelsSettings
�� )
{
�� 	
public
��	 
ColorWheelMode
�� 
mode
�� #
;
��# $
[
�� 
TrackballGroup
�� 
]
�� 
public
�� 
LogWheelsSettings
�� $
log
��% (
;
��( )
[
�� 
TrackballGroup
�� 
]
�� 
public
�� "
LinearWheelsSettings
�� '
linear
��( .
;
��. /
public
�� 
static
�� !
ColorWheelsSettings
�� -
defaultSettings
��. =
{
�� 
get
�� 
{
�� 
return
�� 
new
�� !
ColorWheelsSettings
�� 2
{
�� 
mode
�� 

=
�� 
ColorWheelMode
�� 
.
�� 
Log
�� 
,
��  
log
�� 
=
�� 
LogWheelsSettings
�� /
.
��/ 0
defaultSettings
��0 ?
,
��? @
linear
�� 
=
��  "
LinearWheelsSettings
��! 5
.
��5 6
defaultSettings
��6 E
}
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
[
�� 	
Serializable
��	 
]
�� 
public
�� 
struct
�� 
CurvesSettings
�� $
{
�� 	
public
�� 
ColorGradingCurve
�� $
master
��% +
;
��+ ,
public
�� 
ColorGradingCurve
�� $
red
��% (
;
��( )
public
�� 
ColorGradingCurve
�� $
green
��% *
;
��* +
public
�� 
ColorGradingCurve
�� $
blue
��% )
;
��) *
public
�� 
ColorGradingCurve
�� $
hueVShue
��% -
;
��- .
public
�� 
ColorGradingCurve
�� $
hueVSsat
��% -
;
��- .
public
�� 
ColorGradingCurve
�� $
satVSsat
��% -
;
��- .
public
�� 
ColorGradingCurve
�� $
lumVSsat
��% -
;
��- .
[
�� 
HideInInspector
�� 
]
�� 
public
�� $
int
��% (#
e_CurrentEditingCurve
��) >
;
��> ?
[
�� 
HideInInspector
�� 
]
�� 
public
�� $
bool
��% )
e_CurveY
��* 2
;
��2 3
[
�� 
HideInInspector
�� 
]
�� 
public
�� $
bool
��% )
e_CurveR
��* 2
;
��2 3
[
�� 
HideInInspector
�� 
]
�� 
public
�� $
bool
��% )
e_CurveG
��* 2
;
��2 3
[
�� 
HideInInspector
�� 
]
�� 
public
�� $
bool
��% )
e_CurveB
��* 2
;
��2 3
public
�� 
static
�� 
CurvesSettings
�� (
defaultSettings
��) 8
{
�� 
get
�� 
{
�� 
return
�� 
new
�� 
CurvesSettings
�� -
{
�� 
master
�� 
=
��  
new
��! $
ColorGradingCurve
��% 6
(
��6 7
new
��7 :
AnimationCurve
��; I
(
��I J
new
��J M
Keyframe
��N V
(
��V W
$num
��W Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ a
,
��a b
$num
��c e
)
��e f
,
��f g
new
��h k
Keyframe
��l t
(
��t u
$num
��u w
,
��w x
$num
��y {
,
��{ |
$num
��} 
,�� �
$num��� �
)��� �
)��� �
,��� �
$num��� �
,��� �
false��� �
,��� �
new��� �
Vector2��� �
(��� �
$num��� �
,��� �
$num��� �
)��� �
)��� �
,��� �
red
�� 
=
��  
new
��! $
ColorGradingCurve
��% 6
(
��6 7
new
��7 :
AnimationCurve
��; I
(
��I J
new
��J M
Keyframe
��N V
(
��V W
$num
��W Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ a
,
��a b
$num
��c e
)
��e f
,
��f g
new
��h k
Keyframe
��l t
(
��t u
$num
��u w
,
��w x
$num
��y {
,
��{ |
$num
��} 
,�� �
$num��� �
)��� �
)��� �
,��� �
$num��� �
,��� �
false��� �
,��� �
new��� �
Vector2��� �
(��� �
$num��� �
,��� �
$num��� �
)��� �
)��� �
,��� �
green
�� 
=
��  
new
��! $
ColorGradingCurve
��% 6
(
��6 7
new
��7 :
AnimationCurve
��; I
(
��I J
new
��J M
Keyframe
��N V
(
��V W
$num
��W Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ a
,
��a b
$num
��c e
)
��e f
,
��f g
new
��h k
Keyframe
��l t
(
��t u
$num
��u w
,
��w x
$num
��y {
,
��{ |
$num
��} 
,�� �
$num��� �
)��� �
)��� �
,��� �
$num��� �
,��� �
false��� �
,��� �
new��� �
Vector2��� �
(��� �
$num��� �
,��� �
$num��� �
)��� �
)��� �
,��� �
blue
�� 
=
��  
new
��! $
ColorGradingCurve
��% 6
(
��6 7
new
��7 :
AnimationCurve
��; I
(
��I J
new
��J M
Keyframe
��N V
(
��V W
$num
��W Y
,
��Y Z
$num
��[ ]
,
��] ^
$num
��_ a
,
��a b
$num
��c e
)
��e f
,
��f g
new
��h k
Keyframe
��l t
(
��t u
$num
��u w
,
��w x
$num
��y {
,
��{ |
$num
��} 
,�� �
$num��� �
)��� �
)��� �
,��� �
$num��� �
,��� �
false��� �
,��� �
new��� �
Vector2��� �
(��� �
$num��� �
,��� �
$num��� �
)��� �
)��� �
,��� �
hueVShue
��  
=
��! "
new
��# &
ColorGradingCurve
��' 8
(
��8 9
new
��9 <
AnimationCurve
��= K
(
��K L
)
��L M
,
��M N
$num
��O S
,
��S T
true
��U Y
,
��Y Z
new
��\ _
Vector2
��` g
(
��g h
$num
��h j
,
��j k
$num
��l n
)
��n o
)
��o p
,
��p q
hueVSsat
��  
=
��! "
new
��# &
ColorGradingCurve
��' 8
(
��8 9
new
��9 <
AnimationCurve
��= K
(
��K L
)
��L M
,
��M N
$num
��O S
,
��S T
true
��U Y
,
��Y Z
new
��\ _
Vector2
��` g
(
��g h
$num
��h j
,
��j k
$num
��l n
)
��n o
)
��o p
,
��p q
satVSsat
��  
=
��! "
new
��# &
ColorGradingCurve
��' 8
(
��8 9
new
��9 <
AnimationCurve
��= K
(
��K L
)
��L M
,
��M N
$num
��O S
,
��S T
false
��U Z
,
��Z [
new
��\ _
Vector2
��` g
(
��g h
$num
��h j
,
��j k
$num
��l n
)
��n o
)
��o p
,
��p q
lumVSsat
��  
=
��! "
new
��# &
ColorGradingCurve
��' 8
(
��8 9
new
��9 <
AnimationCurve
��= K
(
��K L
)
��L M
,
��M N
$num
��O S
,
��S T
false
��U Z
,
��Z [
new
��\ _
Vector2
��` g
(
��g h
$num
��h j
,
��j k
$num
��l n
)
��n o
)
��o p
,
��p q#
e_CurrentEditingCurve
�� -
=
��. /
$num
��0 1
,
��1 2
e_CurveY
��  
=
��! "
true
��# '
,
��' (
e_CurveR
��  
=
��! "
false
��# (
,
��( )
e_CurveG
��  
=
��! "
false
��# (
,
��( )
e_CurveB
��  
=
��! "
false
��# (
}
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
[
�� 	
Serializable
��	 
]
�� 
public
�� 
struct
�� 
Settings
�� 
{
�� 	
public
�� !
TonemappingSettings
�� &
tonemapping
��' 2
;
��2 3
public
�� 
BasicSettings
��  
basic
��! &
;
��& '
public
�� "
ChannelMixerSettings
�� '
channelMixer
��( 4
;
��4 5
public
�� !
ColorWheelsSettings
�� &
colorWheels
��' 2
;
��2 3
public
�� 
CurvesSettings
�� !
curves
��" (
;
��( )
public
�� 
static
�� 
Settings
�� "
defaultSettings
��# 2
{
�� 
get
�� 
{
�� 
return
�� 
new
�� 
Settings
�� '
{
�� 
tonemapping
�� #
=
��$ %!
TonemappingSettings
��& 9
.
��9 :
defaultSettings
��: I
,
��I J
basic
�� 
=
�� 
BasicSettings
��  -
.
��- .
defaultSettings
��. =
,
��= >
channelMixer
�� $
=
��% &"
ChannelMixerSettings
��' ;
.
��; <
defaultSettings
��< K
,
��K L
colorWheels
�� #
=
��$ %!
ColorWheelsSettings
��& 9
.
��9 :
defaultSettings
��: I
,
��I J
curves
�� 
=
��  
CurvesSettings
��! /
.
��/ 0
defaultSettings
��0 ?
}
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
[
�� 	
SerializeField
��	 
]
�� 
Settings
�� 

m_Settings
�� 
=
�� 
Settings
�� &
.
��& '
defaultSettings
��' 6
;
��6 7
public
�� 
Settings
�� 
settings
��  
{
�� 	
get
�� 
{
�� 
return
�� 

m_Settings
�� #
;
��# $
}
��% &
set
�� 
{
�� 

m_Settings
�� 
=
�� 
value
�� "
;
��" #

OnValidate
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
bool
�� 
isDirty
�� 
{
�� 
get
�� !
;
��! "
internal
��# +
set
��, /
;
��/ 0
}
��1 2
public
�� 
RenderTexture
�� 
bakedLut
�� %
{
��& '
get
��( +
;
��+ ,
internal
��- 5
set
��6 9
;
��9 :
}
��; <
public
�� 
override
�� 
void
�� 
Reset
�� "
(
��" #
)
��# $
{
�� 	

m_Settings
�� 
=
�� 
Settings
�� !
.
��! "
defaultSettings
��" 1
;
��1 2

OnValidate
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
override
�� 
void
�� 

OnValidate
�� '
(
��' (
)
��( )
{
�� 	
isDirty
�� 
=
�� 
true
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\DepthOfFieldModel.cs
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
$str	( �
)
� �
]
� �
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
$str	& �
)
� �
]
� �
public 
float 
focalLength $
;$ %
[ 
Tooltip 
( 
$str	 �
)
� �
]
� �
public 
bool 
useCameraFov $
;$ %
[ 
Tooltip 
( 
$str	 �
)
� �
]
� �
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
}?? �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\DitheringModel.cs
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
} �*
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\EyeAdaptationModel.cs
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
$str	% �
)
� �
]
� �
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
$str	% �
)
� �
]
� �
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
$str	,,% �
)
,,� �
]
,,� �
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
$str	//# �
)
//� �
]
//� �
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
}XX �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\FogModel.cs
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
}'' �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\GrainModel.cs
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
$str	$ �
)
� �
]
� �
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
}33 �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\MotionBlurModel.cs
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
$str	$ �
)
� �
]
� �
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
}// �>
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\ScreenSpaceReflectionModel.cs
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
$str	 �
)
� �
]
� �
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
$str	<< �
)
<<� �
]
<<� �
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
$str	@@ �
)
@@� �
]
@@� �
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
$str	HH �
)
HH� �
]
HH� �
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
�� 

m_Settings
�� 
=
�� 
Settings
�� &
.
��& '
defaultSettings
��' 6
;
��6 7
public
�� 
Settings
�� 
settings
��  
{
�� 	
get
�� 
{
�� 
return
�� 

m_Settings
�� #
;
��# $
}
��% &
set
�� 
{
�� 

m_Settings
�� 
=
�� 
value
�� $
;
��$ %
}
��& '
}
�� 	
public
�� 
override
�� 
void
�� 
Reset
�� "
(
��" #
)
��# $
{
�� 	

m_Settings
�� 
=
�� 
Settings
�� !
.
��! "
defaultSettings
��" 1
;
��1 2
}
�� 	
}
�� 
}�� �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\UserLutModel.cs
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
}++ �%
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Models\VignetteModel.cs
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
]	 �
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
}NN ��
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\PostProcessingBehaviour.cs
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
�� 
.
�� 
Init
�� 
(
��  
context
��  '
,
��' (
profile
��) 0
.
��0 1
colorGrading
��1 =
)
��= >
;
��> ?
	m_UserLut
�� 
.
�� 
Init
�� 
(
�� 
context
�� "
,
��" #
profile
��$ +
.
��+ ,
userLut
��, 3
)
��3 4
;
��4 5
m_Grain
�� 
.
�� 
Init
�� 
(
�� 
context
��  
,
��  !
profile
��" )
.
��) *
grain
��* /
)
��/ 0
;
��0 1

m_Vignette
�� 
.
�� 
Init
�� 
(
�� 
context
�� #
,
��# $
profile
��% ,
.
��, -
vignette
��- 5
)
��5 6
;
��6 7
m_Dithering
�� 
.
�� 
Init
�� 
(
�� 
context
�� $
,
��$ %
profile
��& -
.
��- .
	dithering
��. 7
)
��7 8
;
��8 9
m_Fxaa
�� 
.
�� 
Init
�� 
(
�� 
context
�� 
,
��  
profile
��! (
.
��( )
antialiasing
��) 5
)
��5 6
;
��6 7
if
�� 
(
�� 
m_PreviousProfile
�� !
!=
��" $
profile
��% ,
)
��, -
{
�� 
DisableComponents
�� !
(
��! "
)
��" #
;
��# $
m_PreviousProfile
�� !
=
��" #
profile
��$ +
;
��+ ,
}
�� 
CheckObservers
�� 
(
�� 
)
�� 
;
�� 
var
�� 
flags
�� 
=
�� 
context
�� 
.
��  
camera
��  &
.
��& '
depthTextureMode
��' 7
;
��7 8
foreach
�� 
(
�� 
var
�� 
	component
�� "
in
��# %
m_Components
��& 2
)
��2 3
{
�� 
if
�� 
(
�� 
	component
�� 
.
�� 
active
�� $
)
��$ %
flags
�� 
|=
�� 
	component
�� &
.
��& '
GetCameraFlags
��' 5
(
��5 6
)
��6 7
;
��7 8
}
�� 
context
�� 
.
�� 
camera
�� 
.
�� 
depthTextureMode
�� +
=
��, -
flags
��. 3
;
��3 4
if
�� 
(
�� 
!
�� $
m_RenderingInSceneView
�� '
&&
��( *
m_Taa
��+ 0
.
��0 1
active
��1 7
&&
��8 :
!
��; <
profile
��< C
.
��C D

debugViews
��D N
.
��N O
willInterrupt
��O \
)
��\ ]
m_Taa
�� 
.
�� !
SetProjectionMatrix
�� )
(
��) * 
jitteredMatrixFunc
��* <
)
��< =
;
��= >
}
�� 	
void
�� 
OnPreRender
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
profile
�� 
==
�� 
null
�� 
)
��  
return
�� 
;
�� %
TryExecuteCommandBuffer
�� #
(
��# $
m_DebugViews
��$ 0
)
��0 1
;
��1 2%
TryExecuteCommandBuffer
�� #
(
��# $ 
m_AmbientOcclusion
��$ 6
)
��6 7
;
��7 8%
TryExecuteCommandBuffer
�� #
(
��# $%
m_ScreenSpaceReflection
��$ ;
)
��; <
;
��< =%
TryExecuteCommandBuffer
�� #
(
��# $
m_FogComponent
��$ 2
)
��2 3
;
��3 4
if
�� 
(
�� 
!
�� $
m_RenderingInSceneView
�� '
)
��' (%
TryExecuteCommandBuffer
�� '
(
��' (
m_MotionBlur
��( 4
)
��4 5
;
��5 6
}
�� 	
void
�� 
OnPostRender
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
profile
�� 
==
�� 
null
�� 
||
��  "
m_Camera
��# +
==
��, .
null
��/ 3
)
��3 4
return
�� 
;
�� 
if
�� 
(
�� 
!
�� $
m_RenderingInSceneView
�� '
&&
��( *
m_Taa
��+ 0
.
��0 1
active
��1 7
&&
��8 :
!
��; <
profile
��< C
.
��C D

debugViews
��D N
.
��N O
willInterrupt
��O \
)
��\ ]
	m_Context
�� 
.
�� 
camera
��  
.
��  !#
ResetProjectionMatrix
��! 6
(
��6 7
)
��7 8
;
��8 9
}
�� 	
void
�� 
OnRenderImage
�� 
(
�� 
RenderTexture
�� (
source
��) /
,
��/ 0
RenderTexture
��1 >
destination
��? J
)
��J K
{
�� 	
if
�� 
(
�� 
profile
�� 
==
�� 
null
�� 
||
��  "
m_Camera
��# +
==
��, .
null
��/ 3
)
��3 4
{
�� 
Graphics
�� 
.
�� 
Blit
�� 
(
�� 
source
�� $
,
��$ %
destination
��& 1
)
��1 2
;
��2 3
return
�� 
;
�� 
}
�� 
bool
�� 

uberActive
�� 
=
�� 
false
�� #
;
��# $
bool
�� 

fxaaActive
�� 
=
�� 
m_Fxaa
�� $
.
��$ %
active
��% +
;
��+ ,
bool
�� 
	taaActive
�� 
=
�� 
m_Taa
�� "
.
��" #
active
��# )
&&
��* ,
!
��- .$
m_RenderingInSceneView
��. D
;
��D E
bool
�� 
	dofActive
�� 
=
�� 
m_DepthOfField
�� +
.
��+ ,
active
��, 2
&&
��3 5
!
��6 7$
m_RenderingInSceneView
��7 M
;
��M N
var
�� 
uberMaterial
�� 
=
�� 
m_MaterialFactory
�� 0
.
��0 1
Get
��1 4
(
��4 5
$str
��5 Q
)
��Q R
;
��R S
uberMaterial
�� 
.
�� 
shaderKeywords
�� '
=
��( )
null
��* .
;
��. /
var
�� 
src
�� 
=
�� 
source
�� 
;
�� 
var
�� 
dst
�� 
=
�� 
destination
�� !
;
��! "
if
�� 
(
�� 
	taaActive
�� 
)
�� 
{
�� 
var
�� 
tempRT
�� 
=
�� $
m_RenderTextureFactory
�� 3
.
��3 4
Get
��4 7
(
��7 8
src
��8 ;
)
��; <
;
��< =
m_Taa
�� 
.
�� 
Render
�� 
(
�� 
src
��  
,
��  !
tempRT
��" (
)
��( )
;
��) *
src
�� 
=
�� 
tempRT
�� 
;
�� 
}
�� 
if
�� 
(
�� 
profile
�� 
.
�� 
monitors
��  
.
��  !"
onFrameEndEditorOnly
��! 5
!=
��6 8
null
��9 =
)
��= >
dst
�� 
=
�� $
m_RenderTextureFactory
�� ,
.
��, -
Get
��- 0
(
��0 1
src
��1 4
)
��4 5
;
��5 6
Texture
�� 
autoExposure
��  
=
��! "
GraphicsUtils
��# 0
.
��0 1
whiteTexture
��1 =
;
��= >
if
�� 
(
�� 
m_EyeAdaptation
�� 
.
��  
active
��  &
)
��& '
{
�� 

uberActive
�� 
=
�� 
true
�� !
;
��! "
autoExposure
�� 
=
�� 
m_EyeAdaptation
�� .
.
��. /
Prepare
��/ 6
(
��6 7
src
��7 :
,
��: ;
uberMaterial
��< H
)
��H I
;
��I J
}
�� 
uberMaterial
�� 
.
�� 

SetTexture
�� #
(
��# $
$str
��$ 3
,
��3 4
autoExposure
��5 A
)
��A B
;
��B C
if
�� 
(
�� 
	dofActive
�� 
)
�� 
{
�� 

uberActive
�� 
=
�� 
true
�� !
;
��! "
m_DepthOfField
�� 
.
�� 
Prepare
�� &
(
��& '
src
��' *
,
��* +
uberMaterial
��, 8
,
��8 9
	taaActive
��: C
,
��C D
m_Taa
��E J
.
��J K
jitterVector
��K W
,
��W X
m_Taa
��Y ^
.
��^ _
model
��_ d
.
��d e
settings
��e m
.
��m n
taaSettings
��n y
.
��y z
motionBlending��z �
)��� �
;��� �
}
�� 
if
�� 
(
�� 
m_Bloom
�� 
.
�� 
active
�� 
)
�� 
{
�� 

uberActive
�� 
=
�� 
true
�� !
;
��! "
m_Bloom
�� 
.
�� 
Prepare
�� 
(
��  
src
��  #
,
��# $
uberMaterial
��% 1
,
��1 2
autoExposure
��3 ?
)
��? @
;
��@ A
}
�� 

uberActive
�� 
|=
�� '
TryPrepareUberImageEffect
�� 3
(
��3 4#
m_ChromaticAberration
��4 I
,
��I J
uberMaterial
��K W
)
��W X
;
��X Y

uberActive
�� 
|=
�� '
TryPrepareUberImageEffect
�� 3
(
��3 4
m_ColorGrading
��4 B
,
��B C
uberMaterial
��D P
)
��P Q
;
��Q R

uberActive
�� 
|=
�� '
TryPrepareUberImageEffect
�� 3
(
��3 4

m_Vignette
��4 >
,
��> ?
uberMaterial
��@ L
)
��L M
;
��M N

uberActive
�� 
|=
�� '
TryPrepareUberImageEffect
�� 3
(
��3 4
	m_UserLut
��4 =
,
��= >
uberMaterial
��? K
)
��K L
;
��L M
var
�� 
fxaaMaterial
�� 
=
�� 

fxaaActive
�� )
?
�� 
m_MaterialFactory
�� #
.
��# $
Get
��$ '
(
��' (
$str
��( =
)
��= >
:
�� 
null
�� 
;
�� 
if
�� 
(
�� 

fxaaActive
�� 
)
�� 
{
�� 
fxaaMaterial
�� 
.
�� 
shaderKeywords
�� +
=
��, -
null
��. 2
;
��2 3'
TryPrepareUberImageEffect
�� )
(
��) *
m_Grain
��* 1
,
��1 2
fxaaMaterial
��3 ?
)
��? @
;
��@ A'
TryPrepareUberImageEffect
�� )
(
��) *
m_Dithering
��* 5
,
��5 6
fxaaMaterial
��7 C
)
��C D
;
��D E
if
�� 
(
�� 

uberActive
�� 
)
�� 
{
�� 
var
�� 
output
�� 
=
��  $
m_RenderTextureFactory
��! 7
.
��7 8
Get
��8 ;
(
��; <
src
��< ?
)
��? @
;
��@ A
Graphics
�� 
.
�� 
Blit
�� !
(
��! "
src
��" %
,
��% &
output
��' -
,
��- .
uberMaterial
��/ ;
,
��; <
$num
��= >
)
��> ?
;
��? @
src
�� 
=
�� 
output
��  
;
��  !
}
�� 
m_Fxaa
�� 
.
�� 
Render
�� 
(
�� 
src
�� !
,
��! "
dst
��# &
)
��& '
;
��' (
}
�� 
else
�� 
{
�� 

uberActive
�� 
|=
�� '
TryPrepareUberImageEffect
�� 7
(
��7 8
m_Grain
��8 ?
,
��? @
uberMaterial
��A M
)
��M N
;
��N O

uberActive
�� 
|=
�� '
TryPrepareUberImageEffect
�� 7
(
��7 8
m_Dithering
��8 C
,
��C D
uberMaterial
��E Q
)
��Q R
;
��R S
if
�� 
(
�� 

uberActive
�� 
)
�� 
{
�� 
if
�� 
(
�� 
!
�� 
GraphicsUtils
�� &
.
��& ' 
isLinearColorSpace
��' 9
)
��9 :
uberMaterial
�� $
.
��$ %
EnableKeyword
��% 2
(
��2 3
$str
��3 K
)
��K L
;
��L M
Graphics
�� 
.
�� 
Blit
�� !
(
��! "
src
��" %
,
��% &
dst
��' *
,
��* +
uberMaterial
��, 8
,
��8 9
$num
��: ;
)
��; <
;
��< =
}
�� 
}
�� 
if
�� 
(
�� 
!
�� 

uberActive
�� 
&&
�� 
!
��  

fxaaActive
��  *
)
��* +
Graphics
�� 
.
�� 
Blit
�� 
(
�� 
src
�� !
,
��! "
dst
��# &
)
��& '
;
��' (
if
�� 
(
�� 
profile
�� 
.
�� 
monitors
��  
.
��  !"
onFrameEndEditorOnly
��! 5
!=
��6 8
null
��9 =
)
��= >
{
�� 
Graphics
�� 
.
�� 
Blit
�� 
(
�� 
dst
�� !
,
��! "
destination
��# .
)
��. /
;
��/ 0
var
�� 
oldRt
�� 
=
�� 
RenderTexture
�� )
.
��) *
active
��* 0
;
��0 1
profile
�� 
.
�� 
monitors
��  
.
��  !"
onFrameEndEditorOnly
��! 5
(
��5 6
dst
��6 9
)
��9 :
;
��: ;
RenderTexture
�� 
.
�� 
active
�� $
=
��% &
oldRt
��' ,
;
��, -
}
�� $
m_RenderTextureFactory
�� "
.
��" #

ReleaseAll
��# -
(
��- .
)
��. /
;
��/ 0
}
�� 	
void
�� 
OnGUI
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
Event
�� 
.
�� 
current
�� 
.
�� 
type
�� "
!=
��# %
	EventType
��& /
.
��/ 0
Repaint
��0 7
)
��7 8
return
�� 
;
�� 
if
�� 
(
�� 
profile
�� 
==
�� 
null
�� 
||
��  "
m_Camera
��# +
==
��, .
null
��/ 3
)
��3 4
return
�� 
;
�� 
if
�� 
(
�� 
m_EyeAdaptation
�� 
.
��  
active
��  &
&&
��' )
profile
��* 1
.
��1 2

debugViews
��2 <
.
��< =
IsModeActive
��= I
(
��I J
	DebugMode
��J S
.
��S T
EyeAdaptation
��T a
)
��a b
)
��b c
m_EyeAdaptation
�� 
.
��  
OnGUI
��  %
(
��% &
)
��& '
;
��' (
else
�� 
if
�� 
(
�� 
m_ColorGrading
�� #
.
��# $
active
��$ *
&&
��+ -
profile
��. 5
.
��5 6

debugViews
��6 @
.
��@ A
IsModeActive
��A M
(
��M N
	DebugMode
��N W
.
��W X
LogLut
��X ^
)
��^ _
)
��_ `
m_ColorGrading
�� 
.
�� 
OnGUI
�� $
(
��$ %
)
��% &
;
��& '
else
�� 
if
�� 
(
�� 
	m_UserLut
�� 
.
�� 
active
�� %
&&
��& (
profile
��) 0
.
��0 1

debugViews
��1 ;
.
��; <
IsModeActive
��< H
(
��H I
	DebugMode
��I R
.
��R S
UserLut
��S Z
)
��Z [
)
��[ \
	m_UserLut
�� 
.
�� 
OnGUI
�� 
(
��  
)
��  !
;
��! "
}
�� 	
void
�� 
	OnDisable
�� 
(
�� 
)
�� 
{
�� 	
foreach
�� 
(
�� 
var
�� 
cb
�� 
in
�� 
m_CommandBuffers
�� /
.
��/ 0
Values
��0 6
)
��6 7
{
�� 
m_Camera
�� 
.
�� !
RemoveCommandBuffer
�� ,
(
��, -
cb
��- /
.
��/ 0
Key
��0 3
,
��3 4
cb
��5 7
.
��7 8
Value
��8 =
)
��= >
;
��> ?
cb
�� 
.
�� 
Value
�� 
.
�� 
Dispose
��  
(
��  !
)
��! "
;
��" #
}
�� 
m_CommandBuffers
�� 
.
�� 
Clear
�� "
(
��" #
)
��# $
;
��$ %
if
�� 
(
�� 
profile
�� 
!=
�� 
null
�� 
)
��  
DisableComponents
�� !
(
��! "
)
��" #
;
��# $
m_Components
�� 
.
�� 
Clear
�� 
(
�� 
)
��  
;
��  !
m_MaterialFactory
�� 
.
�� 
Dispose
�� %
(
��% &
)
��& '
;
��' ($
m_RenderTextureFactory
�� "
.
��" #
Dispose
��# *
(
��* +
)
��+ ,
;
��, -
GraphicsUtils
�� 
.
�� 
Dispose
�� !
(
��! "
)
��" #
;
��# $
}
�� 	
public
�� 
void
�� "
ResetTemporalEffects
�� (
(
��( )
)
��) *
{
�� 	
m_Taa
�� 
.
�� 
ResetHistory
�� 
(
�� 
)
��  
;
��  !
m_MotionBlur
�� 
.
�� 
ResetHistory
�� %
(
��% &
)
��& '
;
��' (
m_EyeAdaptation
�� 
.
�� 
ResetHistory
�� (
(
��( )
)
��) *
;
��* +
}
�� 	
List
�� 
<
�� )
PostProcessingComponentBase
�� (
>
��( )"
m_ComponentsToEnable
��* >
=
��? @
new
��A D
List
��E I
<
��I J)
PostProcessingComponentBase
��J e
>
��e f
(
��f g
)
��g h
;
��h i
List
�� 
<
�� )
PostProcessingComponentBase
�� (
>
��( )#
m_ComponentsToDisable
��* ?
=
��@ A
new
��B E
List
��F J
<
��J K)
PostProcessingComponentBase
��K f
>
��f g
(
��g h
)
��h i
;
��i j
void
�� 
CheckObservers
�� 
(
�� 
)
�� 
{
�� 	
foreach
�� 
(
�� 
var
�� 
cs
�� 
in
�� 
m_ComponentStates
�� 0
)
��0 1
{
�� 
var
�� 
	component
�� 
=
�� 
cs
��  "
.
��" #
Key
��# &
;
��& '
var
�� 
state
�� 
=
�� 
	component
�� %
.
��% &
GetModel
��& .
(
��. /
)
��/ 0
.
��0 1
enabled
��1 8
;
��8 9
if
�� 
(
�� 
state
�� 
!=
�� 
cs
�� 
.
��  
Value
��  %
)
��% &
{
�� 
if
�� 
(
�� 
state
�� 
)
�� "
m_ComponentsToEnable
�� 3
.
��3 4
Add
��4 7
(
��7 8
	component
��8 A
)
��A B
;
��B C
else
�� #
m_ComponentsToDisable
�� .
.
��. /
Add
��/ 2
(
��2 3
	component
��3 <
)
��< =
;
��= >
}
�� 
}
�� 
for
�� 
(
�� 
int
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
�� #
m_ComponentsToDisable
��  5
.
��5 6
Count
��6 ;
;
��; <
i
��= >
++
��> @
)
��@ A
{
�� 
var
�� 
c
�� 
=
�� #
m_ComponentsToDisable
�� -
[
��- .
i
��. /
]
��/ 0
;
��0 1
m_ComponentStates
�� !
[
��! "
c
��" #
]
��# $
=
��% &
false
��' ,
;
��, -
c
�� 
.
�� 
	OnDisable
�� 
(
�� 
)
�� 
;
�� 
}
�� 
for
�� 
(
�� 
int
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
�� "
m_ComponentsToEnable
��  4
.
��4 5
Count
��5 :
;
��: ;
i
��< =
++
��= ?
)
��? @
{
�� 
var
�� 
c
�� 
=
�� "
m_ComponentsToEnable
�� ,
[
��, -
i
��- .
]
��. /
;
��/ 0
m_ComponentStates
�� !
[
��! "
c
��" #
]
��# $
=
��% &
true
��' +
;
��+ ,
c
�� 
.
�� 
OnEnable
�� 
(
�� 
)
�� 
;
�� 
}
�� #
m_ComponentsToDisable
�� !
.
��! "
Clear
��" '
(
��' (
)
��( )
;
��) *"
m_ComponentsToEnable
��  
.
��  !
Clear
��! &
(
��& '
)
��' (
;
��( )
}
�� 	
void
�� 
DisableComponents
�� 
(
�� 
)
��  
{
�� 	
foreach
�� 
(
�� 
var
�� 
	component
�� "
in
��# %
m_Components
��& 2
)
��2 3
{
�� 
var
�� 
model
�� 
=
�� 
	component
�� %
.
��% &
GetModel
��& .
(
��. /
)
��/ 0
;
��0 1
if
�� 
(
�� 
model
�� 
!=
�� 
null
�� !
&&
��" $
model
��% *
.
��* +
enabled
��+ 2
)
��2 3
	component
�� 
.
�� 
	OnDisable
�� '
(
��' (
)
��( )
;
��) *
}
�� 
}
�� 	
CommandBuffer
�� 
AddCommandBuffer
�� &
<
��& '
T
��' (
>
��( )
(
��) *
CameraEvent
��* 5
evt
��6 9
,
��9 :
string
��; A
name
��B F
)
��F G
where
�� 
T
�� 
:
�� !
PostProcessingModel
�� )
{
�� 	
var
�� 
cb
�� 
=
�� 
new
�� 
CommandBuffer
�� &
{
��' (
name
��) -
=
��. /
name
��0 4
}
��5 6
;
��6 7
var
�� 
kvp
�� 
=
�� 
new
�� 
KeyValuePair
�� &
<
��& '
CameraEvent
��' 2
,
��2 3
CommandBuffer
��4 A
>
��A B
(
��B C
evt
��C F
,
��F G
cb
��H J
)
��J K
;
��K L
m_CommandBuffers
�� 
.
�� 
Add
��  
(
��  !
typeof
��! '
(
��' (
T
��( )
)
��) *
,
��* +
kvp
��, /
)
��/ 0
;
��0 1
m_Camera
�� 
.
�� 
AddCommandBuffer
�� %
(
��% &
evt
��& )
,
��) *
kvp
��+ .
.
��. /
Value
��/ 4
)
��4 5
;
��5 6
return
�� 
kvp
�� 
.
�� 
Value
�� 
;
�� 
}
�� 	
void
�� !
RemoveCommandBuffer
��  
<
��  !
T
��! "
>
��" #
(
��# $
)
��$ %
where
�� 
T
�� 
:
�� !
PostProcessingModel
�� )
{
�� 	
KeyValuePair
�� 
<
�� 
CameraEvent
�� $
,
��$ %
CommandBuffer
��& 3
>
��3 4
kvp
��5 8
;
��8 9
var
�� 
type
�� 
=
�� 
typeof
�� 
(
�� 
T
�� 
)
��  
;
��  !
if
�� 
(
�� 
!
�� 
m_CommandBuffers
�� !
.
��! "
TryGetValue
��" -
(
��- .
type
��. 2
,
��2 3
out
��4 7
kvp
��8 ;
)
��; <
)
��< =
return
�� 
;
�� 
m_Camera
�� 
.
�� !
RemoveCommandBuffer
�� (
(
��( )
kvp
��) ,
.
��, -
Key
��- 0
,
��0 1
kvp
��2 5
.
��5 6
Value
��6 ;
)
��; <
;
��< =
m_CommandBuffers
�� 
.
�� 
Remove
�� #
(
��# $
type
��$ (
)
��( )
;
��) *
kvp
�� 
.
�� 
Value
�� 
.
�� 
Dispose
�� 
(
�� 
)
�� 
;
��  
}
�� 	
CommandBuffer
�� 
GetCommandBuffer
�� &
<
��& '
T
��' (
>
��( )
(
��) *
CameraEvent
��* 5
evt
��6 9
,
��9 :
string
��; A
name
��B F
)
��F G
where
�� 
T
�� 
:
�� !
PostProcessingModel
�� )
{
�� 	
CommandBuffer
�� 
cb
�� 
;
�� 
KeyValuePair
�� 
<
�� 
CameraEvent
�� $
,
��$ %
CommandBuffer
��& 3
>
��3 4
kvp
��5 8
;
��8 9
if
�� 
(
�� 
!
�� 
m_CommandBuffers
�� !
.
��! "
TryGetValue
��" -
(
��- .
typeof
��. 4
(
��4 5
T
��5 6
)
��6 7
,
��7 8
out
��9 <
kvp
��= @
)
��@ A
)
��A B
{
�� 
cb
�� 
=
�� 
AddCommandBuffer
�� %
<
��% &
T
��& '
>
��' (
(
��( )
evt
��) ,
,
��, -
name
��. 2
)
��2 3
;
��3 4
}
�� 
else
�� 
if
�� 
(
�� 
kvp
�� 
.
�� 
Key
�� 
!=
�� 
evt
��  #
)
��# $
{
�� !
RemoveCommandBuffer
�� #
<
��# $
T
��$ %
>
��% &
(
��& '
)
��' (
;
��( )
cb
�� 
=
�� 
AddCommandBuffer
�� %
<
��% &
T
��& '
>
��' (
(
��( )
evt
��) ,
,
��, -
name
��. 2
)
��2 3
;
��3 4
}
�� 
else
�� 
cb
�� 
=
�� 
kvp
�� 
.
�� 
Value
�� 
;
��  
return
�� 
cb
�� 
;
�� 
}
�� 	
void
�� %
TryExecuteCommandBuffer
�� $
<
��$ %
T
��% &
>
��& '
(
��' (2
$PostProcessingComponentCommandBuffer
��( L
<
��L M
T
��M N
>
��N O
	component
��P Y
)
��Y Z
where
�� 
T
�� 
:
�� !
PostProcessingModel
�� )
{
�� 	
if
�� 
(
�� 
	component
�� 
.
�� 
active
��  
)
��  !
{
�� 
var
�� 
cb
�� 
=
�� 
GetCommandBuffer
�� )
<
��) *
T
��* +
>
��+ ,
(
��, -
	component
��- 6
.
��6 7
GetCameraEvent
��7 E
(
��E F
)
��F G
,
��G H
	component
��I R
.
��R S
GetName
��S Z
(
��Z [
)
��[ \
)
��\ ]
;
��] ^
cb
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
	component
�� 
.
�� #
PopulateCommandBuffer
�� /
(
��/ 0
cb
��0 2
)
��2 3
;
��3 4
}
�� 
else
�� !
RemoveCommandBuffer
�� $
<
��$ %
T
��% &
>
��& '
(
��' (
)
��( )
;
��) *
}
�� 	
bool
�� '
TryPrepareUberImageEffect
�� &
<
��& '
T
��' (
>
��( )
(
��) *2
$PostProcessingComponentRenderTexture
��* N
<
��N O
T
��O P
>
��P Q
	component
��R [
,
��[ \
Material
��] e
material
��f n
)
��n o
where
�� 
T
�� 
:
�� !
PostProcessingModel
�� )
{
�� 	
if
�� 
(
�� 
!
�� 
	component
�� 
.
�� 
active
�� !
)
��! "
return
�� 
false
�� 
;
�� 
	component
�� 
.
�� 
Prepare
�� 
(
�� 
material
�� &
)
��& '
;
��' (
return
�� 
true
�� 
;
�� 
}
�� 	
T
�� 	
AddComponent
��
 
<
�� 
T
�� 
>
�� 
(
�� 
T
�� 
	component
�� %
)
��% &
where
�� 
T
�� 
:
�� )
PostProcessingComponentBase
�� 1
{
�� 	
m_Components
�� 
.
�� 
Add
�� 
(
�� 
	component
�� &
)
��& '
;
��' (
return
�� 
	component
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\PostProcessingComponent.cs
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
}:: �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\PostProcessingContext.cs
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
}<< �

�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\PostProcessingModel.cs
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
} �*
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\PostProcessingProfile.cs
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
}DD � 
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Utils\ColorGradingCurve.cs
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
}@@ �\
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Utils\GraphicsUtils.cs
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
aa� �
true
aa� �
,
aa� �
bool
aa� �

clearDepth
aa� �
=
aa� �
false
aa� �
)
aa� �
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
�� 
(
�� 
Application
�� 
.
��  
	isPlaying
��  )
)
��) *
UnityObject
�� 
.
��  
Destroy
��  '
(
��' (
obj
��( +
)
��+ ,
;
��, -
else
�� 
UnityObject
�� 
.
��  
DestroyImmediate
��  0
(
��0 1
obj
��1 4
)
��4 5
;
��5 6
}
�� 
}
�� 	
public
�� 
static
�� 
void
�� 
Dispose
�� "
(
��" #
)
��# $
{
�� 	
Destroy
�� 
(
�� 
s_Quad
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Utils\MaterialFactory.cs
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
}44 �+
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Runtime\Utils\RenderTextureFactory.cs
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
ARGBHalf	~ �
,
� �$
RenderTextureReadWrite
� �
rw
� �
=
� �$
RenderTextureReadWrite
� �
.
� �
Default
� �
,
� �

FilterMode
� �

filterMode
� �
=
� �

FilterMode
� �
.
� �
Bilinear
� �
,
� �
TextureWrapMode
� �
wrapMode
� �
=
� �
TextureWrapMode
� �
.
� �
Clamp
� �
,
� �
string
� �
name
� �
=
� �
$str
� �
)
� �
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
rt	,,~ �
)
,,� �
)
,,� �
;
,,� �
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
}@@ �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\PostProcessing\Utilities\CustomMotionTexture\ExampleWheelController.cs
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
}!! �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\alien_boss_bullet_script.cs
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
}$$ �&
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\alien_boss_movement.cs
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
}DD �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\alien_movement_minus13.cs
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
}22 �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\alien_movementNew.cs
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
}== �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\AlienGeneration.cs
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
}// �%
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\collision_enemy.cs
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
$str	w �
)
� �
)
� �
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
}55 �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\exit.cs
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
} �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\levelmgr.cs
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
} ��
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\menu.cs
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
�� 
else
�� 
{
�� 
if
�� 
(
�� 
posAB
�� 
.
�� 
x
�� 
>=
�� 
$num
��  
)
��  !
posAB
�� 
.
�� 
x
�� 
-=
�� 
(
��  
float
��  %
)
��% &
$num
��& *
;
��* +
if
�� 
(
�� 
posAB
�� 
.
�� 
y
�� 
>
�� 
$num
�� 
)
��  
posAB
�� 
.
�� 
y
�� 
-=
�� 
(
��  
float
��  %
)
��% &
$num
��& *
;
��* +
if
�� 
(
�� 
posAB
�� 
.
�� 
z
�� 
>
�� 
-
�� 
$num
�� "
)
��" #
posAB
�� 
.
�� 
z
�� 
-=
�� 
(
��  
float
��  %
)
��% &
$num
��& *
;
��* +
alienB
�� 
.
�� 
	transform
��  
.
��  !
position
��! )
=
��* +
posAB
��, 1
;
��1 2
}
�� 
}
�� 	
buttonC
�� 
.
�� 
onClick
�� 
.
�� 
AddListener
�� #
(
��# $
offOver
��$ +
)
��+ ,
;
��, -
if
�� 

(
�� 
buttonC
�� 
.
�� 
	transform
�� 
.
�� 

localScale
�� (
==
��) +
auxiliar
��, 4
)
��4 5
{
�� 	
if
�� 
(
�� 
positionOver
�� 
.
�� 
y
�� 
>=
�� !
$num
��" %
)
��% &
{
�� 
SceneManager
�� 
.
�� 
	LoadScene
�� &
(
��& '
$str
��' 0
)
��0 1
;
��1 2
}
�� 
else
�� 
if
�� 
(
�� 
positionOver
�� !
.
��! "
y
��" #
<
��$ %
$num
��& )
)
��) *
{
�� 
positionOver
�� 
.
�� 
y
�� 
+=
�� !
(
��" #
float
��# (
)
��( )
$num
��) -
;
��- .
	ship_over
�� 
.
�� 
	transform
�� #
.
��# $
position
��$ ,
=
��- .
positionOver
��/ ;
;
��; <
}
�� 
}
�� 	
buttonD
�� 
.
�� 
onClick
�� 
.
�� 
AddListener
�� #
(
��# $
offUnder
��$ ,
)
��, -
;
��- .
if
�� 

(
�� 
buttonD
�� 
.
�� 
	transform
�� 
.
�� 

localScale
�� (
==
��) +
auxiliar
��, 4
)
��4 5
{
�� 	
if
�� 
(
�� 
positionUnder
�� 
.
�� 
y
�� 
>=
��  "
$num
��# &
)
��& '
{
�� 
SceneManager
�� 
.
�� 
	LoadScene
�� &
(
��& '
$str
��' 8
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
�� 
positionUnder
�� "
.
��" #
y
��# $
<
��% &
$num
��' *
)
��* +
{
�� 
positionUnder
�� 
.
�� 
y
�� 
+=
��  "
(
��# $
float
��$ )
)
��) *
$num
��* .
;
��. /

ship_under
�� 
.
�� 
	transform
�� $
.
��$ %
position
��% -
=
��. /
positionUnder
��0 =
;
��= >
}
�� 
}
�� 	
buttonE
�� 
.
�� 
onClick
�� 
.
�� 
AddListener
�� #
(
��# $
offPlay
��$ +
)
��+ ,
;
��, -
if
�� 

(
�� 
buttonE
�� 
.
�� 
	transform
�� 
.
�� 

localScale
�� (
==
��) +
auxiliar
��, 4
)
��4 5
{
�� 	
if
�� 
(
�� 
pos_boss
�� 
.
�� 
z
�� 
<=
�� 
-
�� 
$num
��  
)
��  !
{
�� 
SceneManager
�� 
.
�� 
	LoadScene
�� &
(
��& '
$str
��' 3
)
��3 4
;
��4 5
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
pos_boss
�� 
.
�� 
z
�� 
>
��  
-
��! "
$num
��" #
)
��# $
pos_boss
�� 
.
�� 
z
�� 
-=
�� !
(
��" #
float
��# (
)
��( )
$num
��) -
;
��- .

alien_boss
�� 
.
�� 
	transform
�� $
.
��$ %
position
��% -
=
��. /
pos_boss
��0 8
;
��8 9
}
�� 
}
�� 	
buttonF
�� 
.
�� 
onClick
�� 
.
�� 
AddListener
�� #
(
��# $
exit
��$ (
)
��( )
;
��) *
}
�� 
public
�� 

void
�� 
offOver
�� 
(
�� 
)
�� 
{
�� 
Button
�� 
buttonC
�� 
=
�� 

GameObject
�� #
.
��# $
Find
��$ (
(
��( )
$str
��) 8
)
��8 9
.
��9 :
GetComponent
��: F
<
��F G
Button
��G M
>
��M N
(
��N O
)
��O P
;
��P Q
buttonC
�� 
.
�� 
	transform
�� 
.
�� 

localScale
�� $
=
��% &
new
��' *
Vector3
��+ 2
(
��2 3
$num
��3 4
,
��4 5
$num
��6 7
,
��7 8
$num
��9 :
)
��: ;
;
��; <
}
�� 
public
�� 

void
�� 
offUnder
�� 
(
�� 
)
�� 
{
�� 
Button
�� 
buttonD
�� 
=
�� 

GameObject
�� #
.
��# $
Find
��$ (
(
��( )
$str
��) 9
)
��9 :
.
��: ;
GetComponent
��; G
<
��G H
Button
��H N
>
��N O
(
��O P
)
��P Q
;
��Q R
buttonD
�� 
.
�� 
	transform
�� 
.
�� 

localScale
�� $
=
��% &
new
��' *
Vector3
��+ 2
(
��2 3
$num
��3 4
,
��4 5
$num
��6 7
,
��7 8
$num
��9 :
)
��: ;
;
��; <
}
�� 
public
�� 

void
�� 

offCredits
�� 
(
�� 
)
�� 
{
�� 
Button
�� 
buttonA
�� 
=
�� 

GameObject
�� #
.
��# $
Find
��$ (
(
��( )
$str
��) 5
)
��5 6
.
��6 7
GetComponent
��7 C
<
��C D
Button
��D J
>
��J K
(
��K L
)
��L M
;
��M N
Button
�� 
buttonB
�� 
=
�� 

GameObject
�� #
.
��# $
Find
��$ (
(
��( )
$str
��) 4
)
��4 5
.
��5 6
GetComponent
��6 B
<
��B C
Button
��C I
>
��I J
(
��J K
)
��K L
;
��L M
Button
�� 
buttonE
�� 
=
�� 

GameObject
�� #
.
��# $
Find
��$ (
(
��( )
$str
��) 1
)
��1 2
.
��2 3
GetComponent
��3 ?
<
��? @
Button
��@ F
>
��F G
(
��G H
)
��H I
;
��I J
Button
�� 
buttonF
�� 
=
�� 

GameObject
�� #
.
��# $
Find
��$ (
(
��( )
$str
��) 1
)
��1 2
.
��2 3
GetComponent
��3 ?
<
��? @
Button
��@ F
>
��F G
(
��G H
)
��H I
;
��I J
buttonA
�� 
.
�� 
	transform
�� 
.
�� 
position
�� "
=
��# $
new
��% (
Vector3
��) 0
(
��0 1
$num
��1 6
,
��6 7
$num
��8 9
,
��9 :
$num
��; <
)
��< =
;
��= >
buttonB
�� 
.
�� 
	transform
�� 
.
�� 

localScale
�� $
=
��% &
new
��' *
Vector3
��+ 2
(
��2 3
$num
��3 4
,
��4 5
$num
��6 7
,
��7 8
$num
��9 :
)
��: ;
;
��; <
buttonE
�� 
.
�� 
	transform
�� 
.
�� 
position
�� "
=
��# $
new
��% (
Vector3
��) 0
(
��0 1
$num
��1 6
,
��6 7
$num
��8 9
,
��9 :
$num
��; <
)
��< =
;
��= >
buttonF
�� 
.
�� 
	transform
�� 
.
�� 

localScale
�� $
=
��% &
new
��' *
Vector3
��+ 2
(
��2 3
$num
��3 4
,
��4 5
$num
��6 7
,
��7 8
$num
��9 :
)
��: ;
;
��; <
}
�� 
public
�� 

void
�� 
offControls
�� 
(
�� 
)
�� 
{
�� 
Button
�� 
buttonA
�� 
=
�� 

GameObject
�� #
.
��# $
Find
��$ (
(
��( )
$str
��) 5
)
��5 6
.
��6 7
GetComponent
��7 C
<
��C D
Button
��D J
>
��J K
(
��K L
)
��L M
;
��M N
Button
�� 
buttonB
�� 
=
�� 

GameObject
�� #
.
��# $
Find
��$ (
(
��( )
$str
��) 4
)
��4 5
.
��5 6
GetComponent
��6 B
<
��B C
Button
��C I
>
��I J
(
��J K
)
��K L
;
��L M
Button
�� 
buttonE
�� 
=
�� 

GameObject
�� #
.
��# $
Find
��$ (
(
��( )
$str
��) 1
)
��1 2
.
��2 3
GetComponent
��3 ?
<
��? @
Button
��@ F
>
��F G
(
��G H
)
��H I
;
��I J
Button
�� 
buttonF
�� 
=
�� 

GameObject
�� #
.
��# $
Find
��$ (
(
��( )
$str
��) 1
)
��1 2
.
��2 3
GetComponent
��3 ?
<
��? @
Button
��@ F
>
��F G
(
��G H
)
��H I
;
��I J
buttonB
�� 
.
�� 
	transform
�� 
.
�� 
position
�� "
=
��# $
new
��% (
Vector3
��) 0
(
��0 1
$num
��1 6
,
��6 7
$num
��8 9
,
��9 :
$num
��; <
)
��< =
;
��= >
buttonA
�� 
.
�� 
	transform
�� 
.
�� 

localScale
�� $
=
��% &
new
��' *
Vector3
��+ 2
(
��2 3
$num
��3 4
,
��4 5
$num
��6 7
,
��7 8
$num
��9 :
)
��: ;
;
��; <
buttonE
�� 
.
�� 
	transform
�� 
.
�� 
position
�� "
=
��# $
new
��% (
Vector3
��) 0
(
��0 1
$num
��1 6
,
��6 7
$num
��8 9
,
��9 :
$num
��; <
)
��< =
;
��= >
buttonF
�� 
.
�� 
	transform
�� 
.
�� 

localScale
�� $
=
��% &
new
��' *
Vector3
��+ 2
(
��2 3
$num
��3 4
,
��4 5
$num
��6 7
,
��7 8
$num
��9 :
)
��: ;
;
��; <
}
�� 
public
�� 

void
�� 
offPlay
�� 
(
�� 
)
�� 
{
�� 
Button
�� 
buttonA
�� 
=
�� 

GameObject
�� #
.
��# $
Find
��$ (
(
��( )
$str
��) 5
)
��5 6
.
��6 7
GetComponent
��7 C
<
��C D
Button
��D J
>
��J K
(
��K L
)
��L M
;
��M N
Button
�� 
buttonB
�� 
=
�� 

GameObject
�� #
.
��# $
Find
��$ (
(
��( )
$str
��) 4
)
��4 5
.
��5 6
GetComponent
��6 B
<
��B C
Button
��C I
>
��I J
(
��J K
)
��K L
;
��L M
Button
�� 
buttonE
�� 
=
�� 

GameObject
�� #
.
��# $
Find
��$ (
(
��( )
$str
��) 1
)
��1 2
.
��2 3
GetComponent
��3 ?
<
��? @
Button
��@ F
>
��F G
(
��G H
)
��H I
;
��I J
buttonA
�� 
.
�� 
	transform
�� 
.
�� 
position
�� "
=
��# $
new
��% (
Vector3
��) 0
(
��0 1
$num
��1 6
,
��6 7
$num
��8 9
,
��9 :
$num
��; <
)
��< =
;
��= >
buttonB
�� 
.
�� 
	transform
�� 
.
�� 
position
�� "
=
��# $
new
��% (
Vector3
��) 0
(
��0 1
$num
��1 6
,
��6 7
$num
��8 9
,
��9 :
$num
��; <
)
��< =
;
��= >
buttonE
�� 
.
�� 
	transform
�� 
.
�� 

localScale
�� $
=
��% &
new
��' *
Vector3
��+ 2
(
��2 3
$num
��3 4
,
��4 5
$num
��6 7
,
��7 8
$num
��9 :
)
��: ;
;
��; <
}
�� 
public
�� 

void
�� 
exit
�� 
(
�� 
)
�� 
{
�� 
Application
�� 
.
�� 
Quit
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}�� �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\menu_manager.cs
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
}'' �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\over13_variables.cs
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
},, �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\Pausa.cs
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
}11 �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\Pausa_minus13.cs
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
}-- �9
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\Player_movement_2D.cs
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
}99 �f
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\Player_movement_2DNew.cs
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
rotationAngle	<<y �
)
<<� �
;
<<� �
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
rotationAngle	BBz �
)
BB� �
;
BB� �
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
}|| �'
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\ShowFinalScore.cs
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
}88 �'
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\ShowFinalScore_under13.cs
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
};; �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\ShowRanking.cs
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
} �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\ShowRanking_under13.cs
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
} �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\under13_variables.cs
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
}// �
�D:\Uso\Clase\2_Segundo\Semestre_2\proceso_de_desarrollo_de_videojuegos\pdv_sprint_3\03_27_19_wip_sprint2_pdv\Assets\Scripts\wall_rotation.cs
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