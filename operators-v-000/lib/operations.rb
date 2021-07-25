def unsafe?(speed)
	if speed < 40 || speed > 60
		return true
	else
		return false
	end
end

def not_safe?(speed)
	speed.between?(40,60) ? false : true
end
