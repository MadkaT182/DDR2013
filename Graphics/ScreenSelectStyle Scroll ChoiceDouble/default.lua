local t = Def.ActorFrame {};
------ reflect -----------
t[#t+1] = Def.ActorFrame {
    LoadActor("CharactDouble") .. {
	    InitCommand=cmd(diffusealpha,0;x,42;y,416;zoom,2;rotationz,180;rotationy,180;fadetop,0.5;croptop,0.5);		
		OnCommand=cmd(zoomy,0;sleep,0.6;linear,0.1;diffusealpha,0.1;zoomy,1.9;linear,0.1;zoomy,2;zoomx,2.2;linear,0.1;zoomx,2);
		OffCommand=cmd(smooth,0.3;zoom,0;diffusealpha,0;);
	};
};
----------## DANCE PAD FRAME ##----------
t[#t+1] = Def.ActorFrame {
    LoadActor("PadDouble") .. {
	    InitCommand=cmd(diffusealpha,0;x,0;y,166);
		OnCommand=cmd(sleep,0.5;linear,0.1;diffusealpha,1.0;zoom,2.33;linear,0.1;zoom,1.73;linear,0.2;zoom,2.33);
		OffCommand=cmd(smooth,0.3;zoom,0;diffusealpha,0;);
	};
	LoadActor("PadDouble") .. {
	    InitCommand=cmd(diffusealpha,0;x,0;y,166);
		OnCommand=cmd(blend,'BlendMode_Add';sleep,0.5;linear,0.1;diffusealpha,0;zoom,2.33;linear,0.1;zoom,1.73;linear,0.2;zoom,2.33);
		GainFocusCommand=cmd(stoptweening;zoom,2.31;playcommand,"Animate");
		AnimateCommand=cmd(linear,0.5;diffusealpha,0.5;linear,0.5;diffusealpha,0;queuecommand,"Animate");
		LoseFocusCommand=cmd(stoptweening;zoom,0);
		OffCommand=cmd(smooth,0.1;zoom,0;diffusealpha,0;);
	};
};
---------------------------------------------------------------------------------------------------------END
----------## double EXPLANATIONS FRAME ##----------
t[#t+1] = Def.ActorFrame {

-- IF ONLY 1 PLAYER ENABLE -----
    LoadActor("ExplDouble") .. {
        Condition=GAMESTATE:GetNumPlayersEnabled()==1;
		InitCommand=cmd(diffusealpha,0;x,276;y,-150;zoom,2.33);
	    OnCommand=cmd(linear,0.3;zoomy,2.33;diffusealpha,0);
		GainFocusCommand=cmd(stoptweening;zoomy,0;sleep,0.7;linear,0.2;zoomy,2.33;diffusealpha,1;queuecommand,"Play");
		LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomy,0;sleep,0;diffusealpha,0);
		OffCommand=cmd(linear,0.3;zoom,0;diffusealpha,0;);
		PlayCommand=function(self)
			if self:GetVisible() then
				SOUND:PlayAnnouncer( "select style comment double" )
			end;
		end;
	};
	-- IF 2 PLAYERS ENABLE -----
    LoadActor("ExplDouble") .. {
        Condition=GAMESTATE:GetNumPlayersEnabled()==2;
		InitCommand=cmd(diffusealpha,0;x,276;y,-150;zoom,2.33);
	    OnCommand=cmd(linear,0.3;zoomy,2.33;diffusealpha,0);
		GainFocusCommand=cmd(stoptweening;zoomy,0;sleep,0.7;linear,0.2;zoomy,2.33;diffusealpha,1;queuecommand,"Play");
		LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomy,0;sleep,0;diffusealpha,0);
		OffCommand=cmd(linear,0.3;zoom,0;diffusealpha,0;);
		PlayCommand=function(self)
			if self:GetVisible() then
				SOUND:PlayAnnouncer( "select style comment double" )
			end;
		end;
	};
};
---------------------------------------------------------------------------------------------------------END
--------## SIGLE SINGLE FRAME ##----------
t[#t+1] = Def.ActorFrame {
-- IF ONLY 1 PLAYER ENABLE -----
	LoadActor("SigleDouble") .. {
	    Condition=GAMESTATE:GetNumPlayersEnabled()==1;
	    InitCommand=cmd(diffusealpha,0;x,420;y,-305;zoom,2.33);
		OnCommand=cmd(linear,0.3;diffusealpha,1;zoomy,2.33;playcommand,"Animate");
		GainFocusCommand=cmd(stoptweening;linear,0.1;zoomy,0);
		LoseFocusCommand=cmd(stoptweening;linear,0.1;zoomy,2;diffusealpha,1;playcommand,"Animate");
		AnimateCommand=cmd(linear,0.1;rotationz,3;linear,0.1;rotationz,-3;linear,0.1;rotationz,3;linear,0.1;rotationz,-3;linear,0.1;rotationz,0;sleep,1;queuecommand,"Animate");
		OffCommand=cmd(stoptweening;smooth,0.3;zoom,0;diffusealpha,0;);
	};
	-- IF 2 PLAYERS ENABLE -----
	LoadActor("SigleDouble") .. {
	    Condition=GAMESTATE:GetNumPlayersEnabled()==2;
	    InitCommand=cmd(diffusealpha,0;x,420;y,-305;zoom,2.33);
		OnCommand=cmd(linear,0.3;diffusealpha,1;zoomy,2.33;playcommand,"Animate");
		GainFocusCommand=cmd(stoptweening;linear,0.1;zoomy,0);
		LoseFocusCommand=cmd(stoptweening;linear,0.1;zoomy,2;diffusealpha,1;playcommand,"Animate");
		AnimateCommand=cmd(linear,0.1;rotationz,3;linear,0.1;rotationz,-3;linear,0.1;rotationz,3;linear,0.1;rotationz,-3;linear,0.1;rotationz,0;sleep,1;queuecommand,"Animate");
		OffCommand=cmd(stoptweening;smooth,0.3;zoom,0;diffusealpha,0;);
	};
};
--------------------------------------------------------------------------------------------------------END
----------## CHARACTER FRAME ##----------
t[#t+1] = Def.ActorFrame {
    LoadActor("CharactDouble") .. {
	    InitCommand=cmd(diffusealpha,0;x,12;y,-104;zoom,2.66);
		OnCommand=cmd(zoomy,0;sleep,0.6;linear,0.1;diffusealpha,1;zoomy,2.26;linear,0.1;zoomy,2.33;zoomx,2.33;linear,0.1;zoomx,2.33);
		OffCommand=cmd(smooth,0.3;zoom,0;diffusealpha,0;);
	};
};

return t;