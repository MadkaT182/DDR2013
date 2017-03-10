return Def.ActorFrame{
	--Background Colored 1p vs2p ------------------------------------------
	LoadActor( "bg(stretch)" )..{
		InitCommand=cmd(zoom,1;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(playcommand,"Animate");
		AnimateCommand=cmd(rotationz,0;linear,60;rotationz,360;queuecommand,"Animate");

	};
	-- BACKGROUND ROTATION EFFECTS ---------------------------------------------------
	LoadActor( "BackgroundEffect_ddr2013" )..{
		InitCommand=cmd(zoom,0.9;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(spin;effectmagnitude,0,0,10);
	};
	LoadActor( "BackgroundEffect_ddr2013" )..{
		InitCommand=cmd(blend,'BlendMode_Add';zoom,1;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,1);
		OnCommand=cmd(spin;effectmagnitude,0,0,15);
	};
	LoadActor( "BackgroundEffect_ddr2013" )..{
		InitCommand=cmd(rotationz,90;zoom,1.3;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0.5);
		OnCommand=cmd(spin;effectmagnitude,0,0,-5);
	};
};