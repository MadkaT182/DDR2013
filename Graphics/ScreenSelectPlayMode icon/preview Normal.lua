return Def.ActorFrame {
-- Load of Music play frame --
    LoadActor( "MusicPlay" )..{
	    InitCommand=cmd(;x,0;y,160;zoom,1.5);
		OnCommand=cmd(zoomy,0;sleep,0.5;linear,0.2;zoomy,1.5);
		OffCommand=cmd();
	};
	LoadActor( "BgFrame" )..{
		OnCommand=cmd(x,-6;y,-2;zoom,1.5);
		OffCommand=cmd();
	};

	LoadActor( "CharactFrame" )..{
		OnCommand=cmd(x,0;y,0;zoom,1.5);
		OffCommand=cmd();
	};

	LoadActor( "BgFrame" )..{
	    InitCommand=cmd(blend,'BlendMode_Add';diffusealpha,0;x,-6;y,-2;zoom,1.5);
		OnCommand=cmd(diffusealpha,0;sleep,1.2;playcommand,"Animate");
		AnimateCommand=cmd(diffusealpha,0;linear,1;diffusealpha,0.3;linear,1;diffusealpha,0;queuecommand,"Animate");
		GainFocusCommand=cmd(stoptweening;diffusealpha,1;playcommand,"Animate");
		LoseFocusCommand=cmd(stoptweening;diffusealpha,0);
		OffCommand=cmd();
	};
	LoadActor( "CharactFrame" )..{
		InitCommand=cmd(diffusealpha,0;x,0;y,0;zoom,1.5);
		OnCommand=cmd(diffusealpha,0;sleep,1.2;playcommand,"Animate");
		AnimateCommand=cmd(diffusealpha,1;linear,1;diffusealpha,1;linear,1;diffusealpha,1;queuecommand,"Animate");
		GainFocusCommand=cmd(stoptweening;diffusealpha,1;playcommand,"Animate");
		LoseFocusCommand=cmd(stoptweening;diffusealpha,0);
		OffCommand=cmd();
	};
    LoadActor( "MaxStage" )..{
	    InitCommand=cmd(x,124;y,130;zoom,1.5);
		OnCommand=cmd(zoomy,0;sleep,0.5;linear,0.2;zoomy,1.5);
		OffCommand=cmd();
	};
	LoadActor( "_selectarrow" )..{
	    InitCommand=cmd(x,SCREEN_WIDTH/4;y,172;zoomx,-1.0);
		OnCommand=cmd(zoomy,0;sleep,0.5;linear,0.2;zoomy,0.9;playcommand,"Animate");
		AnimateCommand=cmd(bob;effectmagnitude,10,0,0;effectperiod,0.7);
		GainFocusCommand=cmd(stoptweening;linear,0.2;zoomx,-0.9;zoomy,0.9;playcommand,"Animate");
		LoseFocusCommand=cmd(stoptweening;linear,0.1;zoom,0);
		OffCommand=cmd(diffusealpha,0);
	};
}