#!/bin/bash

    # This program is free software: you can redistribute it and/or modify
    # it under the terms of the GNU General Public License as published by
    # the Free Software Foundation, either version 3 of the License, or
    # (at your option) any later version.

    # This program is distributed in the hope that it will be useful,
    # but WITHOUT ANY WARRANTY; without even the implied warranty of
    # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    # GNU General Public License for more details.

    # You should have received a copy of the GNU General Public License
    # along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Ad hoc script to copy the CONTRIBUTING.md and LICENSE files into the present repository
# Requires the base Tempus themes repo at the $HOME directory
# git clone https://github.com/protesilaos/tempus-themes.git --depth 1

# specify paths to files
tempus_input_dir=$HOME/tempus-themes
tempus_output_dir=$HOME/tempus-themes-utils/

# set parent directory and switch to it
parent_dir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_dir"

# copy the files
cp $tempus_input_dir/CONTRIBUTING.md $tempus_output_dir && echo 'Copied CONTRIBUTING.md'
cp $tempus_input_dir/LICENSE $tempus_output_dir && echo 'Copied LICENSE'

