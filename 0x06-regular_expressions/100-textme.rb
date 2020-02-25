#!/usr/bin/env ruby
puts ARGV[0].scan(/(?<=from:|to:|flags:)([a-zA-Z09.+-:]{0,9}}\b)/).join
