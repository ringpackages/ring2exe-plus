# Store current directory
cDir = currentDir()

# Change the current directory to the folder where the Ring executable is located
chdir(exefolder())

# Determine the platform-specific binary name for this OS/architecture
cSource = ""
if isWindows()
	if getarch() = "x86"
		cSource = "ring2exe-x86.exe"
	but getarch() = "arm64"
		cSource = "ring2exe-arm64.exe"
	ok
but isLinux()
	if getarch() = "arm64"
		cSource = "ring2exe-linux-arm64"
	ok
but isMacOSX()
	if getarch() = "arm64"
		cSource = "ring2exe-macos-arm"
	but getarch() = "x86" or getarch() = "x64"
		cSource = "ring2exe-macos-intel"
	ok
but isFreeBSD() and getarch() = "x64"
	cSource = "ring2exe-freebsd"
ok

# Rename the platform binary to ring2exe
# (remove the target first: rename() doesn't overwrite on Windows)
cTarget = "ring2exe"
if isWindows()
	cTarget = "ring2exe.exe"
ok
if not isNull(cSource) and fexists(cSource)
	if fexists(cTarget)
		remove(cTarget)
	ok
	rename(cSource, cTarget)
ok

# Ensure the executable bit is set (Unix platforms only)
if not isWindows() and fexists(cTarget)
	system("chmod +x " + cTarget)
ok

# Change the current directory back to the original directory
chdir(cDir)
