# Godot Cubemap Generator

This project generates cubemap templates (or cubemaps from a 3D scene) using Godot itself.

- Run `create_cubemap_template.tscn` from the editor to create a set of cubemap
  template images in `user://`.
- Run `create_example_cubemap.tscn` from the editor to create a set of cubemap
  images in `user://` from a 3D scene.

Images are saved to `user://`, which is automatically opened after the project runs.

You can use the generated images by changing their import type to **Cubemap** in
the Import dock, and supplying them to a custom shader that accepts cubemap
parameters.

Also included in this project is `example_cubemap_display.tscn`, which is a sky
shader that displays a cubemap (instead of a dual parabolid panorama sky
texture). Using a cubemap-based sky allows for less distortion compared to dual
parabolid, especially at the top and bottom.

## License

Copyright © 2024-present Hugo Locurcio and contributors

Unless otherwise specified, files in this repository are licensed under the
MIT license. See [LICENSE.md](LICENSE.md) for more information.
