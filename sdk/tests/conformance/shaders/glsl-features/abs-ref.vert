attribute vec4 aPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
varying vec4 vColor;

float abs_emu(float value) {
  return value >= 0.0 ? value : -value;
}

void main()
{
   gl_Position = aPosition;
   vTexcoord = aTexcoord;
   vColor = vec4(
     abs_emu(aTexcoord.x * 2.0 - 1.0), 
     abs_emu(aTexcoord.y * 2.0 - 1.0), 
     0,
     1);
}




