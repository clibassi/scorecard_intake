# Analysis of Barron's 2013 Rankings with College Scorecard Data

_Comprehensive Analysis of 6,149 Undergraduate Institutions with Enhanced Data Coverage_

## Executive Summary

This analysis examines **all 6,149 U.S. undergraduate higher education institutions** in the College Scorecard database (excluding 280 graduate-only programs), categorized by their Barron's 2013 selectivity rankings where available.

### Key Improvements in This Analysis

1. **Scope**: Undergraduate programs only (excluded 280 graduate-only institutions)
2. **Admission Rate Coverage**: Improved from 31.6% to 85.7% through intelligent imputation
3. **Imputation Strategy**: Applied 100% admission rates to 3,326 institutions identified as open-admission
4. **Data Quality**: Clear distinction between reported and imputed values

### Distribution Summary

- **1,384 institutions (22.5%)** have Barron's 2013 rankings
- **4,765 institutions (77.5%)** were not ranked by Barron's
- The unranked group is predominantly community colleges, vocational schools, and certificate programs

### Imputation Methodology

We imputed **admission_rate = 100%** for institutions meeting these evidence-based criteria:

| Rule | Criteria | Count | Rationale |
|------|----------|-------|----------|
| 1 | Public + Associate's degree | 648 | Community colleges are statutorily open admission |
| 2 | Certificate programs | 2,474 | Vocational certificates typically have minimal requirements |
| 3 | Barron's NC category | 33 | 'Noncompetitive' = open admission by definition |
| 4 | Public + No test scores | 171 | Test-optional public schools likely open admission |
| **Total** | **Unique institutions** | **3,326** | **54.1% of undergraduate institutions** |

**Supporting evidence**: 99.8% of institutions missing admission rates also don't report SAT/ACT scores, strongly suggesting they are open-admission or test-optional institutions.

### Data Completeness

| Metric | Coverage | Breakdown |
|--------|----------|----------|
| Admission Rate | 85.7% | 31.6% reported + 54.1% imputed |
| SAT Scores | 19.9% | Varies by selectivity (94% elite, 3.6% unranked) |
| ACT Scores | 15.9% | Alternative to SAT |

---

## Category: Most competitive

**Number of Institutions:** 89 (1.4% of undergraduate institutions)

The most selective institutions in the country, admitting only the highest-achieving students with exceptional academic credentials. These schools typically have acceptance rates below 15% and median SAT scores well above 1400.

### Category Summary Statistics

**SAT Scores** (n=84, 94.4% reporting):
- Median: 1490
- Middle 50%: 1438 - 1522
- Mean: 1474

**ACT Scores** (n=71, 79.8% reporting):
- Median: 33.0
- Middle 50%: 32.0 - 34.0
- Mean: 32.8

**Admission Rates** (n=89, 100.0% coverage):
- Median: 14.0%
- Middle 50%: 8.7% - 28.7%
- Mean: 20.0%

### Representative Institution: Georgetown University

_Selected as closest to category median metrics_

* **Unit ID**: 131496
* **Student Enrollment**: 7,462
* **Admission Rate**: 13.1%
* **Test Scores**: 1,494 SAT / 34 ACT
* **In-State Tuition**: $65,081

---

## Category: HC+

**Number of Institutions:** 37 (0.6% of undergraduate institutions)

Highly Competitive Plus institutions represent the upper tier of highly selective schools, typically admitting students with strong academic records and above-average test scores.

### Category Summary Statistics

**SAT Scores** (n=35, 94.6% reporting):
- Median: 1367
- Middle 50%: 1323 - 1407
- Mean: 1361

**ACT Scores** (n=33, 89.2% reporting):
- Median: 30.0
- Middle 50%: 28.0 - 31.0
- Mean: 29.9

**Admission Rates** (n=37, 100.0% coverage):
- Median: 50.8%
- Middle 50%: 38.3% - 63.0%
- Mean: 50.4%

### Representative Institution: Pepperdine University

_Selected as closest to category median metrics_

* **Unit ID**: 121150
* **Student Enrollment**: 3,629
* **Admission Rate**: 49.9%
* **Test Scores**: 1,367 SAT / 28 ACT
* **In-State Tuition**: $66,742

