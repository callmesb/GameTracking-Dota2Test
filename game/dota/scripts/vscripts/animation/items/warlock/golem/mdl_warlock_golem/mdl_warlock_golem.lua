--============ Copyright (c) Valve Corporation, All rights reserved. ==========
--
-- source1import auto-generated animation script
-- local changes will be overwritten if source1import if run again on this asset
--
-- qc:  models/items/warlock/golem/mdl_warlock_golem/mdl_warlock_golem.qc
-- mdl: items/warlock/golem/mdl_warlock_golem/mdl_warlock_golem.mdl
--
--=============================================================================

model:CreateSequence(
	{
		name = "golem_turn_center",
		delta = true,
		fadeInTime = 0,
		fadeOutTime = 0,
		fps = 30,
		framerangesequence = "mdl_warlock_golem_anim_turnposecenter.dmx",
		cmds = {
			{ cmd = "sequence", sequence = "mdl_warlock_golem_anim_turnposecenter.dmx", dst = 1 },
			{ cmd = "fetchframe", sequence = "center_pose", frame = 0, dst = 2 },
			{ cmd = "subtract", dst = 1, src = 2 },
			{ cmd = "slerp", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "golem_turn_left",
		delta = true,
		fadeInTime = 0,
		fadeOutTime = 0,
		fps = 30,
		framerangesequence = "mdl_warlock_golem_anim_turnposeleft.dmx",
		cmds = {
			{ cmd = "sequence", sequence = "mdl_warlock_golem_anim_turnposeleft.dmx", dst = 1 },
			{ cmd = "fetchframe", sequence = "center_pose", frame = 0, dst = 2 },
			{ cmd = "subtract", dst = 1, src = 2 },
			{ cmd = "slerp", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "golem_turn_right",
		delta = true,
		fadeInTime = 0,
		fadeOutTime = 0,
		fps = 30,
		framerangesequence = "mdl_warlock_golem_anim_turnposeright.dmx",
		cmds = {
			{ cmd = "sequence", sequence = "mdl_warlock_golem_anim_turnposeright.dmx", dst = 1 },
			{ cmd = "fetchframe", sequence = "center_pose", frame = 0, dst = 2 },
			{ cmd = "subtract", dst = 1, src = 2 },
			{ cmd = "slerp", dst = 0, src = 1 }
		}
	}
)

model:CreateSequence(
	{
		name = "golem_turns",
		delta = true,
		fadeInTime = 0.2,
		fadeOutTime = 0.2,
		poseParamX = model:CreatePoseParameter( "turn", -1, 1, 0, false ),
		sequences = {
			{ "golem_turn_left", "golem_turn_center", "golem_turn_right" }
		}
	}
)


model:CreateSequence(
	{
		name = "golem_runx",
		looping = true,
		fadeInTime = 0.2,
		fadeOutTime = 0.2,
		sequences = {
			{ "@golem_runx" }
		},
		addlayer = { "golem_turns" },
		activities = {
			{ name = "ACT_DOTA_RUN", weight = 1 }
		}
	}
)

