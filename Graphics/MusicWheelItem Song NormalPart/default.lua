local t = Def.ActorFrame {};

--Jacket
t[#t+1] = Def.ActorFrame {
	--InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;draworder,1);
	InitCommand=cmd(x,0;y,101;);
	Def.Sprite {
		SetMessageCommand=function (self, params)
			local course = params.Course;
			if GAMESTATE:IsCourseMode() then
				if course:GetBackgroundPath() then
					self:Load(course:GetBackgroundPath())
					self:setsize(256,256);
				else
					self:Load(THEME:GetPathG("", "Common fallback jacket"));
					self:setsize(256,256);
				end;
			else
			local song = params.Song;
				if song then
					if song:HasJacket() then
						self:diffusealpha(1);
						self:LoadBackground(song:GetJacketPath());
						self:setsize(256,256);
					elseif song:HasBackground() then
						self:diffusealpha(1);
						self:LoadFromSongBackground(song);
						self:setsize(256,256);
					else
						self:Load(THEME:GetPathG("","Common fallback jacket"));
						self:setsize(256,256);
					end;
				else
					self:diffusealpha(0);
			end;
		end;
		end;
	};
};

-- BestScore List
local function GetProfileHighScores(pn)
	local profile = PROFILEMAN:GetProfile(pn);
	if GAMESTATE:IsCourseMode() then
		local course = GAMESTATE:GetCurrentCourse();
		local Trail = GAMESTATE:GetCurrentTrail(pn);
		scorelist = profile:GetHighScoreList(course,Trail);
	else
		local song = GAMESTATE:GetCurrentSong()
	--	local diff = GAMESTATE:GetCurrentSteps(pn):GetDifficulty()
		local diff = getenv("GetDifficulty"..ToEnumShortString(pn))
		local steps = song:GetOneSteps( st, diff );
		scorelist = profile:GetHighScoreList(song,steps);
	end;
--	assert(scorelist);
	return scorelist:GetHighScores();
end;

-- TopScore List
local function GetMachineHighScores(pn)
	local profile = PROFILEMAN:GetMachineProfile();
	if GAMESTATE:IsCourseMode() then
		local course = GAMESTATE:GetCurrentCourse();
		local Trail = GAMESTATE:GetCurrentTrail(pn);
		scorelist = profile:GetHighScoreList(course,Trail);
	else
		local song = GAMESTATE:GetCurrentSong()
		local diff = getenv("GetDifficulty"..ToEnumShortString(pn))
		local steps = song:GetOneSteps( st, diff );
		scorelist = profile:GetHighScoreList(song,steps);
	end;
	return scorelist:GetHighScores();
end;

-- Load BestScore List
local function GetProfileHighScores2(pn,params)
	local profile = PROFILEMAN:GetProfile(pn);
	if GAMESTATE:IsCourseMode() then
		local course = GAMESTATE:GetCurrentCourse();
		local Trail = GAMESTATE:GetCurrentTrail(pn);
		scorelist = profile:GetHighScoreList(course,Trail);
	else
		local song = params.Song;
		local diff = getenv("GetDifficulty"..ToEnumShortString(pn))
			if song:HasStepsTypeAndDifficulty(st,diff) then
				local steps = song:GetOneSteps( st, diff );
				scorelist = profile:GetHighScoreList(song,steps);
				assert(scorelist);
				return scorelist:GetHighScores();
			else
				return false;
			end;
	end;
--	assert(scorelist);
--	return scorelist:GetHighScores();
end;



