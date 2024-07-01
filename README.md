# autospill

The **`autospill`** package implements the AutoSpill algorithm for calculating 
spillover coefficients, used to compensate or unmix flow cytometry data. 

For more details, please see:  
Roca *et al*: AutoSpill is a principled framework that simplifies the analysis 
of multichromatic flow cytometry data
*Nature Communications* 2021.05.17; 
[doi:10.1038/s41467-021-23126-8](https://www.nature.com/articles/s41467-021-23126-8) 
\(2021\). 



## Installation

To install **`autospill`** from this GitHub repository, 
use the function `install_github` in the 
[devtools](https://cran.r-project.org/package=devtools) package. 

```R
library( devtools )

install_github( "drcytometer/autospill" )
```


## Help

You can use the standard help in R.

```R
library( autospill )

? get.marker.spillover
? refine.spillover
```


## Examples

Please see the example scripts in the `batch` folder after installing the 
package. 

The scripts `calculate_compensation_paper.r` and 
`calculate_compensation_paper.sh` can be used to reproduce the results of 
AutoSpill for single-color controls appearing in the paper above. 
For this, you will need to download the datasets (FCS files and auxiliary 
`fcs_control.csv` files) from FlowRepository: 
[MM1 dataset](https://flowrepository.org/id/FR-FCM-Z2SS), 
[HS1 & HS2 datasets](https://flowrepository.org/id/FR-FCM-Z2ST), and 
[Be1 dataset](https://flowrepository.org/id/FR-FCM-Z2SV). 

The scripts `calculate_compensation_website.r` and 
`calculate_compensation_website.sh` can be used to reproduce the results 
obtained at the [AutoSpill website](https://autospill.vib.be). 