---

## Category: HC

**Number of Institutions:** 68 (1.1% of undergraduate institutions)

Highly Competitive institutions maintain selective admissions, seeking students with above-average academic performance and standardized test scores.

### Category Summary Statistics

**SAT Scores** (n=57, 83.8% reporting):
- Median: 1320
- Middle 50%: 1269 - 1367
- Mean: 1313

**ACT Scores** (n=51, 75.0% reporting):
- Median: 29.0
- Middle 50%: 28.0 - 30.0
- Mean: 29.0

**Admission Rates** (n=68, 100.0% coverage):
- Median: 56.7%
- Middle 50%: 43.2% - 67.4%
- Mean: 55.7%

### Representative Institution: Beloit College

_Selected as closest to category median metrics_

* **Unit ID**: 238333
* **Student Enrollment**: 898
* **Admission Rate**: 57.4%
* **Test Scores**: 1,318 SAT / 26 ACT
* **In-State Tuition**: $58,554

---

## Category: VC+

**Number of Institutions:** 55 (0.9% of undergraduate institutions)

Very Competitive Plus schools are moderately selective, admitting students with solid academic credentials and competitive standardized test scores.

### Category Summary Statistics

**SAT Scores** (n=55, 100.0% reporting):
- Median: 1280
- Middle 50%: 1238 - 1304
- Mean: 1265

**ACT Scores** (n=51, 92.7% reporting):
- Median: 27.0
- Middle 50%: 26.0 - 28.5
- Mean: 27.1

**Admission Rates** (n=55, 100.0% coverage):
- Median: 73.1%
- Middle 50%: 59.4% - 81.6%
- Mean: 70.3%

### Representative Institution: Missouri University of Science and Technology

_Selected as closest to category median metrics_

* **Unit ID**: 178411
* **Student Enrollment**: 5,467
* **Admission Rate**: 73.1%
* **Test Scores**: 1,287 SAT / 29 ACT
* **In-State Tuition**: $14,278

---

## Category: VC

**Number of Institutions:** 213 (3.5% of undergraduate institutions)

Very Competitive institutions maintain moderate selectivity, typically admitting students with good academic records and standardized test scores above the national average.

### Category Summary Statistics

**SAT Scores** (n=189, 88.7% reporting):
- Median: 1208
- Middle 50%: 1147 - 1254
- Mean: 1203

**ACT Scores** (n=153, 71.8% reporting):
- Median: 25.0
- Middle 50%: 24.0 - 27.0
- Mean: 25.4

**Admission Rates** (n=211, 99.1% coverage):
- Median: 77.1%
- Middle 50%: 65.7% - 86.4%
- Mean: 74.4%

### Representative Institution: Quinnipiac University

_Selected as closest to category median metrics_

* **Unit ID**: 130226
* **Student Enrollment**: 6,208
* **Admission Rate**: 77.0%
* **Test Scores**: 1,212 SAT
* **In-State Tuition**: $53,090

---

## Category: C+

**Number of Institutions:** 70 (1.1% of undergraduate institutions)

Competitive Plus schools have relatively accessible admissions, seeking students with average to above-average academic performance.

### Category Summary Statistics

**SAT Scores** (n=56, 80.0% reporting):
- Median: 1150
- Middle 50%: 1078 - 1195
- Mean: 1131

**ACT Scores** (n=49, 70.0% reporting):
- Median: 24.0
- Middle 50%: 23.0 - 25.0
- Mean: 23.6

**Admission Rates** (n=69, 98.6% coverage):
- Median: 83.3%
- Middle 50%: 69.1% - 89.6%
- Mean: 78.5%

### Representative Institution: Ripon College

_Selected as closest to category median metrics_

* **Unit ID**: 239628
* **Student Enrollment**: 720
* **Admission Rate**: 83.9%
* **Test Scores**: 1,143 SAT / 24 ACT
* **In-State Tuition**: $50,700

---

## Category: C

**Number of Institutions:** 574 (9.3% of undergraduate institutions)

Competitive institutions have accessible admissions policies, typically admitting the majority of applicants who meet basic academic requirements.

### Category Summary Statistics

**SAT Scores** (n=436, 76.0% reporting):
- Median: 1106
- Middle 50%: 1050 - 1156
- Mean: 1106

