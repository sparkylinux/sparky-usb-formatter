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
	rm -f /usr/lib/sparkycenter/system/sparky-usb-formatter.desktop
   	rm -f /usr/share/applications/sparky-usb-formatter.desktop
	rm -f /usr/share/menu/sparky-usb-formatter
	rm -rf /usr/share/sparky/sparky-usb-formatter
else
	cp bin/sparky-usb-formatter /usr/bin/
	if [ ! -d /usr/lib/sparkycenter/system ]; then
		mkdir -p /usr/lib/sparkycenter/system
	fi
	cp lib/sparky-usb-formatter.desktop /usr/lib/sparkycenter/system/
	cp share/sparky-usb-formatter.desktop /usr/share/applications/
	cp share/sparky-usb-formatter /usr/share/menu/
	if [ ! -d /usr/share/sparky/sparky-usb-formatter ]; then
		mkdir -p /usr/share/sparky/sparky-usb-formatter
	fi
	cp sparky-usb-formatter/* /usr/share/sparky/sparky-usb-formatter
fi
