-- ジャッジラベル設定
function JudgmentTransformCommand( self, params )
	local x = 0
	local y = -76
	-- リバース時のY軸設定、センターが基本
	if params.bReverse then y = 67 end
	-- This makes no sense and wasn't even being used due to misspelling.
	-- if bCentered then y = y * 2 end
	self:x( x )
	self:y( y )
end

-- コンボ設定
function ComboTransformCommand( self, params )
	local x = 0
	local y = 38
	if params.bReverse then y = -23 end

	--[[
	if params.bCentered then
		if params.bReverse then
			y = y - 30
		else
			y = y + 40
		end
	end
	--]]
	self:x( x )
	self:y( y )
end

-- テキストバナーの文字設定
function TextBannerAfterSet(self,param) 
	local Title=self:GetChild("Title"); 
	local Subtitle=self:GetChild("Subtitle"); 
	local Artist=self:GetChild("Artist"); 
	if Subtitle:GetText() == "" then 
		(cmd(zoomy,0.65;zoomx,0.83;maxwidth,308;y,-6))(Title); 
		(cmd(visible,false))(Subtitle); 
		(cmd(zoomy,0.47;zoomx,0.59;maxwidth,434;y,9))(Artist); 
	else
		(cmd(zoomy,0.65;zoomx,0.83;maxwidth,308;y,-9))(Title);
		(cmd(visible,true;zoomy,0.45;zoomx,0.57;maxwidth,449;y,2.25))(Subtitle); 
		(cmd(zoomy,0.47;zoomx,0.59;maxwidth,434;y,12))(Artist); 
	end
end

-- Rave Evaluation Life 
function GetRaveScore(pss_1p,pss_2p)
	-- 1P
	local w1_1p = pss_1p:GetTapNoteScores('TapNoteScore_W1');
	local w2_1p = pss_1p:GetTapNoteScores('TapNoteScore_W2');
	local w3_1p = pss_1p:GetTapNoteScores('TapNoteScore_W3');
	local w4_1p = pss_1p:GetTapNoteScores('TapNoteScore_W4');
	local w5_1p = pss_1p:GetTapNoteScores('TapNoteScore_W5');
	local miss_1p = pss_1p:GetTapNoteScores('TapNoteScore_Miss');
	local ok_1p = pss_1p:GetHoldNoteScores('HoldNoteScore_Held');
	local ng_1p = pss_1p:GetHoldNoteScores('HoldNoteScore_LetGo');
	local Mine_1p = pss_1p:GetTapNoteScores('TapNoteScore_HitMine');
	local point_1p = (w1_1p*4 + w2_1p*4 + w3_1p*3 + w4_1p*2 + w5_1p - miss_1p + ok_1p*4 - ng_1p - Mine_1p);
	-- 2P
	local w1_2p = pss_2p:GetTapNoteScores('TapNoteScore_W1');
	local w2_2p = pss_2p:GetTapNoteScores('TapNoteScore_W2');
	local w3_2p = pss_2p:GetTapNoteScores('TapNoteScore_W3');
	local w4_2p = pss_2p:GetTapNoteScores('TapNoteScore_W4');
	local w5_2p = pss_2p:GetTapNoteScores('TapNoteScore_W5');
	local miss_2p = pss_2p:GetTapNoteScores('TapNoteScore_Miss');
	local ok_2p = pss_2p:GetHoldNoteScores('HoldNoteScore_Held');
	local ng_2p = pss_2p:GetHoldNoteScores('HoldNoteScore_LetGo');
	local Mine_2p = pss_2p:GetTapNoteScores('TapNoteScore_HitMine');
	local point_2p = (w1_2p*4 + w2_2p*4 + w3_2p*3 + w4_2p*2 + w5_2p - miss_2p + ok_2p*4 - ng_2p - Mine_2p);
	-- Score
	local last = (point_1p - point_2p);
	return last;
end;

-- AllowLateJoin change
function AllowLateJoin()
	if GAMESTATE:IsEventMode() then
		return false;
	else
		return false;
	end
end

