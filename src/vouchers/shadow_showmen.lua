-- Shadow Showmen
SMODS.Voucher {
    key = 'shadow_showmen',
    atlas = 'Showman_Voucher',
    pos = { x = 0, y = 0 }, 
    discovered = true,
    cost = 10
}

local showman_ref = SMODS.showman
function SMODS.showman(card_key)
    if next(SMODS.find_card('j_shdw_shmn_shadow_showmen')) then
        return true
    end
    return showman_ref(card_key)
end