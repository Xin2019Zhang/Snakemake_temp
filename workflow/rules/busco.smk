rule from_busco_to_seq:
    input:
        "../resources/sample.fasta"
    output:
        "../results/mafft.fasta"
    conda:
        "../envs/environment.yaml"
    shell:
        "busco {input} > {output}"


