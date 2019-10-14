ARGV.each{|i|
	fname = i.split("/")[-1]
	path = i.split("/")[0...-1]
	newName = fname.gsub(/\[[\w\d\_\-\&\%\^\#\$\@\`\~\"\'\;\:\,\>\<\.\?\!\{\}\[\]\(\)\=\+\s].*\]/, '').gsub(/\([\w\d\s\_\-\&\^\%\$\#\@\`\~\'|'\;\:\,\.\<\>\+\=\[\]\)\(\{\}\*].*\)/, '')
	
	while newName.include?("  ")
		newName.gsub!("  ",  " ")
	end

	newName.gsub!(/\ *\./,'.')

	newName = newName.lstrip
	newName = newName.rstrip

	if i != newName && newName != ''
		puts "rename \"" + i + "\" to \"" + newName + "\""
		File.rename(i, newName)
	elsif newName == ''
		puts "\"" + i + "\" not renamed (new name empty)"
	else	
		puts "\"" + i + "\" untouched"
	end
}
