### FUNCTIONS ###


### MIXER ###

bass_amp = 0.75
drum_amp = 0.75
define :mel_amp do
  0.4
end

mel_amp = 0.4
cym_amp = 1.25
crash_amp = 0.75



### ARPEGGIOS

define :arpeggio1 do
  use_synth :saw
  play :C4, amp: 0.1, pan: -1, attack: 0.25 , release: 3
  sleep 0.25
  play :Eb4, amp: 0.5, pan: 0, attack: 0.5 , release: 2.75
  sleep 0.25
  play :Bb4, amp: 1, pan: 1, attack: 0 , release: 2.5
  sleep 3
end

define :arpeggio2 do
  use_synth :saw
  play :Ab3, amp: 0.1, pan: -1, attack: 0.25 , release: 3
  sleep 0.25
  play :C4, amp: 0.5, pan: 0, attack: 0.5 , release: 2.75
  sleep 0.25
  play [:G4, :Bb4], amp: 1, pan: 1, attack: 0 , release: 2.5
  sleep 3
end




### BASS

define :bass1 do
  use_synth :sine
  play :C2, amp: bass_amp, attack: 0.25, sustain: 3, release: 0.5
  sleep 3.5
  
  play :D2, amp: bass_amp, attack: 0.25, sustain: 3, release: 0.5
  sleep 3.5
end

define :bass2 do
  use_synth :sine
  play :C2, amp: bass_amp, attack: 0.25, sustain: 3, release: 0.5
  sleep 3.5
  
  play :Ab2, amp: bass_amp, attack: 0.25, sustain: 3, release: 0.5
  sleep 3.5
end




### MELODY
define :mel_synth do
  :square
end


# A Section

define :melody1 do
  use_synth mel_synth
  notes =  [:C5,  :D5,  :Eb5, :F5,  :G5,  :Bb5,:C6, :D6,  :G5,  :D5]
  sleeps = [0.25, 0.25, 0.25, 0.25, 0.75, 0.5, 0.5, 0.25, 0.25, 0.25]
  note_index = 0
  sleep_index = 0
  notes.length.times do
    play (notes)[note_index], amp: mel_amp
    sleep (sleeps)[sleep_index]
    note_index += 1
    sleep_index += 1
  end
end

define :melody2 do
  use_synth mel_synth
  notes =  [:C5,  :D5,  :Eb5, :F5,  :G5,  :F5, :G5, :Eb5, :D5,  :Bb4]
  sleeps = [0.25, 0.25, 0.25, 0.25, 0.75, 0.5, 0.5, 0.25, 0.25, 0.25]
  note_index = 0
  sleep_index = 0
  notes.length.times do
    play (notes)[note_index], amp: mel_amp
    sleep (sleeps)[sleep_index]
    note_index += 1
    sleep_index += 1
  end
end

define :melody3 do
  use_synth mel_synth
  notes =  [:C5,  :D5,  :Eb5, :F5,  :G5,  :Bb5,:C6, :D6,  :Eb6, :F6]
  sleeps = [0.25, 0.25, 0.25, 0.25, 0.75, 0.5, 0.5, 0.25, 0.25, 0.25]
  note_index = 0
  sleep_index = 0
  notes.length.times do
    play (notes)[note_index], amp: mel_amp
    sleep (sleeps)[sleep_index]
    note_index += 1
    sleep_index += 1
  end
end

define :melody4 do
  use_synth mel_synth
  notes =  [:G6,  :F6,  :Eb6, :D6,  :C6,  :Bb5,:Ab5,:G5, :Eb5, :D5,  :Bb4]
  sleeps = [0.25, 0.25, 0.25, 0.25, 0.25, 0.5, 0.5, 0.5, 0.25, 0.25, 0.25]
  note_index = 0
  sleep_index = 0
  notes.length.times do
    play (notes)[note_index], amp: mel_amp
    sleep (sleeps)[sleep_index]
    note_index += 1
    sleep_index += 1
  end
end

#Second version of main theme:

define :melody5 do
  use_synth mel_synth
  notes =  [:G6,  :F6,  :Eb6, :D6,  :C6,  :Bb5,:C6, :D6,  :C6,  :D6,  :Bb5,  :Ab5,  :G5,   :F5]
  sleeps = [0.25, 0.25, 0.25, 0.25, 0.25, 0.5, 0.5, 0.25, 0.25, 0.25, 0.125, 0.125, 0.125, 0.125]
  note_index = 0
  sleep_index = 0
  notes.length.times do
    play (notes)[note_index], amp: mel_amp
    sleep (sleeps)[sleep_index]
    note_index += 1
    sleep_index += 1
  end
end


##B Section


### DRUMS

define :drum1 do
  bass = :drum_bass_hard
  snare = :drum_snare_hard
  samples = [bass, snare, bass, bass, snare, bass, snare, bass, bass]
  sleeps =  [0.5,  0.25,  0.5,  0.5,  0.25,  0.5,  0.25,  0.5,  0.25]
  sample_index = 0
  sleep_index = 0
  samples.length.times do
    sample (samples)[sample_index], amp: drum_amp
    sleep (sleeps)[sleep_index]
    sample_index += 1
    sleep_index += 1
  end
end

define :cymbal1 do
  
  cymbal = :drum_cymbal_closed
  sleeps = [0.25,0.5,0.25,0.5,0.25,0.5,0.25,0.5,0.5]
  sleep_index = 0
  sleeps.length.times do
    sample cymbal, amp: cym_amp
    sleep (sleeps)[sleep_index]
    sleep_index +=1
  end
end

define :crash1 do
  crash = :drum_splash_hard
  cymbal = :elec_hi_snare
  samples = [nil, cymbal, crash]
  sleeps =  [3.25,0.25, 3.5]
  sample_index = 0
  sleep_index = 0
  samples.length.times do
    sample (samples)[sample_index], amp: crash_amp
    sleep (sleeps)[sleep_index]
    sample_index += 1
    sleep_index += 1
  end
end





