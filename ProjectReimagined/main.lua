-- name: Project Reimagined Demo
-- description: Man... so many hacks have cool reimaginings of vanilla SM64 levels... what if I took those levels from the hacks and made a reimagined adventure of the original SM64 out of them? This demo has 90 Power Stars, so don't leave any stone unturned!\n\nRomhack by Mr.Needlemouse\n\Co-op Port by Mr.Needlemouse
-- incompatible: romhack

-- Pretty important things that I felt needed to be made first.
gServerSettings.skipIntro = 1
local np = gNetworkPlayers[0]

function on_pause_exit(usedExitToCastle)
  if usedExitToCastle == true then
    warp_to_level(LEVEL_CASTLE, 1, 1)
  end
end

hook_event(HOOK_ON_PAUSE_EXIT, on_pause_exit)

gBehaviorValues.ToadStar1Requirement = 0
gBehaviorValues.MipsStar2Requirement = 182

-- Movtex, pretty much all of the scrolling water.
movtexqc_register('bbh_1_Movtex_0', LEVEL_BBH, 1, 0)
movtexqc_register('castle_inside_1_Movtex_0', LEVEL_CASTLE, 1, 0)
movtexqc_register('hmc_1_Movtex_0', LEVEL_HMC, 1, 0)
movtexqc_register('hmc_2_Movtex_0', LEVEL_HMC, 3, 0)
movtexqc_register('ssl_1_Movtex_0', LEVEL_SSL, 1, 0)
movtexqc_register('bob_1_Movtex_0', LEVEL_BOB, 1, 0)
movtexqc_register('jrb_1_Movtex_0', LEVEL_JRB, 1, 0)
movtexqc_register('castle_grounds_2_Movtex_0', LEVEL_CASTLE_GROUNDS, 2, 0)
movtexqc_register('ddd_1_Movtex_0', LEVEL_DDD, 1, 0)
movtexqc_register('wf_1_Movtex_0', LEVEL_WF, 1, 0)
movtexqc_register('sa_1_Movtex_1', LEVEL_SA, 1, 0)
movtexqc_register('cotmc_1_Movtex_0', LEVEL_COTMC, 1, 0)
movtexqc_register('cotmc_2_Movtex_1', LEVEL_COTMC, 2, 1)

-- These tell you where you specifically are in the stages titled "Hidden Stages!"
function new_level_title()
  if np.currLevelNum == LEVEL_WMOTR and np.currAreaIndex == 1 then
      djui_popup_create("You've entered Big Boo's Secret Domain...beware!", 3)
  end
  if np.currLevelNum == LEVEL_HMC and np.currAreaIndex == 3 then
      djui_popup_create("You found the back entrance to the Crystal Caverns!", 3)
  end
  if np.currLevelNum == LEVEL_WMOTR and np.currAreaIndex == 2 then
      djui_popup_create("You've entered Platform Peril! Watch your step!", 3)
  end
  if np.currLevelNum == LEVEL_PSS and np.currAreaIndex == 1 then
      djui_popup_create("You've entered the Battle Fort!", 3)
  end
  if np.currLevelNum == LEVEL_PSS and np.currAreaIndex == 2 then
      djui_popup_create("You've entered Chief Chilly's Frosty Lair!", 3)
  end
  if np.currLevelNum == LEVEL_SA and np.currAreaIndex == 1 then
      djui_popup_create("You've entered Goomboss' Lair...its King's Whomps' Lair now!", 3)
  end
end

hook_event(HOOK_ON_LEVEL_INIT, new_level_title)
