use_synth :chiplead
use_bpm 100
# I am following this for the musical notes: https://www.hooktheory.com/theorytab/view/runescape/sea-shanty2

# Function that plays the intro
define :intro do
  in_thread do
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
    cue :start_verse
  end
end

# Function that plays the verse
define :verse do
  in_thread do
    # This has to start after the intro, or whenver it's called really, so I need for it to sync to a cue
    sync :start_verse
    # This verse is divided into 8 parts
    i = 0
    square1_notes = [:Cs, :B3, :Cs, :Cs, :Cs, :B3, :Cs, :B3, :Cs]
    9.times do
      # There are 5 exceptions :(
      play(square1_notes[i])
      sleep_time = 0.25
      
      if i == 2 or i == 3 or i == 6 or i == 7
        sleep_time += 0.25
      end
      
      if i == 8
        sleep_time += 0.5
      end
      
      i += 1
      sleep sleep_time
      
    end
    
    i = 0
    square2_notes = [:A3, :B3, :Cs, :D, :Cs, :B3, :Cs]
    7.times do
      # There are 3 exceptions
      play(square2_notes[i])
      sleep_time = 0.25
      
      if i == 4 or i == 5
        sleep_time += 0.25
      end
      
      if i == 6
        sleep_time += 0.75
      end
      
      i += 1
      sleep sleep_time
      
    end
    
    i = 0
    square3_notes = [:Cs, :B3, :Cs, :Cs, :D, :Cs, :B3, :E, :Cs]
    9.times do
      # There are 5 exceptions
      play(square3_notes[i])
      sleep_time = 0.25
      
      if i == 2 or i == 3 or i == 6 or i == 7
        sleep_time += 0.25
      end
      
      if i == 8
        sleep_time += 0.5
      end
      
      i += 1
      sleep sleep_time
      
    end
    
    i = 0
    square4_notes = [:Cs, :B3, :Cs, :D, :Cs, :A3, :Cs]
    7.times do
      # There are 3 exceptions
      play(square4_notes[i])
      sleep_time = 0.25
      
      if i == 4 or i == 5
        sleep_time += 0.25
      end
      
      if i == 6
        sleep_time += 1.25
      end
      
      i += 1
      sleep sleep_time
      
    end
    
    i = 0
    square5_notes = [:E, :D, :E, :E, :E, :D, :E, :Fs, :E]
    9.times do
      # There are 5 exceptions
      play(square5_notes[i])
      sleep_time = 0.25
      
      if i == 2 or i == 3 or i == 6 or i == 7
        sleep_time += 0.25
      end
      
      if i == 8
        sleep_time += 0.5
      end
      
      i += 1
      sleep sleep_time
      
    end
    
    i = 0
    square6_notes = [:Gb, :Gb, :Fs, :E, :D, :E]
    6.times do
      # There are 4 exceptions yes I know that's the majority, I'm defaulting to 0.25 sleeps okay
      play(square6_notes[i])
      sleep_time = 0.25
      
      if i == 0 or i == 3 or i == 4
        sleep_time += 0.25
      end
      
      if i == 5
        sleep_time += 1.25
      end
      
      i += 1
      sleep sleep_time
      
    end
    
    i = 0
    square7_notes = [:Cs, :B3, :Cs, :Cs, :B3, :Cs, :D, :B3, :Cs]
    9.times do
      # There are 5 exceptions
      play(square7_notes[i])
      sleep_time = 0.25
      
      if i == 2 or i == 3 or i == 6 or i == 7
        sleep_time += 0.25
      end
      
      if i == 8
        sleep_time += 0.5
      end
      
      i += 1
      sleep sleep_time
      
    end
    
    i = 0
    square8_notes = [:Cs, :B3, :Cs, :D, :Cs, :A3, :A2]
    7.times do
      # There are 2 exceptions :)
      play(square8_notes[i])
      sleep_time = 0.25
      
      if i == 4 or i == 5
        sleep_time += 0.25
      end
      
      i += 1
      sleep sleep_time
      
    end
    
  end
end

intro
verse