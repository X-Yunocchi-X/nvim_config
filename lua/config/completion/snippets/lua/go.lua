-- local ls = require('luasnip')
-- local s = ls.snippet
-- local sn = ls.snippet_node
-- local t = ls.text_node
-- local i = ls.insert_node
-- local extras = require("luasnip.extras")
-- local rep = extras.rep

-- return {
-- 	s({
-- 		trig = "sortInterface",
-- 		desc = "implement sort.Interface methods"
-- 	}, {
-- 		t "func (", i(1), t " ", i(2), t { ") Len() int {", "\treturn len(" }, rep(1), t { ")", "}", "" },
-- 		t "func (", rep(1), t " ", i(2), t { ") Less(i, j int) bool {", "\treturn " }, rep(1), t "[i]", i(3), t " < ",
-- 		rep(1),
-- 		t "[j]", rep(3), t { "", "}", "" },
-- 		t "func (", rep(1), t " ", rep(2), t { ") Swap(i, j int) {", "\t" }, rep(1), t "[i], ", rep(1), t "[j] = ", rep(1),
-- 		t "[j], ", rep(1), t { "[i]", "}", "" }
-- 	})
-- }
