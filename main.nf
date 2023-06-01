process ECHO {
    input:
        file x
    output:
        stdout
    script:
        """
        echo ${x}
        """
}

workflow {
    Channel.fromPath("s3://ngi-igenomes/igenomes/Homo_sapiens/Ensembl/GRCh37/Annotation/README.txt")
    | ECHO

}