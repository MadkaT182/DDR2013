local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
  InitCommand=cmd(Center);
	Def.Quad {
		InitCommand=cmd(scaletoclipped,SCREEN_WIDTH,SCREEN_HEIGHT);
		OnCommand=cmd(diffusealpha,0;sleep,30;diffuse,color("1,1,1,1"));
	};
};
t[#t+1] = Def.ActorFrame {
  InitCommand=cmd(Center);
	Def.ActorFrame {
		Def.Quad {
			InitCommand=cmd(zoomto,SCREEN_WIDTH,SCREEN_HEIGHT);
			OnCommand=cmd();
		};
		LoadActor("konami") .. {
			OnCommand=cmd(zoomx,1.1;diffusealpha,0;linear,0.5;diffusealpha,1;sleep,5;linear,0.5;diffusealpha,0);
		};
		LoadActor("ScreenCompany music.ogg") .. {
			
		};

                LoadActor("bemani") .. {
			OnCommand=cmd(zoomx,1.1;diffusealpha,0;sleep,6;linear,0.5;diffusealpha,1;sleep,5;linear,0.5;diffusealpha,0);
		};
		LoadActor("e-amusement") .. {
			OnCommand=cmd(zoomx,1.1;diffusealpha,0;sleep,12;linear,0.5;diffusealpha,1;sleep,5;linear,0.5;diffusealpha,0);
		};
        LoadActor("RSA") .. {
		OnCommand=cmd(zoomx,1.1;diffusealpha,0;sleep,18;linear,0.5;diffusealpha,1;sleep,5;linear,0.5;diffusealpha,0);
        };
		LoadActor("01staff.png") .. {
		OnCommand=cmd(zoomx,1.1;diffusealpha,0;sleep,24;linear,0.25;diffusealpha,1;sleep,1.5;linear,0.25;diffusealpha,0);
		};
		LoadActor("02staff.png") .. {
		OnCommand=cmd(zoomx,1.1;diffusealpha,0;sleep,26;linear,0.25;diffusealpha,1;sleep,1.5;linear,0.25;diffusealpha,0);
		};
		LoadActor("03staff.png") .. {
		OnCommand=cmd(zoomx,1.1;diffusealpha,0;sleep,28;linear,0.25;diffusealpha,1;sleep,1.5;linear,0.25;diffusealpha,0);
		};
		LoadActor("04staff.png") .. {
		OnCommand=cmd(zoomx,1.1;diffusealpha,0;sleep,30;linear,0.25;diffusealpha,1;sleep,1.5;linear,0.25;diffusealpha,0);
		};	
	};
};

return t


	



