-- Lua stuff
function onCreate()
	-- triggered when the lua file is started
	makeAnimatedLuaSprite('sexualintercourse', 'characters/brysonbop', 1000, 130);
	luaSpriteAddAnimationByPrefix('sexualintercourse', 'first', 'Dad idle dance', 24, false);
	luaSpritePlayAnimation('sexualintercourse', 'first');
	addLuaSprite('sexualintercourse', false);
end

-- Gameplay interactions
function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		luaSpritePlayAnimation('sexualintercourse', 'first');
	end
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 2 == 0 then
		luaSpritePlayAnimation('sexualintercourse', 'first');
	end
end