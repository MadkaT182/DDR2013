Branch_1st = {

	-- ScreenCompanyの分岐、dance以外を弾く
	Company = function()
		-- ダンスモード以外ではゲームセレクトへ強制移動させる
		if not IsGame("dance") then
			return "ScreenSelectGame2"
		else
			return "ScreenCompany"
		end
	end,
	
	-- タイトルメニューの分岐
	TitleMenu = function()
		-- ダンスモード以外ではゲームセレクトへ強制移動させる
		if not IsGame("dance") then
			return "ScreenSelectGame2"
		elseif GAMESTATE:GetCoinMode() == "CoinMode_Home" then
			return "ScreenTitleMenu"
		else
			return "ScreenTitleJoin"
		end
		-- arcade junk:
		--[[
		if GAMESTATE:GetCoinsNeededToJoin() > GAMESTATE:GetCoins() then
			-- if no credits are inserted, don't show the Join screen. SM4 has
			-- this as the initial screen, but that means we'd be stuck in a
			-- loop with ScreenInit. No good.
			return "ScreenTitleJoin"
		else
			return "ScreenTitleJoin"
		end
		--]]
	end,
	
	-- タイトルからゲームプレイを選択したときの分岐
	StartGame = function()
		-- ScreenStageInformation inにあるRaveのコンボ表示リロード対策、後で消す
		-- Raveでキャラを使ったときにキャラが出ないパターンをこれでとりあえず潰しておく
		WritePrefToFile("FirstReMIX_ShowDancingCharacters",true);
		THEME:ReloadMetrics();
		-- ソングフォルダに曲がないとき移動する
		if SONGMAN:GetNumSongs() == 0 and SONGMAN:GetNumAdditionalSongs() == 0 then
			return "ScreenHowToInstallSongs"
		-- プロフィールが1個以上あるとプロフィール選択画面へ移動
		elseif PROFILEMAN:GetNumLocalProfiles() >= 1 then
			return "ScreenSelectProfile"
		-- プロフィールがゼロだとプロフィールロードからスタイルセレクトへ移動
		else
			return "ScreenProfileLoad"
		end
	end,

	-- プロフィール後の警告画面の分岐
	Caution = function()
		-- 警告画面、オプションの設定に依存する。
		if PREFSMAN:GetPreference("ShowCaution") then
			return "ScreenCaution"
		else
			return "ScreenSelectStyle"
		end
	end,
	
	--[[
	-- Cautionからの分岐用、プロフィールが２個ある場合は選択画面へ、1個以下はプロフィールロードからスタイルセレクトへ from default
	Profile = function()
		if PROFILEMAN:GetNumLocalProfiles() >= 2 then
			return "ScreenSelectProfile"
		else
			return "ScreenProfileLoad"
		end
	end,
	--]]
	
	-- プレイヤーオプション、_fallbackよりスリム化
	PlayerOptions = function()
		if SCREENMAN:GetTopScreen():GetGoToOptions() then
			return "ScreenPlayerOptions"
		else
			return "ScreenStageInformation"
		end
	end,
	
	SongOptions = function()
		if GAMESTATE:GetPlayMode() == "PlayMode_Oni" or GAMESTATE:GetPlayMode() == "PlayMode_Rave" then
			return "ScreenStageInformation"
		elseif SCREENMAN:GetTopScreen():GetGoToOptions() then
			return "ScreenSongOptions"
		else
			return "ScreenStageInformation"
		end
	end,
	
	-- ゲームプレイ後の選別、手を加えた。バトル用に特設あり。
	AfterGameplay = function()
		if IsNetSMOnline() then
			return "ScreenNetEvaluation"
		elseif GAMESTATE:GetPlayMode() == 'PlayMode_Rave' then
			return "ScreenEvaluationRave"
		else
			return "ScreenEvaluationNormal"
		end
	end,
	
	-- Evaluation後の設定
	AfterProfileSave = function()
		if GAMESTATE:IsEventMode() then
			return SelectMusicOrCourse()
		elseif STATSMAN:GetCurStageStats():AllFailed() then
			return "ScreenGameOver"
		elseif GAMESTATE:IsCourseMode() then
			return Branch_1st.AfterSaveSummary()
		-- バトル用
		elseif GAMESTATE:GetSmallestNumStagesLeftForAnyHumanPlayer() == 0 and GAMESTATE:GetPlayMode() == 'PlayMode_Rave' then
			return "ScreenEvaluationSummaryRave"	
		elseif GAMESTATE:GetSmallestNumStagesLeftForAnyHumanPlayer() == 0 then
			return "ScreenEvaluationSummary"
		else
			return SelectMusicOrCourse()
		end
	end,
	
	-- EvaluationSummary2からセーブ後[ScreenProfileSaveSummary]
	AfterSaveSummary = function()
		if GAMESTATE:AnyPlayerHasRankingFeats() then
			return "ScreenGameOver"
--			return "ScreenNameEntry"
		else
		--	return "ScreenEnding1"
			return "ScreenGameOver"
		end
	end,
}