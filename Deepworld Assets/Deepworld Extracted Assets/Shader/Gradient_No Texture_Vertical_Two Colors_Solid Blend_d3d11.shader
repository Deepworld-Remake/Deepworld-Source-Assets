//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Gradient/No Texture/Vertical/Two Colors/Solid Blend" {
Properties {
_Color ("First Color", Color) = (1,1,1,1)
_Color2 ("Second Color", Color) = (1,1,1,1)
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
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
}
}
}