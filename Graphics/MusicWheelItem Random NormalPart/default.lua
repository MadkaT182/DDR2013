return Def.ActorFrame {
	LoadActor("MusicWheelItem Random NormalPart") .. {
		InitCommand=cmd(scaletoclipped,256,256;y,102);
	};
	LoadFont("Common Normal")..{
		InitCommand=cmd(y,-10;zoom,0.8;maxwidth,256;diffuse,color("#4adaf3"));
		Text=THEME:GetString("MusicWheelItem","RandomExplanationText");
	};
	--[[
	LoadFont("_russellsquare Bold 24px")..{
		InitCommand=cmd(y,111;zoomy,0.74;zoomx,0.94;maxwidth,400;diffuse,color("#000000");strokecolor,color("#ffffff"));
		SetCommand=function(self,params)
			self:settext("RANDOM");
			if params.HasFocus then
				self:visible(true);
			else
				self:visible(false);
			end;
		end;
	};
	--]]
	--[[
	Def.Quad {
		SetCommand=function(self,params)
			local randomname;
			if params.HasFocus then
				randomname = "RANDOM";
			else
				randomname = "text";
			end;
			setenv("GetGroupName",randomname)
		end;
		CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
	};
	--]]
};