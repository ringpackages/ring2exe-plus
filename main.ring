/*
**	Application : Ring2EXE Plus Package
**	Purpose	    : Main entry point for the Ring2EXE Plus package
**	Original    : Mahmoud Fayed <msfclipper@yahoo.com>
**	Fork by	    : Youssef Saeed <youssefelkholey@gmail.com>
**	Date	    : 2026
*/

# Color Constants
C_ESC    = char(27)
C_RESET  = C_ESC + "[0m"
C_BOLD   = C_ESC + "[1m"
C_DIM    = C_ESC + "[2m"
C_YELLOW = C_ESC + "[33m"
C_CYAN   = C_ESC + "[36m"
C_BCYAN  = C_ESC + "[96m"

func main
	DrawLine()
	# Title
	see C_BOLD + C_BCYAN + "  Ring2EXE Plus" + C_RESET 
	? C_DIM + " - Package Information" + C_RESET
	see nl
	# Credits
	? C_DIM + "  Original: " + C_RESET + "Mahmoud Fayed <msfclipper@yahoo.com> (2017-2025)"
	? C_DIM + "  Fork by:  " + C_RESET + C_BCYAN + "Youssef Saeed" + C_RESET + " <youssefelkholey@gmail.com> (2025-2026)"
	see nl
	DrawLine()
	see nl

	# Description
	PrintSection("About")
	? "    " + C_DIM + "Ring2EXE Plus is a fork of the Ring2EXE tool for the Ring" + C_RESET
	? "    " + C_DIM + "programming language. It converts Ring source code to native" + C_RESET
	? "    " + C_DIM + "executables for Windows, Linux, macOS & FreeBSD." + C_RESET
	see nl

	# Quick Start
	PrintSection("Quick Start")
	PrintCommand("ring2exe myapp.ring", "Build executable")
	PrintCommand("ring2exe myapp.ring -static", "Build standalone executable")
	PrintCommand("ring2exe myapp.ring -dist", "Prepare for distribution")
	see nl

	# Location
	PrintSection("Location")
	? "    " + C_DIM + "Tool location: " + C_RESET + C_CYAN + "ring/tools/ring2exe" + C_RESET
	? "    " + C_DIM + "Run command:  " + C_RESET + C_YELLOW + "ring2exe" + C_RESET
	see nl

	DrawLine()

func DrawLine
	? C_DIM + copy("─",75) + C_RESET

func PrintSection cTitle
	? "  " + C_BOLD + C_BCYAN + "● " + cTitle + C_RESET

func PrintOption cOption, cDesc
	nPad = 30 - len(cOption)
	if nPad < 2 nPad = 2 ok
	see "    " + C_CYAN + cOption + C_RESET + copy(" ", nPad) 
	? C_DIM + cDesc + C_RESET

func PrintCommand cCommand, cDesc
	PrintOption(cCommand, cDesc)
