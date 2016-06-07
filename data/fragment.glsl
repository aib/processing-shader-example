#version 110

#define PROCESSING_COLOR_SHADER

varying vec4 fragColor;

void main(void)
{
	gl_FragColor = fragColor;
}
