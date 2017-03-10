return Def.ActorFrame{

	--Background Colored
	LoadActor( "../_commonBG" )..{};
	-- SPONSOR GAMECENTER ETC ---------
	LoadActor( "sponsor" )..{
	    InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;),
		OnCommand=cmd(diffusealpha,1);
	};
	--LOGO---------------------------------------------------
	LoadActor( "DDR2013_logo" )..{
	    InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoom,2;),
		OnCommand=cmd(diffusealpha,0;sleep,0.25;linear,0.6;zoom,1;diffusealpha,1;sleep,1);
	};

	LoadActor( "DDR2013_logo" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;),
		OnCommand=cmd(diffusealpha,0;playcommand,"Animate");
		AnimateCommand=cmd(sleep,1.5;linear,0.5;zoom,1;blend,'BlendMode_Add';diffusealpha,0.8;decelerate,2.7;zoom,2;diffusealpha,0;sleep,10;queuecommand,"Animate");
	};
	LoadActor( "DDR2013_Blend" )..{
		InitCommand=cmd(zoom,1;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(blend,'BlendMode_Add';diffusealpha,0;sleep,2.6;playcommand,"Animate");
		AnimateCommand=cmd(zoom,1;diffusealpha,0;accelerate,0.8;zoom,1;diffusealpha,0.6;
		decelerate,0.8;zoom,1;diffusealpha,0;sleep,0.5;queuecommand,"Animate");
	};
	-- Soustitre
	LoadActor( "konami_copyright" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.916;linear,0.4);
	};
	-- eamusement titre --
    LoadActor( "eam2" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;playcommand,"Animate");
		AnimateCommand=cmd(sleep,1;diffusealpha,1;sleep,2;diffusealpha,0;queuecommand,"Animate");
	};
	LoadActor( "eam2" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;blend,'BlendMode_Add');
		OnCommand=cmd(diffusealpha,0;glowshift;effectperiod,0.6;playcommand,"Animate");
		AnimateCommand=cmd(sleep,1;diffusealpha,0.25;sleep,2;diffusealpha,0;queuecommand,"Animate");
	};
	LoadActor( "eam1a" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;),
		OnCommand=cmd(diffusealpha,0;playcommand,"Animate");
		AnimateCommand=cmd(sleep,1;diffusealpha,0;sleep,2;diffusealpha,1;queuecommand,"Animate");
	};
    LoadActor( "eam1a" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;blend,'BlendMode_Add');
		OnCommand=cmd(diffusealpha,0;glowshift;effectperiod,0.6;playcommand,"Animate");
		AnimateCommand=cmd(sleep,1;diffusealpha,0;sleep,2;diffusealpha,0.25;queuecommand,"Animate");
	};
	-- DOUBLE PREMIUM
	LoadActor("DOUBLE PREMIUM") .. {
		InitCommand=cmd(zoom,1.8;y,SCREEN_CENTER_Y-310;diffuseshift;effectcolor1,1,1,1,1;effectcolor2,0.9,0.9,0.9,1;effectperiod,0.33);
		OnCommand=function(self)
			if GAMESTATE:GetPremium() == "Premium_2PlayersFor1Credit" then
				self:x(SCREEN_RIGHT-130)
			elseif GAMESTATE:GetPremium() == "Premium_DoubleFor1Credit" then
				self:x(SCREEN_RIGHT-130)
			else
				self:visible(false)
			end
		end;
	};
	-- JOINT PREMIUM
	LoadActor("JOINT PREMIUM") .. {
		InitCommand=cmd(zoom,1.8;x,SCREEN_RIGHT-130;y,SCREEN_CENTER_Y-230;diffuseshift;effectcolor1,1,1,1,1;effectcolor2,0.9,0.9,0.9,1;effectperiod,0.33);
		Condition = GAMESTATE:GetPremium() == "Premium_2PlayersFor1Credit";
	};

};