local utils = require('mp.utils')
local cwd = utils.getcwd()
local saveDir = cwd .. '/save'
local deleteDir = cwd .. '/delete'
local maybeDir = cwd .. '/maybe'

function createDirectories()
  mp.command_native({
    name = 'subprocess',
    playback_only = false,
    args = {'mkdir', '-p', saveDir, deleteDir, maybeDir}
  })
end

function move_and_next(targetDir)
  local path = mp.get_property("path")
  local filename = mp.get_property("filename")
  createDirectories()
  local newPath = targetDir .. '/' .. filename
  mp.command_native({
    name = 'subprocess',
    playback_only = false,
    args = {'mv', path, newPath}
  })
  local playlistCount = mp.get_property_number('playlist-count', 0)
  local playlistCurrent = mp.get_property_number('playlist-pos', 0)
  mp.osd_message(filename .. ' moved to ' .. targetDir, 5)
  if (playlistCurrent + 1 >= playlistCount)
    then
    mp.command('quit')
  else
    mp.command('playlist-next')
  end
end

mp.add_key_binding(nil, 'move_to_delete_and_next', function ()
  move_and_next(deleteDir)
end)
mp.add_key_binding(nil, 'move_to_save_and_next', function ()
  move_and_next(saveDir)
end)
mp.add_key_binding(nil, 'move_to_maybe_and_next', function ()
  move_and_next(maybeDir)
end)
