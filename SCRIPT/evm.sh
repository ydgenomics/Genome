# wget https://github.com/EVidenceModeler/EVidenceModeler/blob/master/testing/gene_predictions.gff3
# wget https://github.com/EVidenceModeler/EVidenceModeler/blob/master/testing/protein_alignments.gff3
# wget https://github.com/EVidenceModeler/EVidenceModeler/blob/master/testing/transcript_alignments.gff3
# wget https://github.com/EVidenceModeler/EVidenceModeler/blob/master/testing/weights.txt
# wget https://github.com/EVidenceModeler/EVidenceModeler/blob/master/testing/genome.fasta


# prepare input of EVidenceModeler
git clone https://github.com/EVidenceModeler/EVidenceModeler.git




gffread /data/input/Files/cotton_WHU/B1/B1_lift.gff3 -o B1_lift.gff3 # gtf2gff3

EVidenceModeler \
--sample_id evm \
--genome /data/input/Files/yangdong/SOFTWARE/EVidenceModeler/testing/genome.fasta \
--weights /data/input/Files/yangdong/SOFTWARE/EVidenceModeler/testing/weights.txt  \
--gene_predictions /data/input/Files/yangdong/SOFTWARE/EVidenceModeler/testing/gene_predictions.gff3 \
--protein_alignments /data/input/Files/yangdong/SOFTWARE/EVidenceModeler/testing/protein_alignments.gff3 \
--transcript_alignments /data/input/Files/yangdong/SOFTWARE/EVidenceModeler/testing/transcript_alignments.gff3 \
--segmentSize 100000 --overlapSize 10000 --CPU 4

EVidenceModeler \
--sample_id cotton \
--genome /data/output/EVidenceModeler/testing/genome.fasta \
--weights /data/output/EVidenceModeler/testing/weights.txt  \
--gene_predictions /data/output/EVidenceModeler/testing/gene_predictions.gff3 \
--protein_alignments /data/output/EVidenceModeler/testing/protein_alignments.gff3 \
--transcript_alignments /data/output/EVidenceModeler/testing/transcript_alignments.gff3 \
--segmentSize 100000 --overlapSize 10000 --CPU 4