return Def.ActorFrame {
-- Load of Music play frame --
    LoadActor( "OniCoursePlay" )..{
	    InitCommand=cmd(;x,0;y,149;zoom,1.5);
		OnCommand=cmd(zoomy,0;sleep,0.5;linear,0.2;zoomy,1.5);
		OffCommand=cmd(diffusealpha,0);
	};
	LoadActor( "OniBgFrame" )..{
		OnCommand=cmd(x,-6;y,-2;zoom,1.5);
		OffCommand=cmd(diffusealpha,0);
	};
	LoadActor( "OniCharactFrame" )..{
		OnCommand=cmd(x,0;y,-10;zoom,1.5);
		OffCommand=cmd();
	};

	LoadActor( "OniBgFrame" )..{
	    InitCommand=cmd(blend,'BlendMode_Add';diffusealpha,0;x,0-6;y,-2;zoom,1.5);
		OnCommand=cmd(diffusealpha,0;sleep,1.2;playcommand,"Animate");
		AnimateCommand=cmd(diffusealpha,0;linear,1;diffusealpha,0.3;linear,1;diffusealpha,0;queuecommand,"Animate");
		OffCommand=cmd(diffusealpha,0);
	};
	LoadActor( "OniCharactFrame" )..{
		OnCommand=cmd(x,0;y,-10;zoom,1.5);
		OffCommand=cmd();
	};
    LoadActor( "_selectarrow" )..{
	    InitCommand=cmd(x,-SCREEN_WIDTH/4;y,172;zoomx,1);
		OnCommand=cmd(zoomy,0;sleep,0.5;linear,0.2;zoomy,0.9;playcommand,"Animate");
		AnimateCommand=cmd(bob;effectmagnitude,10,0,0;effectperiod,0.7);
		GainFocusCommand=cmd(stoptweening;linear,0.2;zoomx,0.9;zoomy,0.9;playcommand,"Animate");
		LoseFocusCommand=cmd(stoptweening;linear,0.1;zoom,0);
		OffCommand=cmd(diffusealpha,0);
	};
}