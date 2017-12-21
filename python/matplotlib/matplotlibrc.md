## Global style configuration

**Print available styles:**

~~~~
print(plt.style.available)
~~~~

E.g. select ggplot:

~~~~
plt.style.use('ggplot')
~~~~

You can also load in a style configurations file.

Contents of default.mplstyle:

~~~~
axes.titlesize : 24
axes.labelsize : 20
lines.linewidth : 3
lines.markersize : 10
xtick.labelsize : 16
ytick.labelsize : 16
~~~~

Load in style sheet:

~~~~
plt.style.use('default.mplstyle')
~~~~

**Reset to default:**

~~~~
import matplotlib as mpl
mpl.rcParams.update(mpl.rcParamsDefault)
~~~~

or for inline this might help too:

~~~~
inline_rc = dict(mpl.rcParams)
mpl.rcParams.update(inline_rc)
~~~~

