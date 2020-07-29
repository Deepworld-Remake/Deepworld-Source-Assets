Shader "Hidden/ColorCorrectionCurvesSimple" {
	Properties {
		_MainTex ("Base (RGB)", 2D) = "" {}
		_RgbTex ("_RgbTex (RGB)", 2D) = "" {}
	}
	SubShader {
		Pass {
			ZTest Always
			ZWrite Off
			Cull Off
			GpuProgramID 29473
			Program "vp" {
				SubProgram "d3d11 " {
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					layout(std140) uniform UnityPerDraw {
						mat4x4 unity_ObjectToWorld;
						vec4 unused_0_1[6];
					};
					layout(std140) uniform UnityPerFrame {
						vec4 unused_1_0[17];
						mat4x4 unity_MatrixVP;
						vec4 unused_1_2[2];
					};
					in  vec4 in_POSITION0;
					in  vec2 in_TEXCOORD0;
					out vec2 vs_TEXCOORD0;
					vec4 u_xlat0;
					vec4 u_xlat1;
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
					    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
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
					
					layout(std140) uniform PGlobals {
						vec4 unused_0_0[2];
						float _Saturation;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _RgbTex;
					in  vec2 vs_TEXCOORD0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec3 u_xlat16_0;
					vec4 u_xlat10_0;
					vec4 u_xlat1;
					vec4 u_xlat10_1;
					vec3 u_xlat16_2;
					vec4 u_xlat10_2;
					float u_xlat16_9;
					void main()
					{
					    u_xlat0.y = float(0.125);
					    u_xlat0.w = float(0.375);
					    u_xlat1 = texture(_MainTex, vs_TEXCOORD0.xy).zxyw;
					    u_xlat0.xz = u_xlat1.yz;
					    u_xlat10_2 = texture(_RgbTex, u_xlat0.zw);
					    u_xlat10_0 = texture(_RgbTex, u_xlat0.xy);
					    u_xlat16_2.xyz = u_xlat10_2.xyz * vec3(0.0, 1.0, 0.0);
					    u_xlat16_0.xyz = u_xlat10_0.xyz * vec3(1.0, 0.0, 0.0) + u_xlat16_2.xyz;
					    SV_Target0.w = u_xlat1.w;
					    u_xlat1.y = 0.625;
					    u_xlat10_1 = texture(_RgbTex, u_xlat1.xy);
					    u_xlat16_0.xyz = u_xlat10_1.xyz * vec3(0.0, 0.0, 1.0) + u_xlat16_0.xyz;
					    u_xlat16_9 = dot(u_xlat16_0.xyz, vec3(0.219999999, 0.707000017, 0.0710000023));
					    u_xlat16_0.xyz = (-vec3(u_xlat16_9)) + u_xlat16_0.xyz;
					    SV_Target0.xyz = vec3(_Saturation) * u_xlat16_0.xyz + vec3(u_xlat16_9);
					    return;
					}"
				}
			}
		}
	}
}