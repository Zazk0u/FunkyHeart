local UEHelpers = require("UEHelpers")

--Change this keybind to whatever you want.
InfiniteJumpsKeybind = Key.F1

CanInfiniteJumps = false

---@return ABP_PlayerLuna_C
local function GetBunnCharacter()
    ---@class ABP_PlayerLuna_C
    return FindFirstOf("BP_PlayerLuna_C")
end


local function ToggleInfiniteJumps()
    local BunnCharacter = GetBunnCharacter()
    if BunnCharacter:IsValid() and BunnCharacter.Gun:IsValid() then
        if not CanInfiniteJumps then
            CanInfiniteJumps = true
            BunnCharacter.Gun:SetVisibility(false, true)
        else
            CanInfiniteJumps = false
            BunnCharacter.Gun:SetVisibility(true, true)
        end
    end
end


RegisterKeyBind(InfiniteJumpsKeybind, function()
    ExecuteInGameThread(function()
        ToggleInfiniteJumps()
    end)
end)


local function RegisterJumpHook()
    print("Jump hook registered.")
    RegisterHook(
        "/Game/FirstPerson/Blueprints/BP_PlayerLuna.BP_PlayerLuna_C:InpActEvt_IA_Jump_K2Node_EnhancedInputActionEvent_12",
        function(Context, ActionValue, ElapsedTime, TriggeredTime, SourceAction)
            if CanInfiniteJumps then
                local BunnCharacter = GetBunnCharacter()
                BunnCharacter.JumpCurrentCount = 0
            end
        end
    )
end

--BP_PlayerLuna_C's functions don't exist in the main menu, need to wait until a game session before hooking.
NotifyOnNewObject("/Script/Engine.PlayerController", function(ConstructedObject)
    -- Unregister this callback after the first actor is found,
    -- meaning this current function will only be called exactly once.
    RegisterJumpHook()
    return true
end)
