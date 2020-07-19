Shader "Hidden/ColorCorrectionCurves" {
	Properties {
		_MainTex ("Base (RGB)", 2D) = "" {}
		_RgbTex ("_RgbTex (RGB)", 2D) = "" {}
		_ZCurve ("_ZCurve (RGB)", 2D) = "" {}
		_RgbDepthTex ("_RgbDepthTex (RGB)", 2D) = "" {}
	}
	SubShader {
		Pass {
			ZTest Always
			ZWrite Off
			Cull Off
			GpuProgramID 59455
			Program "vp" {
				SubProgram "d3d11 " {
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[2];
						vec4 _CameraDepthTexture_ST;
						vec4 _MainTex_TexelSize;
						vec4 unused_0_3;
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
					vec4 u_xlat0;
					bool u_xlatb0;
					vec4 u_xlat1;
					vec2 u_xlat2;
					float u_xlat6;
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
					    u_xlatb0 = _MainTex_TexelSize.y<0.0;
					    u_xlat2.xy = in_TEXCOORD0.xy * _CameraDepthTexture_ST.xy + _CameraDepthTexture_ST.zw;
					    u_xlat6 = (-u_xlat2.y) + 1.0;
					    vs_TEXCOORD1.y = (u_xlatb0) ? u_xlat6 : u_xlat2.y;
					    vs_TEXCOORD1.x = u_xlat2.x;
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
						vec4 unused_0_0[4];
						float _Saturation;
					};
					layout(std140) uniform UnityPerCamera {
						vec4 unused_1_0[7];
						vec4 _ZBufferParams;
						vec4 unused_1_2;
					};
					uniform  sampler2D _MainTex;
					uniform  sampler2D _RgbTex;
					uniform  sampler2D _CameraDepthTexture;
					uniform  sampler2D _ZCurve;
					uniform  sampler2D _RgbDepthTex;
					in  vec2 vs_TEXCOORD0;
					in  vec2 vs_TEXCOORD1;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					vec3 u_xlat16_0;
					vec4 u_xlat10_0;
					vec2 u_xlat1;
					vec4 u_xlat10_1;
					vec3 u_xlat16_2;
					vec4 u_xlat10_2;
					vec4 u_xlat10_3;
					vec3 u_xlat16_4;
					vec4 u_xlat10_4;
					vec2 u_xlat11;
					float u_xlat15;
					float u_xlat16_15;
					void main()
					{
					    u_xlat0 = texture(_MainTex, vs_TEXCOORD0.xy).xzyw;
					    u_xlat1.x = u_xlat0.y;
					    u_xlat1.y = float(0.625);
					    u_xlat11.y = float(0.5);
					    u_xlat10_2 = texture(_RgbDepthTex, u_xlat1.xy);
					    u_xlat10_3 = texture(_RgbTex, u_xlat1.xy);
					    u_xlat16_2.xyz = u_xlat10_2.xyz * vec3(0.0, 0.0, 1.0);
					    SV_Target0.w = u_xlat0.w;
					    u_xlat0.y = float(0.125);
					    u_xlat0.w = float(0.375);
					    u_xlat10_4 = texture(_RgbDepthTex, u_xlat0.xy);
					    u_xlat16_2.xyz = u_xlat10_4.xyz * vec3(1.0, 0.0, 0.0) + u_xlat16_2.xyz;
					    u_xlat10_4 = texture(_RgbDepthTex, u_xlat0.zw);
					    u_xlat16_2.xyz = u_xlat10_4.xyz * vec3(0.0, 1.0, 0.0) + u_xlat16_2.xyz;
					    u_xlat10_4 = texture(_RgbTex, u_xlat0.zw);
					    u_xlat10_0 = texture(_RgbTex, u_xlat0.xy);
					    u_xlat16_4.xyz = u_xlat10_4.xyz * vec3(0.0, 1.0, 0.0);
					    u_xlat16_0.xyz = u_xlat10_0.xyz * vec3(1.0, 0.0, 0.0) + u_xlat16_4.xyz;
					    u_xlat16_0.xyz = u_xlat10_3.xyz * vec3(0.0, 0.0, 1.0) + u_xlat16_0.xyz;
					    u_xlat16_2.xyz = (-u_xlat16_0.xyz) + u_xlat16_2.xyz;
					    u_xlat10_3 = texture(_CameraDepthTexture, vs_TEXCOORD1.xy);
					    u_xlat15 = _ZBufferParams.x * u_xlat10_3.x + _ZBufferParams.y;
					    u_xlat11.x = float(1.0) / u_xlat15;
					    u_xlat10_1 = texture(_ZCurve, u_xlat11.xy);
					    u_xlat16_0.xyz = u_xlat10_1.xxx * u_xlat16_2.xyz + u_xlat16_0.xyz;
					    u_xlat16_15 = dot(u_xlat16_0.xyz, vec3(0.219999999, 0.707000017, 0.0710000023));
					    u_xlat16_0.xyz = (-vec3(u_xlat16_15)) + u_xlat16_0.xyz;
					    SV_Target0.xyz = vec3(_Saturation) * u_xlat16_0.xyz + vec3(u_xlat16_15);
					    return;
					}"
				}
			}
		}
	}
}