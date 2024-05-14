# There are 107 samples each of them with 4 pair-end libraries.
#
# Prepare the paths and files
sed 's/\/home\/gabriel\/apocrita/\~/g' paths_800.tsv > apocrita_paths.tsv

sed s//home/gabriel/apocrita//data/home/btx645/g paths_800.tsv > New_path_1.txt

sed s/r//g New_path_1.txt > New_path_2.txt

cut -f 3,4 modify_path_for_table.tsv | sed 's/\/home\/gabriel\/apocrita\/db\/genomic\/reads\/S_invicta\/2016-07-01-SouthAmericaFirstBatch-run1\///g' \
| sed 's/\/home\/gabriel\/apocrita\/db\/genomic\/reads\/S_invicta\/2016-07-28-SouthAmericaFirstBatch-run2\///g' \
| sed 's/\/home\/gabriel\/apocrita\/db\/genomic\/reads\/S_invicta\/2016-07-28-SouthAmericaFirstBatch-run3\///g' \
| sed 's/\/home\/gabriel\/apocrita\/db\/genomic\/reads\/S_invicta\/2017-02-22-SouthAmericaFirstBatchRun4\///g' \
| sed 's/\/home\/gabriel\/apocrita\/db\/genomic\/reads\/S_invicta\/2016-10-05-SouthAmericaSecondBatchRun1\///g' \
| sed 's/\/home\/gabriel\/apocrita\/db\/genomic\/reads\/S_invicta\/2016-12-02-SouthAmericaSecondBatchRun2\///g' \
| sed 's/\/home\/gabriel\/apocrita\/db\/genomic\/reads\/S_invicta\/2017-02-02-SouthAmericaSecondBatchRun3\///g' \
| sed 's/\/home\/gabriel\/apocrita\/db\/genomic\/reads\/S_invicta\/2017-02-22-SouthAmericaSecondBatchRun4\///g' \
> Modified_names_for_SRA_table.tsv

##### FTP upload #####

screen -S FTP_upload

xargs -a New_path_2.txt cp -t fastq_files

cd fastq_files

lftp

connect ftp-private.ncbi.nlm.nih.gov

cd uploads/g.l.hernandez_qmul.ac.uk_YPttpRcS

mkdir Sol_males

cd Sol_males

mirror -R
