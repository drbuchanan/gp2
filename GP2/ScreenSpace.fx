floatVS( float4 Pos : Position ):SV_Position
{
	return Pos;
}

float PS( float4 Pos : SV_POSITION) : SV_Target
{
	return float4 (1.0f, 1.0f, 0.0f, 1.0f); //Yellow, with Alpha = 1
}

technique10 Render
{
	pass P0
	{
		SetVertexShader(ComplieShader(vs_4_0_, VS()));
		SetGeometryShader(NULL);
		SetPixelShader(CompileShader(ps_4_0, PS()));
	}
}