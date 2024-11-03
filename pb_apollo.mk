#
#	This file is part of the Pitchblack Recovery Project
# 	Copyright (C) 2021-2023 The Pitchblack Recovery Project
#
#	Pitchblack is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	Pitchblack is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#


# avb 2.0
OF_PATCH_AVB20 := 1

# PBRP specific build flags
PB_DISABLE_DEFAULT_DM_VERITY := true
PB_DISABLE_DEFAULT_TREBLE_COMP := true
PB_MAINTAINER := kelvin
PB_VERSION := $(date +%y.%m.%d)

# try to prevent potential data format errors
PB_UNBIND_SDCARD_F2FS := 1
