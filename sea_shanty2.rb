use_synth :chiplead
use_bpm 100
# I am following this for the musical notes: https://www.hooktheory.com/theorytab/view/runescape/sea-shanty2

comment do
  note = 0
  128.times do
    play note
    note += 1
    sleep 0.125
  end
end


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
  
  
  play :Fs
  sleep 0.5
  play :E
  sleep 0.25
  play :D
  sleep 0.25
  play :Cs
  sleep 0.5
  play :Cs
  sleep 0.5
  play :B3 #It's :B but an octave lower, gotta be a better way to write this
  sleep 0.5
  play :Cs
  sleep 0.5
  play :D, sustain: 0.5
  sleep 1
  
  play :A
  sleep 0.5
  play :E
  sleep 0.25
  play :D
  sleep 0.25
  play :Cs, sustain: 0.5
  sleep 0.75
  play :Cs
  sleep 0.25
  play :D
  sleep 0.25
  play :E
  sleep 0.25
  play :Fs
  sleep 0.25
  play :D, sustain: 0.5
  sleep 0.75
  
  
  play :Fs
  sleep 0.25
  play :E
  sleep 0.25
  play :D
  sleep 0.25
  play :Cs
  sleep 0.25
  play :B3
  sleep 0.25
  play :Cs
  sleep 0.25
  play :D
  sleep 0.25
  play :Fs
  sleep 0.25
  play :E
  sleep 0.25
  play :D
  sleep 0.25
  play :Cs
  sleep 0.25
  play :B3
  sleep 0.25
  play :A3, sustain: 0.5
  sleep 1
end

intro