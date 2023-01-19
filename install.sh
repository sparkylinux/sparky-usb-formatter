#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
	rm -f /usr/bin/sparky-usb-formatter
   	rm -f /usr/share/applications/sparky-usb-formatter.desktop
	rm -rf /usr/share/sparky/sparky-usb-formatter
	rm -rf /usr/share/icons/sparky/usb-format
else
	cp bin/sparky-usb-formatter /usr/bin/
	cp share/sparky-usb-formatter.desktop /usr/share/applications/
	if [ ! -d /usr/share/sparky/sparky-usb-formatter ]; then
		mkdir -p /usr/share/sparky/sparky-usb-formatter
	fi
	cp lang/* /usr/share/sparky/sparky-usb-formatter
	if [ ! -d /usr/share/icons/sparky/usb-format ]; then
		mkdir -p /usr/share/icons/sparky/usb-format
	fi
	cp share/sparky48.png /usr/share/icons/sparky/usb-format/
fi
