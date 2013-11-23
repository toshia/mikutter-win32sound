# -*- coding: utf-8 -*-
# Windows環境で音を鳴らす

require_if_exist 'win32/sound'

Plugin.create :win32sound do

  win32_sound_defined = defined?(Win32::Sound)
  defsound :win32sound, "Win32API" do |filename|
    Win32::Sound.play(filename, Win32::Sound::ASYNC) if FileTest.exist?(filename) and win32_sound_defined
  end

end
