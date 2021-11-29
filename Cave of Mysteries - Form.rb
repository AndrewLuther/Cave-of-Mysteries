### FORM ###

measure_duration = 3.5


### ARPEGGIO

in_thread(name: :arpeggio) do
  with_fx :reverb do
    4.times do #mm1-4
      arpeggio1
    end
    5.times do #mm5-24
      3.times do
        arpeggio1
      end
      arpeggio2
    end
  end
end


### BASS/SNARE DRUM

in_thread(name: :drums) do
  with_fx :reverb do
    2.times do #mm1-2
      sleep measure_duration
    end
    22.times do #mm3-24
      drum1
    end
    sample :drum_bass_hard
  end
end

### BASS

in_thread(name: :bass) do
  with_fx :reverb do
    4.times do #mm1-4
      sleep measure_duration
    end
    5.times do #mm5-24
      bass1
      bass2
    end
  end
end

### PIANO

in_thread(name: :melody) do
  with_fx :reverb do
    8.times do #mm1-8
      sleep measure_duration
    end
    1.times do #mm9-12
      melody1
      melody2
      melody3
      melody4
    end
    1.times do #mm13
      use_synth mel_synth
      play :C5, amp: mel_amp
      sleep measure_duration
    end
    3.times do #mm14-16
      sleep measure_duration
    end
    1.times do #mm17-20
      melody1
      melody2
      melody3
      melody4
    end
    1.times do #mm21-24
      melody4
      melody3
      melody5
      melody2
    end
    
    1.times do #mm25
      use_synth mel_synth
      play :C5, amp: mel_amp
      sleep measure_duration
    end
  end
end

### CYMBAL

in_thread(name: :cymbal) do
  with_fx :reverb do
    16.times do #mm1-16
      sleep measure_duration
    end
    8.times do #mm17-24
      cymbal1
    end
  end
end

### CRASH

in_thread(name: :crash) do
  with_fx :reverb do
    15.times do #mm1-15
      sleep measure_duration
    end
    
    5.times do #mm16-24
      crash1
    end
  end
end







