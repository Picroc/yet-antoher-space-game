extends Skeleton3D

func _physics_process(delta):
	var foot = find_bone("Foot.L")
	var rot = get_bone_pose_rotation(find_bone("IKLegTarget.L"))
	print(rot)
	rot.x = -rot.x
	
	set_bone_pose_rotation(foot, rot)
	set_bone_pose_rotation(find_bone("LowerLeg.L"), rot)
