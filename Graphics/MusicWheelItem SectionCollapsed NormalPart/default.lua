return Def.ActorFrame{
	LoadActor("Folder_m") .. {
	    InitCommand=cmd(zoomto,256,256;y,102);
		SetCommand=function(self,params)
			local so = GAMESTATE:GetSortOrder();
			if so == "SortOrder_Group" then
				self:visible(true);
			else
				self:visible(false);
			end;
		end;	
	};
	LoadActor("Folder_c") .. {
	InitCommand=cmd(zoomto,270,276;y,91);
		SetCommand=function(self,params)
			if params.HasFocus then
				self:visible(true);
				self:y(91);
			else
				self:visible(true);
			end;
		end,
	};
	LoadFont("Common Normal")..{
		InitCommand=cmd(y,-10;zoom,0.8;maxwidth,256);
		SetCommand=function(self,params)
			local so = GAMESTATE:GetSortOrder();
			if params.Text == "- EMPTY -" then
				self:settextf(THEME:GetString("MusicWheelItem","EmptyExplanationText"));
				self:diffuse(color("#f80a12"));
			elseif so == "SortOrder_Group" then
				self:settext(THEME:GetString("MusicWheelItem","FolderExplanationText"));
				self:diffuse(color("#ffffff"));
			else
				self:settext("");
			end;
		end;
	};
};