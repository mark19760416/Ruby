require 'monitor'
class Counter < Monitor
	attr_reader :count
	def initialize
		@count = 0
		super
	end
	def tick
		synchronize do
			@count += 1
		end
	end
end
c = Counter.new
t1 = Thread.new { 100_000.times { c.tick } }
t2 = Thread.new { 100_000.times { c.tick } }
t1.join; t2.join
print c.count