return Def.ActorFrame {
	OnCommand=cmd(draworder,100);

	-- messages
	LoadActor("ScreenSelectStyle header") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X,y_SCREEN_TOP;vertalign,top);
	};
};