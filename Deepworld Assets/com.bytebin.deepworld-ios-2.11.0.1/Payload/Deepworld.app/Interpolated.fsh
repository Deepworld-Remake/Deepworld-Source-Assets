#ifdef GL_ES
precision lowp float;
#endif

varying vec4 v_fragmentColor;
varying vec2 v_texCoord;
uniform sampler2D u_texture;

void main() {
  vec4 sum = vec4(0.0);
  
  vec2 blurSize = vec2(1.0/40.0);
  vec4 substract = vec4(0.0);
  
  /*sum += texture2D(u_texture, v_texCoord + vec2(-2.0, -2.0) * blurSize) * 0.06;
  sum += texture2D(u_texture, v_texCoord + vec2(2.0, -2.0) * blurSize) * 0.05;
  sum += texture2D(u_texture, v_texCoord + vec2(-2.0, 2.0) * blurSize) * 0.05;
  sum += texture2D(u_texture, v_texCoord + vec2(2.0, 2.0) * blurSize) * 0.06;
  
	sum += texture2D(u_texture, v_texCoord + vec2(-1.0, -1.0) * blurSize) * 0.09;
  sum += texture2D(u_texture, v_texCoord + vec2(1.0, -1.0) * blurSize) * 0.07;
  sum += texture2D(u_texture, v_texCoord + vec2(-1.0, 1.0) * blurSize) * 0.07;
  sum += texture2D(u_texture, v_texCoord + vec2(1.0, 1.0) * blurSize) * 0.09;*/

	sum += texture2D(u_texture, v_texCoord + vec2(-1.0, 0) * blurSize) * 0.20;
	sum += texture2D(u_texture, v_texCoord + vec2(0, -1.0) * blurSize) * 0.20;
  sum += texture2D(u_texture, v_texCoord + vec2(1.0, 0) * blurSize) * 0.20;
	sum += texture2D(u_texture, v_texCoord + vec2(0, 1.0) * blurSize) * 0.20;
  
  sum += texture2D(u_texture, v_texCoord) * 0.12;

	gl_FragColor = (sum - substract) * v_fragmentColor;
}
