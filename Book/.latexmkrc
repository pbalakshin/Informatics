# Output directory
$out_dir = 'build';
$aux_dir = 'build';

# Output directory for minteds
$ENV{'TEXMF_OUTPUT_DIRECTORY'} = 'build';

# PDF mode
$pdf_mode = 1;

# LaTeX engine
$pdflatex = 'pdflatex %O -interaction=nonstopmode -file-line-error -synctex=1 -shell-escape %S';

# Biber support (for biblatex)
$biber = 'biber %O %B';
$bibtex_use = 2;

# Silent but readable log
$silent = 0;
$max_repeat = 5;

# Clean rules
$clean_ext .= ' %R.run.xml %R.bcf %R.blg %R.fdb_latexmk %R.fls';
$clean_ext .= ' %R.synctex.gz';
$clean_ext .= ' %R.toc %R.out %R.lof %R.lot';

# Minted cache directory awareness
add_cus_dep('glo', 'gls', 0, 'makeglossaries');

# TikZ externalization awareness
push @generated_exts, 'xdv', 'nav', 'snm';

# Faster rebuild behavior
$recorder = 1;
$dependents_list = 1;

# Do not force remake unless files changed
$force_mode = 0;

# Needed if default python is 3.14 which is not supported yet (on macos)
if (-d ".venv") {
    $ENV{'PATH'} = "$ENV{PWD}/.venv/bin:" . $ENV{'PATH'};
}
