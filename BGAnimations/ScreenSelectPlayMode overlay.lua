local t = Def.ActorFrame {}

local MenuState = {
	-- PlayerNumber_P1 = {
	-- 	EX = EXScore(PLAYER_1),
	-- },
	-- PlayerNumber_P2 = {
	-- 	EX = EXScore(PLAYER_2),
	-- },
};

for pn in ivalues(GAMESTATE:GetHumanPlayers()) do
	t[#t+1] = Def.ActorFrame {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-10);
	--	OffCommand=cmd(diffusealpha,0);
		CodeMessageCommand=function(self,params)
			if params.PlayerNumber ~= pn then return end
			if params.Name == 'Select' then
				local EXs = MenuState[params.PlayerNumber].EX
				if EXs == "On" then
					if PROFILEMAN:IsPersistentProfile(params.PlayerNumber) then
						local profileGUID = PROFILEMAN:GetProfile(params.PlayerNumber):GetGUID();
						WritePrefToFile("FirstReMIX_EXScore_"..profileGUID,"Off");
					else
						local pname = ToEnumShortString(params.PlayerNumber);
						WritePrefToFile("FirstReMIX_EXScore_"..pname,"Off");
					end;
					MenuState[params.PlayerNumber].EX = "Off"
				else
					if PROFILEMAN:IsPersistentProfile(params.PlayerNumber) then
						local profileGUID = PROFILEMAN:GetProfile(params.PlayerNumber):GetGUID();
						WritePrefToFile("FirstReMIX_EXScore_"..profileGUID,"On");
					else
						local pname = ToEnumShortString(params.PlayerNumber);
						WritePrefToFile("FirstReMIX_EXScore_"..pname,"On");
					end;
					MenuState[params.PlayerNumber].EX = "On"
				end;
				MESSAGEMAN:Broadcast("SelectButton", { Player = params.PlayerNumber, Input = params.Name, })
			end;
		end;
		-- LoadFont("Common Normal")..{
		-- 	InitCommand=cmd(zoom,0.55;diffuse,color("#00e5ff");strokecolor,color("#000000"));
		-- 	OnCommand=function(self)
		-- 		local EXs = MenuState[pn].EX
		-- 		if pn == PLAYER_1 then
		-- 			if GAMESTATE:GetCoinMode() == "CoinMode_Free" then
		-- 				self:x(WideScale(-215,-269));
		-- 			else
		-- 				self:x(WideScale(-183,-237));
		-- 			end;
		-- 			self:settext("1P USE EXSCORE");
		-- 		else
		-- 			if GAMESTATE:GetCoinMode() == "CoinMode_Free" then
		-- 				self:x(WideScale(215,269));
		-- 			else
		-- 				self:x(WideScale(183,237));
		-- 			end;
		-- 			self:settext("2P USE EXSCORE");
		-- 		end;
		-- 		if EXs == "On" then
		-- 			self:diffusealpha(1);
		-- 		else
		-- 			self:diffusealpha(0);
		-- 		end;
		-- 	end;
		-- 	SelectButtonMessageCommand=function(self,params)
		-- 		if params.Player ~= pn then return end
		-- 		local EXs = MenuState[params.Player].EX
		-- 		if EXs == "On" then
		-- 			self:diffusealpha(1);
		-- 		else
		-- 			self:diffusealpha(0);
		-- 		end;
		-- 	end;
		-- };
		LoadActor( THEME:GetPathS("", "_switch up") ) .. {
			SelectButtonMessageCommand=function(self,params)
				if params.Player ~= pn then return end
				self:play();
			end;
		};
	};
end;

return t;
