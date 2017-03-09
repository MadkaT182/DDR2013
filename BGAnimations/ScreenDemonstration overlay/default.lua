local t = Def.ActorFrame {
	LoadActor("ScreenDemonstration header") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP;vertalign,top;zoom,0.9);
	};
};
return t;