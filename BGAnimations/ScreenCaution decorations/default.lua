return Def.ActorFrame {
	LoadActor( "caution" )..{
		OnCommand=cmd(zoomx,1.1;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
	};
}