extends Node

const SAVE_IMAGE = true


func _ready() -> void:
	if not SAVE_IMAGE:
		return

	get_viewport().size = Vector2i(1024, 1536)
	get_viewport().get_window().content_scale_size = get_viewport().size
	for i in 2:
		await get_tree().process_frame
	get_viewport().get_texture().get_image().save_png("user://2x3.png")

	get_viewport().size = Vector2i(1536, 1024)
	get_viewport().get_window().content_scale_size = get_viewport().size
	for i in 2:
		await get_tree().process_frame
	get_viewport().get_texture().get_image().save_png("user://3x2.png")

	get_viewport().size = Vector2i(512, 3072)
	get_viewport().get_window().content_scale_size = get_viewport().size
	for i in 2:
		await get_tree().process_frame
	get_viewport().get_texture().get_image().save_png("user://1x6.png")

	get_viewport().size = Vector2i(3072, 512)
	get_viewport().get_window().content_scale_size = get_viewport().size
	for i in 2:
		await get_tree().process_frame
	get_viewport().get_texture().get_image().save_png("user://6x1.png")

	OS.shell_open(ProjectSettings.globalize_path("user://"))
	get_tree().quit()
