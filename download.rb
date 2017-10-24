require 'date'
require 'active_support/time'
require 'open-uri'
require 'open_uri_redirections'
require 'fileutils'

# setup
firstDate = Date.new 2012
dirName   = 'data'

# init
d         = firstDate
d         -= d.wday % 7 # set first sunday
FileUtils.mkdir_p dirName

loop {
	fileName = format 'Calendar-%02d-%02d-%04d.csv', d.month, d.day, d.year
	url      = 'http://www.dailyfx.com/files/' + fileName
	savePath = dirName + '/' + fileName

	unless File.exist? savePath
		p 'downloading: ' + url
		open url, :allow_redirections => :safe do |f|
			File.open savePath, 'wb' do |file|
				file.puts f.read
			end
		end
	end

	d += 7.day # set next sunday
	break if d > Date.today
}
