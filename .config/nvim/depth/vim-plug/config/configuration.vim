" CONFIGURATION ---------------------------------------------------------------- {{{
"--- Tips ---"
":help <command> => Obtenir plus d'informations sur des commandes spécifiques."
":options => Permet d'avoir tout les options pour la configuration de vim.
"   url : https://vimhelp.org/options.txt.html#options
"set colorscheme=darkblue => Change la courleur de l'environement.

"--- Config ---"
" Supprime toutes les autocommandes du groupe actuel. Pour éviter les fichiers : .vimrc ou init.vim 2 fois -> commandes seront apparaîtront en double.
autocmd!
scriptencoding utf-8                                " Definir le format d'encodage des scripts a UTF-8.
set encoding=utf-8                                  " Definir le format d'encodage a UTF-8.
set fileencodings=utf-8,sjis,euc-jp,latin           " Definir le format d'encodage des fichiers a UTF-8.
filetype on                                         " Activer la détection de fichier de type. Vim pourra essayer de détecter le type de fichier utilisé.
filetype plugin on                                  " Activer les plugins et charger le plugin pour le type de fichier détecté.
filetype indent on                                  " Charger un fichier d'indentation pour le type de fichier détecté.
syntax on                                           " Active la coloration syntaxique.

"--- Setting ---"
set background=dark                                 " Adapte les couleurs pour un fond noir (idéeal dans PuTTY).
set number                                          " Ajoutez des nombres à chaque ligne sur le côté gauc.
"set relativenumber                                  " Permet de mettre une relative nombre.
"set visualbell                                      " Utilisation du clignotement à la place du "beep".
set autoindent                                      " Auto-indentation des nouvelles lignes.
set mouse=a                                         " Active la souris, dans tous les modes (note il faudra alors d'appuyer sur "shift" pour faire les sélections de copier-coller dans l'éditeur).
set nobackup                                        " Ne pas enregistrer les fichiers de sauvegarde.
set history=1000                                    " Définissez les commandes à enregistrer dans l'historique, par défaut : 20.
set ruler                                           " Affiche la position du curseur tout le temps.
set showcmd                                         " Afficher la commande partielle que vous tapez dans la dernière ligne de l'écran.
set showmode                                        " Affichez le mode dans lequel vous vous trouvez sur la dernière ligne.
set backspace=indent,eol,start                      " (A confirmer) Autorise le retour arrière sur tout en mode insertion.
set nocompatible                                    " Désactiver la compatibilité avec les paramètres vi qui peut causer des problèmes inattendus.
set whichwrap=b,s                                   " Permet à la touche <BS>, lorsqu'elle est utilisée en première position d'une ligne, de se déplacer le curseur à la fin de la ligne précédente.
set iskeyword                                       " Spécifie quels caractères peuvent apparaître dans un mot.
set cmdheight=1                                     " Pernet de définir le nombre de lignes utilisées pour le message. Mais moins de place pour modifier le texte.
"set autowrite                                      " Permet de sauvegarder automatiquement lors de la navigation de fichier. Ne pas oublier de faire :write.

"--- Last line ---"
"set display=lastline                               " "@@@" est mis dans le dernières colonnes de la dernière ligne d'écran pour indiquer le reste de la ligne n'est pas affiché.
"set display=truncate                                " Comme "lastline", mais "@@@" est affiché en premier colonne de la dernière ligne de l'écran. Remplace "dernière ligne".
"set display=uhex                                    " Affiche tout les caractères non imprimables hexadecimaux sous la forme <xx>.
set linebreak                                       " Coupe les lignes au dernier mot et pas au caractère (requier Wrap lines, défaut : Actif).
set nowrap                                          " N'enroulez pas les lignes. Laissez les longues lignes s'étendre aussi loin que possible.

"--- Tab & spaces & Indent ---"
set shiftwidth=4                                    " (auto) Indentation de 4 espaces.
set tabstop=4                                       " Définissez la largeur de tabulation sur 4 colonnes.
set expandtab                                       " Remplace les "Tabulation" par des espaces.
set scrolloff=10                                    " Ne laissez pas le curseur défiler au-dessous ou au-dessus du nombre N de lignes lors du défilement.
set smartindent                                     " Active "smart-indent" (améliore l'auto-indentation, notamment en collant du texte déjà indenté).
set smarttab                                        " Active "smart-tabs" (améliore l'auto-indentation, Gestion des espaces en début de ligne pour l'auto-indentation).
set softtabstop=2                                   " Tabulation = 2 espaces.

"--- Search---"
if has('reltime')
   set incsearch                                    " Lors de la recherche dans un fichier, mettez en surbrillance les caractères correspondants au fur et à mesure que vous tapez.
endif

" Mettre en surbrillance les correspondances avec le dernier modèle de recherche utilisé.
if &t_Co > 2 || has("gui_running")
	set hlsearch                                    " Surligne tous les résultats de la recherche.
endif

set showmatch                                       " Surligne le mots recherchés dans le texte.
set ignorecase                                      " Ignorer les majuscules lors de la recherche.
"set smartcase                                       " Remplacez l'option ignorecase si vous recherchez des lettres majuscules. Cela vous permettra de rechercher spécifiquement les majuscules.
set nowrapscan                                      " Cela arrête la recherche à la fin du fichier. Ou, lorsque vous recherchez vers l'arrière, il arrête la recherche au début du fichier.

"--- Highlight cursor ---"
set cursorline                                      " Mettez en surbrillance la ligne du curseur sous le curseur horizontalement.
"set cursorcolumn                                    " Mettez en surbrillance la ligne du curseur sous le curseur verticalement.

"--- Navigation menu ---"
set wildmenu                                        " Activer le menu de complétion automatique après avoir appuyé sur TAB.
set wildmode=list:longest                           " Faites en sorte que le menu sauvage se comporte de la même manière que l'achèvement de Bash.
																										" Il y a certains fichiers que nous ne voudrions jamais éditer avec Vim Wildmenu ignorera les fichiers avec ces extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

"---Time ---"
set ttimeout		                                 " Activer le délai d'attente pour les compinaison de touches clés. Ex : <ESC> + a (avec délai en ttimeoutlen).
set ttimeoutlen=50	                                 " Attendre jusqu'à 50 ms après Esc pour la touche spéciale.
" }}}
