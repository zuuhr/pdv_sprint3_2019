// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32931,y:32765,varname:node_3138,prsc:2|emission-562-RGB;n:type:ShaderForge.SFN_Color,id:562,x:32005,y:32655,ptovrint:False,ptlb:Color_copy,ptin:_Color_copy,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Length,id:5047,x:31486,y:32761,varname:node_5047,prsc:2|IN-3567-Z;n:type:ShaderForge.SFN_Time,id:9050,x:31636,y:32592,varname:node_9050,prsc:2;n:type:ShaderForge.SFN_Vector1,id:7357,x:31558,y:32976,varname:node_7357,prsc:2,v1:6.283185;n:type:ShaderForge.SFN_Multiply,id:6801,x:31912,y:33080,varname:node_6801,prsc:2|A-7502-OUT,B-9827-OUT;n:type:ShaderForge.SFN_Sin,id:7917,x:32071,y:32871,varname:node_7917,prsc:2|IN-6801-OUT;n:type:ShaderForge.SFN_Add,id:7502,x:31779,y:32926,varname:node_7502,prsc:2|A-9050-T,B-7357-OUT,C-5047-OUT;n:type:ShaderForge.SFN_Multiply,id:3233,x:32362,y:32775,varname:node_3233,prsc:2|A-562-RGB,B-7917-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9827,x:31668,y:33188,ptovrint:False,ptlb:Stripes,ptin:_Stripes,varname:node_3404,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:20;n:type:ShaderForge.SFN_ConstantClamp,id:9797,x:32409,y:32997,varname:node_9797,prsc:2,min:0,max:1|IN-7917-OUT;n:type:ShaderForge.SFN_ViewVector,id:7009,x:31313,y:33079,varname:node_7009,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:3567,x:31258,y:32744,varname:node_3567,prsc:2;proporder:562-9827;pass:END;sub:END;*/

Shader "Shader Forge/cones_particles" {
    Properties {
        _Color_copy ("Color_copy", Color) = (0.07843138,0.3921569,0.7843137,1)
        _Stripes ("Stripes", Float ) = 20
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
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
            uniform float4 _Color_copy;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float3 emissive = _Color_copy.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
