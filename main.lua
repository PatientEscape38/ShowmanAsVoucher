--#region Atlases

SMODS.Atlas {
    key = 'Showman_Voucher',
    path = 'Showman_Voucher.png',
    px = 71,
    py = 95
}

--#endregion

--#region File Loading

local load_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/load")
for _, file in ipairs(load_src) do
    assert(SMODS.load_file("src/load/" .. file))()
end

--#endregion

--#region Disables the Joker: Showman

local id = 'j_ring_master'
G.P_CENTERS[id].set = "Disabled"

--#endregion