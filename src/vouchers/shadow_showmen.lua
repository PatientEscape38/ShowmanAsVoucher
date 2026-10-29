-- Shadow Showmen
SMODS.Voucher {
    key = 'shadow_showmen',
    --atlas = 'vouchers',
    pos = { x = 6, y = 0 }, 
    discovered = true,
    cost = 10,
    restrictions = {
        
    }
}

local showman_ref = SMODS.showman
function SMODS.showman(card_key)
    if next(SMODS.find_card('j_patient_shadow_showmen')) then
        return true
    end
    return showman_ref(card_key)
end