**ACT Scores** (n=360, 62.7% reporting):
- Median: 22.0
- Middle 50%: 21.0 - 24.0
- Mean: 22.5

**Admission Rates** (n=547, 95.3% coverage):
- Median: 82.2%
- Middle 50%: 71.0% - 91.3%
- Mean: 79.3%

### Representative Institution: Southern Oregon University

_Selected as closest to category median metrics_

* **Unit ID**: 210146
* **Student Enrollment**: 2,911
* **Admission Rate**: 82.7%
* **Test Scores**: 1,105 SAT / 22 ACT
* **In-State Tuition**: $12,093

---

## Category: LC

**Number of Institutions:** 151 (2.5% of undergraduate institutions)

Less Competitive institutions have open or minimally selective admissions, accepting most students who apply with standard high school preparation.

### Category Summary Statistics

**SAT Scores** (n=94, 62.3% reporting):
- Median: 1048
- Middle 50%: 995 - 1090
- Mean: 1046

**ACT Scores** (n=72, 47.7% reporting):
- Median: 21.0
- Middle 50%: 19.0 - 23.0
- Mean: 20.9

**Admission Rates** (n=132, 87.4% coverage):
- Median: 81.8%
- Middle 50%: 71.3% - 92.3%
- Mean: 79.4%

### Representative Institution: University of South Carolina Aiken

_Selected as closest to category median metrics_

* **Unit ID**: 218645
* **Student Enrollment**: 2,805
* **Admission Rate**: 79.7%
* **Test Scores**: 1,063 SAT / 20 ACT
* **In-State Tuition**: $10,760

---

## Category: NC

**Number of Institutions:** 62 (1.0% of undergraduate institutions)

Noncompetitive institutions have open admissions policies, accepting virtually all applicants who meet minimal requirements. By definition, these schools have 100% or near-100% admission rates.

### Category Summary Statistics

**SAT Scores** (n=28, 45.2% reporting):
- Median: 1046
- Middle 50%: 980 - 1082
- Mean: 1038

**ACT Scores** (n=19, 30.6% reporting):
- Median: 21.0
- Middle 50%: 20.0 - 23.0
- Mean: 21.3

**Admission Rates** (n=62, 100.0% coverage):
- Median: 100.0%
- Middle 50%: 79.5% - 100.0%
- Mean: 87.9%
- _Note: 29 reported, 33 imputed as 100%_

### Representative Institution: University of Houston-Downtown

_Selected as closest to category median metrics_

* **Unit ID**: 225432
* **Student Enrollment**: 12,812
* **Admission Rate**: 90.6%
* **Test Scores**: 1,041 SAT
* **In-State Tuition**: $7,708

---

## Category: Specialized programs

**Number of Institutions:** 65 (1.1% of undergraduate institutions)

Institutions focused on specialized fields such as art, design, music, or other specific disciplines. Admissions criteria are often based on portfolio review, auditions, or field-specific requirements rather than traditional academic metrics.

### Category Summary Statistics

**SAT Scores** (n=17, 26.2% reporting):
- Median: 1216
- Middle 50%: 1156 - 1303
- Mean: 1221

**ACT Scores** (n=12, 18.5% reporting):
- Median: 25.5
- Middle 50%: 23.0 - 30.0
- Mean: 26.0

**Admission Rates** (n=45, 69.2% coverage):
- Median: 68.5%
- Middle 50%: 49.2% - 78.2%
- Mean: 63.0%

### Representative Institution: Maryland Institute College of Art

_Selected as closest to category median metrics_

* **Unit ID**: 163295
* **Student Enrollment**: 1,319
* **Admission Rate**: 77.3%
* **Test Scores**: 1,207 SAT
* **In-State Tuition**: $55,150

---

## Category: No category

**Number of Institutions:** 4,765 (77.5% of undergraduate institutions)

Institutions not included in Barron's 2013 rankings, comprising 77.5% of all U.S. undergraduate institutions. This large group primarily consists of community colleges (open admission by statute), certificate/vocational programs, for-profit institutions, and other schools not evaluated by Barron's traditional 4-year selective admissions framework.

### Category Summary Statistics

