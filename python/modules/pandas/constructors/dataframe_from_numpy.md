# Create `pd.DataFrame` from numpy

## Example(s)

### Create `DataFrame` from individual `np.ndarray`s (columns):

Use:
- `np.hstack(tup)`
- `pd.DataFrame(data=data, index=None, columns=colnames)`

~~~~
data = np.hstack(
    (mA_mesh.reshape(-1,1),
     tanb_mesh.reshape(-1,1),
     z_pred.reshape(-1,1),
     z_pred_br.reshape(-1,1),
     z_pred_br_Hhh.reshape(-1,1),
     z_pred_br_hbb.reshape(-1,1),
     z_pred_br_htautau.reshape(-1,1)
    ))

df = pd.DataFrame(data=data, index=None, columns=['mA', 'tanb', 'xsec_ggFH', 'br_H_hh_bbtautau', 'br_H_hh', 'br_h_bb', 'br_h_tautau'])
~~~~
