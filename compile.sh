pandoc "Henry Nguyen's resume.md" -o "Henry Nguyen's resume.pdf" \
    --css="resume style.css" \
    --pdf-engine=wkhtmltopdf \
    --variable margin-top=30pt \
    --variable margin-left=30pt \
    --variable margin-right=30pt \
    --variable margin-bottom=30pt \
    --variable pagestyle=empty