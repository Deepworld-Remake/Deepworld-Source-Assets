//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Hidden/Internal-GUITexture" {
Properties {
_MainTex ("Texture", any) = "" { }
}
SubShader {
 Tags { "ForceSupported" = "true" "RenderType" = "Overlay" }
 Pass {
  Tags { "ForceSupported" = "true" "RenderType" = "Overlay" }
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 21121
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
SubShader {
 Tags { "ForceSupported" = "true" "RenderType" = "Overlay" }
 Pass {
  Tags { "ForceSupported" = "true" "RenderType" = "Overlay" }
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 93076
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