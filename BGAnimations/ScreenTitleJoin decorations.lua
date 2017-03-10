local t = Def.ActorFrame {};
t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+172;zoom,0.9;);
	-- Back
	LoadFont("Common Normal") .. {
		InitCommand=cmd(x,2;y,2;strokecolor,color("#000000");diffuse,color("#000000"));
		OnCommand=cmd(playcommand,"Refresh");
		CoinInsertedMessageCommand=cmd(playcommand,"Refresh");
		CoinModeChangedMessageCommand=cmd(playcommand,"Refresh");
		RefreshCommand=function(self)
			self:settext(THEME:GetString("ScreenTitleJoin","HelpTextJoin"));
		end;
	};
	-- Text 「コインを入れてください」
	LoadFont("Common Normal") .. {
		InitCommand=cmd(strokecolor,color("#000000");diffuseshift;effectcolor1,1,1,1,1;effectcolor2,0,0.9,0.14,1;effectperiod,1);
		OnCommand=cmd(playcommand,"Refresh");
		CoinInsertedMessageCommand=cmd(playcommand,"Refresh");
		CoinModeChangedMessageCommand=cmd(playcommand,"Refresh");
		RefreshCommand=function(self)
			self:settext(THEME:GetString("ScreenTitleJoin","HelpTextJoin"));
		end;
	};
};
return t