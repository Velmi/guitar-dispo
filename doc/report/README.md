# Latex
## Configuration
### Texmaker Windows
Options -> Configure Texmaker

* Check the box for build folder
* bib(la)tex command: biber.exe build/%
	
### With makefile (recommended)

For Linux and Windows.

**It is required that the folder "build" already exists!**

Build all files, recomended when the .bib file has changed:
	
	make all

Build only the .tex file, recommended when the .bib file has not changed:

	make fast

Remove build-files:

	make clean


## Use Latex
### Include other files
Use
```latex
\input{.../...}
```
instead of
```latex
\include{.../...}
```
to avoid errors.

### sections
```latex
\section{Grundlagen}
\subsection{Licht als Welle}
...
```

### include image
```latex
% [!h]-> specifier to place figure here (also [h] or nothing possible)
\begin{figure}[!h]
% places figure into the center
\centering
% inserts image
\includegraphics[width=7cm]{img/lichtwelle.png}
% insterts caption
\caption{Elektromagnetische Welle und ihre Felder \cite{hecht_2018}}
% label to reference image in the text
\label{fig:lichtwelle}
\end{figure}
```

### reference something
```latex
\autoref{img:lichtwelle}
```

### cite something
```latex
\cite{smoliner_2018}
```