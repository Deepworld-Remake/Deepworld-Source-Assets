

#ifdef GL_ES
precision lowp float;
#endif

varying vec4 v_fragmentColor;
varying vec2 v_texCoord;
varying vec2 v_maskCoord;

uniform sampler2D u_texture;
uniform sampler2D u_mask;

void main()
{
  vec4 texColor = texture2D(u_texture, v_texCoord);
  vec4 maskColor = texture2D(u_mask, v_maskCoord);
  vec4 finalColor = vec4(texColor.r, texColor.g, texColor.b, maskColor.a * texColor.a);
  gl_FragColor = v_fragmentColor * finalColor;
//  gl_FragColor = vec4(texColor.r, texColor.g, texColor.b, texColor.a);
}




/*

#ifdef GL_ES
precision lowp float;
#endif

varying vec4 v_fragmentColor;
varying vec2 v_texCoord;
uniform sampler2D CC_Texture0;

void main()
{
gl_FragColor = v_fragmentColor * texture2D(CC_Texture0, v_texCoord);
}


*/
/*
#ifdef GL_ES
precision lowp float;
#endif

varying vec4 v_fragmentColor;
varying vec2 v_texCoord;
varying vec2 v_maskCoord;
uniform sampler2D CC_Texture0;
uniform sampler2D CC_Texture1;

void main()
{
//  	gl_FragColor = v_fragmentColor * texture2D(CC_Texture0, v_texCoord);
  vec4 texColor = texture2D(CC_Texture0, v_texCoord);
  vec4 maskColorzzz = texture2D(CC_Texture1, v_maskCoord);
//  vec4 finalColor = vec4(texColor.r, texColor.g, texColor.b, maskColor.a * texColor.a);
  gl_FragColor = v_fragmentColor * texColor;

}*/