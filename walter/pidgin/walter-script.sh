#!/bin/bash
#  Compiles walter-driver.c and buddyiconf.c */
#  glib header files were tricky: http://stackoverflow.com/questions/1146010/why-cant-i-build-a-hello-world-for-glib and https://developer.gnome.org/glib/stable/glib-compiling.html
# Also this: http://stackoverflow.com/questions/29998485/in-c-programming-what-is-undefined-referenceerror-when-compiling

# buddyicon.c dependencies
cc -c pidgin-eclipse/libpurple/buddyicon.c -o "buddyicon.o" `pkg-config --cflags --libs glib-2.0`

# certificate.c dependencies
## dbus-maybe.h no c file
cc -c pidgin-eclipse/libpurple/request.c -o "request.o" `pkg-config --cflags --libs glib-2.0`
cc -c -I"pidgin-eclipse/libpurple" pidgin-eclipse/libpurple/win32/win32dep.c -o "win32dep.o" `pkg-config --cflags --libs glib-2.0`
# Error is finding <winuser.h> which I don't have.

# plugin.c dependencies
cc -c pidgin-eclipse/libpurple/accountopt.c -o "accountopt.o" `pkg-config --cflags --libs glib-2.0`
## dbus-maybe.h valgrind.h no c files
cc -c pidgin-eclipse/libpurple/version.c -o "version.o" `pkg-config --cflags --libs glib-2.0`


# core.c dependencies
## internal.h no c file
cc -c pidgin-eclipse/libpurple/certificate.c -o "certificate.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/cipher.c -o "cipher.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/cmds.c -o "cmds.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/connection.c -o "connection.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/conversation.c -o "conversation.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/dbus-server.c -o "dbus-server.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/debug.c -o "debug.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/dnsquery.c -o "dnsquery.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/ft.c -o "ft.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/idle.c -o "idle.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/imgstore.c -o "imgstore.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/network.c -o "network.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/notify.c -o "notify.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/plugin.c -o "plugin.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/pounce.c -o "pounce.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/prefs.c -o "prefs.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/privacy.c -o "privacy.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/proxy.c -o "proxy.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/savedstatuses.c -o "savedstatuses.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/signals.c -o "signals.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/smiley.c -o "smiley.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/sound.c -o "sound.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/sound-theme-loader.c -o "sound-theme-loader.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/sslconn.c -o "sslconn.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/status.c -o "status.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/stun.c -o "stun.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/theme-manager.c -o "theme-manager.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/util.c -o "util.o" `pkg-config --cflags --libs glib-2.0`

# util.c dependencies
cc -c pidgin-eclipse/libpurple/core.c -o "core.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/ntlm.c -o "ntlm.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/libpurple/prpl.c -o "prpl.o" `pkg-config --cflags --libs glib-2.0`

# my stuff
cc -c pidgin-eclipse/walter-driver.c -o "walter-driver.o" `pkg-config --cflags --libs glib-2.0`
cc -c pidgin-eclipse/hello.c -o "hello.o"
cc buddyicon.o request.o win32dep.o accountopt.o version.o cipher.o certificate.o cmds.o connection.o conversation.o dbus-server.o debug.o dnsquery.o ft.o idle.o imgstore.o network.o notify.o plugin.o pounce.o prefs.o privacy.o proxy.o savedstatuses.o signals.o smiley.o sound.o sound-theme-loader.o sslconn.o status.o stun.o theme-manager.o util.o core.o ntlm.o prpl.o hello.o walter-driver.o -o "walter-driver"

#  Then calls test-driver binary */
./walter-driver
