// Enforce version control so if we want to re-run this 20 years from now in
// Stata 25, we'lll still be able to.  -version 15- tells any future version
// of Stata to interpret the syntax below according to Stata 15 syntax.
// (-verison 14- would be ok here too, as we're not using any syntax that
// doesn't also exist in Stata 14.)
version 16
clear all

// Put the path to the folder where you want to save the scorecard files
global BASE_DIRECTORY "C:\Users\CJ\Dropbox\Scorecard\"

cd "$BASE_DIRECTORY"

frame create full_scorecard_data

// Copy the zip file from the web to our current directory
copy https://ed-public-download.app.cloud.gov/downloads/CollegeScorecard_Raw_Data_02072022.zip ., replace 

// Extract the contents of the zip file and change into the created directory
unzipfile CollegeScorecard_Raw_Data_02072022.zip, replace

forvalues i = 1996 / 2019 {
		// dataset names look like MERGED1996_97_PP.csv so the
		// next two lines come up with the '97' given '1996'.
	local num2 = (`i'+1) - int((`i'+1) / 100)*100
	local num2 : display %02.0f `num2'

		// entertain me while stepping through the files
	display "Processing MERGED`i'_`num2'_PP.csv"

		// read a file into a string scalar in memory
		// replace 'NULL' with Stata's '.n' extended missing value, and
		// likewise replace 'PrivacySuppressed' with '.p'
	scalar fcontents = fileread("MERGED`i'_`num2'_PP.csv")
	scalar fcontents = subinstr(fcontents, ",NULL",              ",.n", .)
	scalar fcontents = subinstr(fcontents, ",PrivacySuppressed", ",.p", .)

		// Save the changed file contents as, e.g., MERGED_1996PP.csv
	scalar byteswritten = filewrite("MERGED_`i'PP.csv", fcontents, 1)

		// Now import all the variables from the CSV and generate a
		// year variable;
		// force opeid (column 2) to always be string;
		// force accredagency (column 8) to always be string;
		// force insturl (column 9) to always be string;
		// force npcurl (column 10) to always be string.
	import delimited "MERGED_`i'PP.csv", clear stringcols(2 8 9 10)
	gen int year = `i'

		// Fix strange character that sometimes appears in unitid
		// column header/variable name
	capture rename ?itid unitid

		// Fix string variable 'alias', which now has the string ".n"
		// in it for various observations; it is really a string
		// variable, so we just want to indicate missing with "".
	tostring alias, replace 
	replace alias = "" if alias==".n"

		// Convert repay_dt_mdn and separ_dt_mdn, if they exist,
		// to Stata dates
	capture confirm string variable repay_dt_mdn
	if _rc==0 {
		gen long newdate = date(repay_dt_mdn,"MDY")
		replace newdate = .n if repay_dt_mdn==".n"
		replace newdate = .p if repay_dt_mdn==".p"
		drop repay_dt_mdn
		rename newdate repay_dt_mdn
		format repay_dt_mdn %td
	}
	else {
		// repay_dt_mdn didn't exist as string, so it must have
		// been all missing; fix up its type to match the type
		// of repay_dt_mdn from other datasets where it will be
		// a Stata date
		recast long repay_dt_mdn
	}
	capture confirm string variable separ_dt_mdn
	if _rc==0 {
		gen long newdate = date(separ_dt_mdn,"MDY")
		replace newdate = .n if separ_dt_mdn==".n"
		replace newdate = .p if separ_dt_mdn==".p"
		drop separ_dt_mdn
		rename newdate separ_dt_mdn
		format separ_dt_mdn %td
	}
	else {
		recast long separ_dt_mdn
	}

		// Save as Stata dataset
		capture rename ïunitid unitid 
		keep unitid opeid* year instnm adm_rate-pptug_ef2 pctpell *inc_pct* ///
			par_ed_pct* appl_sch* *inc_avg loan_ever pell_ever age_entry agege24 ///
			female married dependent veteran first_gen faminc md_faminc lnfaminc /// 
			lnfaminc_ind pct_white pct_black pct_asian pct_hispanic pct_ba pct_grad_prof ///
			pct_born_us poverty_rate unemp_rate fsend* lat* long*
		
	capture compress 
	save "${BASE_DIRECTORY}MERGED_`i'PP.dta", replace 
	rm "MERGED`i'_`num2'_PP.csv"
	frame full_scorecard_data: append using "${BASE_DIRECTORY}MERGED_`i'PP.dta"

}

*Delete the Original Zip File to Save Space 
rm "CollegeScorecard_Raw_Data_02072022.zip" 
rm "Crosswalks.zip" 

*Switch to Big Dataframe 
frame change full_scorecard_data

compress 
save "${BASE_DIRECTORY}scorecard_data_all_years.dta", replace 
