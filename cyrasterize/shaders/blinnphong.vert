#version 330
#extension GL_ARB_explicit_attrib_location : require

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;

layout(location = 0) in vec4 point;
layout(location = 1) in vec2 tcoordIn;
layout(location = 2) in vec3 linearMappingCoordIn;
layout(location = 3) in vec3 normal;

smooth out vec2 tcoord;
smooth out vec3 linearMappingCoord;
smooth out vec3 normalInterp;
smooth out vec3 fragPos;

void main() {
    gl_Position = projectionMatrix * viewMatrix * modelMatrix * point;
    tcoord = tcoordIn;

    fragPos = (viewMatrix * modelMatrix * point).xyz;
    normalInterp = normal;
    linearMappingCoord = linearMappingCoordIn;
}
