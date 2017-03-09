-- Base from DDR 5th by AJ 187

return Def.ActorFrame {
	LoadActor("Text_Long")..{
	--	InitCommand=cmd(x,0;y,-102;zoom,1.11;draworder,1100);
		InitCommand=cmd(x,0;y,-91;zoom,1.11;draworder,1100);
		SetMessageCommand=function(self,param)
			if param.Song then
				self:visible(param.Song:IsLong())
				--[[if PROFILEMAN:IsSongNew(param.Song) then
					self:zoomx(0.92)
					self:x(-29)
				else
					self:zoomx(1.11)
					self:x(0)
				end--]]
			else
				self:visible(false)
			end;
		end;
	};
	LoadActor("Text_Marathon")..{
		InitCommand=cmd(x,0;y,-91;zoom,1.11;draworder,1100);
		SetMessageCommand=function(self,param)
			if param.Song then
				self:visible(param.Song:IsMarathon())
				--[[if PROFILEMAN:IsSongNew(param.Song) then
					self:zoomx(0.77)
					self:x(-29)
				else
					self:zoomx(1.11)
					self:x(0)
				end--]]
			else
				self:visible(false)
			end;
		end;
	};
	--[[
	LoadActor("NEW") .. {
		InitCommand=cmd(rainbow;effectperiod,1;playcommand,"Set";x,66;y,-91;finishtweening;draworder,106;zoom,1.111);
		-- diffuse,color("#fff90a");
		SetCommand=function(self,param)
			if param.Song then
				if PROFILEMAN:IsSongNew(param.Song) then
					self:visible(true);
				else
					self:visible(false);
				end
			else
				self:visible(false);
			end
		end;
	};
	--]]
};