--- PlayerOption change
function LineNames()
	if GAMESTATE:GetPlayMode() == "PlayMode_Oni" or GAMESTATE:GetPlayMode() == "PlayMode_Rave" then
		return "1,7,8,14,17,Combo,CalorieDisplay";
	elseif GAMESTATE:GetPlayMode() == "PlayMode_Nonstop" or GAMESTATE:GetPlayMode() == "PlayMode_Endless" then
		return "1,2,Appearance,4,5,6,7,8,9,11,14,17,Combo,CalorieDisplay";
	elseif PROFILEMAN:IsPersistentProfile(GAMESTATE:GetMasterPlayerNumber()) then
		return "1,2,Appearance,4,5,6,7,8,9,11,14,17,Combo,TargetScore,CalorieDisplay";
	else
		return "1,2,Appearance,4,5,6,7,8,9,11,14,17,Combo,TargetScoreNoProfile,CalorieDisplay";
	end
end

-- Endless Score move
-- metrics.ini [StepsDisplayP1SetNoReverseCommand]
function checkcal(Player)
	if GAMESTATE:GetPlayMode() == 'PlayMode_Endless' and CalorieDisplay(Player) == "on" then
		return 22
	else
		return 0
	end;
end

-- EndlessMode hide ShowGradeArea
-- metrics.ini [ScreenEvaluation]
function ShowGradeArea()
	if GAMESTATE:GetPlayMode() == "PlayMode_Endless" then
		return false;
	else
		return true;
	end
end

-- Load last difficulty
-- metrics.ini [ScreenSelectPlayMode]
function LastDifficulty()
	local diff;
	local mpn = GAMESTATE:GetMasterPlayerNumber();
	local lastdiff = GAMESTATE:GetPreferredDifficulty(mpn)
	if lastdiff == "Difficulty_Beginner" then
		diff = "beginner";
	elseif lastdiff == "Difficulty_Easy" then
		diff = "easy";
	elseif lastdiff == "Difficulty_Medium" then
		diff = "medium";
	elseif lastdiff == "Difficulty_Hard" then
		diff = "hard";
	elseif lastdiff == "Difficulty_Challenge" then
		diff = "challenge";
	else
		diff = "easy";
	end;
	return "applydefaultoptions;name,Normal;text,Normal;playmode,regular;difficulty,"..diff..";screen,ScreenSelectMusic;setenv,sMode,Normal";
end

-- CutIn check
function cutin(player)
	local ShowDancingCharacters = GetUserPrefB("FirstReMIX_ShowDancingCharacters");
	local character = GAMESTATE:GetCharacter(player):GetCharacterID();
	if not ShowDancingCharacters then
		return false;
	elseif character == "Afro" or character == "Lady" or character == "Emi" then
		return true;
	else
		return false;
	end;
end;
--------------------------------------------------------------------------------	
-- Change GroupName
function ChangeGroupName(title)
	if title == "DDR Oha Suta" then
		return (THEME:GetString("GroupName","Oha Suta"));
	elseif title == "DDR Full-Full Party" then
		return (THEME:GetString("GroupName","Full-Full Party"));
	elseif title == "DDR Oha Suta Random" then
		return (THEME:GetString("GroupName","Oha Suta").." Random");
	elseif title == "DDR Full-Full Party Random" then
		return (THEME:GetString("GroupName","Full-Full Party").." Random");
	else
		return title;
	end;
end;

-- (c) 2005 Chris Danford
-- All rights reserved.
-- 
-- Permission is hereby granted, free of charge, to any person obtaining a
-- copy of this software and associated documentation files (the
-- "Software"), to deal in the Software without restriction, including
-- without limitation the rights to use, copy, modify, merge, publish,
-- distribute, and/or sell copies of the Software, and to permit persons to
-- whom the Software is furnished to do so, provided that the above
-- copyright notice(s) and this permission notice appear in all copies of
-- the Software and that both the above copyright notice(s) and this
-- permission notice appear in supporting documentation.
-- 
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-- OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
-- MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF
-- THIRD PARTY RIGHTS. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR HOLDERS
-- INCLUDED IN THIS NOTICE BE LIABLE FOR ANY CLAIM, OR ANY SPECIAL INDIRECT
-- OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS
-- OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
-- OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
-- PERFORMANCE OF THIS SOFTWARE.