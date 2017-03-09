return Def.ActorFrame {
	Def.Banner{
		InitCommand=cmd(y,102;scaletoclipped,256,256);
	--	InitCommand=cmd(y,102);
		SetMessageCommand=function(self,params)
		--	local s = SortOrderToLocalizedString( GAMESTATE:GetSortOrder() );
			local so = GAMESTATE:GetSortOrder();
			local group = params.Text;
			if group == "" then
				self:Load( THEME:GetPathG("Common fallback","banner") );
			elseif group == "- EMPTY -" then
				self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/Error") );
			elseif so == "SortOrder_Title" then
				if group == "OTHER" then
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/ABC _OTHER") );
				else
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/ABC "..group) );
				end
			elseif so == "SortOrder_BPM" then
				if group == "000-019" or group == "1000-1019" or group == "020-039" or group == "1020-1039" or group == "040-059" or group == "1040-1059" or group == "060-079" or group == "1060-1079" or group == "080-099" or group == "1080-1099" or group == "100-119" or group == "1100-1119" or group == "120-139" or group == "1120-1139" or group == "140-159" or group == "1140-1159" or group == "160-179" or group == "1160-1179" or group == "180-199" or group == "1180-1199" or group == "200-219" or group == "1200-1219" or group == "220-239" or group == "1220-1239" or group == "240-259" or group == "1240-1259" or group == "260-279" or group == "1260-1279" or group == "280-299" or group == "1280-1299" or group == "300-319" or group == "1300-1319" or group == "320-339" or group == "1320-1339" or group == "340-359" or group == "1340-1359" or group == "360-379" or group == "1360-1379" or group == "380-399" or group == "1380-1399" or group == "400-419" or group == "1400-1419" or group == "420-439" or group == "1420-1439" or group == "440-459" or group == "1440-1459" or group == "460-479" or group == "1460-1479" or group == "480-499" or group == "1480-1499" or group == "500-519" or group == "1500-1519" or group == "520-539" or group == "1520-1539" or group == "540-559" or group == "1540-1559" or group == "560-579" or group == "1560-1579" or group == "580-599" or group == "1580-1599" or group == "600-619" or group == "1600-1619" or group == "620-639" or group == "1620-1639" or group == "640-659" or group == "1640-1659" or group == "660-679" or group == "1660-1679" or group == "680-699" or group == "1680-1699" or group == "700-719" or group == "1700-1719" or group == "720-739" or group == "1720-1739" or group == "740-759" or group == "1740-1759" or group == "760-779" or group == "1760-1779" or group == "780-799" or group == "1780-1799" or group == "800-819" or group == "1800-1819" or group == "820-839" or group == "1820-1839" or group == "840-859" or group == "1840-1859" or group == "860-879" or group == "1860-1879" or group == "880-899" or group == "1880-1899" or group == "900-919" or group == "1900-1919" or group == "920-939" or group == "1920-1939" or group == "940-959" or group == "1940-1959" or group == "960-979" or group == "1960-1979" or group == "980-999" or group == "1980-1999" then
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/BPM "..group) );
				else
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/BPM non") );
				end
			elseif so == "SortOrder_BeginnerMeter" or so == "SortOrder_EasyMeter" or so == "SortOrder_MediumMeter" or so == "SortOrder_HardMeter" or so == "SortOrder_ChallengeMeter" then
				if group == "?" then
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/Difficulty "..so.." NA") );
				else
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/Difficulty "..so.." "..group) );
				end
			elseif so == "SortOrder_Artist" then
				if group == "OTHER" then
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/Artist _OTHER") );
				else
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/Artist "..group) );
				end
			elseif so == "SortOrder_TopGrades" then
				if group == "???" then
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/DanceLevel Question") );
				else
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/DanceLevel "..group) );
				end
			elseif so == "SortOrder_Genre" then
				if group == "?" then
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/Genre Question") );
				elseif group == "pop'n music" then
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/Genre pop'n music") );
				elseif group == "beatmania" then
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/Genre beatmania5k") );
				elseif group == "beatmaniaIIDX" then
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/Genre beatmaniaIIDX") );
				elseif group == "beatmaniaIII" then
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/Genre beatmaniaIII") );
				elseif group == "GUITARFREAKS & drummania" then
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/Genre GUITARFREAKS & drummania") );
				elseif group == "ParaParaParadise" then
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/Genre ParaParaParadise") );
				elseif group == "KEYBOARDMANIA" then
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/Genre KEYBOARDMANIA") );
				elseif group == "MAMBO A GO GO" then
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/Genre MAMBO A GO GO") );
				elseif group == "Dance Maniax" then
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/Genre Dance Maniax") );
				elseif group == "jubeat" then
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/Genre jubeat") );
				elseif group == "REFLEC BEAT" then
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/Genre REFLEC BEAT") );
				else
					self:Load( THEME:GetPathG("MusicWheelItem","SectionCollapsed ColorPart/SortBanner/Genre non") );
				end;
			elseif group then
				-- Group banner
				self:LoadFromSongGroup(group);
				self:y(90);
			else
				-- call fallback
				self:Load(THEME:GetPathG("Common fallback","banner"));
			end;
		--	self:scaletoclipped(256,256);
			self:y(102);
		end;
	};

	-- Base from Default Extended by A.C
	Def.Quad {
		SetCommand=function(self,params)
			if params.HasFocus ~= true then return end;
			local so = GAMESTATE:GetSortOrder();
			local group = params.Text;
			local groupname;
			if group == "- EMPTY -" then
				groupname = ("EMPTY");
				setenv("GetGroupName",groupname)
			elseif so == "SortOrder_Title" and group == "0-9" or so == "SortOrder_Artist" and group == "0-9" then
				groupname = ("NUMBER");
				setenv("GetGroupName",groupname)
			elseif so == "SortOrder_BeginnerMeter" or so == "SortOrder_EasyMeter" or so == "SortOrder_MediumMeter" or so == "SortOrder_HardMeter" or so == "SortOrder_ChallengeMeter" then
				if group == "01" then
					groupname = ("DIFFICULTY1");
				elseif group == "02" then
					groupname = ("DIFFICULTY2");
				elseif group == "03" then
					groupname = ("DIFFICULTY3");
				elseif group == "04" then
					groupname = ("DIFFICULTY4");
				elseif group == "05" then
					groupname = ("DIFFICULTY5");
				elseif group == "06" then
					groupname = ("DIFFICULTY6");
				elseif group == "07" then
					groupname = ("DIFFICULTY7");
				elseif group == "08" then
					groupname = ("DIFFICULTY8");
				elseif group == "09" then
					groupname = ("DIFFICULTY9");
				else
					groupname = ("DIFFICULTY"..group);
				end;
				if groupname == "DIFFICULTY" then
					setenv("GetGroupName","RANDOM")
				else
					setenv("GetGroupName",groupname)
				end;
			elseif so == "SortOrder_BPM" then
				if group == "000-019" then
					groupname = ("0-19");
				elseif group == "020-039" then
					groupname = ("20-39");
				elseif group == "040-059" then
					groupname = ("40-59");
				elseif group == "060-079" then
					groupname = ("60-79");
				elseif group == "080-099" then
					groupname = ("80-99");
				else
					groupname = (group);
				end;
				setenv("GetGroupName",groupname)
			elseif so == "SortOrder_TopGrades" then
				if group == "???" then
					groupname = ("?");
				elseif group == "AAAA x 9" or group == " AAA x 9" then
					groupname = ("AAA x 9");
				elseif group == "AAAA x 8" or group == " AAA x 8" then
					groupname = ("AAA x 8");
				elseif group == "AAAA x 7" or group == " AAA x 7" then
					groupname = ("AAA x 7");
				elseif group == "AAAA x 6" or group == " AAA x 6" then
					groupname = ("AAA x 6");
				elseif group == "AAAA x 5" or group == " AAA x 5" then
					groupname = ("AAA x 5");
				elseif group == "AAAA x 4" or group == " AAA x 4" then
					groupname = ("AAA x 4");
				elseif group == "AAAA x 3" or group == " AAA x 3" then
					groupname = ("AAA x 3");
				elseif group == "AAAA x 2" or group == " AAA x 2" then
					groupname = ("AAA x 2");
				elseif group == "AAAA x 1" or group == " AAA x 1" then
					groupname = ("AAA x 1");
				else
					groupname = (params.Text);
				end;
				setenv("GetGroupName",groupname)
			elseif so == "SortOrder_ModeMenu" then
				groupname = params.Label;
				setenv("GetGroupName",groupname)
			else
				groupname = group;
				if groupname == "" then
					setenv("GetGroupName","RANDOM")
				else
					setenv("GetGroupName",groupname)
				end;
			end;
			--[[
			if groupname == "" or groupname == "DIFFICULTY" then
				setenv("GetGroupName","RANDOM")
			else
				setenv("GetGroupName",groupname)
			end;
			--]]
		end;
	};
	
	LoadFont("Common Normal")..{
		InitCommand=cmd(y,-10;zoom,0.8;maxwidth,256);
		SetCommand=function(self,params)
			local so = GAMESTATE:GetSortOrder();
			local group = params.Text;
			if group == "- EMPTY -" then
				self:settextf(THEME:GetString("MusicWheelItem","EmptyExplanationText"));
				self:diffuse(color("#f80a12"));
			elseif so == "SortOrder_Title" then
				self:settextf(THEME:GetString("MusicWheelItem","TitleExplanationText"));
				if group == "0-9" then
					self:diffuse(color("#ae02ff"));
				elseif group == "A" then
					self:diffuse(color("#e302ff"));
				elseif group == "B" then
					self:diffuse(color("#ff02dd"));
				elseif group == "C" then
					self:diffuse(color("#ff02a7"));
				elseif group == "D" then
					self:diffuse(color("#ff0271"));
				elseif group == "E" then
					self:diffuse(color("#ff0235"));
				elseif group == "F" then
					self:diffuse(color("#ff0502"));
				elseif group == "G" then
					self:diffuse(color("#ff3b02"));
				elseif group == "H" then
					self:diffuse(color("#ff7702"));
				elseif group == "I" then
					self:diffuse(color("#ffad02"));
				elseif group == "J" then
					self:diffuse(color("#ffe302"));
				elseif group == "K" then
					self:diffuse(color("#ddff02"));
				elseif group == "L" then
					self:diffuse(color("#a7ff02"));
				elseif group == "M" then
					self:diffuse(color("#71ff02"));
				elseif group == "N" then
					self:diffuse(color("#35ff02"));
				elseif group == "O" then
					self:diffuse(color("#02ff05"));
				elseif group == "P" then
					self:diffuse(color("#02ff3b"));
				elseif group == "Q" then
					self:diffuse(color("#02ff77"));
				elseif group == "R" then
					self:diffuse(color("#02ffad"));
				elseif group == "S" then
					self:diffuse(color("#02ffe3"));
				elseif group == "T" then
					self:diffuse(color("#02ddff"));
				elseif group == "U" then
					self:diffuse(color("#02a7ff"));
				elseif group == "V" then
					self:diffuse(color("#0271ff"));
				elseif group == "W" then
					self:diffuse(color("#0235ff"));
				elseif group == "X" then
					self:diffuse(color("#0502ff"));
				elseif group == "Y" then
					self:diffuse(color("#3b02ff"));
				elseif group == "Z" then
					self:diffuse(color("#7702ff"));
				elseif group == "OTHER" then
					self:diffuse(color("#9202ff"));
				end;
			elseif so == "SortOrder_BPM" then
				self:settextf(THEME:GetString("MusicWheelItem","BPMExplanationText"));
				if group == "000-019" or group == "1000-1019" then
					self:diffuse(color("#ffc702"));
				elseif group == "020-039" or group == "1020-1039" then
					self:diffuse(color("#ffe402"));
				elseif group == "040-059" or group == "1040-1059" then
					self:diffuse(color("#faff02"));
				elseif group == "060-079" or group == "1060-1079" then
					self:diffuse(color("#d8ff02"));
				elseif group == "080-099" or group == "1080-1099" then
					self:diffuse(color("#bcff02"));
				elseif group == "100-119" or group == "1100-1119" then
					self:diffuse(color("#9eff02"));
				elseif group == "120-139" or group == "1120-1139" then
					self:diffuse(color("#80ff02"));
				elseif group == "140-159" or group == "1140-1159" then
					self:diffuse(color("#63ff02"));
				elseif group == "160-179" or group == "1160-1179" then
					self:diffuse(color("#41ff02"));
				elseif group == "180-199" or group == "1180-1199" then
					self:diffuse(color("#25ff02"));
				elseif group == "200-219" or group == "1200-1219" then
					self:diffuse(color("#25ff02"));
				elseif group == "220-239" or group == "1220-1239" then
					self:diffuse(color("#02ff1b"));
				elseif group == "240-259" or group == "1240-1259" then
					self:diffuse(color("#02ff38"));
				elseif group == "260-279" or group == "1260-1279" then
					self:diffuse(color("#02ff5a"));
				elseif group == "280-299" or group == "1280-1299" then
					self:diffuse(color("#02ff77"));
				elseif group == "300-319" or group == "1300-1319" then
					self:diffuse(color("#02ff94"));
				elseif group == "320-339" or group == "1320-1339" then
					self:diffuse(color("#02ffb2"));
				elseif group == "340-359" or group == "1340-1359" then
					self:diffuse(color("#02ffd0"));
				elseif group == "360-379" or group == "1360-1379" then
					self:diffuse(color("#02fff1"));
				elseif group == "380-399" or group == "1380-1399" then
					self:diffuse(color("#02eeff"));
				elseif group == "400-419" or group == "1400-1419" then
					self:diffuse(color("#02d1ff"));
				elseif group == "420-439" or group == "1420-1439" then
					self:diffuse(color("#02b3ff"));
				elseif group == "440-459" or group == "1440-1459" then
					self:diffuse(color("#0295ff"));
				elseif group == "460-479" or group == "1460-1479" then
					self:diffuse(color("#0274ff"));
				elseif group == "480-499" or group == "1480-1499" then
					self:diffuse(color("#0257ff"));
				elseif group == "500-519" or group == "1500-1519" then
					self:diffuse(color("#0239ff"));
				elseif group == "520-539" or group == "1520-1539" then
					self:diffuse(color("#021cff"));
				elseif group == "540-559" or group == "1540-1559" then
					self:diffuse(color("#0602ff"));
				elseif group == "560-579" or group == "1560-1579" then
					self:diffuse(color("#2802ff"));
				elseif group == "580-599" or group == "1580-1599" then
					self:diffuse(color("#4402ff"));
				elseif group == "600-619" or group == "1600-1619" then
					self:diffuse(color("#6202ff"));
				elseif group == "620-639" or group == "1620-1639" then
					self:diffuse(color("#8002ff"));
				elseif group == "640-659" or group == "1640-1659" then
					self:diffuse(color("#9d02ff"));
				elseif group == "660-679" or group == "1660-1679" then
					self:diffuse(color("#bf02ff"));
				elseif group == "680-699" or group == "1680-1699" then
					self:diffuse(color("#db02ff"));
				elseif group == "700-719" or group == "1700-1719" then
					self:diffuse(color("#f902ff"));
				elseif group == "720-739" or group == "1720-1739" then
					self:diffuse(color("#ff02e5"));
				elseif group == "740-759" or group == "1740-1759" then
					self:diffuse(color("#ff02c8"));
				elseif group == "760-779" or group == "1760-1779" then
					self:diffuse(color("#ff02a6"));
				elseif group == "780-799" or group == "1780-1799" then
					self:diffuse(color("#ff0289"));
				elseif group == "800-819" or group == "1800-1819" then
					self:diffuse(color("#ff026c"));
				elseif group == "820-839" or group == "1820-1839" then
					self:diffuse(color("#ff024e"));
				elseif group == "840-859" or group == "1840-1859" then
					self:diffuse(color("#ff0230"));
				elseif group == "860-879" or group == "1860-1879" then
					self:diffuse(color("#ff020f"));
				elseif group == "880-899" or group == "1880-1899" then
					self:diffuse(color("#ff1202"));
				elseif group == "900-919" or group == "1900-1919" then
					self:diffuse(color("#ff2f02"));
				elseif group == "920-939" or group == "1920-1939" then
					self:diffuse(color("#ff4d02"));
				elseif group == "940-959" or group == "1940-1959" then
					self:diffuse(color("#ff6b02"));
				elseif group == "960-979" or group == "1960-1979" then
					self:diffuse(color("#ff8c02"));
				elseif group == "980-999" or group == "1980-1999" then
					self:diffuse(color("#ffa902"));
				else
					self:diffuse(color("#ffc702"));
				end;
			elseif so == "SortOrder_BeginnerMeter" then
				self:settextf(THEME:GetString("MusicWheelItem","DifficultyMeterExplanationText"));
				self:diffuse(color("#5fbee2"));
			elseif so == "SortOrder_EasyMeter" then
				self:settextf(THEME:GetString("MusicWheelItem","DifficultyMeterExplanationText"));
				self:diffuse(color("#ffff00"));
			elseif so == "SortOrder_MediumMeter" then
				self:settextf(THEME:GetString("MusicWheelItem","DifficultyMeterExplanationText"));
				self:diffuse(color("#f16c7c"));
			elseif so == "SortOrder_HardMeter" then
				self:settextf(THEME:GetString("MusicWheelItem","DifficultyMeterExplanationText"));
				self:diffuse(color("#00ff00"));
			elseif so == "SortOrder_ChallengeMeter" then
				self:settextf(THEME:GetString("MusicWheelItem","DifficultyMeterExplanationText"));
				self:diffuse(color("#cc66ff"));
			elseif so == "SortOrder_Artist" then
				self:settextf(THEME:GetString("MusicWheelItem","ArtistExplanationText"));
				if group == "0-9" then
					self:diffuse(color("#ff0268"));
				elseif group == "A" then
					self:diffuse(color("#ff0231"));
				elseif group == "B" then
					self:diffuse(color("#ff0a02"));
				elseif group == "C" then
					self:diffuse(color("#ff4002"));
				elseif group == "D" then
					self:diffuse(color("#ff7302"));
				elseif group == "E" then
					self:diffuse(color("#ffa902"));
				elseif group == "F" then
					self:diffuse(color("#ffdf02"));
				elseif group == "G" then
					self:diffuse(color("#e5ff02"));
				elseif group == "H" then
					self:diffuse(color("#afff02"));
				elseif group == "I" then
					self:diffuse(color("#79ff02"));
				elseif group == "J" then
					self:diffuse(color("#42ff02"));
				elseif group == "K" then
					self:diffuse(color("#10ff02"));
				elseif group == "L" then
					self:diffuse(color("#02ff2c"));
				elseif group == "M" then
					self:diffuse(color("#02ff62"));
				elseif group == "N" then
					self:diffuse(color("#02ff98"));
				elseif group == "O" then
					self:diffuse(color("#02ffcf"));
				elseif group == "P" then
					self:diffuse(color("#02f6ff"));
				elseif group == "Q" then
					self:diffuse(color("#02c0ff"));
				elseif group == "R" then
					self:diffuse(color("#028dff"));
				elseif group == "S" then
					self:diffuse(color("#0257ff"));
				elseif group == "T" then
					self:diffuse(color("#0221ff"));
				elseif group == "U" then
					self:diffuse(color("#1b02ff"));
				elseif group == "V" then
					self:diffuse(color("#5102ff"));
				elseif group == "W" then
					self:diffuse(color("#8702ff"));
				elseif group == "X" then
					self:diffuse(color("#be02ff"));
				elseif group == "Y" then
					self:diffuse(color("#f002ff"));
				elseif group == "Z" then
					self:diffuse(color("#ff02d5"));
				elseif group == "OTHER" then
					self:diffuse(color("#ff029e"));
				end;
			elseif so == "SortOrder_TopGrades" then
				self:settextf(THEME:GetString("MusicWheelItem","TopGradesExplanationText"));
				if group == "AAAA x 9" or group == "AAAA x 8" or group == "AAAA x 7" or group == "AAAA x 6" or group == "AAAA x 5" or group == "AAAA x 4" or group == "AAAA x 3" or group == "AAAA x 2" or group == "AAAA x 1" then
					self:diffuse(color("#ff5902"));
				elseif group == " AAA x 9" or group == " AAA x 8" or group == " AAA x 7" or group == " AAA x 6" or group == " AAA x 5" or group == " AAA x 4" or group == " AAA x 3" or group == " AAA x 2" or group == " AAA x 1" then
					self:diffuse(color("#fbff02"));
				elseif group == "  AA x 9" or group == "  AA x 8" or group == "  AA x 7" or group == "  AA x 6" or group == "  AA x 5" or group == "  AA x 4" or group == "  AA x 3" or group == "  AA x 2" or group == "  AA x 1" then
					self:diffuse(color("#53ff02"));
				elseif group == "   A x 9" or group == "   A x 8" or group == "   A x 7" or group == "   A x 6" or group == "   A x 5" or group == "   A x 4" or group == "   A x 3" or group == "   A x 2" or group == "   A x 1" then
					self:diffuse(color("#02ff59"));
				elseif group == "   B x 9" or group == "   B x 8" or group == "   B x 7" or group == "   B x 6" or group == "   B x 5" or group == "   B x 4" or group == "   B x 3" or group == "   B x 2" or group == "   B x 1" then
					self:diffuse(color("#02fbff"));
				elseif group == "   C x 9" or group == "   C x 8" or group == "   C x 7" or group == "   C x 6" or group == "   C x 5" or group == "   C x 4" or group == "   C x 3" or group == "   C x 2" or group == "   C x 1" then
					self:diffuse(color("#0253ff"));
				elseif group == "   D x 9" or group == "   D x 8" or group == "   D x 7" or group == "   D x 6" or group == "   D x 5" or group == "   D x 4" or group == "   D x 3" or group == "   D x 2" or group == "   D x 1" then
					self:diffuse(color("#5902ff"));
				elseif group == "   E x 9" or group == "   E x 8" or group == "   E x 7" or group == "   E x 6" or group == "   E x 5" or group == "   E x 4" or group == "   E x 3" or group == "   E x 2" or group == "   E x 1" then
					self:diffuse(color("#d608cf"));
				elseif group == "???" then
					self:diffuse(color("#ff0253"));
				else
					self:diffuse(color("#ffffff"));
				end;
			elseif so == "SortOrder_Genre" then
				if group == "pop'n music" or group == "beatmania" or group == "beatmaniaIIDX" or group == "beatmaniaIII" or group == "GUITARFREAKS & drummania" or group == "ParaParaParadise" or group == "KEYBOARDMANIA" or group == "MAMBO A GO GO" or group == "Dance Maniax" or group == "jubeat" or group == "REFLEC BEAT" then
					self:settextf(THEME:GetString("MusicWheelItem","FolderExplanationText"));
					self:diffuse(color("#ffffff"));
				else
					self:settextf(THEME:GetString("MusicWheelItem","GenreExplanationText"));
					self:diffuse(color("#02fffd"));
				end;
			else
				self:settextf("");
			end;
		end;
	};
	
	-- Center Big text
	LoadFont("_serpentinedbol 19px")..{
		InitCommand=cmd(y,80;zoom,4.05;maxwidth,50);
		SetCommand=function(self,params)
			local so = GAMESTATE:GetSortOrder();
			local group = params.Text;
			self:stoptweening();
			if so == "SortOrder_Genre" then
				if group == "pop'n music" or group == "beatmania" or group == "beatmaniaIIDX" or group == "beatmaniaIII" or group == "GUITARFREAKS & drummania" or group == "ParaParaParadise" or group == "KEYBOARDMANIA" or group == "MAMBO A GO GO" or group == "Dance Maniax" or group == "jubeat" or group == "REFLEC BEAT" or group == "?" or group == "- EMPTY -" then
					self:visible(false);
				else
					self:settext(group);
					self:visible(true);
				end;
			elseif so == "SortOrder_BPM" then
				if group == "000-019" or group == "1000-1019" or group == "020-039" or group == "1020-1039" or group == "040-059" or group == "1040-1059" or group == "060-079" or group == "1060-1079" or group == "080-099" or group == "1080-1099" or group == "100-119" or group == "1100-1119" or group == "120-139" or group == "1120-1139" or group == "140-159" or group == "1140-1159" or group == "160-179" or group == "1160-1179" or group == "180-199" or group == "1180-1199" or group == "200-219" or group == "1200-1219" or group == "220-239" or group == "1220-1239" or group == "240-259" or group == "1240-1259" or group == "260-279" or group == "1260-1279" or group == "280-299" or group == "1280-1299" or group == "300-319" or group == "1300-1319" or group == "320-339" or group == "1320-1339" or group == "340-359" or group == "1340-1359" or group == "360-379" or group == "1360-1379" or group == "380-399" or group == "1380-1399" or group == "400-419" or group == "1400-1419" or group == "420-439" or group == "1420-1439" or group == "440-459" or group == "1440-1459" or group == "460-479" or group == "1460-1479" or group == "480-499" or group == "1480-1499" or group == "500-519" or group == "1500-1519" or group == "520-539" or group == "1520-1539" or group == "540-559" or group == "1540-1559" or group == "560-579" or group == "1560-1579" or group == "580-599" or group == "1580-1599" or group == "600-619" or group == "1600-1619" or group == "620-639" or group == "1620-1639" or group == "640-659" or group == "1640-1659" or group == "660-679" or group == "1660-1679" or group == "680-699" or group == "1680-1699" or group == "700-719" or group == "1700-1719" or group == "720-739" or group == "1720-1739" or group == "740-759" or group == "1740-1759" or group == "760-779" or group == "1760-1779" or group == "780-799" or group == "1780-1799" or group == "800-819" or group == "1800-1819" or group == "820-839" or group == "1820-1839" or group == "840-859" or group == "1840-1859" or group == "860-879" or group == "1860-1879" or group == "880-899" or group == "1880-1899" or group == "900-919" or group == "1900-1919" or group == "920-939" or group == "1920-1939" or group == "940-959" or group == "1940-1959" or group == "960-979" or group == "1960-1979" or group == "980-999" or group == "1980-1999" or group == "- EMPTY -" then
					self:visible(false);
				else
					self:settext(group);
					self:visible(true);
				end
			else
				self:visible(false);
			end;
		end;
	};

};