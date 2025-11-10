# Financial Aid Table Formats

This directory contains the financial aid summary table in multiple professionally formatted versions suitable for academic publication.

## Available Formats

### 1. CSV Data File
**File:** `barrons_financial_aid_summary.csv`
- Machine-readable data
- Use for further analysis or importing into statistical software
- Column headers are self-explanatory

### 2. LaTeX Table (Standalone)
**File:** `barrons_financial_aid_table_standalone.tex`
- Complete LaTeX document ready to compile
- Compile with: `pdflatex barrons_financial_aid_table_standalone.tex`
- Requires packages: booktabs, caption, siunitx, hyperref, tabularx
- Produces professional academic table with comprehensive notes
- Formatted for journal submission

### 3. LaTeX Table (For Inclusion)
**File:** `barrons_financial_aid_table.tex`
- LaTeX table environment only (no preamble/document structure)
- Use with `\input{barrons_financial_aid_table.tex}` in your main document
- Requires same packages as standalone version

### 4. Academic Markdown
**File:** `barrons_financial_aid_table_academic.md`
- Full academic documentation in markdown format
- Includes complete table with all notes and citations
- Can be converted to other formats using pandoc:
  - Word: `pandoc barrons_financial_aid_table_academic.md -o table.docx`
  - HTML: `pandoc barrons_financial_aid_table_academic.md -o table.html`
  - PDF: `pandoc barrons_financial_aid_table_academic.md -o table.pdf`

### 5. Simple Markdown Report
**File:** `barrons_financial_aid_summary.md`
- Simplified version with key observations
- Good for GitHub display or quick reference

## Table Contents

The table presents median values for:
- **Pell Grant Rate**: Percentage of undergraduates receiving Pell grants (AY 2022-23)
- **Federal Loan Rate**: Percentage receiving federal loans (AY 2022-23)
- **Overall Net Price**: Median net price across all income levels (AY 2022-23)
- **Net Price by Income**: Median net prices for five family income brackets (AY 2022-23):
  - $0-30,000
  - $30,001-48,000
  - $48,001-75,000
  - $75,001-110,000
  - $110,001+

## Data Sources

- **Selectivity Categories**: Barron's Profiles of American Colleges (2013, 29th edition)
- **Financial Aid Data**: U.S. Department of Education College Scorecard
- **Sample**: 6,149 undergraduate institutions (excludes 280 graduate-only programs)

## Citation Recommendations

When citing this table in academic work:

```
Financial aid and net price data from U.S. Department of Education, 
College Scorecard (https://collegescorecard.ed.gov/data). College 
selectivity categories from Barron's Profiles of American Colleges, 
29th edition (Hauppauge, NY: Barron's Educational Series, 2013).
```

## Notes on Academic Formatting

All versions include:
- Proper variable definitions from College Scorecard data dictionary
- Specific measurement periods and cohorts
- Source attributions for IPEDS data
- Description of Barron's selectivity methodology
- Sample composition details

The LaTeX versions use professional typesetting conventions:
- Booktabs rules for clean table appearance
- Proper spacing and alignment
- Multicolumn headers for grouped columns
- Footnote-sized comprehensive notes
- Hyperlinked URLs (where applicable)
