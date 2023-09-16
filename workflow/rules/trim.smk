rule from_trimal_to_tree:
    input:
        "../results/trimal.fasta"
    output:
        "../results/tree"
    conda:
        "../envs/environment.yaml"
    shell:
        "fasttree {input} > {output}"

rule from_mafft_to_trimal:
    input:
        "../results/mafft.fasta"
    output:
        "../results/trimal.fasta"
    conda:
        "../envs/environment.yaml"
    shell:
        "trimal -in {input} -out {output} -gt 0.9"

rule from_seq_to_mafft:
    input:
        "../resources/sample.fasta"
    output:
        "../results/mafft.fasta"
    conda:
        "../envs/environment.yaml"
    shell:
        "mafft {input} > {output}"

