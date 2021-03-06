// [config]
// expect_result: pass
// glsl_version: 1.50
// check_link: false
// [end config]
//
// ARB_gpu_shader5 spec says:
//   "If an invocation count is declared, all such declarations must
//    specify the same count."
//
// Tests for multiple declarations of layout qualifier 'invocations'.
//

#version 150
#extension GL_ARB_gpu_shader5 : enable

layout(points, invocations=4) in;
layout(invocations=4) in;
layout(triangle_strip, max_vertices=3) out;

void main()
{
}
