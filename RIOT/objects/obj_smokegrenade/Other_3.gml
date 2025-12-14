if (part_type_exists(part_type)) {
	part_type_destroy(part_type);
}
if (part_emitter_exists(part_system,part_emitter)) {
	part_emitter_destroy(part_system,part_emitter);
}
if (part_system_exists(part_system)) {
	part_system_destroy(part_system);
}

if (part_type_exists(part_type2)) {
	part_type_destroy(part_type2);
}
if (part_emitter_exists(part_system2,part_emitter2)) {
	part_emitter_destroy(part_system2,part_emitter2);
}
if (part_system_exists(part_system2)) {
	part_system_destroy(part_system2);
}
