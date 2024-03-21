local ls = require('luasnip')
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require('luasnip.extras')
local r = extras.rep
local fmt = require('luasnip.extras.fmt').fmt

return {
  s('dbg', fmt(
    'console.log("dbg: {} " + {}){}', {
      i(1), i(2), i(0)
    }
  )),
  s('dbgj', fmt(
    'console.log("dbg: {} " + JSON.stringify({}, null, 2)){}', {
      i(1), i(2), i(0)
    }
  ))
}
