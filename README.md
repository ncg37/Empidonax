# Empidonax

Sequences were produced in three batches, to which I refer as first (10 samples), second (18 samples) and last (6 samples).
Final classification as follows:

MCV #	NCG#	Song Type:
ACR265	R1	admix;
ACR209	R10ad	admix;
ACR230	R11ad	admix;
ACR326	R14ad	admix;
ACR342	R15ad	admix;
ACR343	R16ad	admix;
ACR350	R18ad	admix;
ACR118	R2ad	admix;
ACR312	R3	admix;
ACR121	R3ad	admix;
ACR123	R4ad	admix;
ACR128	R6ad	admix;
ACR129	R7ad	admix;
ACR152	R9ad	admix;
ACR447	R10	cofl;
ACR379	R19ad	cofl;
ACR435	R21ad	cofl;
ACR178	R23	cofl;
ACR432	R24	cofl;
ACR446	R25	cofl;
ACR431	R7	cofl;
ACR434	R8	cofl;
ACR438	R9	cofl;
ACR345	R17ad	cofl; 
ACR311	R12ad	psfl;
ACR323	R13ad	psfl;
ACR116	R1ad	psfl;
ACR308	R2	psfl;
ACR203	R22	psfl;
ACR313	R4	psfl;
ACR367	R5	psfl;
ACR124	R5ad	psfl;
ACR372	R6	psfl;
ACR148	R8ad	psfl;


Files are numbered in the order they should be run

Sample processing files: adapter removal, align to reference, index and duplicate removal, call haplotypes

Darren Irwin's scripts for filtering vcf files with all-sites: https://datadryad.org/stash/dataset/doi:10.5061/dryad.t951d

Required files to run Dxy analyses by Simon Martin: https://github.com/simonhmartin/genomics_general

Dxy analyses pop A and pob B are text files listing the names of the samples for each population being compared (psfl and cofl in this case)

Positions452.txt is the list of positions of near fixed SNPs in outlier areas (Supplementary Table S2) used to filter the vcf file for all individuals and ran analyses represented in Fig. 5


