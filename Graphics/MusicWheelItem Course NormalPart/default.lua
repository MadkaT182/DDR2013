local t = Def.ActorFrame {};

--Jacket
t[#t+1] = Def.ActorFrame {
	--InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;draworder,1);
	InitCommand=cmd(x,0;y,101;);
	Def.Sprite {
		OnCommand=function (self)
			local course = GAMESTATE:GetCurrentCourse();
			if GAMESTATE:IsCourseMode() then
				if course:GetBackgroundPath() then
					self:Load(course:GetBackgroundPath())
					self:setsize(256,256);
				else
					self:Load(THEME:GetPathG("", "Common fallback jacket"));
					self:setsize(256,256);
				end;
			else
			local song = GAMESTATE:GetCurrentSong();
				if song then
					if song:HasJacket() then
						self:diffusealpha(1);
						self:LoadBackground(song:GetJacketPath());
						self:setsize(256,256);
					elseif song:HasBackground() then
						self:diffusealpha(1);
						self:LoadFromSongBackground(GAMESTATE:GetCurrentSong());
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

return t;