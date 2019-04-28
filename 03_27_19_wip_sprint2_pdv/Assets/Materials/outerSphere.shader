// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33950,y:32791,varname:node_3138,prsc:2|emission-1590-OUT,alpha-3020-OUT,clip-4627-R;n:type:ShaderForge.SFN_Color,id:7241,x:32349,y:32588,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_TexCoord,id:8158,x:31992,y:33058,varname:node_8158,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:4627,x:33009,y:33202,ptovrint:False,ptlb:node_4627,ptin:_node_4627,varname:node_4627,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a1d4057243695be419bf25839f184f00,ntxv:0,isnm:False|UVIN-3547-OUT;n:type:ShaderForge.SFN_Length,id:2471,x:32545,y:32833,varname:node_2471,prsc:2|IN-623-OUT;n:type:ShaderForge.SFN_RemapRange,id:623,x:32342,y:32891,varname:node_623,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-8158-UVOUT;n:type:ShaderForge.SFN_Time,id:8319,x:32470,y:32702,varname:node_8319,prsc:2;n:type:ShaderForge.SFN_Multiply,id:683,x:32757,y:32833,varname:node_683,prsc:2|A-8319-T,B-2471-OUT,C-2753-OUT;n:type:ShaderForge.SFN_Vector1,id:2753,x:32648,y:32650,varname:node_2753,prsc:2,v1:6.283;n:type:ShaderForge.SFN_Append,id:8296,x:32613,y:33134,varname:node_8296,prsc:2|A-2926-OUT,B-8158-V;n:type:ShaderForge.SFN_Multiply,id:2926,x:32342,y:33071,varname:node_2926,prsc:2|A-8158-U,B-8297-OUT;n:type:ShaderForge.SFN_Vector1,id:8297,x:32167,y:33414,varname:node_8297,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:3547,x:32817,y:33246,varname:node_3547,prsc:2|A-8296-OUT,B-977-OUT;n:type:ShaderForge.SFN_Vector1,id:977,x:32550,y:33419,varname:node_977,prsc:2,v1:8;n:type:ShaderForge.SFN_Sin,id:1582,x:32904,y:32879,varname:node_1582,prsc:2|IN-8319-T;n:type:ShaderForge.SFN_Multiply,id:1590,x:33319,y:32999,varname:node_1590,prsc:2|A-2956-OUT,B-4627-R,C-4827-RGB;n:type:ShaderForge.SFN_Color,id:4827,x:33034,y:33039,ptovrint:False,ptlb:node_4827,ptin:_node_4827,varname:node_4827,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6585084,c2:0.9245283,c3:0.8962765,c4:1;n:type:ShaderForge.SFN_Vector1,id:503,x:33003,y:32758,varname:node_503,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Abs,id:2956,x:33074,y:32879,varname:node_2956,prsc:2|IN-1582-OUT;n:type:ShaderForge.SFN_Multiply,id:3020,x:33241,y:32842,varname:node_3020,prsc:2|A-2956-OUT,B-503-OUT;n:type:ShaderForge.SFN_Tex2d,id:1558,x:32264,y:33555,ptovrint:False,ptlb:node_1558,ptin:_node_1558,varname:node_1558,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;proporder:7241-4627-4827;pass:END;sub:END;*/

Shader "Shader Forge/outerSphere" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _node_4627 ("node_4627", 2D) = "white" {}
        _node_4827 ("node_4827", Color) = (0.6585084,0.9245283,0.8962765,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x 
            #pragma target 3.0
            uniform sampler2D _node_4627; uniform float4 _node_4627_ST;
            uniform float4 _node_4827;
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
                float2 node_3547 = (float2((i.uv0.r*2.0),i.uv0.g)*8.0);
                float4 _node_4627_var = tex2D(_node_4627,TRANSFORM_TEX(node_3547, _node_4627));
                clip(_node_4627_var.r - 0.5);
////// Lighting:
////// Emissive:
                float4 node_8319 = _Time;
                float node_2956 = abs(sin(node_8319.g));
                float3 emissive = (node_2956*_node_4627_var.r*_node_4827.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,(node_2956*0.2));
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
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x 
            #pragma target 3.0
            uniform sampler2D _node_4627; uniform float4 _node_4627_ST;
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
                float2 node_3547 = (float2((i.uv0.r*2.0),i.uv0.g)*8.0);
                float4 _node_4627_var = tex2D(_node_4627,TRANSFORM_TEX(node_3547, _node_4627));
                clip(_node_4627_var.r - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
