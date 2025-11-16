local utils = require("mp.utils")

function create_directory(parent, dir)
  mp.command_native({
    name = "subprocess",
    playback_only = false,
    args = { "mkdir", "-p", parent .. dir},
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

function move_file(target)
  local sourcePath = mp.get_property("path")
  local dir, filename = utils.split_path(sourcePath)
  local destPath = ""
  if target == 'watched' then
    destPath = "/home/teemu/tbw/watched"
  else
    destPath = dir .. target.. "/" .. filename
    create_directory(dir, target)
  end
  mp.command_native({
    name = "subprocess",
    playback_only = false,
    args = { "mv", sourcePath, destPath },
  })
  mp.osd_message(filename .. " moved to " .. target, 5)
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
  move_file("save")
  quit_or_next()
end)
mp.add_key_binding(nil, "move_to_maybe", function()
  move_file("maybe")
  quit_or_next()
end)
mp.add_key_binding(nil, "move_to_watched", function()
  move_file("watched")
  quit_or_next()
end)
mp.add_key_binding(nil, "show_file_path", show_file_path)
