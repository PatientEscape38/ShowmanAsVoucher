--#region Shadow Showmen declairation

SMODS.Voucher {
    key = 'shadow_showmen',
    atlas = 'Showman_Voucher',
    pos = { x = 0, y = 0 }, 
    discovered = true,
    cost = 10
}

--#endregion

--#region Applies Showman's effect through having this voucher

local showman_ref = SMODS.showman
function SMODS.showman(card_key)
    if next(SMODS.find_card('v_shdw_shmn_shadow_showmen')) then
        return true
    end
    return showman_ref(card_key)
end

--#endregion

--#region Replaces the Joker: Showman

SMODS.Joker:take_ownership('j_ring_master', {
    in_pool = function()
        return not(
            G.GAME and G.GAME.used_vouchers['v_shdw_shmn_shadow_showmen']
        )
    end,
}, true)

--#endregion