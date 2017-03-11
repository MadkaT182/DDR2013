return Def.ActorFrame{
	-- Cleared song --
    LoadActor("../ClearedSong") .. {
		StartTransitioningCommand=cmd(play);
	};
	LoadActor("../2013Door01")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-360;zoom,1.01);
		OnCommand=cmd(sleep,2;linear,0.25;y,SCREEN_CENTER_Y);
	};
	LoadActor("../2013Door02")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+360;zoom,1.01);
		OnCommand=cmd(sleep,2;linear,0.25;y,SCREEN_CENTER_Y);
	};

	-------coursemode
	LoadActor("../ClearedSong") .. {
	    Condition=GAMESTATE:IsCourseMode();
		StartTransitioningCommand=cmd(play);
	};
	LoadActor("../2013Door01")..{
	    Condition=GAMESTATE:IsCourseMode();
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-360;zoom,1.01);
		OnCommand=cmd(sleep,2;linear,0.25;addy,SCREEN_CENTER_Y;sleep,3;linear,0.25;addy,-SCREEN_CENTER_Y);
	};
	LoadActor("../2013Door02")..{
	    Condition=GAMESTATE:IsCourseMode();
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+360;zoom,1.01);
		OnCommand=cmd(sleep,2;linear,0.25;addy,-SCREEN_CENTER_Y;sleep,3;linear,0.25;addy,SCREEN_CENTER_Y);
	};

	--------CLEARED-----------

	--Cleared--
	LoadActor("Cleared") .. {
	InitCommand=function(self)
		local Song;
		if GAMESTATE:IsCourseMode() then
			song = GAMESTATE:GetCurrentCourse();
		else
			song = GAMESTATE:GetCurrentSong();
		end;
		self:x(SCREEN_CENTER_X);
		self:y(SCREEN_CENTER_Y);
			if song:GetDisplayFullTitle() == "Tohoku EVOLVED" then
				self:visible(false);
			else
				self:visible(true);
		end;
	end;
	};
--tohoku--
	LoadActor("Tohoku") .. {
	InitCommand=function(self)
	if not GAMESTATE:IsCourseMode() then
		local song = GAMESTATE:GetCurrentSong();
		self:x(SCREEN_CENTER_X);
		self:y(SCREEN_CENTER_Y);
			if song:GetDisplayFullTitle() == "Tohoku EVOLVED" then
				self:visible(true);
			else
				self:visible(false);
		end;
	else
		self:diffusealpha(0);
	end;
	end;
	};

};