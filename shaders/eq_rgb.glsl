
//!DESC [eq_rgb]
//!HOOK MAINPRESUB
//!BIND HOOKED

#define Rp   -0.1106   // float <-1...1> plane R shift
#define Gp    0.0      // float <-1...1> plane G shift
#define Bp    0.0591   // float <-1...1> plane B shift

vec4 hook() {

	vec4 texcolor = HOOKED_tex(HOOKED_pos);
	float r = texcolor.r;
	float g = texcolor.g;
	float b = texcolor.b;
	r += Rp;
	g += Gp;
	b += Bp;
	vec3 rgb = vec3(r, g, b);

	return vec4(rgb, texcolor.a); 

}

