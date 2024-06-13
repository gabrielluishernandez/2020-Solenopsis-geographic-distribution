# Script to ask IGV to load genome, BAMs and VCF file. 
# Then go to an specified coordinate and take a snapshot.
# The coordinates correspond to two random sites of each scaffold in the VCF file "bb_lb_both_polymorphic_supergene.vcf"

new

# Reference genome
genome /data/home/mpx472/2019-09-10-invicta_VCF_viewing_igv/Input/Genomes/ref.fa

# BAM files
load /data/home/mpx472/2019-09-10-invicta_VCF_viewing_igv/Input/Bam_files/AR114-4-bigB-p.bam
load /data/home/mpx472/2019-09-10-invicta_VCF_viewing_igv/Input/Bam_files/U44-2-bigB-p.bam
load /data/home/mpx472/2019-09-10-invicta_VCF_viewing_igv/Input/Bam_files/CGIn2-1-littleb-p.bam
load /data/home/mpx472/2019-09-10-invicta_VCF_viewing_igv/Input/Bam_files/Mir2-6-littleb-p.bam

# VCF file
load /data/home/mpx472/2019-09-10-invicta_VCF_viewing_igv/Input/VCF_files/bb_lb_both_polymorphic_supergene.vcf

# Snap-shot dir set up
snapshotDirectory /data/home/mpx472/2019-09-10-invicta_VCF_viewing_igv/Tmp/Snapshots

# Instructions for IGV
goto NW_011794409.1:22073 
snapshot

goto NW_011794409.1:173763
snapshot

goto NW_011794567.1:1697567
snapshot

goto NW_011794567.1:1232395
snapshot

goto NW_011794634.1:89562
snapshot

goto NW_011794634.1:145725
snapshot

goto NW_011803821.1:68641
snapshot

goto NW_011803821.1:33927
snapshot

goto NW_011803911.1:640902
snapshot

goto NW_011803911.1:284500
snapshot

goto NW_011804574.1:254250
snapshot

goto NW_011804574.1:132053
snapshot
