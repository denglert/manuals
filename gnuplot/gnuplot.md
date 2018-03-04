# `gnuplot` manuals

**Terminal types**

~~~~
set term postscript enh color dashed font "Helvetica,10"
~~~~

**Greek letters**
~~~~
alpha = "{/Symbol a}"
beta  = "{/Symbol b}"
~~~~


**Setting ranges:**

~~~~
set xrange [-1.0:1.0]
set yrange [0:20.0]
~~~~

## Labels

**Setting labels:**
~~~~
set xlabel "xlabel"
set ylabel "ylabel"
~~~~

**Figure title:**
~~~~
set title titletxt font "Helvetica, 12"
~~~~

**Colorbox label:**

~~~~
set cblabel "{/Symbol s} [fb]" offset 1.2
~~~~

**Setting margins:**

~~~~
set lmargin at screen 0.20
set rmargin at screen 0.88
~~~~

## Output

**Use postscript terminal but automatically convert to .pdf:**

~~~~
set output "| ps2pdf - figure.pdf"
~~~~

## Etc.

**Strings with variable insertion:**
~~~~
Z7_filename = sprintf("| ps2pdf - ./figures/auxiliary/Z7_cosba_mH_tanb_%.2f.pdf", tanb)
~~~~

**Rectangle box (e.g. for fit results):**

~~~~
labelx = 0.8
labely = 0.8
boxw   = 0.4
boxh   = 0.1

set object 1 rect from screen (labelx-0.01),(labely-0.02) to screen (labelx+boxw),(labely-boxh) front fillcolor rgb "white" fillstyle solid border -1
~~~~

### Load external gnuplot script

~~~~
load config
~~~~

## Plot types

### Data

#### 2D scattered heatmap

~~~~
splot "<cat" every ::1 using 3:4:29 tit "" with points pt 5 palette
~~~~

#### Multiple plots in the same figure, conditional plotting

~~~~
splot dataFILE every :::1 using XVar:YVar:chidiff, \
		dataFILE every :::1 using XVar:YVar:(column(per)==1 ? 1/0:1) with points pt 4 lc 13, \
		dataFILE every :::1 using XVar:YVar:(column(stb)==1 ? 1/0:1) with points pt 2 lc -1, \
		dataFILE every :::1 using XVar:YVar:(column(uni)==1 ? 1/0:1) with points pt 7 lc  5, \
		dataFILE every :::1 using XVar:YVar:(column(hbobs) < 1.0 ? 1/0 : 1) with points pt 1 lc 1
~~~~

#### pm3D heatmap
~~~~
set pm3d map
set palette model RGB
set nokey
splot [-1:1] [100:400] Z4(x,y), \
                       (abs(Z4(x,y))<5 ? 1/0:1) with points pt 4 lc -1
~~~~


## Data formatting

### Gnuplot takes data from an external pipeline
splot "<cat" every ::1 using 3:4:29 tit "" with points pt 5 palette

# Then call cat from shell:
~~~~
mAlist=( 150 185 221 257 292 328 364 400 ); for mA in "${mAlist[@]}"; do paste
<(tail -n +1 output_form_dat_mA_${mA}.0_formated_allowed.dat) <(cat
crosssections${mA}.txt) | gnuplot -e "config =
'output_form_dat_mA_${mA}.0_gnu.conf'; outputbase = 'cross-section_mA_${mA}'"
plot_crosssection.gnu; done
~~~~

### Margins 

**Specifying with `at screen`:**

~~~~
set tmargin at screen 0.95
set bmargin at screen 0.05
set lmargin at screen 0.01
set rmargin at screen 0.98
~~~~

**Specifying with with letter widths/heights:**
~~~~
set bmargin 1
set lmargin 1
set rmargin 1
set tmargin 1
~~~~

**Getting the margins right in multiplot mode:**

Note: This may require gnuplot version > 5.0

~~~~
set multiplot layout 2, 2 \
              margins 0.0, 0.99, 0.00, 0.98\
              spacing 0.10,0.15

unset multiplot
~~~~
