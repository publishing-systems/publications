#!/bin/sh
# Copyright (C) 2015  Stephan Kreutzer
# 
# This file is part of publishing-systems.org.
# 
# publishing-systems.org is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License version 3 or any later version,
# as published by the Free Software Foundation.
# 
# publishing-systems.org is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU Affero General Public License 3 for more details.
# 
# You should have received a copy of the GNU Affero General Public License 3
# along with publishing-systems.org. If not, see <http://www.gnu.org/licenses/>.

rm -f ./out/publishing_systems_en.html
rm -f ./out/publishing_systems_en.epub
rm -f ./out/publishing_systems_en.tex
rm -f ./out/publishing_systems_en.pdf

java -classpath ../../../automated_digital_publishing/workflows/ odt2all1 ./odt2all1_config.xml ./out/ > out.log 2>&1 | tee out.log

mv -f ./out/out.html ./out/publishing_systems_en.html
mv -f ./out/out.epub ./out/publishing_systems_en.epub
mv -f ./out/out.tex ./out/publishing_systems_en.tex
mv -f ./out/out.pdf ./out/publishing_systems_en.pdf
