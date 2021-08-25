class CfgPatches
{
    class SW
    {
        name = "Soothing Water";
        units[] = {};
        weapons[] = {};
        requiredVersion = 2.04;
        requiredAddons[] = {};
        author = "Hypoxic";
        url = "";
    };
};

class CfgFunctions
{
    class SW
    {
        class functions
        {
            file = "soothingWater\functions";
            class aceCheck {};
            class heal {};
            class init
            {
                postInit = 1;
            };
            class stateMachine {};
        };
    };
};

class CfgSounds
{
    sounds[] = {};
    
    class getHeart
    {
        name = "Pickup Heart - The Legend of Zelda: Twilight Princess © Nintendo Co., Ltd.";
        sound[] = {"soothingWater\data\sounds\get_Heart.ogg", 1, 1};
        titles[] = {};
    };
};