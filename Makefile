# -*- coding: utf-8 -*-
#
#    linotp-auth-pam-python - LinOTP PAM module for pam_python
#    Copyright (C) 2010 - 2017 KeyIdentity GmbH
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#     E-mail: linotp@keyidentity.com
#     Contact: www.linotp.org
#     Support: www.keyidentity.com
#

PYTHON=`which python`

source:
	$(PYTHON) setup.py sdist

create:
	mkdir -p ../build
	make source
	mv dist/pam_py_linotp*.tar.gz ../build/

clean:
	rm -rf dist/
	rm -rf pam_py_linotp.egg-info/
	rm -f ../build/pam_py_linotp*.tar.gz
