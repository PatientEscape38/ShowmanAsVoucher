
--#region Joker File Loading

local folder_name = 'vouchers'
local src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/" .. folder_name)
for _, file in ipairs(src) do
    assert(SMODS.load_file("src/" .. folder_name .. "/" .. file))()
end

--#endregion