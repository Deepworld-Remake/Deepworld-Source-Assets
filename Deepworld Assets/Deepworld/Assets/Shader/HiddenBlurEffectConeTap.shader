Shader "Hidden/BlurEffectConeTap" {
	Properties {
		_MainTex ("", any) = "" {}
	}
	SubShader {
		Pass {
			ZTest Always
			ZWrite Off
			Cull Off
			GpuProgramID 31707
			Program "vp" {
				SubProgram "d3d11 " {
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						vec4 _MainTex_TexelSize;
						vec4 _BlurOffsets;
					};
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_1_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_2_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_2_2[2];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					out vec2 vs_TEXCOORD1;
					out vec2 vs_TEXCOORD2;
					out vec2 vs_TEXCOORD3;
					out vec2 vs_TEXCOORD4;
					vec4 u_xlat0;
					vec4 u_xlat1;
					vec2 u_xlat4;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
					    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
					    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
					    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
					    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
					    u_xlat0.xy = (-_BlurOffsets.xy) * _MainTex_TexelSize.xy + in_TEXCOORD0.xy;
					    vs_TEXCOORD0.xy = u_xlat0.xy;
					    vs_TEXCOORD1.xy = in_TEXCOORD0.xy;
					    vs_TEXCOORD2.xy = (-_BlurOffsets.xy) * _MainTex_TexelSize.xy + u_xlat0.xy;
					    u_xlat4.xy = _MainTex_TexelSize.xy * _BlurOffsets.xy;
					    vs_TEXCOORD3.xy = u_xlat4.xy * vec2(1.0, -1.0) + u_xlat0.xy;
					    vs_TEXCOORD4.xy = (-u_xlat4.xy) * vec2(1.0, -1.0) + u_xlat0.xy;
					    return;
					}"
				}
			}
			Program "fp" {
				SubProgram "d3d11 " {
					"ps_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					uniform  sampler2D _MainTex;
					in  vec2 vs_TEXCOORD1;
					in  vec2 vs_TEXCOORD2;
					in  vec2 vs_TEXCOORD3;
					in  vec2 vs_TEXCOORD4;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat16_0;
					vec4 u_xlat10_0;
					vec4 u_xlat10_1;
					void main()
					{
					    u_xlat10_0 = texture(_MainTex, vs_TEXCOORD1.xy);
					    u_xlat10_1 = texture(_MainTex, vs_TEXCOORD2.xy);
					    u_xlat16_0 = u_xlat10_0 + u_xlat10_1;
					    u_xlat10_1 = texture(_MainTex, vs_TEXCOORD3.xy);
					    u_xlat16_0 = u_xlat16_0 + u_xlat10_1;
					    u_xlat10_1 = texture(_MainTex, vs_TEXCOORD4.xy);
					    u_xlat16_0 = u_xlat16_0 + u_xlat10_1;
					    SV_Target0 = u_xlat16_0 * vec4(0.25, 0.25, 0.25, 0.25);
					    return;
					}"
				}
			}
		}
	}
}