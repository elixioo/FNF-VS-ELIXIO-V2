function onUpdate(elapsed)
	if curStep >= 0 and curStep < 769 then
		songPos = getSongPosition()
		local currentBeat = (songPos/5000)*(curBpm/60)

		noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 - 50*math.sin((currentBeat+4*0.25)*math.pi), 0.3)
		noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 50 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 100)
		noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 - 50*math.sin((currentBeat+4*0.25)*math.pi), 0.3)
		noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 - 50 + 2000*math.sin((currentBeat+8*0.25)*math.pi), 100)

		noteTweenX(defaultOpponentStrumX0, 0, defaultOpponentStrumX0 + 50*math.sin((currentBeat+4*0.25)*math.pi), 0.3)
		noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 50 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 100)
		noteTweenX(defaultOpponentStrumX2, 2, defaultOpponentStrumX2 + 50*math.sin((currentBeat+4*0.25)*math.pi), 0.3)
		noteTweenX(defaultOpponentStrumX3, 3, defaultOpponentStrumX3 + 50 - 2000*math.sin((currentBeat+8*0.25)*math.pi), 100)

	end
end


