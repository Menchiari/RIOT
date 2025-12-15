shake_amount -= decay;

if (shake_amount > 0) {
    camera_set_view_pos(view_camera[0], 
        view_xview[0] + random_range(-shake_amount, shake_amount),
        view_yview[0] + random_range(-shake_amount, shake_amount));
} else {
    instance_destroy();
}