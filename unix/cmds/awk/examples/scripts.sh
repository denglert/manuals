# Merge many data files into a big data file withouth including the header
awk 'FNR > 1' *formated_allowed.dat > output_allowed_combined.dat
