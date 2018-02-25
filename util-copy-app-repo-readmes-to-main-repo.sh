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

# Copies the README.md from the tempus-themes-[program] into the equivalent
# subdirectory of the `tempus-themes` repo.
# Requires the base Tempus themes repo at the $HOME directory
# git clone https://github.com/protesilaos/tempus-themes.git --depth 1

# array with templates
tempus_templates=$(ls $HOME/tempus-themes-generator/templates -I yaml -I shell-variables -I xcolors)

# specify paths to files
tempus_output_dir=$HOME/tempus-themes

# copy READMEs into the main repo
for i in $tempus_templates
do
    cp $HOME/tempus-themes-${i}/README.md $tempus_output_dir/$i/
done
