use_synth :chiplead
use_bpm 100
# I am following this for the musical notes: https://www.hooktheory.com/theorytab/view/runescape/sea-shanty2


define :intro do
  # The intro is divided into 4 parts
  i = 0
  square1_notes = [:A, :E, :D, :Cs, :Cs, :D, :E, :Fs, :Gb, :E]
  10.times do
    # There are 3 exception in this loop, the first iteration i =0, i = 3, and i =9
    play(square1_notes[i])
    sleep_time = 0.25
    
    if i == 0
      sleep_time += 0.25 #Adding more sleep
    end
    
    if i == 3 or i == 9
      sleep_time += 0.5
    end
    
    i += 1
    sleep sleep_time
  end
  
  i = 0
  square2_notes = [:Fs, :E, :D, :Cs, :Cs, :B3, :Cs, :D]
  8.times do
    # 3 exceptions for this loop at i = 1, i = 2, i = 7
    play(square2_notes[i])
    sleep_time = 0.5
    
    if i == 1 or i == 2
      sleep_time -= 0.25
    end
    
    if i == 7
      sleep_time += 0.5
    end
    
    i += 1
    sleep sleep_time
  end
  
  i = 0
  square3_notes = [:A, :E, :D, :Cs, :Cs, :D, :E, :Fs, :D]
  9.times do
    # There are 3 exception for this loop at i = 0, i = 3, i = 8
    play(square3_notes[i])
    sleep_time = 0.25
    
    if i == 0
      sleep_time += 0.25
    end
    
    if i == 3 or i == 8
      sleep_time += 0.5
    end
    
    i += 1
    sleep sleep_time
    
  end
  
  i = 0
  square4_notes = [:Fs, :E, :D, :Cs, :B3, :Cs, :D, :Fs, :E, :D, :Cs, :B3, :A3]
  13.times do
    # There is a SINGULAR exepction for this loop weee
    #and it's at the end so technically I don't need to include it in the loop
    play(square4_notes[i])
    sleep_time = 0.25
    
    if i == 12
      sleep_time += 0.75
    end
    
    i += 1
    sleep sleep_time
    
  end
  
end

intro