(define (problem roverprob) (:domain Rover)
(:objects
	general - Lander
	colour high_res low_res - Mode
	rover0 rover1 rover2 - Rover
	rover0store rover1store rover2store - Store
	waypoint0 waypoint1 waypoint2 waypoint3 waypoint4 waypoint5 waypoint6 waypoint7 waypoint8 waypoint9 waypoint10 waypoint11 waypoint12 waypoint13 waypoint14 - Waypoint
	camera0 camera1 camera2 - Camera
	objective0 objective1 objective2 objective3 objective4 objective5 - Objective
	)
(:init
	(visible waypoint0 waypoint9)
	(visible waypoint9 waypoint0)
	(visible waypoint1 waypoint0)
	(visible waypoint0 waypoint1)
	(visible waypoint1 waypoint3)
	(visible waypoint3 waypoint1)
	(visible waypoint1 waypoint4)
	(visible waypoint4 waypoint1)
	(visible waypoint1 waypoint5)
	(visible waypoint5 waypoint1)
	(visible waypoint1 waypoint6)
	(visible waypoint6 waypoint1)
	(visible waypoint1 waypoint12)
	(visible waypoint12 waypoint1)
	(visible waypoint2 waypoint4)
	(visible waypoint4 waypoint2)
	(visible waypoint3 waypoint0)
	(visible waypoint0 waypoint3)
	(visible waypoint3 waypoint2)
	(visible waypoint2 waypoint3)
	(visible waypoint3 waypoint13)
	(visible waypoint13 waypoint3)
	(visible waypoint3 waypoint14)
	(visible waypoint14 waypoint3)
	(visible waypoint4 waypoint3)
	(visible waypoint3 waypoint4)
	(visible waypoint4 waypoint11)
	(visible waypoint11 waypoint4)
	(visible waypoint4 waypoint14)
	(visible waypoint14 waypoint4)
	(visible waypoint5 waypoint0)
	(visible waypoint0 waypoint5)
	(visible waypoint5 waypoint6)
	(visible waypoint6 waypoint5)
	(visible waypoint5 waypoint8)
	(visible waypoint8 waypoint5)
	(visible waypoint5 waypoint10)
	(visible waypoint10 waypoint5)
	(visible waypoint6 waypoint8)
	(visible waypoint8 waypoint6)
	(visible waypoint7 waypoint0)
	(visible waypoint0 waypoint7)
	(visible waypoint7 waypoint2)
	(visible waypoint2 waypoint7)
	(visible waypoint7 waypoint5)
	(visible waypoint5 waypoint7)
	(visible waypoint7 waypoint8)
	(visible waypoint8 waypoint7)
	(visible waypoint7 waypoint10)
	(visible waypoint10 waypoint7)
	(visible waypoint8 waypoint0)
	(visible waypoint0 waypoint8)
	(visible waypoint8 waypoint10)
	(visible waypoint10 waypoint8)
	(visible waypoint9 waypoint1)
	(visible waypoint1 waypoint9)
	(visible waypoint9 waypoint5)
	(visible waypoint5 waypoint9)
	(visible waypoint9 waypoint8)
	(visible waypoint8 waypoint9)
	(visible waypoint9 waypoint13)
	(visible waypoint13 waypoint9)
	(visible waypoint9 waypoint14)
	(visible waypoint14 waypoint9)
	(visible waypoint10 waypoint6)
	(visible waypoint6 waypoint10)
	(visible waypoint10 waypoint9)
	(visible waypoint9 waypoint10)
	(visible waypoint11 waypoint3)
	(visible waypoint3 waypoint11)
	(visible waypoint11 waypoint7)
	(visible waypoint7 waypoint11)
	(visible waypoint11 waypoint9)
	(visible waypoint9 waypoint11)
	(visible waypoint11 waypoint13)
	(visible waypoint13 waypoint11)
	(visible waypoint11 waypoint14)
	(visible waypoint14 waypoint11)
	(visible waypoint12 waypoint0)
	(visible waypoint0 waypoint12)
	(visible waypoint12 waypoint3)
	(visible waypoint3 waypoint12)
	(visible waypoint12 waypoint4)
	(visible waypoint4 waypoint12)
	(visible waypoint12 waypoint5)
	(visible waypoint5 waypoint12)
	(visible waypoint12 waypoint11)
	(visible waypoint11 waypoint12)
	(visible waypoint12 waypoint13)
	(visible waypoint13 waypoint12)
	(visible waypoint13 waypoint0)
	(visible waypoint0 waypoint13)
	(visible waypoint13 waypoint5)
	(visible waypoint5 waypoint13)
	(visible waypoint13 waypoint8)
	(visible waypoint8 waypoint13)
	(visible waypoint14 waypoint5)
	(visible waypoint5 waypoint14)
	(visible waypoint14 waypoint12)
	(visible waypoint12 waypoint14)
	(visible waypoint14 waypoint13)
	(visible waypoint13 waypoint14)
	(at_soil_sample waypoint0)
	(at_rock_sample waypoint0)
	(at_soil_sample waypoint1)
	(at_rock_sample waypoint1)
	(at_soil_sample waypoint2)
	(at_rock_sample waypoint2)
	(at_soil_sample waypoint4)
	(at_rock_sample waypoint4)
	(at_soil_sample waypoint6)
	(at_soil_sample waypoint7)
	(at_soil_sample waypoint8)
	(at_soil_sample waypoint9)
	(at_soil_sample waypoint11)
	(at_rock_sample waypoint11)
	(at_soil_sample waypoint12)
	(at_soil_sample waypoint13)
	(at_lander general waypoint1)
	(channel_free general)
	(at rover0 waypoint1)
	(available rover0)
	(store_of rover0store rover0)
	(empty rover0store)
	(equipped_for_soil_analysis rover0)
	(equipped_for_imaging rover0)
	(can_traverse rover0 waypoint1 waypoint0)
	(can_traverse rover0 waypoint0 waypoint1)
	(can_traverse rover0 waypoint1 waypoint3)
	(can_traverse rover0 waypoint3 waypoint1)
	(can_traverse rover0 waypoint1 waypoint5)
	(can_traverse rover0 waypoint5 waypoint1)
	(can_traverse rover0 waypoint1 waypoint6)
	(can_traverse rover0 waypoint6 waypoint1)
	(can_traverse rover0 waypoint1 waypoint9)
	(can_traverse rover0 waypoint9 waypoint1)
	(can_traverse rover0 waypoint1 waypoint12)
	(can_traverse rover0 waypoint12 waypoint1)
	(can_traverse rover0 waypoint0 waypoint7)
	(can_traverse rover0 waypoint7 waypoint0)
	(can_traverse rover0 waypoint0 waypoint8)
	(can_traverse rover0 waypoint8 waypoint0)
	(can_traverse rover0 waypoint0 waypoint13)
	(can_traverse rover0 waypoint13 waypoint0)
	(can_traverse rover0 waypoint3 waypoint4)
	(can_traverse rover0 waypoint4 waypoint3)
	(can_traverse rover0 waypoint3 waypoint11)
	(can_traverse rover0 waypoint11 waypoint3)
	(can_traverse rover0 waypoint3 waypoint14)
	(can_traverse rover0 waypoint14 waypoint3)
	(can_traverse rover0 waypoint5 waypoint10)
	(can_traverse rover0 waypoint10 waypoint5)
	(can_traverse rover0 waypoint4 waypoint2)
	(can_traverse rover0 waypoint2 waypoint4)
	(at rover1 waypoint8)
	(available rover1)
	(store_of rover1store rover1)
	(empty rover1store)
	(equipped_for_rock_analysis rover1)
	(equipped_for_imaging rover1)
	(can_traverse rover1 waypoint8 waypoint0)
	(can_traverse rover1 waypoint0 waypoint8)
	(can_traverse rover1 waypoint8 waypoint5)
	(can_traverse rover1 waypoint5 waypoint8)
	(can_traverse rover1 waypoint8 waypoint9)
	(can_traverse rover1 waypoint9 waypoint8)
	(can_traverse rover1 waypoint8 waypoint10)
	(can_traverse rover1 waypoint10 waypoint8)
	(can_traverse rover1 waypoint8 waypoint13)
	(can_traverse rover1 waypoint13 waypoint8)
	(can_traverse rover1 waypoint0 waypoint1)
	(can_traverse rover1 waypoint1 waypoint0)
	(can_traverse rover1 waypoint0 waypoint12)
	(can_traverse rover1 waypoint12 waypoint0)
	(can_traverse rover1 waypoint5 waypoint14)
	(can_traverse rover1 waypoint14 waypoint5)
	(can_traverse rover1 waypoint9 waypoint11)
	(can_traverse rover1 waypoint11 waypoint9)
	(can_traverse rover1 waypoint10 waypoint6)
	(can_traverse rover1 waypoint6 waypoint10)
	(can_traverse rover1 waypoint10 waypoint7)
	(can_traverse rover1 waypoint7 waypoint10)
	(can_traverse rover1 waypoint13 waypoint3)
	(can_traverse rover1 waypoint3 waypoint13)
	(can_traverse rover1 waypoint12 waypoint4)
	(can_traverse rover1 waypoint4 waypoint12)
	(can_traverse rover1 waypoint7 waypoint2)
	(can_traverse rover1 waypoint2 waypoint7)
	(at rover2 waypoint10)
	(available rover2)
	(store_of rover2store rover2)
	(empty rover2store)
	(equipped_for_soil_analysis rover2)
	(equipped_for_rock_analysis rover2)
	(equipped_for_imaging rover2)
	(can_traverse rover2 waypoint10 waypoint5)
	(can_traverse rover2 waypoint5 waypoint10)
	(can_traverse rover2 waypoint10 waypoint6)
	(can_traverse rover2 waypoint6 waypoint10)
	(can_traverse rover2 waypoint10 waypoint7)
	(can_traverse rover2 waypoint7 waypoint10)
	(can_traverse rover2 waypoint10 waypoint8)
	(can_traverse rover2 waypoint8 waypoint10)
	(can_traverse rover2 waypoint10 waypoint9)
	(can_traverse rover2 waypoint9 waypoint10)
	(can_traverse rover2 waypoint5 waypoint0)
	(can_traverse rover2 waypoint0 waypoint5)
	(can_traverse rover2 waypoint5 waypoint1)
	(can_traverse rover2 waypoint1 waypoint5)
	(can_traverse rover2 waypoint5 waypoint12)
	(can_traverse rover2 waypoint12 waypoint5)
	(can_traverse rover2 waypoint5 waypoint14)
	(can_traverse rover2 waypoint14 waypoint5)
	(can_traverse rover2 waypoint7 waypoint2)
	(can_traverse rover2 waypoint2 waypoint7)
	(can_traverse rover2 waypoint7 waypoint11)
	(can_traverse rover2 waypoint11 waypoint7)
	(can_traverse rover2 waypoint0 waypoint3)
	(can_traverse rover2 waypoint3 waypoint0)
	(can_traverse rover2 waypoint0 waypoint13)
	(can_traverse rover2 waypoint13 waypoint0)
	(can_traverse rover2 waypoint1 waypoint4)
	(can_traverse rover2 waypoint4 waypoint1)
	(on_board camera0 rover1)
	(calibration_target camera0 objective4)
	(supports camera0 colour)
	(supports camera0 low_res)
	(on_board camera1 rover0)
	(calibration_target camera1 objective0)
	(supports camera1 high_res)
	(supports camera1 low_res)
	(on_board camera2 rover2)
	(calibration_target camera2 objective2)
	(supports camera2 low_res)
	(visible_from objective0 waypoint0)
	(visible_from objective0 waypoint1)
	(visible_from objective0 waypoint2)
	(visible_from objective0 waypoint3)
	(visible_from objective0 waypoint4)
	(visible_from objective0 waypoint5)
	(visible_from objective0 waypoint6)
	(visible_from objective0 waypoint7)
	(visible_from objective0 waypoint8)
	(visible_from objective1 waypoint0)
	(visible_from objective1 waypoint1)
	(visible_from objective2 waypoint0)
	(visible_from objective2 waypoint1)
	(visible_from objective2 waypoint2)
	(visible_from objective2 waypoint3)
	(visible_from objective2 waypoint4)
	(visible_from objective2 waypoint5)
	(visible_from objective2 waypoint6)
	(visible_from objective2 waypoint7)
	(visible_from objective2 waypoint8)
	(visible_from objective2 waypoint9)
	(visible_from objective2 waypoint10)
	(visible_from objective2 waypoint11)
	(visible_from objective2 waypoint12)
	(visible_from objective2 waypoint13)
	(visible_from objective2 waypoint14)
	(visible_from objective3 waypoint0)
	(visible_from objective3 waypoint1)
	(visible_from objective3 waypoint2)
	(visible_from objective3 waypoint3)
	(visible_from objective3 waypoint4)
	(visible_from objective4 waypoint0)
	(visible_from objective4 waypoint1)
	(visible_from objective4 waypoint2)
	(visible_from objective4 waypoint3)
	(visible_from objective4 waypoint4)
	(visible_from objective5 waypoint0)
	(visible_from objective5 waypoint1)
)

(:goal (and
(communicated_soil_data waypoint7)
(communicated_soil_data waypoint2)
(communicated_rock_data waypoint0)
(communicated_rock_data waypoint1)
(communicated_rock_data waypoint11)
(communicated_rock_data waypoint4)
(communicated_rock_data waypoint2)
(communicated_image_data objective4 high_res)
(communicated_image_data objective3 low_res)
(communicated_image_data objective5 low_res)
	)
)
)
