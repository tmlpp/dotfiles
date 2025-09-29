local mp = require 'mp'
local utils = require 'mp.utils'

function copy_with_clean_filename()
    local path = mp.get_property("path")
    if not path then
        mp.osd_message("No file is currently playing")
        return
    end

    -- Extract directory and filename
    local dir, filename = utils.split_path(path)
    local ext = filename:match("^.+(%..+)$") or ""
    local base = filename:sub(1, #filename - #ext)

    -- Remove and replace unwanted characters
    local clean_base = base:gsub("[%s]", "_"):gsub("[%s'\",`´‘’“”„]", "")
    local clean_filename = clean_base .. ext
    local new_path = dir .. clean_filename

    -- Check if we're changing anything
    if clean_filename == filename then
        mp.osd_message("Filename already clean, no copy made")
        return
    end

    -- Check if destination file already exists
    if file_exists(new_path) then
        mp.osd_message("Clean filename already exists: " .. clean_filename)
        return
    end

    -- Perform the copy
    local args = { 
        args = { "cp", "-v", "--", path, new_path }
    }
    local result = utils.subprocess(args)

    if result.status == 0 then
        mp.osd_message("Copied to: " .. clean_filename)
    else
        mp.osd_message("Copy failed: " .. (result.error or "unknown error"))
    end
end

function file_exists(path)
    local file = io.open(path, "r")
    if file then
        file:close()
        return true
    end
    return false
end

-- Add key binding
mp.add_key_binding(nil, "copy_with_clean_filename", copy_with_clean_filename)
