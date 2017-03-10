local t = Def.Quad {
	InitCommand=cmd();
	StartTransitioningCommand=cmd(sleep,0.25);
};
return t;
