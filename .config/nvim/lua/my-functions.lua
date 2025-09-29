-- Copy N last lines of a CSV, paste, and replace first column with current datetime
function CopyCsvWithDatetime()
  local n = tonumber(vim.fn.input("How many lines? ", "2"))
  local datetime = os.date("%Y-%m-%d %H:%M")
  local total = vim.fn.line("$")
  local start_line = total - n + 1
  if start_line < 1 then start_line = 1 end
  vim.cmd(start_line .. "," .. total .. "y")
  vim.cmd("normal! Gp")
  local cursor = vim.fn.getcurpos()
  local pasted_start = total + 1
  local pasted_end = total + n

  for lnum = pasted_start, pasted_end do
    local line = vim.fn.getline(lnum)
    local fields = vim.split(line, ",")
    if #fields > 0 then
      fields[1] = datetime
      vim.fn.setline(lnum, table.concat(fields, ","))
    end
  end

  vim.fn.setpos(".", cursor)
end

