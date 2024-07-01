# autospillwin

The **`autospillwin`** package implements the AutoSpill algorithm for calculating 
spillover coefficients, used to compensate or unmix flow cytometry data. 

This fork will, when completed, be Windows-compatible. For Mac, Unix or cluster 
usage, we recommend the [original version](https://github.com/carlosproca/autospill?tab=readme-ov-file).

For more details, please see:  
Roca *et al*: AutoSpill is a principled framework that simplifies the analysis 
of multichromatic flow cytometry data
*Nature Communications* 2021.05.17; 
[doi:10.1038/s41467-021-23126-8](https://www.nature.com/articles/s41467-021-23126-8) 
\(2021\). 



## Installation

To install **`autospillwin`** from this GitHub repository, 
use the function `install_github` in the 
[devtools](https://cran.r-project.org/package=devtools) package. 

```R
library( devtools )

install_github( "drcytometer/autospillwin" )
```


## Help

You can use the standard help in R.

```R
library( autospillwin )

? get.marker.spillover
? refine.spillover
```


## Examples
calculate_compensation_minimal.r

Runs a calculation of compensation with autospill, without creating any
figures or tables.

Requires assigning proper values to the variables:
  control.dir    directory with the set of single-color controls
  control.def.file    csv file defining the names and channels of the
  single-color controls
  
```
library( autospillwin )

# set parameters

asp <- get.autospill.param()

# read flow controls

control.dir <- "../fcs_control_data/"
control.def.file <- "../fcs_control_data/fcs_control.csv"

flow.control <- read.flow.control( control.dir, control.def.file, asp )

# gate events before calculating spillover

flow.gate <- gate.flow.data( flow.control, asp )

# get initial spillover matrices from untransformed data

marker.spillover.unco.untr <- get.marker.spillover( TRUE, flow.gate,
    flow.control, asp )

# refine spillover matrix iteratively

refine.spillover.result <- refine.spillover( marker.spillover.unco.untr,
    NULL, flow.gate, flow.control, asp )
```

For more example scripts, see the `batch` folder after installing the 
package. 


The scripts `calculate_compensation_paper.r` and 
`calculate_compensation_paper.sh` can be used to reproduce the results of 
AutoSpill for single-color controls appearing in the paper above. 
For this, you will need to download the datasets (FCS files and auxiliary 
`fcs_control.csv` files) from FlowRepository: 
[MM1 dataset](https://flowrepository.org/id/FR-FCM-Z2SS), 
[HS1 & HS2 datasets](https://flowrepository.org/id/FR-FCM-Z2ST), and 
[Be1 dataset](https://flowrepository.org/id/FR-FCM-Z2SV). 

