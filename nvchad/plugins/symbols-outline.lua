local present, outline = pcall(require, "symbols-outline")

if not present then
	return
end

outline.setup({
	width = 15,
})
