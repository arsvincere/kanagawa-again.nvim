---@class SyntaxElements
---@field string ColorSpec
---@field variable ColorSpec
---@field member ColorSpec
---@field number ColorSpec
---@field constant ColorSpec
---@field identifier ColorSpec
---@field attribute ColorSpec
---@field parameter ColorSpec
---@field fun ColorSpec
---@field statement ColorSpec
---@field keyword ColorSpec
---@field operator ColorSpec
---@field preproc ColorSpec
---@field type ColorSpec
---@field regex ColorSpec
---@field deprecated ColorSpec
---@field comment ColorSpec
---@field punct ColorSpec
---@field special1 ColorSpec
---@field special2 ColorSpec
---@field special3 ColorSpec

---@class DiagnosticsElements
---@field error ColorSpec
---@field ok ColorSpec
---@field warning ColorSpec
---@field info ColorSpec
---@field hint ColorSpec
--
---@class DiffElements
---@field add ColorSpec
---@field delete ColorSpec
---@field change ColorSpec
---@field text ColorSpec

---@class VCSElements
---@field added ColorSpec
---@field removed ColorSpec
---@field changed ColorSpec

---@class ModeElements
---@field normal ColorSpec
---@field insert ColorSpec
---@field visual ColorSpec
---@field replace ColorSpec
---@field command ColorSpec

---@class UiElements
---@field fg ColorSpec Default foreground
---@field fg_dim ColorSpec Dimmed foreground
---@field fg_reverse ColorSpec
---@field fg_dark ColorSpec
---@field bg_dim ColorSpec Dimmed background
---@field bg_m3 ColorSpec
---@field bg_m2 ColorSpec
---@field bg_m1 ColorSpec
---@field bg ColorSpec Default background
---@field bg_p1 ColorSpec Lighter background ColorColumn, Folded, Gutter
---@field bg_p2 ColorSpec Lighter background Cursor{Line,Column}, TabLineSel (Selected Items)
---@field bg_gutter ColorSpec {Sign,Fold}Column, LineNr
---@field special ColorSpec SpecialKey
---@field nontext ColorSpec LineNr, NonText
---@field whitespace ColorSpec Whitespace
---@field bg_search ColorSpec
---@field bg_visual ColorSpec
---@field win_separator ColorSpec
---@field indent ColorSpec
---@field pmenu MenuElements
---@field float FloatElements

---@class FloatElements
---@field fg ColorSpec
---@field bg ColorSpec
---@field fg_border ColorSpec
---@field bg_border ColorSpec

---@class MenuElements
---@field bg ColorSpec
---@field fg ColorSpec
---@field fg_sel ColorSpec
---@field bg_sel ColorSpec
---@field bg_sbar ColorSpec
---@field bg_thumb ColorSpec

---@class ThemeColors
---@field syn SyntaxElements
---@field diag DiagnosticsElements
---@field vcs VCSElements
---@field diff DiffElements
---@field ui UiElements
---@field modes ModeElements
---@field term ColorSpec[]

---@param palette PaletteColors
---@return ThemeColors
return function(palette)
	local gutter_bg = require("kanagawa-paper.config").options.gutter and palette.sumiInk4 or "none"

	return {
		modes = {
			normal = palette.dragonYellow,
			insert = palette.dragonRed,
			visual = palette.dragonBlue,
			replace = palette.dragonRed,
			command = palette.dragonYellow,
		},
		ui = {
			fg = palette.fujiWhite,
			fg_dim = palette.fujiGray,
			fg_reverse = palette.waveBlue1,
			fg_dark = palette.dragonBlack3,

			bg_dim = palette.sumiInk1,
			bg_gutter = gutter_bg,

			bg_m3 = palette.sumiInk0,
			bg_m2 = palette.sumiInk1,
			bg_m1 = palette.sumiInk2,
			bg = palette.sumiInk3,
			bg_p1 = palette.sumiInk4,
			bg_p2 = palette.sumiInk5,

			special = palette.springViolet1,
			nontext = palette.sumiInk6,
			whitespace = palette.sumiInk6,

			bg_search = palette.springViolet1,
			bg_visual = palette.waveBlue2,

			win_separator = palette.dragonViolet,

			indent = palette.sumiInk4,

			pmenu = {
				fg = palette.fujiWhite,
				fg_sel = "none", -- This is important to make highlights pass-through
				bg = palette.waveBlue1,
				bg_sel = palette.waveBlue2,
				bg_sbar = palette.waveBlue1,
				bg_thumb = palette.waveBlue2,
			},
			float = {
				fg = palette.oldWhite,
				bg = palette.sumiInk4,
				fg_border = palette.sumiInk5,
				bg_border = "none",
			},
		},
		syn = {
			string = palette.dragonGreen2,
			variable = "none",
			member = palette.fujiWhite,
			number = palette.dragonPink,
			constant = palette.dragonOrange,
			identifier = palette.dragonYellow,
			parameter = palette.dragonGray,
			attribute = palette.dragonYellow,
			fun = palette.dragonBlue2,
			statement = palette.dragonViolet,
			keyword = palette.dragonPink,
			operator = palette.dragonRed,
			preproc = palette.dragonRed,
			type = palette.dragonAqua,
			regex = palette.dragonRed,
			deprecated = palette.katanaGray,
			punct = palette.dragonGray2,
			comment = palette.fujiGray,
			special1 = palette.dragonTeal,
			special2 = palette.dragonRed,
			special3 = palette.dragonRed,
		},
		vcs = {
			added = palette.autumnGreen,
			removed = palette.autumnRed,
			changed = palette.autumnYellow,
		},
		diff = {
			add = palette.winterGreen,
			delete = palette.winterRed,
			change = palette.winterBlue,
			text = palette.winterYellow,
		},
		diag = {
			error = palette.samuraiRed,
			ok = palette.springGreen,
			warning = palette.roninYellow,
			info = palette.dragonBlue,
			hint = palette.waveAqua1,
		},
		term = {
			palette.dragonBlack0, -- black
			palette.dragonRed, -- red
			palette.dragonGreen2, -- green
			palette.dragonYellow, -- yellow
			palette.dragonBlue2, -- blue
			palette.dragonPink, -- magenta
			palette.dragonAqua, -- cyan
			palette.oldWhite, -- white
			palette.dragonGray, -- bright black
			palette.waveRed, -- bright red
			palette.dragonGreen, -- bright green
			palette.carpYellow, -- bright yellow
			palette.springBlue, -- bright blue
			palette.springViolet1, -- bright magenta
			palette.waveAqua2, -- bright cyan
			palette.dragonWhite, -- bright white
			palette.dragonOrange, -- extended color 1
			palette.dragonOrange2, -- extended color 2
		},
	}
end
