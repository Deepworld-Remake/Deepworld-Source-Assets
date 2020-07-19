Shader "Grid" {
	Properties {
		_GridThickness ("Grid Thickness", Float) = 0.01
		_GridSpacingX ("Grid Spacing X", Float) = 1
		_GridSpacingY ("Grid Spacing Y", Float) = 1
		_GridOffsetX ("Grid Offset X", Float) = 0
		_GridOffsetY ("Grid Offset Y", Float) = 0
		_GridColour ("Grid Colour", Vector) = (0.5,1,1,1)
		_BaseColour ("Base Colour", Vector) = (0,0,0,0)
	}
	SubShader {
		Tags { "QUEUE" = "Transparent" }
		Pass {
			Tags { "QUEUE" = "Transparent" }
			Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
			ZWrite Off
			GpuProgramID 18819
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
					out vec4 vs_TEXCOORD0;
					vec4 u_xlat0;
					vec4 u_xlat1;
					void main()
					{
					    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
					    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
					    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
					    u_xlat1 = u_xlat0 + unity_ObjectToWorld[3];
					    vs_TEXCOORD0 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat0;
					    u_xlat0 = u_xlat1.yyyy * unity_MatrixVP[1];
					    u_xlat0 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat0;
					    u_xlat0 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat0;
					    gl_Position = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat0;
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
						float _GridThickness;
						float _GridSpacingX;
						float _GridSpacingY;
						float _GridOffsetX;
						float _GridOffsetY;
						vec4 _GridColour;
						vec4 _BaseColour;
					};
					in  vec4 vs_TEXCOORD0;
					layout(location = 0) out vec4 SV_Target0;
					float u_xlat0;
					bool u_xlatb0;
					vec2 u_xlat1;
					bool u_xlatb1;
					void main()
					{
					    u_xlat0 = vs_TEXCOORD0.x + _GridOffsetX;
					    u_xlat0 = u_xlat0 / _GridSpacingX;
					    u_xlat0 = fract(u_xlat0);
					    u_xlat1.xy = vec2(_GridThickness) / vec2(_GridSpacingX, _GridSpacingY);
					    u_xlatb0 = u_xlat0<u_xlat1.x;
					    u_xlat1.x = vs_TEXCOORD0.y + _GridOffsetY;
					    u_xlat1.x = u_xlat1.x / _GridSpacingY;
					    u_xlat1.x = fract(u_xlat1.x);
					    u_xlatb1 = u_xlat1.x<u_xlat1.y;
					    u_xlatb0 = u_xlatb1 || u_xlatb0;
					    if(u_xlatb0){
					        SV_Target0 = _GridColour;
					        return;
					    } else {
					        SV_Target0 = _BaseColour;
					        return;
					    //ENDIF
					    }
					    return;
					}"
				}
			}
		}
	}
}