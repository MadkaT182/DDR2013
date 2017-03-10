local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	Def.Quad {
		InitCommand=cmd(FullScreen);
		OnCommand=cmd(diffuse,color("0,0,0,1"));
	};
	Def.ActorFrame {
		LoadActor("intro") .. {
			InitCommand=cmd(FullScreen);
			OnCommand=cmd(play);
		};
	};
};

return t;