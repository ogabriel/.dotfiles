return {
    -- shows colors in hex, rgb, hsl, cmyk, and nearest color name
	"norcalli/nvim-colorizer.lua",
	event = "BufRead",
	config = function()
		require("colorizer").setup()
	end,
}
