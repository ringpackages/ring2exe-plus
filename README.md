# Ring2EXE Plus

Convert Ring project source code to executable files for Windows, Linux, macOS, and FreeBSD.

## Features

- **Multi-platform support**: Windows, Linux, macOS, FreeBSD
- **Multiple package formats**: DEB, RPM, AppImage, Flatpak, Snap, App Bundle, DMG, PKG, NSIS, Inno Setup, MSI
- **Auto-library detection**: Automatically detect required libraries from source code
- **Build presets**: Debug, Release, Size optimization
- **UPX compression**: Compress executables for smaller file sizes
- **Project configuration**: Use `ring2exe.conf` for default settings
- **Verbose/Quiet modes**: Control output verbosity

## Installation

```
ringpm install ring2exe-plus from ysdragon
```

## Usage

```
ring ring2exe.ring filename.ring [Options]
```

Or after building:

```bash
# Windows
ring2exe filename.ring

# Linux, macOS, FreeBSD
./ring2exe filename.ring
```

## Options

### Build Options

| Option             | Description                                                |
| ------------------ | ---------------------------------------------------------- |
| `-keep`            | Don't delete temporary files (`.c`, `.obj`, build scripts) |
| `-static`          | Build standalone executable (no shared libraries)          |
| `-gui`             | Build GUI application (hides console on Windows)           |
| `-cc=<compiler>`   | Specify C compiler (e.g., `clang`, `gcc`, `tcc`)           |
| `-cflags=<flags>`  | Specify C compiler flags (e.g., `-g`, `-Wall`)             |
| `-output=<name>`   | Specify custom output filename                             |
| `-icon=<file>`     | Custom application icon (.ico/.icns/.png/.svg)             |
| `-compress`        | Compress executable with UPX                               |
| `-auto-libs`       | Auto-detect required libraries from source                 |

### Build Presets

| Option     | Description                            |
| ---------- | -------------------------------------- |
| `-debug`   | Build with debug symbols (`-g -O0`)    |
| `-release` | Build optimized release (`-O3`)        |
| `-size`    | Optimize for size (`-Os`)              |

### Output Control

| Option     | Description                            |
| ---------- | -------------------------------------- |
| `-verbose` | Show detailed compiler output          |
| `-quiet`   | Suppress all output except errors      |

### Distribution Options

| Option           | Description                              |
| ---------------- | ---------------------------------------- |
| `-dist`          | Prepare application for distribution     |
| `-allruntime`    | Include all libraries in distribution    |
| `-mobileqt`      | Prepare Qt project for mobile platforms  |
| `-webassemblyqt` | Prepare Qt project for WebAssembly       |

### Package Metadata

| Option              | Description                              |
| ------------------- | ---------------------------------------- |
| `-version=<ver>`    | Package version (default: 1.0)           |
| `-description=<t>`  | Package description                      |
| `-maintainer=<e>`   | Maintainer email                         |
| `-license=<type>`   | License type (default: MIT)              |
| `-homepage=<url>`   | Project homepage URL                     |

### Package Format Flags

Use with `-dist` to specify which package formats to generate. Default: scripts only.

| Flag         | Platform | Description                              |
| ------------ | -------- | ---------------------------------------- |
| `-scripts`   | All      | Generate installation scripts (default)  |
| `-deb`       | Linux    | Generate Debian package (.deb)           |
| `-rpm`       | Linux    | Generate RPM package (.rpm)              |
| `-appimage`  | Linux    | Generate AppImage package                |
| `-flatpak`   | Linux    | Generate Flatpak package                 |
| `-snap`      | Linux    | Generate Snap package                    |
| `-appbundle` | macOS    | Generate App Bundle (.app)               |
| `-dmg`       | macOS    | Generate DMG disk image                  |
| `-pkg`       | FreeBSD  | Generate FreeBSD package (.pkg)          |
| `-nsis`      | Windows  | Generate NSIS installer                  |
| `-inno`      | Windows  | Generate Inno Setup installer            |
| `-msi`       | Windows  | Generate MSI installer (WiX)             |

### Library Flags

| Pattern        | Description                                         |
| -------------- | --------------------------------------------------- |
| `-<library>`   | Include library (e.g., `-qt`, `-allegro`, `-mysql`) |
| `-no<library>` | Exclude library (e.g., `-noqt`, `-noallegro`)       |

### Commands

| Command       | Description                              |
| ------------- | ---------------------------------------- |
| `--list-libs` | Show all available libraries             |
| `--help, -h`  | Show help message                        |
| `--version`   | Show version number                      |

## Examples

```bash
# Basic build
ring2exe myapp.ring

# Build with custom output name
ring2exe myapp.ring -output=MyApplication

# Debug build with verbose output
ring2exe myapp.ring -debug -verbose

# Release build with compression
ring2exe myapp.ring -release -compress

# Auto-detect and include required libraries
ring2exe myapp.ring -auto-libs -dist

# Linux: Generate all package formats
ring2exe myapp.ring -dist -deb -rpm -appimage -flatpak -snap

# macOS: Generate App Bundle and DMG
ring2exe myapp.ring -dist -appbundle -dmg

# Windows: Generate installers
ring2exe myapp.ring -dist -nsis -inno

# FreeBSD: Generate pkg package
ring2exe myapp.ring -dist -pkg

# With custom package metadata
ring2exe myapp.ring -dist -deb \
    -version=2.0.0 \
    -description="My awesome Ring application" \
    -maintainer="dev@example.com" \
    -license=MIT \
    -homepage=https://example.com

# Combine options
ring2exe myapp.ring -dist -deb -qt -allruntime -release -compress
```

## Project Configuration File

Create a `ring2exe.conf` file in your project directory:

```ring
aProjectConfig = [
    :version = "1.0.0",
    :description = "My Ring Application",
    :maintainer = "Developer <dev@example.com>",
    :license = "MIT",
    :homepage = "https://example.com",
    :icon = "icon.png"
]
```

These settings will be used as defaults and can be overridden by command-line options.

## Building Ring2EXE Plus

```bash
# Build from source
ring ring2exe.ring ring2exe.ring

# Or with release optimizations
ring ring2exe.ring ring2exe.ring -release
```

## Requirements

- Ring Programming Language
- C Compiler (GCC, Clang, MSVC, or TCC)
- Optional: [UPX](https://github.com/upx/upx/releases/latest) (for compression)
- Optional: Package-specific tools:
  - [NSIS](https://nsis.sourceforge.io/Download) (for Windows NSIS installers)
  - [Inno Setup](https://jrsoftware.org/isdl.php) (for Windows Inno installers)
  - [WiX Toolset](https://github.com/wixtoolset/wix/releases/latest) (for Windows MSI installers)
  - dpkg-deb (for Debian packages)
  - rpmbuild (for RPM packages)
  - appimagetool (for AppImage)
  - flatpak-builder (for Flatpak)
  - snapcraft (for Snap)
  - hdiutil (for DMG, macOS only)

## License

This project is licensed under the MIT License. See the [`LICENSE`](LICENSE) file for details.