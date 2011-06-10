# -*- coding: utf-8 -*-
# Windows環境で音を鳴らす

require_if_exist 'win32/sound'

Module.new do

  if defined?(Win32::Sound)
    Plugin::create(:win32sound).add_event(:play_sound){ |filename, &stop|
      Win32::Sound.play(filename, Win32::Sound::ASYNC)
      stop.call
    }
  end

end

