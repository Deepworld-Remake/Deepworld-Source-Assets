Shader "Gradient/No Texture/Vertical/Two Colors/Solid Blend" {
	Properties {
		_Color ("First Color", Vector) = (1,1,1,1)
		_Color2 ("Second Color", Vector) = (1,1,1,1)
		_UVXOffset ("UV X Offset", Float) = 0
		_UVYOffset ("UV Y Offset", Float) = 0
		_UVScale ("UV Scale", Float) = 1
		_Angle ("Angle", Float) = 0
	}
	SubShader {
		Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
		Pass {
			Tags { "QUEUE" = "Geometry" "RenderType" = "Opaque" }
			Cull Off
			GpuProgramID 15340
			Program "vp" {
				SubProgram "d3d11 " {
					"vs_4_0
					
					#version 330
					#extension GL_ARB_explicit_attrib_location : require
					#extension GL_ARB_explicit_uniform_location : require
					
					layout(std140) uniform VGlobals {
						vec4 unused_0_0[4];
						float _UVXOffset;
						float _UVYOffset;
						float _UVScale;
						float _Angle;
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
					vec4 u_xlat0;
					vec4 u_xlat1;
					float u_xlat2;
					vec3 u_xlat3;
					float u_xlat8;
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
					    u_xlat0.xy = in_TEXCOORD0.xy + vec2(_UVXOffset, _UVYOffset);
					    u_xlat0.xy = u_xlat0.xy * vec2(vec2(_UVScale, _UVScale));
					    u_xlat8 = _Angle * -0.0174532905;
					    u_xlat1.x = sin(u_xlat8);
					    u_xlat2 = cos(u_xlat8);
					    u_xlat3.x = sin((-u_xlat8));
					    u_xlat3.z = u_xlat1.x;
					    u_xlat3.y = u_xlat2;
					    vs_TEXCOORD0.x = dot(u_xlat0.xy, u_xlat3.yz);
					    vs_TEXCOORD0.y = dot(u_xlat0.xy, u_xlat3.xy);
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
						vec4 _Color;
						vec4 _Color2;
						vec4 unused_0_3;
					};
					in  vec2 vs_TEXCOORD0;
					layout(location = 0) out vec4 SV_Target0;
					vec4 u_xlat0;
					void main()
					{
					    u_xlat0 = (-_Color) + _Color2;
					    SV_Target0 = abs(vs_TEXCOORD0.yyyy) * u_xlat0 + _Color;
					    return;
					}"
				}
			}
		}
	}
}