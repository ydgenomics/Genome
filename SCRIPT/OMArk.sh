wget https://omabrowser.org/All/LUCA.h5
wget https://github.com/DessimozLab/OMArk/blob/main/example_data/UP000005640_9606.fasta
wget https://github.com/DessimozLab/OMArk/blob/main/utils/plot_all_results.py

# https://github.com/DessimozLab/OMArk?tab=readme-ov-file#example
omamer search --db  LUCA.h5 --query example_data/UP000005640_9606.fasta --out example_data/UP000005640_9606.omamer

# https://github.com/DessimozLab/OMArk?tab=readme-ov-file#visualising-multiple-omark-results
plot_all_results.py -i example_data/omark_output -o fig.png