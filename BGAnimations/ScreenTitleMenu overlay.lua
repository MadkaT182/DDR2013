local t = Def.ActorFrame{};

InitUserPrefs();
setenv("GetUseLongMarathonStage",0);
setenv("TotalCourseStageP1",0);
setenv("TotalCourseStageP2",0);
setenv("TargetScoreBarP1",0);
setenv("TargetScoreBarP2",0);

setenv("RaveWinP1","0");
setenv("RaveWinP2","0");
setenv("RaveDraw","0");

if getenv("GroupNameChange") == nil then
	t[#t+1]=Def.Actor {
		InitCommand=function(self)
			local group = SONGMAN:GetSongGroupNames();
			local check;
			for i=1,#group do
				local groupname = SONGMAN:ShortenGroupName(group[i])
				if groupname == "DDR Oha Suta" or groupname == "DDR Full-Full Party" then
					check = true;
					break;
				else
					check = false;
				end;
			end;
			setenv("GroupNameChange",check);
		end;
	};
end;

return t