#version 110

#define PROCESSING_COLOR_SHADER

uniform mat4 transform;

attribute vec4 vertex;
attribute vec4 color;

varying vec4 fragColor;

void main(void)
{
	gl_Position = transform * vertex;

	fragColor = color;
}
