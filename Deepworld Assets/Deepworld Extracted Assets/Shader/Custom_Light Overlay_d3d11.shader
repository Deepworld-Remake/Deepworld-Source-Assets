//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Custom/Light Overlay" {
Properties {
_MainTex ("Base (RGB) Trans. (Alpha)", 2D) = "white" { }
_Color ("Main Color", Color) = (1,1,1,0.2)
_GlowColor ("Glow Color", Color) = (1,1,1,0.2)
}
SubShader {
 Tags { "QUEUE" = "Overlay" }
 Pass {
  Tags { "QUEUE" = "Overlay" }
  ZWrite Off
  GpuProgramID 15991
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
 Pass {
  Tags { "QUEUE" = "Overlay" }
  ZWrite Off
  GpuProgramID 92603
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