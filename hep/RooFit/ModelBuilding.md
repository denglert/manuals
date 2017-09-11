
# Model building



## PDFs

| Function | `RooFit` function |
| -------- | ----------------- |
| Gaussian | Gaussian::g(x,mean,sigma) |
| Breit| -Wigner BreitWigner::bw(x,mean,gamma) |
| Landau | Landau::l(x,mean,sigma) |
| Exponential | Exponental::e(x,alpha) |
| Polynomial | Polynomial::p(x,{a0,a1,a2}) |
| Chebychev | Chebychev::p(x,{a0,a1,a2}) |
| Kernel | Estimation KeysPdf::k(x,dataSet) |
| Poisson | Poisson::p(x,mu) |
| Voigtian | (=BW⊗G) Voigtian::v(x,mean,gamma,sigma) |
