local Creator = loadstring(game:HttpGet(
    "https://pastebin.com/raw/0fSnvfGt"
))()

local entity = Creator.createEntity({
    CustomName = "A-60",

    Model = "https://github.com/Ilikerobloxdoors/A-60-original-from-rooms/blob/main/A-60.rbxm",

    Speed = 220,
    DelayTime = 3,

    HeightOffset = 0,
    CanKill = true,
    KillRange = 40,

    BreakLights = false,
    BackwardsMovement = false,

    FlickerLights = {
        false,
        1.3,
    },

    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },

    CamShake = {
        false,
        {5, 25, 0.2, 1.5},
        100,
    },

    Jumpscare = {
        false,
        {
            Image1 = "",
            Image2 = "",

            Shake = false,

            Sound1 = {
                0,
                {Volume = 0},
            },

            Sound2 = {
                0,
                {Volume = 0},
            },

            Flashing = {
                false,
                Color3.fromRGB(255, 255, 255),
            },

            Tease = {
                false,
                Min = 0,
                Max = 0,
            },
        },
    },

    CustomDialog = {
        "You died to A-60..."
    },
})

entity.Debug.OnEntitySpawned = function(entityTable)
    print("A-60 spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("A-60 despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("A-60 started moving")
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("A-60 finished rebound")
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("A-60 entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player looked at A-60")
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player died to A-60")
end

Creator.runEntity(entity)
