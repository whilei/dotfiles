# $ scrapeimages put/it/here www.cats.com
scrapeimages(){
	local folder=$1
	local site=$2
	image-scraper -s ~/Pictures/scraped/$folder $site
}
