# simple square:
def analyze_square (width)
  waves = Hash.new
  waves[1] = (width-1)*2-1
  
  this_wave = 1
  block_counter = waves[1]
  width.even? ? block_min = 1 : block_min = 3
  until block_counter == block_min do
    this_wave += 1
    block_counter -= 4
    waves[this_wave] = block_counter
  end

  block_total = 0
  waves.each do |wave,block|
    block_total += block
  end

  meter_yield = "█" * (block_total/4)
  footprint = (width+2)**2
  ratio = (block_total.to_f / footprint.to_f).round(2)
  efficiency = (ratio*100).to_i
  meter = "■" * efficiency
  ratio_1wave = (waves[1].to_f / footprint.to_f).round(2)
  efficiency_1wave = ((ratio_1wave*100).to_i).round(2)
  meter_1wave = "■" * efficiency_1wave
  ratio_2waves = ((waves[1]+waves[2].to_f).to_f / footprint.to_f).round(2)
  efficiency_2waves = (ratio_2waves*100).to_i
  meter_2waves = "■" * efficiency_2waves

  puts " "
  puts "width                   #{sprintf('%02d',width)}"
  puts "footprint              #{sprintf('%03d',footprint)}"
  puts "yield                  #{sprintf('%03d',block_total)} #{meter_yield}"
  puts "efficiency              #{sprintf('%02d', efficiency)} #{meter}"
  puts "efficiency (1 wave)     #{sprintf('%02d', efficiency_1wave)} #{meter_1wave}"
  puts "efficiency (2 waves)    #{sprintf('%02d', efficiency_2waves)} #{meter_2waves}"
  wave_total = 0
  waves.each do |wave,blocks|
    wave_total += blocks
    puts "wave #{sprintf('%02d',wave)}                 #{sprintf('%02d',blocks)} blocks    #{sprintf('%03d',wave_total)} wave total"
  end

end # def

puts " "
puts "efficiency is the yield as a percent of the footprint"
for n in 2..30 do
  analyze_square (n)
end
