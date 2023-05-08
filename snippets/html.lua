-- Snippets for html files
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet

return {
-- HTML basic skeleton
  s(
    { trig = "html:5", dscr = "HTML basic skeleton" },
      fmt(
        [[
          <!DOCTYPE html>
          <html lang="en">
          <head>
            <meta charset="UTF-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>{}</title>
          </head>
          <body>
          <!-- all your content will go here. -->
          {}
          </body>
          </html>
        ]],
      {
        i(1),
        i(2),
      }
      )
  ),

  -- H1
  s( { trig = "h1", dscr = "H1 tags" },
    fmt(
        [[
        <h1>{}</h1>
        {}
        ]],
      {
        i(1),
        i(0),
      }
    )
  ),
 -- H1 with class
  s( { trig = "h1", dscr = "H1 tags with class" },
    fmt(
        [[
        <h1 class={}>{}</h1>
        {}
        ]],
      {
        i(1),
        i(2),
        i(0),
      }
    )
  ),
 -- Paragraphs
  s( { trig = "pg", dscr = "HTML Paragraphs" },
    fmt(
        [[
        <p>
        {}
        </p>
        {}
        ]],
      {
        i(1),
        i(0),
      }
    )
  ),
}

