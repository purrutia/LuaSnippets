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

 -- H1 with class
  s( { trig = "h1", dscr = "H1 tags with class" },
    fmt(
        [[
        <h1 class="{}">{}</h1>
        {}
        ]],
      {
        i(1),
        i(2),
        i(0),
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

 -- H2 with class
  s( { trig = "h2", dscr = "H2 tags with class" },
    fmt(
        [[
        <h2 class="{}">{}</h2>
        {}
        ]],
      {
        i(1),
        i(2),
        i(0),
      }
    )
  ),
  -- H2
  s( { trig = "h2", dscr = "H2 tags" },
    fmt(
        [[
        <h2>{}</h2>
        {}
        ]],
      {
        i(1),
        i(0),
      }
    )
  ),

 -- H3 with class
  s( { trig = "h3", dscr = "H3 tags with class" },
    fmt(
        [[
        <h3 class="{}">{}</h3>
        {}
        ]],
      {
        i(1),
        i(2),
        i(0),
      }
    )
  ),
  -- H3
  s( { trig = "h3", dscr = "H3 tags" },
    fmt(
        [[
        <h3>{}</h3>
        {}
        ]],
      {
        i(1),
        i(0),
      }
    )
  ),

 -- H4 with class
  s( { trig = "h4", dscr = "H4 tags with class" },
    fmt(
        [[
        <h4 class="{}">{}</h4>
        {}
        ]],
      {
        i(1),
        i(2),
        i(0),
      }
    )
  ),
  -- H4
  s( { trig = "h4", dscr = "H4 tags" },
    fmt(
        [[
        <h4>{}</h4>
        {}
        ]],
      {
        i(1),
        i(0),
      }
    )
  ),

 -- Paragraph with class
  s( { trig = ":p", dscr = "HTML Paragraph with class" },
    fmt(
        [[
        <p class="{}">
          {}
        </p>
        {}
        ]],
      {
        i(1),
        i(2),
        i(0),
      }
    )
  ),

 -- Paragraph
  s( { trig = ":p", dscr = "HTML Paragraphs" },
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

  -- Links with class
  s( { trig = ":link", dscr = "HTML Link with class" },
    fmt(
        [[
        <a class="{}" href={}>{}</a>{}
        ]],
      {
        i(1),
        i(2),
        i(3),
        i(0),
      }
    )
  ),

  -- Links
  s( { trig = ":link", dscr = "HTML Link with class" },
    fmt(
        [[
        <a href={}>{}</a>{}
        ]],
      {
        i(1),
        i(2),
        i(0),
      }
    )
  ),

  -- Images with class
  s( { trig = ":img", dscr = "Image with class" },
    fmt(
        [[
        <img class="{}" src={} alt={}>{}
        ]],
      {
        i(1),
        i(2),
        i(3),
        i(0),
      }
    )
  ),

  -- Images
  s( { trig = ":img", dscr = "Image" },
    fmt(
        [[
        <img src={} alt={}>{}
        ]],
      {
        i(1),
        i(2),
        i(0),
      }
    )
  ),

  -- Nav
  s( { trig = ":nav", dscr = "Navigation Bar" },
    fmt(
        [[
        <nav>
          {}
        </nav>
        {}
        ]],
      {
        i(1),
        i(0),
      }
    )
  ),

  -- div with class
  s( { trig = ":div", dscr = "div with class" },
    fmt(
        [[
        <div class="{}">
          {}
        </div>
        {}
        ]],
      {
        i(1),
        i(2),
        i(0),
      }
    )
  ),

  -- div
  s( { trig = ":div", dscr = "div" },
    fmt(
        [[
        <div>
          {}
        </div>
        {}
        ]],
      {
        i(1),
        i(0),
      }
    )
  ),

  -- article with class
  s( { trig = ":article", dscr = "article with class" },
    fmt(
        [[
        <article class="{}">
          {}
        </article>
        {}
        ]],
      {
        i(1),
        i(2),
        i(0),
      }
    )
  ),

  -- article
  s( { trig = ":article", dscr = "article" },
    fmt(
        [[
        <article>
          {}
        </article>
        {}
        ]],
      {
        i(1),
        i(0),
      }
    )
  ),

  -- List with class
  s( { trig = ":ul", dscr = "list with class" },
    fmt(
        [[
        <ul class="{}">
          {}
        </ul>
        {}
        ]],
      {
        i(1),
        i(2),
        i(0),
      }
    )
  ),
  -- List
  s( { trig = ":ul", dscr = "list" },
    fmt(
        [[
        <ul>
          {}
        </ul>
        {}
        ]],
      {
        i(1),
        i(0),
      }
    )
  ),
  -- list item with class
  s( { trig = ":li", dscr = "list item with class" },
    fmt(
        [[
        <li class="{}">
          {}
        </li>
        {}
        ]],
      {
        i(1),
        i(2),
        i(0),
      }
    )
  ),
  -- list item
  s( { trig = ":li", dscr = "list item" },
    fmt(
        [[
        <li>
          {}
        </li>
        {}
        ]],
      {
        i(1),
        i(0),
      }
    )
  ),



}

