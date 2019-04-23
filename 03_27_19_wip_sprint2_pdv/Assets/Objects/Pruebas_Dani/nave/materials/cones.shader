// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32916,y:32681,varname:node_3138,prsc:2|emission-7991-OUT,clip-1399-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32420,y:32710,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_TexCoord,id:8311,x:31791,y:32791,varname:node_8311,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Length,id:4409,x:31988,y:32791,varname:node_4409,prsc:2|IN-8311-V;n:type:ShaderForge.SFN_Time,id:5726,x:32051,y:32647,varname:node_5726,prsc:2;n:type:ShaderForge.SFN_Vector1,id:3499,x:31973,y:33031,varname:node_3499,prsc:2,v1:6.283185;n:type:ShaderForge.SFN_Multiply,id:8663,x:32352,y:33028,varname:node_8663,prsc:2|A-6569-OUT,B-3404-OUT;n:type:ShaderForge.SFN_Sin,id:1399,x:32513,y:33004,varname:node_1399,prsc:2|IN-8663-OUT;n:type:ShaderForge.SFN_Add,id:6569,x:32194,y:32981,varname:node_6569,prsc:2|A-5726-T,B-9548-OUT,C-3499-OUT;n:type:ShaderForge.SFN_Multiply,id:7991,x:32724,y:32822,varname:node_7991,prsc:2|A-7241-RGB,B-1399-OUT;n:type:ShaderForge.SFN_OneMinus,id:9548,x:32113,y:32830,varname:node_9548,prsc:2|IN-4409-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3404,x:32083,y:33243,ptovrint:False,ptlb:Stripes,ptin:_Stripes,varname:node_3404,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:20;proporder:7241-3404;pass:END;sub:END;*/

Shader "Shader Forge/cones" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _Stripes ("Stripes", Float ) = 20
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float _Stripes;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 node_5726 = _Time;
                float node_1399 = sin(((node_5726.g+(1.0 - length(i.uv0.g))+6.283185)*_Stripes));
                clip(node_1399 - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = (_Color.rgb*node_1399);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Stripes;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 node_5726 = _Time;
                float node_1399 = sin(((node_5726.g+(1.0 - length(i.uv0.g))+6.283185)*_Stripes));
                clip(node_1399 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
