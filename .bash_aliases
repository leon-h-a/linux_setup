DIR="/mnt/c/Users/Leon.hergesic.adamov/Desktop/"
if [ -d "$DIR" ]; then
	BASE="/mnt/c/Users/Leon.hergesic.adamov/"
else
	BASE="/mnt/c/Users/Leon/"
fi

DIR="/mnt/c/Users/Leon.hergesic.adamov/Desktop/"
if [ -d "$DIR" ]; then
	UCENJE="/mnt/c/Users/Leon.hergesic.adamov/OneDrive/Dokumenti/"
else
	UCENJE="/mnt/c/Users/Leon/OneDrive/Dokumenti/"
fi

# Moving around
alias dt="cd ${BASE}Desktop"
alias dc="cd ${BASE}OneDrive/Dokumenti"

alias act="cd ${BASE}OneDrive/projekti_2021/3-autoCUT\ \(live\)/"
alias osn="cd ${BASE}OneDrive/Dokumenti/06-osnovna"
alias fila="cd ${BASE}OneDrive/projekti_2023/34-printing\ filament\ manufacturing"
alias todo="vim ${BASE}OneDrive/IntisEngineering/ie.todo.md"
alias eks="vim ${BASE}OneDrive/projekti_2023/34-printing\ filament\ manufacturing/eks.todo.md"
alias pos="cd ${BASE}OneDrive/Dokumenti/09-posao"
alias gen="vim ${BASE}OneDrive/Dokumenti/04-proucavanja/general_fun_facts.txt"
alias mba="vim ${BASE}OneDrive/Dokumenti/10-opce_knjige/ten_day_mba/ten_day_mba_notes.txt"
alias ob="vim ${BASE}OneDrive/Dokumenti/10-opce_knjige/organisational_behavior/organisational_behavior_notes.txt"
alias myb="vim ${BASE}OneDrive/Dokumenti/10-opce_knjige/managing_your_boss/managing_your_boss_notes.txt"
alias sah="vim ${BASE}OneDrive/Dokumenti/10-opce_knjige/sah.txt"
alias gul="cd ${BASE}OneDrive/Dokumenti/12-gulugulu"
alias pay="vim ${BASE}OneDrive/Dokumenti/09-posao/python.txt"

# Ostalo
alias networks="vim ${UCENJE}networks/dokumenti/routers_switches_port_security/networks.tex"

# Lampadine
alias lamc="vim ${BASE}OneDrive/projekti_2022/24-lampadine/09-docs/USB\ specification/usb-c-notes.txt"
alias lam="vim ${BASE}OneDrive/projekti_2022/24-lampadine/09-docs/learning.txt"

# matematika
alias m51="vim ${UCENJE}skripte/dokumenti/matematika/o_matematika_5-1.tex"
alias m52="vim ${UCENJE}skripte/dokumenti/matematika/o_matematika_5-2.tex"
alias m62="vim ${UCENJE}skripte/dokumenti/matematika/o_matematika_6-2.tex"
alias m71="vim ${UCENJE}skripte/dokumenti/matematika/o_matematika_7-1.tex"
alias m72="vim ${UCENJE}skripte/dokumenti/matematika/o_matematika_7-2.tex"

# Fizika
alias f7="vim ${UCENJE}skripte/dokumenti/fizika/o_fizika_7.tex"

# Kemiija
alias k7="vim ${UCENJE}skripte/dokumenti/kemija/o_kemija_7.tex"
