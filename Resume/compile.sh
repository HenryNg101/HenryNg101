pandoc "resume.md" -o "Henry_Nguyen_resume.pdf" \
    --css="style.css" \
    --pdf-engine=wkhtmltopdf \
    --pdf-engine-opt="--enable-local-file-access" \
    --variable margin-top=30pt \
    --variable margin-left=30pt \
    --variable margin-right=30pt \
    --variable margin-bottom=30pt \
    --variable pagestyle=empty