--[[
-- FullCombo label side
for pn in ivalues(GAMESTATE:GetHumanPlayers()) do
	t[#t+1] = LoadActor(THEME:GetPathG("MusicWheelItem","grades/FullCombo")) .. {
		InitCommand=cmd(pause;zoom,0.9;setstate,5;y,-60);
		SetMessageCommand=function(self,params)
			if params.HasFocus then self:linear(0) self:diffusealpha(0) return end;
			self:diffusealpha(1)
			if pn == PLAYER_1 then
				self:x(-40);
			else
				self:x(40);
			end;
			local scores;
			if PROFILEMAN:IsPersistentProfile(pn) then
				scores = GetProfileHighScores2(pn,params);
			else
				scores = GetMachineHighScores2(pn,params);
			end;
		--	local scores = GetProfileHighScores2(pn,params);
			local topscore;
			local bestscore = 0;
			local list = 1;
			if scores[1] then
				if GAMESTATE:IsCourseMode() then
					topscore = scores[1];
					local misses = topscore:GetTapNoteScore("TapNoteScore_Miss")+topscore:GetTapNoteScore("TapNoteScore_CheckpointMiss")
					local boos = topscore:GetTapNoteScore("TapNoteScore_W5")
					local goods = topscore:GetTapNoteScore("TapNoteScore_W4")
					local greats = topscore:GetTapNoteScore("TapNoteScore_W3")
					local perfects = topscore:GetTapNoteScore("TapNoteScore_W2")
					if topscore:GetScore() > 0 and scores[1]:GetGrade() ~= "Grade_Tier08" then
						if (misses+boos) == 0 then
							if (goods+greats+perfects) == 0 then
								self:setstate(0);
							elseif (goods+greats) == 0 then
								self:setstate(1);
							elseif goods == 0 then
								self:setstate(2);
							else
								self:setstate(3);
							end;
						else
							self:setstate(4);
						end;
						if params.HasFocus then
							self:visible(false);
						else
							self:visible(true);
						end;
					else
						self:setstate(5);
					end;
				else
					local song = params.Song
				--	local diff = GAMESTATE:GetCurrentSteps(pn):GetDifficulty()
					-- setenv from BGAnimations\ScreenSelectMusic decorations
					local diff = getenv("GetDifficulty"..ToEnumShortString(pn))
					local steps = song:GetOneSteps( st, diff );
					for i = 1, #scores do
						if scores[i] then
							local bestscore2 = GetSN2Score(pn,steps,scores[i]);
							if bestscore2 > bestscore then
								bestscore = bestscore2;
								list = i;
							end;
						else
							break;
						end;
					end;
					topscore = scores[list];
					local misses = topscore:GetTapNoteScore("TapNoteScore_Miss")+topscore:GetTapNoteScore("TapNoteScore_CheckpointMiss")
					local boos = topscore:GetTapNoteScore("TapNoteScore_W5")
					local goods = topscore:GetTapNoteScore("TapNoteScore_W4")
					local greats = topscore:GetTapNoteScore("TapNoteScore_W3")
					local perfects = topscore:GetTapNoteScore("TapNoteScore_W2")
					if bestscore > 0 and topscore:GetGrade() ~= "Grade_Tier08" and topscore:GetGrade() ~= "Grade_Failed" and topscore:GetGrade() ~= "Grade_None" then
						if (misses+boos) == 0 then
							if (goods+greats+perfects) == 0 then
								self:setstate(0);
							elseif (goods+greats) == 0 then
								self:setstate(1);
							elseif goods == 0 then
								self:setstate(2);
							else
								self:setstate(3);
							end;
						else
							self:setstate(4);
						end;
					else
						self:setstate(5);
					end;
				end;
			else
				self:setstate(5);
			end;
		end;
	--	CurrentSongChangedMessageCommand=cmd(queuecommand,"SetMessage");
	--	CurrentStepsP1ChangedMessageCommand=cmd(queuecommand,"SetMessage");
	--	CurrentStepsP2ChangedMessageCommand=cmd(queuecommand,"SetMessage");
	--	CurrentTrailP1ChangedMessageCommand=cmd(queuecommand,"SetMessage");
	--	CurrentTrailP2ChangedMessageCommand=cmd(queuecommand,"SetMessage");
	--	SetGradeCommand=cmd(queuecommand,"SetMessage");
	};
end;
--]]

--[[
	t[#t+1] = LoadFont("_serpentinedbol 19px")..{
		InitCommand=cmd(pause;zoom,2.9;setstate,5;y,-10);
		SetMessageCommand=function(self,params)
			self:finishtweening();
			local pn = PLAYER_1
			if pn == PLAYER_1 then
				self:x(-40);
			else
				self:x(40);
			end;
			local scores = GetProfileHighScores2(pn,params);
		--	assert(scores);
			if scores ~= false then
				local song = params.Song
				local title = song:GetDisplayMainTitle()
				self:settext(title);
			else
				self:settext("5");
			end;
		end;
	};
--]]
return t;