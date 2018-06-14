# `pint` manuals


**All references:**
- https://pint.readthedocs.io/en/latest/
- https://media.readthedocs.org/pdf/pint/latest/pint.pdf


## Example(s)


### Instant luminosity

~~~~
>>> ur = pint.UnitRegistry()

>>> f_BX                = 4.0  * 10**7 * ur.Hz
>>> N_protons_per_bunch = 1.15 * 10**11
>>> sigma_t             = 16.7 * ur.microm
>>> F                   = 0.836

>>> luminosity_instant = f_BX * (N_protons_per_bunch**2)/(4.0 * np.pi * sigma_t**2) * F
luminosity_instant
~~~~
