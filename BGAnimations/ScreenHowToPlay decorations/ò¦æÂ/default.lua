return Def.ActorFrame {

	LoadActor("new_pad") .. {
	InitCommand=cmd(x,SCREEN_CENTER_X+(SCREEN_WIDTH/6)-107;y,SCREEN_CENTER_Y);
	OnCommand=cmd();
	};

--■左側

	Def.ActorFrame {
		OnCommand=cmd(draworder,100;x,math.floor(scale(0.225,0,1,SCREEN_LEFT,SCREEN_RIGHT));y,SCREEN_CENTER_Y);

-- 最初の上矢印

		LoadActor("pink_hand") .. {
			InitCommand=cmd(x,70;y,-77);
			OnCommand=cmd(addy,55;diffusealpha,0;sleep,7;diffusealpha,1;linear,0.25;addy,-55;sleep,3.5;linear,0.25;addy,55;diffusealpha,1;linear,0;diffusealpha,0);
		};	        
			
		LoadActor("tapmessage") .. {
			InitCommand=cmd(x,30;y,48);
			OnCommand=cmd(diffusealpha,0;sleep,7.25;linear,0;diffusealpha,1;zoomy,0;linear,0.25;zoomy,1;sleep,3.5;linear,0;diffusealpha,0);
	};	

		
-- 2段目同時踏み

		LoadActor("blue_double_hand") .. {
		
			InitCommand=cmd(x,0;y,-81);
			OnCommand=cmd(addy,55;diffusealpha,0;sleep,14.75;diffusealpha,1;linear,0.25;addy,-55;sleep,3.5;linear,0.25;addy,55;diffusealpha,1;linear,0;diffusealpha,0);

		};	        
			
		LoadActor("jumpmessage") .. {
		InitCommand=cmd(x,30;y,48);
		OnCommand=cmd(diffusealpha,0;sleep,15;linear,0;diffusealpha,1;zoomy,0;linear,0.25;zoomy,1;sleep,3.5;linear,0;diffusealpha,0);
	};			

		
-- 3段目 フリーズアロー

		LoadActor("pink_hand") .. {		
			InitCommand=cmd(x,70;y,-77);
			OnCommand=cmd(diffusealpha,0;sleep,21.5;diffusealpha,1;bounce;effectperiod,0.5;sleep,5.25;diffusealpha,1;linear,0;diffusealpha,0);
		};	 
		
		LoadActor("freeze_one") .. {
		InitCommand=cmd(x,30;y,48);
		OnCommand=cmd(diffusealpha,0;sleep,21.75;linear,0;diffusealpha,1;zoomy,0;linear,0.25;zoomy,1;sleep,4.75;linear,0;diffusealpha,0);
	};	

		LoadActor("ok") .. {
		InitCommand=cmd(x,32;y,-97);
		OnCommand=cmd(diffusealpha,0;sleep,26.75;linear,0;diffusealpha,1;zoom,1.06;linear,0.3;zoomx,0.85;zoomy,0.85;sleep,0.5;linear,0.1;zoomy,0.42;zoomx,1.7;diffusealpha,0);
	};	
	
	
-- 4段目 フリーズアローダブル
		
		LoadActor("blue_double_hand") .. {
			InitCommand=cmd(x,0;y,-81);
			OnCommand=cmd(diffusealpha,0;sleep,29;diffusealpha,1;bounce;effectperiod,0.5;sleep,5.25;diffusealpha,1;linear,0;diffusealpha,0);
		};	 
		
		LoadActor("freeze_two") .. {
		InitCommand=cmd(x,30;y,48);
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
		
		LoadActor("pink_hand") .. {
			InitCommand=cmd(x,70;y,-77);
			OnCommand=cmd(diffusealpha,0;sleep,36.5;diffusealpha,1;bounce;effectperiod,0.5;sleep,5.25;diffusealpha,1;linear,0;diffusealpha,0);
		};	
		
		LoadActor("ngboard") .. {
		InitCommand=cmd(x,30;y,48);
		OnCommand=cmd(diffusealpha,0;sleep,36.75;linear,0;diffusealpha,1;zoomy,0;linear,0.25;zoomy,1;sleep,4.75;linear,0;diffusealpha,0);
	};	

		LoadActor("ok") .. {
		InitCommand=cmd(x,32;y,-97);
		OnCommand=cmd(diffusealpha,0;sleep,41.75;linear,0;diffusealpha,1;zoom,1.06;linear,0.3;zoomx,0.85;zoomy,0.85;sleep,0.5;linear,0.1;zoomy,0.42;zoomx,1.7;diffusealpha,0);
	};	
	
	
-- 6段目 何回もミスしたらゲームオーバー

		LoadActor("green_hand") .. {
			InitCommand=cmd(x,-1;y,-149);
			OnCommand=cmd(diffusealpha,0;sleep,44;diffusealpha,1;bounce;effectperiod,0.5;sleep,6;diffusealpha,1;linear,0;diffusealpha,0);
		};	
		
		LoadActor("missmessage") .. {
		InitCommand=cmd(x,30;y,48);
		OnCommand=cmd(diffusealpha,0;sleep,45;linear,0;diffusealpha,1;zoomy,0;linear,0.25;zoomy,1;sleep,4.75;linear,0;diffusealpha,0);
	};	
	
	
	};
	
	
	
	
--■■■右側
	Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X+(SCREEN_WIDTH/6)-107;y,SCREEN_CENTER_Y);
	
--一段目
	
		LoadActor("ring") .. {
			InitCommand=cmd(x,157;y,5);
			--x,333
			OnCommand=cmd(diffusealpha,0;sleep,5.5;diffusealpha,1;zoom,1;bouncebegin,0.25;zoom,0.6;sleep,5.75;linear,0.5;zoom,0;);
		};	
		
		LoadActor("blue_hand") .. {
			InitCommand=cmd(x,38;y,-23);
			OnCommand=cmd(addx,-55;diffusealpha,0;sleep,5.75;diffusealpha,1;linear,0.25;addx,55;sleep,0.75;linear,0;diffusealpha,0);
		};	     
		
--2段目		
		LoadActor("blue_hand") .. {
			InitCommand=cmd(x,2;y,17);
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
		
		
--三段目

		LoadActor("ring") .. {
			InitCommand=cmd(x,157;y,5);
			OnCommand=cmd(diffusealpha,0;sleep,20.75;diffusealpha,1;zoom,1;bouncebegin,0.25;zoom,0.6;sleep,0.25;linear,0.5;zoom,0;);
		};		
		
		LoadActor("flash_anime") .. {
			InitCommand=cmd(x,157;y,40);
			OnCommand=cmd(diffusealpha,0;zoomx,0.9;zoomy,0.75;sleep,21.8;diffusealpha,0.75;sleep,5.2;linear,0;diffusealpha,0);
		};	
		
--4段目

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
		
		
--■■■中央の文字とか
		
	Def.ActorFrame {
		OnCommand=cmd(draworder,100);
	
	-- messages
	LoadActor("how_to_play_1st") .. {
		InitCommand=cmd(zbuffer,1;z,20;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;zoomy,0;sleep,0.0;linear,0.3;diffusealpha,1;zoomy,1;sleep,1.8;linear,0.3;zoomy,0);
	};
	
	LoadActor("how_to_playbn") .. {
		InitCommand=cmd(zbuffer,1;z,20;x,SCREEN_CENTER_X+(SCREEN_WIDTH/6)+43;y,SCREEN_CENTER_Y-195);
		OnCommand=cmd(diffusealpha,0;zoomy,0;sleep,2.1;linear,0.3;diffusealpha,1;zoomy,1;);
	};
	
	LoadActor("feet") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+10);
		OnCommand=cmd(addy,-100;croptop,1;sleep,2.4;linear,0.5;addy,100;croptop,0;sleep,2;linear,0.5;addy,-100;croptop,1);
--		OnCommand=cmd(addx,-SCREEN_WIDTH;sleep,2.4;decelerate,0.3;addx,SCREEN_WIDTH;sleep,2;linear,0.3;zoomy,0);
	};

	};

	
	LoadActor("../ScreenGameplay overlay/_1P 1x2") .. {
			InitCommand = cmd(draworder,100;horizalign,left;x,SCREEN_LEFT;y,SCREEN_CENTER_Y-217);
			OnCommand = cmd(effectclock,"beat";addy,-60;sleep,5;linear,0.2;addy,60);
	};

};
