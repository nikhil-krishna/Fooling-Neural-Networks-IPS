# NeurIPS-Reproducibility-Challenge
Code and write up for the reproducibility challenge for NeurIPS 2019. Paper replicated: https://arxiv.org/pdf/1902.02041.pdf. Our writeup: https://openreview.net/pdf?id=3-K_F_VAdO

1. Unzip Data.zip and open the folder (keep in same directory)
2. Put the 50000 validation set images from ImageNet 2012 in the train folder of Data
3. Put the 10000 test set images from ImageNet 2012 in the validation folder of Data
4. We did not include the actual data for you because of the size of the files (~75 GB), but it is available online

5. Open passive_fooling.sh in run_lrp
6. Read the comments and UNCOMMENT/COMMENT THE PARTS OF THE SCRIPT YOU WANT TO RUN
7. Open passive_fooling_demo.sh in run_lrp
8. ONLY UNCOMMENT/COMMENT THE LINES UNDER "EXPERIMENT 3"
9. Open replication_and_experiments.ipynb in run_lrp
10. Read the comments and execute the cells properly
11a. !bash passive_fooling.sh: for replication and changing learning rate and penalty terms
11b. !bash passive_fooling_demo.sh: for analysis of FSRs (NOTE THAT YOU SHOULD ONLY RUN ONE OF STEP 11a OR 11b BEFORE PROCEEDING)

13. Go to the img_results folder in Mini4
14. Run Passive_fooling_result_viewer.ipynb in img_results, and read comments before executing a cell
15. This should give graphs and heatmaps

Notes: 

1. Ensure that when you use the results viewer that the cell with "ls" in it shows 6 directories created by passive_fooling.sh or passive_fooling_demo.sh. Any more or any less and there will be issues. This means that this viewer can only process 6 foolings at a time. You may need to add old files into img_results when running the experiments to have 6 total directories. Simply ignore the output for the ones not needed.

2. Make sure you install the proper versions of the packages (numpy, torch, torchvision). We use older versions. If you execute the cells properly in the notebooks, it will install these versions for you. Make sure you update the versions back when finished. 

3. Running everything will take a very, very long time unless you use GPU(s). 



