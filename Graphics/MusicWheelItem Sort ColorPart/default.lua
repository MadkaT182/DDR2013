return Def.ActorFrame {
	Def.Banner{
		InitCommand=cmd(y,101;scaletoclipped,256,256);
		SetMessageCommand=function(self,params)
			local so = GAMESTATE:GetSortOrder();
			local label = params.Label;
			if so == "SortOrder_ModeMenu" then
				self:Load( THEME:GetPathG("MusicWheelItem","Sort ColorPart/SortBanner/"..label) );
			end;
		end;
	};
};