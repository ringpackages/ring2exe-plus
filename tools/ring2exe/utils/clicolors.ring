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


# Reset and Styles
func C_RESET    return char(27) + "[0m"
func C_BOLD     return char(27) + "[1m"
func C_DIM      return char(27) + "[2m"
func C_ITALIC   return char(27) + "[3m"
func C_UNDERLINE return char(27) + "[4m"

# Foreground Colors
func C_BLACK    return char(27) + "[30m"
func C_RED      return char(27) + "[31m"
func C_GREEN    return char(27) + "[32m"
func C_YELLOW   return char(27) + "[33m"
func C_BLUE     return char(27) + "[34m"
func C_MAGENTA  return char(27) + "[35m"
func C_CYAN     return char(27) + "[36m"
func C_WHITE    return char(27) + "[37m"

# Bright Colors
func C_BBLACK   return char(27) + "[90m"
func C_BRED     return char(27) + "[91m"
func C_BGREEN   return char(27) + "[92m"
func C_BYELLOW  return char(27) + "[93m"
func C_BBLUE    return char(27) + "[94m"
func C_BMAGENTA return char(27) + "[95m"
func C_BCYAN    return char(27) + "[96m"
func C_BWHITE   return char(27) + "[97m"

# Background Colors
func C_BG_BLACK   return char(27) + "[40m"
func C_BG_RED     return char(27) + "[41m"
func C_BG_GREEN   return char(27) + "[42m"
func C_BG_YELLOW  return char(27) + "[43m"
func C_BG_BLUE    return char(27) + "[44m"
func C_BG_MAGENTA return char(27) + "[45m"
func C_BG_CYAN    return char(27) + "[46m"
func C_BG_WHITE   return char(27) + "[47m"
