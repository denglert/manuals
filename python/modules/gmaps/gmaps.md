# gmaps

**References:**
- https://github.com/pbugnion/gmaps
- https://jupyter-gmaps.readthedocs.io/en/latest/
- https://jupyter-gmaps.readthedocs.io/en/latest/tutorial.html#drawing-markers-lines-and-polygons
- https://anaconda.org/conda-forge/gmaps


## Examples

Set up API key:

~~~~
with open(credentials_path, 'r') as f_in:
    line = f_in.readline()
    key = line.rstrip()
gmaps.configure(api_key=key)
~~~~

London map:

~~~~
london_coordinates = (51.507492, -0.127518)
zoom_level = 12
fig = gmaps.figure(center=london_coordinates, zoom_level=zoom_level)
~~~~
