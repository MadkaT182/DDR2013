local t = Def.ActorFrame {};
---reflect ---
t[#t+1] = Def.ActorFrame {
    LoadActor("CharactSingle") .. {
	    InitCommand=cmd(diffusealpha,0;x,-42;y,500;zoomx,1.2;rotationz,180;rotationy,180;fadetop,0.5;croptop,0.5);		
		OffCommand=cmd(smooth,0.3;zoom,0;diffusealpha,0;);
		OnCommand=cmd(sleep,0.6;linear,0.1;diffusealpha,0.1;zoomy,1.8;linear,0.1;zoomy,2;zoomx,1.8;linear,0.1;zoomx,2.31);
	};
};
----------## DANCE PAD FRAME ##----------
t[#t+1] = Def.ActorFrame {
    LoadActor("PadSingle") .. {
	    InitCommand=cmd(diffusealpha,0;x,0;y,151);
		OnCommand=cmd(sleep,0.5;linear,0.1;diffusealpha,1.0;zoom,2;linear,0.1;zoom,1.3;linear,0.2;zoom,2.31);
		OffCommand=cmd(smooth,0.3;zoom,0;diffusealpha,0;);
	};
    LoadActor("PadSingle") .. {
	    Condition=GAMESTATE:GetNumPlayersEnabled()==1;
	    InitCommand=cmd(diffusealpha,0;x,0;y,151);
        OnCommand=cmd(blend,'BlendMode_Add';sleep,0.5;linear,0.1;diffusealpha,0;zoom,2;linear,0.1;zoom,1.3;linear,0.2;zoom,2.31;playcommand,"Animate");
		GainFocusCommand=cmd(zoom,2.31;playcommand,"Animate");
		AnimateCommand=cmd(linear,0.5;diffusealpha,0.5;linear,0.5;diffusealpha,0;queuecommand,"Animate");
		LoseFocusCommand=cmd(stoptweening;zoom,0);
		OffCommand=cmd(stoptweening;smooth,0.1;zoom,0;diffusealpha,0;);
	};
    LoadActor("PadSingle") .. {
	    Condition=GAMESTATE:GetNumPlayersEnabled()==2;
	    InitCommand=cmd(diffusealpha,0;x,0;y,151);
        OnCommand=cmd(blend,'BlendMode_Add';sleep,0.5;linear,0.1;diffusealpha,0;zoom,1.8;linear,0.1;zoom,1.3;linear,0.2;zoom,2.31);
		GainFocusCommand=cmd(zoom,2.31;playcommand,"Animate");
		AnimateCommand=cmd(linear,0.5;diffusealpha,0.5;linear,0.5;diffusealpha,0;queuecommand,"Animate");
		LoseFocusCommand=cmd(zoom,0);
		OffCommand=cmd(smooth,0.1;zoom,0;diffusealpha,0;);
	};
};
---------------------------------------------------------------------------------------------------------END
----------## SINGLE EXPLANATIONS FRAME ##----------
t[#t+1] = Def.ActorFrame {
-- IF ONLY 1 PLAYER ENABLE -----
	LoadActor("SinglepanelExpl") .. {
        Condition=GAMESTATE:GetNumPlayersEnabled()==1;
	    InitCommand=cmd(diffusealpha,0;x,140;y,-19;zoom,2.31);
		OnCommand=cmd(zoomy,0;sleep,0.7;linear,0.2;diffusealpha,0.5;zoomy,2.31;sleep,1;queuecommand,"Play");
		LoseFocusCommand=cmd(stoptweening;smooth,0.2;zoomy,0;sleep,0;diffusealpha,0);
		GainFocusCommand=cmd(stoptweening;sleep,0.7;linear,0.2;diffusealpha,0.5;zoomy,2.31;diffusealpha,1;queuecommand,"Play");
		OffCommand=cmd(smooth,0.3;zoom,0;diffusealpha,0;);
		PlayCommand=function(self)
			if self:GetVisible() then
				SOUND:PlayAnnouncer( "select style comment single" )
			end;
		end;
	};
	-- IF 2 PLAYERS ENABLE -----
    LoadActor("SinglepanelExpl") .. {
        Condition=GAMESTATE:GetNumPlayersEnabled()==2;
		InitCommand=cmd(diffusealpha,0;x,140;y,-19;zoom,2.31);
	    OnCommand=cmd(zoomy,0;sleep,1;queuecommand,"Play");
		LoseFocusCommand=cmd(stoptweening;smooth,0.2;zoomy,0;sleep,0;diffusealpha,0);
		GainFocusCommand=cmd(stoptweening;sleep,1;linear,0.2;diffusealpha,1.0;zoomy,2.31;diffusealpha,1;queuecommand,"Play");
		OffCommand=cmd(smooth,0.3;zoom,0;diffusealpha,0;);
		PlayCommand=function(self)
			if self:GetVisible() then
				SOUND:PlayAnnouncer( "select style comment single" )
			end;
		end;
	};
};
---------------------------------------------------------------------------------------------------------END
--------## SIGLE SINGLE FRAME ##----------
t[#t+1] = Def.ActorFrame {
-- IF ONLY 1 PLAYER ENABLE -----
	LoadActor("SigleSingle") .. {
	    Condition=GAMESTATE:GetNumPlayersEnabled()==1;
	    InitCommand=cmd(diffusealpha,0;x,180;y,-305;zoom,2.66);
		OnCommand=cmd(diffusealpha,0;linear,0.3;zoomy,2;playcommand,"Animate");
		GainFocusCommand=cmd(stoptweening;linear,0.1;zoomy,0);
		LoseFocusCommand=cmd(stoptweening;linear,0.1;zoomy,2;diffusealpha,1;playcommand,"Animate");
		AnimateCommand=cmd(linear,0.1;rotationz,3;linear,0.1;rotationz,-3;linear,0.1;rotationz,3;linear,0.1;rotationz,-3;linear,0.1;rotationz,0;sleep,1;queuecommand,"Animate");
		OffCommand=cmd(stoptweening;smooth,0.3;zoom,0;diffusealpha,0;);
	};
	-- IF 2 PLAYERS ENABLE -----
	LoadActor("SigleSingle") .. {
	    Condition=GAMESTATE:GetNumPlayersEnabled()==2;
	    InitCommand=cmd(diffusealpha,0;x,200;y,-305;zoom,2.31);
		OnCommand=cmd(diffusealpha,0;linear,0.3;diffusealpha,1;zoomy,2;playcommand,"Animate");
		GainFocusCommand=cmd(stoptweening;linear,0.1;zoomy,0);
		LoseFocusCommand=cmd(stoptweening;linear,0.1;zoomy,2;playcommand,"Animate");
		AnimateCommand=cmd(linear,0.1;rotationz,3;linear,0.1;rotationz,-3;linear,0.1;rotationz,3;linear,0.1;rotationz,-3;linear,0.1;rotationz,0;sleep,1;queuecommand,"Animate");
		OffCommand=cmd(stoptweening;smooth,0.3;zoom,0;diffusealpha,0;);
	};
};
--------------------------------------------------------------------------------------------------------END
----------## CHARACTER FRAME ##----------
t[#t+1] = Def.ActorFrame {
    LoadActor("CharactSingle") .. {
	    InitCommand=cmd(diffusealpha,0;x,-39;y,-71;zoomx,1.2);
		OffCommand=cmd(smooth,0.3;zoom,0;diffusealpha,0;);
		OnCommand=cmd(sleep,0.6;linear,0.1;diffusealpha,1;zoomy,1.8;linear,0.1;zoomy,2.31;zoomx,2;linear,0.1;zoomx,2.31);
	};
};
return t;