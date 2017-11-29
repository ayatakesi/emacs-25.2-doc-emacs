#!/bin/sh
TEXIS_FOR_TRANSLATE="\
		   abbrevs.texi \
		   anti.texi \
		   arevert-xtra.texi \
		   basic.texi \
		   buffers.texi \
		   building.texi \
		   cal-xtra.texi \
		   calendar.texi \
		   cmdargs.texi \
		   commands.texi \
		   custom.texi \
		   dired-xtra.texi \
		   dired.texi \
		   display.texi \
		   emacs-xtra.texi \
		   emacs.texi \
		   emerge-xtra.texi \
		   entering.texi \
		   files.texi \
		   fixit.texi \
		   fortran-xtra.texi \
		   frames.texi \
		   help.texi \
		   indent.texi \
		   killing.texi \
		   kmacro.texi \
		   m-x.texi \
		   macos.texi \
		   maintaining.texi \
		   mark.texi \
		   mini.texi \
		   misc.texi \
		   modes.texi \
		   msdos-xtra.texi \
		   msdos.texi \
		   mule.texi \
		   package.texi \
		   picture-xtra.texi \
		   programs.texi \
		   regs.texi \
		   rmail.texi \
		   screen.texi \
		   search.texi \
		   sending.texi \
		   text.texi \
		   trouble.texi \
		   vc-xtra.texi \
		   vc1-xtra.texi \
		   windows.texi \
		   xresources.texi"
for TEXI in ${TEXIS_FOR_TRANSLATE}
do
    # POファイルの作成
    po4a-gettextize -M utf-8 -L utf-8 -f texinfo -m original_texis/${TEXI} -p ${TEXI}.po
done
