local t = Def.ActorFrame {
	-- Black
	Def.Quad {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffuse,color("#000000ff");scaletocover,SCREEN_LEFT,SCREEN_TOP,SCREEN_RIGHT,SCREEN_BOTTOM);
		OnCommand=cmd(linear,0.25;diffuse,color("#00000000"));
	};
};

return t;