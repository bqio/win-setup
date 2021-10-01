@echo == Initialize Partitions ==
@diskpart /s %~dp0parts\vista-part.txt
@echo == Installing OS ==
@dism /Apply-Image /ImageFile:%~dp0wims\vista_x86.wim /Index:1 /ApplyDir:W:\
@echo == Initialize Boot ==
@W:
@cd W:\Windows\system32
@bcdboot W:\Windows /s S: /f BIOS
@exit