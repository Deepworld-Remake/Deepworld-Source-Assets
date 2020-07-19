// http://www.cocos2d-iphone.org


/*
attribute vec4 a_position;
attribute vec2 a_texCoord;
attribute vec4 a_color;
attribute vec2 a_maskCoord;

uniform		mat4 u_MVPMatrix;

varying vec4 v_fragmentColor;
varying vec2 v_texCoord;
varying vec2 v_maskCoord;

void main()
{
  gl_Position = u_MVPMatrix * a_position;
	v_fragmentColor = a_color;
	v_texCoord = a_texCoord;
  v_maskCoord = a_maskCoord;
}
*/



attribute vec4 a_position;
attribute vec2 a_texCoord;
attribute vec2 a_maskCoord;
attribute vec4 a_color;

#ifdef GL_ES
varying lowp vec4 v_fragmentColor;
varying mediump vec2 v_texCoord;
varying mediump vec2 v_maskCoord;
#else
varying vec4 v_fragmentColor;
varying vec2 v_texCoord;
varying vec2 v_maskCoord;
#endif

void main()
{
gl_Position = CC_MVPMatrix * a_position;
v_fragmentColor = a_color;
v_texCoord = a_texCoord;
v_maskCoord = a_maskCoord;
}