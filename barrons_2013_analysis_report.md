# Analysis of Barron's 2013 Rankings with College Scorecard Data

This analysis examines 11 distinct categories from Barron's 2013 college rankings, enriched with current data from the College Scorecard. Each category profile includes one representative institution with verified metrics including admission rates, standardized test scores, enrollment, and tuition costs.

## Category: Most competitive

**Number of Institutions:** 89

The most selective institutions in the country, admitting only the highest-achieving students with exceptional academic credentials. These schools typically have acceptance rates below 15% and median SAT scores well above 1400.

### Example Institution: California Institute of Technology

* **Verification Name**: California Institute of Technology ✓ (matches CSV)
* **Unit ID**: 110404
* **Student Size**: 1,023
* **Admission Rate**: 3.1%
* **Average SAT**: Data not reported
* **In-State Tuition**: $63,255

---

## Category: HC+

**Number of Institutions:** 37

Highly Competitive Plus institutions represent the upper tier of highly selective schools, typically admitting students with strong academic records and above-average test scores.

### Example Institution: Hendrix College

* **Verification Name**: Hendrix College ✓ (matches CSV)
* **Unit ID**: 107080
* **Student Size**: 1,094
* **Admission Rate**: 53.0%
* **Average SAT**: 1,336
* **In-State Tuition**: $36,650

---

## Category: HC

**Number of Institutions:** 70

Highly Competitive institutions maintain selective admissions, seeking students with above-average academic performance and standardized test scores.

### Example Institution: California Polytechnic State University-San Luis Obispo

* **Verification Name**: California Polytechnic State University-San Luis Obispo ✓ (matches CSV)
* **Unit ID**: 110422
* **Student Size**: 21,521
* **Admission Rate**: 29.8%
* **Average SAT**: Data not reported
* **In-State Tuition**: $11,075

---

## Category: VC+

**Number of Institutions:** 57

Very Competitive Plus schools are moderately selective, admitting students with solid academic credentials and competitive standardized test scores.

### Example Institution: Auburn University

* **Verification Name**: Auburn University ✓ (matches CSV)
* **Unit ID**: 100858
* **Student Size**: 25,732
* **Admission Rate**: 50.5%
* **Average SAT**: 1,318
* **In-State Tuition**: $12,536

---

## Category: VC

**Number of Institutions:** 218

Very Competitive institutions maintain moderate selectivity, typically admitting students with good academic records and standardized test scores above the national average.

### Example Institution: University of Alabama in Huntsville

* **Verification Name**: University of Alabama in Huntsville ✓ (matches CSV)
* **Unit ID**: 100706
* **Student Size**: 6,650
* **Admission Rate**: 74.2%
* **Average SAT**: 1,321
* **In-State Tuition**: $11,770

---

## Category: C+

**Number of Institutions:** 71

Competitive Plus schools have relatively accessible admissions, seeking students with average to above-average academic performance.

### Example Institution: Embry-Riddle Aeronautical University-Prescott

* **Verification Name**: Embry-Riddle Aeronautical University-Prescott ✓ (matches CSV)
* **Unit ID**: 104586
* **Student Size**: 3,245
* **Admission Rate**: 75.2%
* **Average SAT**: 1,256
* **In-State Tuition**: $42,204

---

## Category: C

**Number of Institutions:** 612

Competitive institutions have accessible admissions policies, typically admitting the majority of applicants who meet basic academic requirements.

### Example Institution: University of Alabama at Birmingham

* **Verification Name**: University of Alabama at Birmingham ✓ (matches CSV)
* **Unit ID**: 100663
* **Student Size**: 12,118
* **Admission Rate**: 88.4%
* **Average SAT**: 1,251
* **In-State Tuition**: $8,832

---

## Category: LC

**Number of Institutions:** 181

Less Competitive institutions have open or minimally selective admissions, accepting most students who apply with standard high school preparation.

### Example Institution: Alabama A & M University

* **Verification Name**: Alabama A & M University ✓ (matches CSV)
* **Unit ID**: 100654
* **Student Size**: 5,726
* **Admission Rate**: 66.2%
* **Average SAT**: 947
* **In-State Tuition**: $10,024

---

## Category: NC

**Number of Institutions:** 70

Noncompetitive institutions have open admissions policies, accepting virtually all applicants who meet minimal requirements.

### Example Institution: Miles College

* **Verification Name**: Miles College ✓ (matches CSV)
* **Unit ID**: 101675
* **Student Size**: 1,151
* **Admission Rate**: Data not reported
* **Average SAT**: Data not reported
* **In-State Tuition**: $12,714

---

## Category: Specialized programs

**Number of Institutions:** 74

Institutions focused on specialized fields such as art, design, music, or other specific disciplines. Admissions criteria are often based on portfolio review, auditions, or field-specific requirements rather than traditional academic metrics.

### Example Institution: Art Center College of Design

* **Verification Name**: Art Center College of Design ✓ (matches CSV)
* **Unit ID**: 109651
* **Student Size**: 2,054
* **Admission Rate**: 75.0%
* **Average SAT**: Data not reported
* **In-State Tuition**: $51,640

---

## Category: No category

**Number of Institutions:** 31

Institutions without a Barron's 2013 classification in the dataset, which may indicate they were not ranked that year, newly established, or excluded from the ranking for various reasons.

### Example Institution: Spring Hill College

* **Verification Name**: Spring Hill College ✓ (matches CSV)
* **Unit ID**: 102234
* **Student Size**: 850
* **Admission Rate**: 59.1%
* **Average SAT**: 1,090
* **In-State Tuition**: $23,270

---

## Summary Statistics by Category

| Category | Institution Count | Example SAT Avg | Example Admission Rate |
|----------|------------------|-----------------|------------------------|
| Most competitive | 89 | Data not reported | 3.1% |
| HC+ | 37 | 1,336 | 53.0% |
| HC | 70 | Data not reported | 29.8% |
| VC+ | 57 | 1,318 | 50.5% |
| VC | 218 | 1,321 | 74.2% |
| C+ | 71 | 1,256 | 75.2% |
| C | 612 | 1,251 | 88.4% |
| LC | 181 | 947 | 66.2% |
| NC | 70 | Data not reported | Data not reported |
| Specialized programs | 74 | Data not reported | 75.0% |
| No category | 31 | 1,090 | 59.1% |

---

## Data Sources and Methodology

* **Barron's Rankings**: From `barrons_2013and2019.csv`
* **Institutional Data**: College Scorecard most recent cohorts
* **Matching Method**: Institutions matched by IPEDS Unit ID (unitid)
* **Data Dictionary**: `college_scorecard_limited_variables_data_dictionary.csv`

*Note: 'Data not reported' indicates the institution did not report that metric or the value was not available in the College Scorecard data.*
