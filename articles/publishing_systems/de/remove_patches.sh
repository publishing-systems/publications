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

patch -R ../../../automated_digital_publishing/html2latex/html_prepare4latex1/html_prepare4latex1.java < ./html_prepare4latex1.java.patch
make -C ../../../automated_digital_publishing/html2latex/html_prepare4latex1/
