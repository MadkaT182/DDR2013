return Def.ActorFrame {

	-- ■左側
	Def.ActorFrame {
		OnCommand=cmd(draworder,100;x,WideScale(SCREEN_CENTER_X-175,SCREEN_CENTER_X-240);y,SCREEN_CENTER_Y);
		
		-- 最初の上矢印
		LoadActor("hand_red") .. {
			InitCommand=cmd(x,70;y,-77;zoom,0.6);
			OnCommand=cmd(addy,55;diffusealpha,0;sleep,7;diffusealpha,1;linear,0.25;addy,-55;sleep,3.5;linear,0.25;addy,55;diffusealpha,1;linear,0;diffusealpha,0);
		};
		Def.Sprite {
			InitCommand=cmd(x,30;y,101);
			BeginCommand=function(self)
				if THEME:GetCurLanguage() == "ja" then
					self:Load(THEME:GetPathB("ScreenHowToPlay","decorations/info_jp_01"));
				else
					self:Load(THEME:GetPathB("ScreenHowToPlay","decorations/info_en_01"));
				end;
			end;
			OnCommand=cmd(diffusealpha,0;sleep,7.25;linear,0;diffusealpha,1;zoomy,0;linear,0.25;zoomy,1;sleep,3.5;linear,0;diffusealpha,0);
		};	

		-- 2段目同時踏み
		LoadActor("hand_green_double") .. {
			InitCommand=cmd(x,20;y,-81;zoom,0.6);
			OnCommand=cmd(addy,55;diffusealpha,0;sleep,14.75;diffusealpha,1;linear,0.25;addy,-55;sleep,3.5;linear,0.25;addy,55;diffusealpha,1;linear,0;diffusealpha,0);
		};
		Def.Sprite {
			InitCommand=cmd(x,30;y,101);
			BeginCommand=function(self)
				if THEME:GetCurLanguage() == "ja" then
					self:Load(THEME:GetPathB("ScreenHowToPlay","decorations/info_jp_02"));
				else
					self:Load(THEME:GetPathB("ScreenHowToPlay","decorations/info_en_02"));
				end;
			end;
			OnCommand=cmd(diffusealpha,0;sleep,15;linear,0;diffusealpha,1;zoomy,0;linear,0.25;zoomy,1;sleep,3.5;linear,0;diffusealpha,0);
		};			
		
		-- 3段目 フリーズアロー
		LoadActor("hand_red") .. {		
			InitCommand=cmd(x,70;y,-77;zoom,0.6);
			OnCommand=cmd(diffusealpha,0;sleep,21.5;diffusealpha,1;bounce;effectperiod,0.5;sleep,5.25;diffusealpha,1;linear,0;diffusealpha,0);
		};
		Def.Sprite {
			InitCommand=cmd(x,30;y,101);
			BeginCommand=function(self)
				if THEME:GetCurLanguage() == "ja" then
					self:Load(THEME:GetPathB("ScreenHowToPlay","decorations/info_jp_03"));
				else
					self:Load(THEME:GetPathB("ScreenHowToPlay","decorations/info_en_03"));
				end;
			end;
			OnCommand=cmd(diffusealpha,0;sleep,21.75;linear,0;diffusealpha,1;zoomy,0;linear,0.25;zoomy,1;sleep,4.75;linear,0;diffusealpha,0);
		};	
		LoadActor("ok") .. {
			InitCommand=cmd(x,32;y,-97);
			OnCommand=cmd(diffusealpha,0;sleep,26.75;linear,0;diffusealpha,1;zoom,1.06;linear,0.3;zoomx,0.85;zoomy,0.85;sleep,0.5;linear,0.1;zoomy,0.42;zoomx,1.7;diffusealpha,0);
		};	
	
		-- 4段目 フリーズアローダブル
		LoadActor("hand_green_double") .. {
			InitCommand=cmd(x,20;y,-81;zoom,0.6);
			OnCommand=cmd(diffusealpha,0;sleep,29;diffusealpha,1;bounce;effectperiod,0.5;sleep,5.25;diffusealpha,1;linear,0;diffusealpha,0);
		};
		Def.Sprite {
			InitCommand=cmd(x,30;y,101);
			BeginCommand=function(self)
				if THEME:GetCurLanguage() == "ja" then
					self:Load(THEME:GetPathB("ScreenHowToPlay","decorations/info_jp_04"));
				else
					self:Load(THEME:GetPathB("ScreenHowToPlay","decorations/info_en_04"));
				end;
			end;
			OnCommand=cmd(diffusealpha,0;sleep,29.25;linear,0;diffusealpha,1;zoomy,0;linear,0.25;zoomy,1;sleep,4.75;linear,0;diffusealpha,0);
		};	
		LoadActor("ok") .. {
			InitCommand=cmd(x,96;y,-97);
			OnCommand=cmd(diffusealpha,0;sleep,34.25;linear,0;diffusealpha,1;zoom,1.06;linear,0.3;zoomx,0.85;zoomy,0.85;sleep,0.5;linear,0.1;zoomy,0.42;zoomx,1.7;diffusealpha,0);
		};	
		LoadActor("ok") .. {
			InitCommand=cmd(x,-96;y,-97);
			OnCommand=cmd(diffusealpha,0;sleep,34.25;linear,0;diffusealpha,1;zoom,1.06;linear,0.3;zoomx,0.85;zoomy,0.85;sleep,0.5;linear,0.1;zoomy,0.42;zoomx,1.7;diffusealpha,0);
		};	
	
		-- 5段目 フリーズアロー 途中で放したらNG
		LoadActor("hand_red") .. {
			InitCommand=cmd(x,70;y,-77;zoom,0.6);
			OnCommand=cmd(diffusealpha,0;sleep,36.5;diffusealpha,1;bounce;effectperiod,0.5;sleep,5.25;diffusealpha,1;linear,0;diffusealpha,0);
		};
		Def.Sprite {
			InitCommand=cmd(x,30;y,101);
			BeginCommand=function(self)
				if THEME:GetCurLanguage() == "ja" then
					self:Load(THEME:GetPathB("ScreenHowToPlay","decorations/info_jp_05"));
				else
					self:Load(THEME:GetPathB("ScreenHowToPlay","decorations/info_en_05"));
				end;
			end;
			OnCommand=cmd(diffusealpha,0;sleep,36.75;linear,0;diffusealpha,1;zoomy,0;linear,0.25;zoomy,1;sleep,4.75;linear,0;diffusealpha,0);
		};	
		LoadActor("ok") .. {
			InitCommand=cmd(x,32;y,-97);
			OnCommand=cmd(diffusealpha,0;sleep,41.75;linear,0;diffusealpha,1;zoom,1.06;linear,0.3;zoomx,0.85;zoomy,0.85;sleep,0.5;linear,0.1;zoomy,0.42;zoomx,1.7;diffusealpha,0);
		};	

		-- 6段目 何回もミスしたらゲームオーバー
		LoadActor("hand_yellow") .. {
			InitCommand=cmd(x,-1;y,-149;zoom,0.6);
			OnCommand=cmd(diffusealpha,0;sleep,44;diffusealpha,1;bounce;effectperiod,0.5;sleep,6;diffusealpha,1;linear,0;diffusealpha,0);
		};
		Def.Sprite {
			InitCommand=cmd(x,30;y,101);
			BeginCommand=function(self)
				if THEME:GetCurLanguage() == "ja" then
					self:Load(THEME:GetPathB("ScreenHowToPlay","decorations/info_jp_06"));
				else
					self:Load(THEME:GetPathB("ScreenHowToPlay","decorations/info_en_06"));
				end;
			end;
			OnCommand=cmd(diffusealpha,0;sleep,45;linear,0;diffusealpha,1;zoomy,0;linear,0.25;zoomy,1;sleep,4.75;linear,0;diffusealpha,0);
		};	
	};

	-- ■右側
	Def.ActorFrame {
		InitCommand=cmd(x,WideScale(SCREEN_CENTER_X,SCREEN_CENTER_X+35);y,SCREEN_CENTER_Y);
		
		LoadActor("new_pad") .. {
			InitCommand=cmd();
		};
	
		-- 1段目
		LoadActor("ring") .. {
			InitCommand=cmd(x,157;y,5);
			OnCommand=cmd(diffusealpha,0;sleep,5.5;diffusealpha,1;zoom,1;bouncebegin,0.25;zoom,0.6;sleep,5.75;linear,0.5;zoom,0;);
		};	
		LoadActor("hand_green_rotation") .. {
			InitCommand=cmd(x,38;y,-23;zoom,0.6);
			OnCommand=cmd(addx,-55;diffusealpha,0;sleep,5.75;diffusealpha,1;linear,0.25;addx,55;sleep,0.75;linear,0;diffusealpha,0);
		};
		
		-- 2段目		
		LoadActor("hand_green_rotation") .. {
			InitCommand=cmd(x,2;y,17;zoom,0.6);
			OnCommand=cmd(addx,-55;diffusealpha,0;sleep,13.5;diffusealpha,1;linear,0.25;addx,55;sleep,0.75;linear,0;diffusealpha,0);
		};	   
		LoadActor("ring") .. {
			InitCommand=cmd(x,94;y,65);
			OnCommand=cmd(diffusealpha,0;sleep,13.25;diffusealpha,1;zoom,1;bouncebegin,0.25;zoom,0.6;sleep,5.75;linear,0.5;zoom,0;);
		};	
		LoadActor("ring") .. {
			InitCommand=cmd(x,239;y,65);
			OnCommand=cmd(diffusealpha,0;sleep,13.25;diffusealpha,1;zoom,1;bouncebegin,0.25;zoom,0.6;sleep,5.75;linear,0.5;zoom,0;);
		};	

		-- 3段目
		LoadActor("ring") .. {
			InitCommand=cmd(x,157;y,5);
			OnCommand=cmd(diffusealpha,0;sleep,20.75;diffusealpha,1;zoom,1;bouncebegin,0.25;zoom,0.6;sleep,0.25;linear,0.5;zoom,0;);
		};
		LoadActor("flash_anime") .. {
			InitCommand=cmd(x,157;y,40);
			OnCommand=cmd(diffusealpha,0;zoomx,0.9;zoomy,0.75;sleep,21.8;diffusealpha,0.75;sleep,5.2;linear,0;diffusealpha,0);
		};
		
		-- 4段目
		LoadActor("ring") .. {
			InitCommand=cmd(x,94;y,65);
			OnCommand=cmd(diffusealpha,0;sleep,28.5;diffusealpha,1;zoom,1;bouncebegin,0.25;zoom,0.6;sleep,0.25;linear,0.5;zoom,0;);
		};	
		LoadActor("ring") .. {
			InitCommand=cmd(x,239;y,65);
			OnCommand=cmd(diffusealpha,0;sleep,28.5;diffusealpha,1;zoom,1;bouncebegin,0.25;zoom,0.6;sleep,0.25;linear,0.5;zoom,0;);
		};	
		LoadActor("flash_anime") .. {
			InitCommand=cmd(x,96;y,98);
			OnCommand=cmd(diffusealpha,0;zoomx,0.9;sleep,29.4;zoomy,0.75;diffusealpha,0.75;sleep,5.2;linear,0;diffusealpha,0);
		};
		LoadActor("flash_anime") .. {
			InitCommand=cmd(x,237;y,98);
			OnCommand=cmd(diffusealpha,0;zoomx,0.9;sleep,29.4;zoomy,0.75;diffusealpha,0.75;sleep,5.2;linear,0;diffusealpha,0);
		};
		
		-- 5段目 フリーズアロー 途中で放したらNG
		LoadActor("ring") .. {
			InitCommand=cmd(x,157;y,5);
			OnCommand=cmd(diffusealpha,0;sleep,35.75;diffusealpha,1;zoom,1;bouncebegin,0.25;zoom,0.6;sleep,0.25;linear,0.5;zoom,0;);
		};
		LoadActor("flash_anime") .. {
			InitCommand=cmd(x,157;y,40);
			OnCommand=cmd(diffusealpha,0;zoomx,0.9;zoomy,0.75;sleep,36.8;diffusealpha,0.75;sleep,5.2;linear,0;diffusealpha,0);
		};		
	};
		
		
	-- ■中央の文字とか
	Def.ActorFrame {
		OnCommand=cmd(draworder,100);

		-- messages
		LoadActor("ScreenHowtoplay header") .. {
			InitCommand=cmd(x,SCREEN_CENTER_X,y_SCREEN_TOP;vertalign,top);
		};
		Def.Sprite {
			InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+10);
			BeginCommand=function(self)
				if THEME:GetCurLanguage() == "ja" then
					self:Load(THEME:GetPathB("ScreenHowToPlay","decorations/feet_jp"));
				else
					self:Load(THEME:GetPathB("ScreenHowToPlay","decorations/feet_en"));
				end;
			end;
			OnCommand=cmd(addy,-100;croptop,1;sleep,2.4;linear,0.5;addy,100;croptop,0;sleep,2;linear,0.5;addy,-100;croptop,1);
		};
	};
};