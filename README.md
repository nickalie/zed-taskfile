# Zed Taskfile Extension

Adds [Taskfile](https://taskfile.dev/) support to [Zed](https://zed.dev/).

## Features

- Syntax highlighting for Taskfile.yml and Taskfile.yaml files
- Task outline view for easy navigation
- Run tasks directly from the editor
- Shell command syntax highlighting within task commands
- Auto-completion and bracket matching

## About Taskfile

Taskfile is a task runner / build tool that aims to be simpler and easier to use than GNU Make. It uses YAML syntax and is written in Go.

Learn more at:
- Official site: https://taskfile.dev/
- Documentation: https://taskfile.dev/docs/
- Schema reference: https://taskfile.dev/docs/reference/schema

## Usage

1. Install the extension via Zed's extension manager
2. Open any `Taskfile.yml` or `Taskfile.yaml` file
3. Use the outline view to navigate between tasks
4. Run tasks using Zed's task runner

## Development

To develop this extension:

1. Clone this repository
2. Use Zed's extensions manager (`zed: extensions`) to add this as a dev extension
3. Reload the extension when you make changes

## License

See `LICENSE`.

## Credits

Based on the [zed-make](https://github.com/caius/zed-make) extension structure.
