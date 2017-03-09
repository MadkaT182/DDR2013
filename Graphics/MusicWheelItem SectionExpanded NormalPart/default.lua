local t = Def.ActorFrame{
	LoadActor(THEME:GetPathG("MusicWheelItem","SectionCollapsed NormalPart/Folder_m")) .. {
		InitCommand=cmd(y,102;playcommand,"Set");
		SetCommand=function(self,params)
			local so = GAMESTATE:GetSortOrder();
			if so == "SortOrder_Group" then
				self:visible(true);
			else
				self:visible(false);
			end;
		end;	
	};	
	LoadActor(THEME:GetPathG("MusicWheelItem","SectionCollapsed NormalPart/Folder_c")) .. {
	InitCommand=cmd(y,91);
	};
	LoadFont("Common Normal")..{
		InitCommand=cmd(y,-10;zoom,0.8;maxwidth,256);
		SetCommand=function(self,params)
			local so = GAMESTATE:GetSortOrder();
			if so == "SortOrder_Group" then
				self:settextf(THEME:GetString("MusicWheelItem","FolderExplanationText"));
			else
				self:settext("");
			end;
		end;
	};
};
return t;