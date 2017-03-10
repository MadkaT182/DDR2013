return Def.ActorFrame {
	LoadActor("GameOverBG") .. {
		InitCommand=cmd(FullScreen;sleep,3);
	};
};