/*
**	Library   : CLI Colors Utility
**	Purpose   : ANSI color codes for terminal output
**	Author    : Youssef Saeed <youssefelkholey@gmail.com>
**	Date      : 2025
*/

# Set UTF-8 codepage on Windows for Unicode output
if isWindows()
	systemSilent("chcp 65001")
ok

# ========================================
# Color Functions (ANSI Escape Codes)
# ========================================

# Escape character
C_ESC = char(27)

# Reset and Styles
C_RESET    = C_ESC + "[0m"
C_BOLD     = C_ESC + "[1m"
C_DIM      = C_ESC + "[2m"
C_ITALIC   = C_ESC + "[3m"
C_UNDERLINE = C_ESC + "[4m"

# Foreground Colors
C_BLACK    = C_ESC + "[30m"
C_RED      = C_ESC + "[31m"
C_GREEN    = C_ESC + "[32m"
C_YELLOW   = C_ESC + "[33m"
C_BLUE     = C_ESC + "[34m"
C_MAGENTA  = C_ESC + "[35m"
C_CYAN     = C_ESC + "[36m"
C_WHITE    = C_ESC + "[37m"

# Bright Colors
C_BBLACK   = C_ESC + "[90m"
C_BRED     = C_ESC + "[91m"
C_BGREEN   = C_ESC + "[92m"
C_BYELLOW  = C_ESC + "[93m"
C_BBLUE    = C_ESC + "[94m"
C_BMAGENTA = C_ESC + "[95m"
C_BCYAN    = C_ESC + "[96m"
C_BWHITE   = C_ESC + "[97m"

# Background Colors
C_BG_BLACK   = C_ESC + "[40m"
C_BG_RED     = C_ESC + "[41m"
C_BG_GREEN   = C_ESC + "[42m"
C_BG_YELLOW  = C_ESC + "[43m"
C_BG_BLUE    = C_ESC + "[44m"
C_BG_MAGENTA = C_ESC + "[45m"
C_BG_CYAN    = C_ESC + "[46m"
C_BG_WHITE   = C_ESC + "[47m"
