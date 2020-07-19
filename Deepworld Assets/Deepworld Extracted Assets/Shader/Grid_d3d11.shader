//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Grid" {
Properties {
_GridThickness ("Grid Thickness", Float) = 0.01
_GridSpacingX ("Grid Spacing X", Float) = 1
_GridSpacingY ("Grid Spacing Y", Float) = 1
_GridOffsetX ("Grid Offset X", Float) = 0
_GridOffsetY ("Grid Offset Y", Float) = 0
_GridColour ("Grid Colour", Color) = (0.5,1,1,1)
_BaseColour ("Base Colour", Color) = (0,0,0,0)
}
SubShader {
 Tags { "QUEUE" = "Transparent" }
 Pass {
  Tags { "QUEUE" = "Transparent" }
  ZWrite Off
  GpuProgramID 18819
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