**SAT Scores** (n=170, 3.6% reporting):
- Median: 1070
- Middle 50%: 1016 - 1143
- Mean: 1086

**ACT Scores** (n=107, 2.2% reporting):
- Median: 21.0
- Middle 50%: 20.0 - 23.5
- Mean: 22.1

**Admission Rates** (n=3957, 83.0% coverage):
- Median: 100.0%
- Middle 50%: 100.0% - 100.0%
- Mean: 95.9%
- _Note: 664 reported, 3293 imputed as 100%_

### Representative Institution: Middle Georgia State University

_Selected as closest to category median metrics_

* **Unit ID**: 482158
* **Student Enrollment**: 6,655
* **Admission Rate**: 99.8%
* **Test Scores**: 1,055 SAT / 22 ACT
* **In-State Tuition**: $4,432

---

## Summary Statistics Table

| Category | N | % | SAT Median | ACT Median | Adm Rate Median | Adm Coverage |
|----------|---|---|------------|------------|-----------------|-------------|
| Most competitive | 89 | 1.4% | 1490 | 33.0 | 14% | 100% |
| HC+ | 37 | 0.6% | 1367 | 30.0 | 51% | 100% |
| HC | 68 | 1.1% | 1320 | 29.0 | 57% | 100% |
| VC+ | 55 | 0.9% | 1280 | 27.0 | 73% | 100% |
| VC | 213 | 3.5% | 1208 | 25.0 | 77% | 99% |
| C+ | 70 | 1.1% | 1150 | 24.0 | 83% | 99% |
| C | 574 | 9.3% | 1106 | 22.0 | 82% | 95% |
| LC | 151 | 2.5% | 1048 | 21.0 | 82% | 87% |
| NC | 62 | 1.0% | 1046 | 21.0 | 100% | 100%* |
| Specialized programs | 65 | 1.1% | 1216 | 25.5 | 69% | 69% |
| No category | 4,765 | 77.5% | 1070 | 21.0 | 100% | 83%* |

_* Includes imputed 100% admission rates for open-admission institutions_

---

## Data Sources and Methodology

### Data Sources
* **College Scorecard**: 6,149 undergraduate institutions (U.S. Department of Education)
* **Barron's 2013 Rankings**: 1,510 institutions with rankings (1,384 matched to Scorecard)
* **Scope**: Undergraduate programs only (excluded 280 graduate-only institutions)

### Coverage and Quality
* **Ranked by Barron's**: 1,384 institutions (22.5%)
* **Not ranked**: 4,765 institutions (77.5%)
* **Admission rate coverage**: 85.7% (31.6% reported + 54.1% imputed)

### Imputation Methodology

We applied a conservative, evidence-based imputation strategy to address missing admission rates:

**Decision Criteria for 100% Admission Rate Imputation:**

1. **Public Community Colleges** (Associate's degree programs at public institutions)
   - By statute, most U.S. community colleges have open admission policies
   - Imputed: 648 institutions

2. **Certificate/Vocational Programs**
   - These programs typically have minimal entrance requirements
   - Imputed: 2,474 institutions

3. **Barron's Noncompetitive Category**
   - By definition, 'noncompetitive' means open or near-open admission
   - Imputed: 33 institutions

4. **Test-Optional Public Institutions**
   - Public institutions not reporting SAT/ACT are typically open admission
   - Imputed: 171 additional institutions (some overlap with rules 1-2)

**Validation:**
- 99.8% of institutions missing admission rates also don't report test scores
- This strongly supports the open-admission classification
- Imputed values are clearly flagged in the dataset and analysis

### Representative Selection
* **Methodology**: Median-proximity algorithm using normalized Euclidean distance
* **Preference**: Institutions with reported (non-imputed) data when available
* **Metrics used**: SAT scores and admission rates

### Data Notes
* **Test Score Composite**: Used `sat_avg` when available; calculated from reading + math components otherwise
* **Both SAT and ACT shown**: Maximizes information for institutions reporting either test
* **'Data not reported'**: Institution did not report metric to U.S. Department of Education
* **[Imputed]**: Admission rate set to 100% based on institutional characteristics

_Analysis conducted: November 2025_
_Barron's rankings from: 2013_
_College Scorecard data: Most recent cohorts available_
