# Histograms in `ROOT`


**Write out the contents of a histogram:**

- https://root-forum.cern.ch/t/writing-histogram-to-ascii-file/10762

~~~~
h.Print("all")
~~~~

or 

~~~~
h.SaveAs("histo.C")
~~~~

In `pyROOT`:

~~~~
ax_x = h.GetXaxis();
ax_y = h.GetYaxis();

bins_x = ax_x.GetXbins()
bins_y = ax_y.GetXbins()

f_out = open(out_file_path, 'w')

x_nbins, x_min,x_max = ax_x.GetNbins(), ax_x.GetXmin(), ax_x.GetXmax()
y_nbins, y_min,y_max = ax_y.GetNbins(), ax_y.GetXmin(), ax_y.GetXmax()
x_binwidth, y_binwidth = (x_max-x_min)/x_nbins, (y_max-y_min)/y_nbins

print("x: [{} - {}] nBins: {}".format(x_min, x_max, x_nbins))
print("y: [{} - {}] nBins: {}".format(y_min, y_max, y_nbins))

for i in range(n_x):
    for j in range(n_y):

        bin_x = bins_x.GetAt(i)
        bin_y = bins_y.GetAt(j)

        global_bin = h.GetBin(i,j)
        bin_content = h.GetBinContent(global_bin)
        row = "{} {} {}".format(bin_x, bin_y, bin_content)
        f_out.write(row+'\n')
~~~~

As to why there is no direct ASCII write function it is beyond me...
