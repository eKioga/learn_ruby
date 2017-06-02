class Timer
  #write your code here
  	attr_accessor :seconds, :minutes, :hours

	def initialize
		@seconds = 0
	end

	def time_string
		@minutes = @seconds / 60
		@hours = '%02d' % (@minutes / 60)

		@minutes = '%02d' % (@minutes % 60)
		@seconds = '%02d' % (@seconds % 60)

		return "#{@hours}:#{@minutes}:#{@seconds}"
	end	
end
