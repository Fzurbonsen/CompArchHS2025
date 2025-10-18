Use `pandoc report_*.md --metadata-file=pandoc-config.yaml -o report_*.pdf` to compile the pdfs individually.
Use:
``` pandoc report_1.md report_2.md report_3.md report_4.md report_5.md \
    --metadata-file=pandoc-config.yaml \
    -o combined_report.pdf
```
to compile all reports into one pdf.
The file`andoc-config.yaml` holds the config for the pdfs.