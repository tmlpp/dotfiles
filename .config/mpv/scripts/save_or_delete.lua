local utils = require("mp.utils")
local cwd = utils.getcwd()
local saveDir = cwd .. "/save"
local maybeDir = cwd .. "/maybe"

function create_directories()
  mp.command_native({
    name = "subprocess",
    playback_only = false,
    args = { "mkdir", "-p", saveDir, maybeDir },
  })
end

function quit_or_next()
  local playlistCount = mp.get_property_number("playlist-count", 0)
  local playlistCurrent = mp.get_property_number("playlist-pos", 0)
  if playlistCurrent + 1 >= playlistCount then
    mp.command("quit")
  else
    mp.command("playlist-next")
  end
end

function move_file(targetDir)
  local path = mp.get_property("path")
  local filename = mp.get_property("filename")
  create_directories()
  local newPath = targetDir .. "/" .. filename
  mp.command_native({
    name = "subprocess",
    playback_only = false,
    args = { "mv", path, newPath },
  })
  mp.osd_message(filename .. " moved to " .. targetDir, 5)
end

function trash_file()
  local filename = mp.get_property("filename")
  mp.command_native({
    name = "subprocess",
    playback_only = false,
    args = { "trash-put", mp.get_property("path") },
  })
  mp.osd_message(filename .. " moved to trash", 5)
end

function delete_file()
  local filename = mp.get_property("filename")
  mp.command_native({
    name = "subprocess",
    playback_only = false,
    args = { "rm", mp.get_property("path") },
  })
  mp.osd_message(filename .. " permanently deleted", 5)
end

function show_file_path()
  local path = mp.get_property("path")
  mp.osd_message(path, 5)
end

mp.add_key_binding(nil, "move_to_trash", function()
  trash_file()
  quit_or_next()
end)
mp.add_key_binding(nil, "delete_permanently", function()
  delete_file()
  quit_or_next()
end)
mp.add_key_binding(nil, "move_to_save", function()
  move_file(saveDir)
  quit_or_next()
end)
mp.add_key_binding(nil, "move_to_maybe", function()
  move_file(maybeDir)
  quit_or_next()
end)
mp.add_key_binding(nil, "show_file_path", function()
  show_file_path()
end)
