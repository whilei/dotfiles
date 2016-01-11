# $ scrapie put/it/here www.cats.com
scrape(){
local folder=$1
local site=$2
image-scraper -s ~/Pictures/scrapy/$folder $site
}
