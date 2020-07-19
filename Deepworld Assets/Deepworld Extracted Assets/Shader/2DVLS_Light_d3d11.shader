//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "2DVLS/Light" {
Properties {
_MainTex ("SelfIllum Color (RGB) Alpha (A)", 2D) = "white" { }
_Color ("Main Color", Color) = (1,1,1,0.2)
}
SubShader {
 Pass {
  ZWrite Off
  GpuProgramID 1042
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