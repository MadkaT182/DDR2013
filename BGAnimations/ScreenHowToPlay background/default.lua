return Def.ActorFrame{
    LoadActor("bg") .. {
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
	OnCommand=cmd(playcommand,"Animate");
	AnimateCommand=cmd(rotationz,0;linear,60;rotationz,360;queuecommand,"Animate");
};
    LoadActor( "Effectbg_ddr2013.png" )..{
    InitCommand=cmd(zoom,1;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0.5);
	OnCommand=cmd(spin;effectmagnitude,0,0,10);
	};
	LoadActor( "Effectbg_ddr2013.png" )..{
		InitCommand=cmd(blend,'BlendMode_Add';zoom,0.9;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,1);
		--SPIN;effectmagnitude,x,y,z
		OnCommand=cmd(spin;effectmagnitude,0,0,15);
		
	
	};
	LoadActor( "Effectbg_ddr2013.png" )..{
		InitCommand=cmd(rotationz,90;zoom,1.3;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0.5);
		OnCommand=cmd(spin;effectmagnitude,0,0,-5);
	
	};
};