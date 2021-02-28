package main

import (
	"flag"
	"log"
	"os"
	"regexp"
	"strings"

	"github.com/cloudflare/cloudflare-go"
)

func main() {
	// Variables
	apiEnv := []string{"CLOUDFLARE_API_ZONE_ID", "CLOUDFLARE_API_TOKEN"}
	api := map[string]string{}
	missing := []string{}
	invalid := []string{}
	cache := ""
	cacheActions := []string{"clear"}

	// CLI arguments
	flag.StringVar(&cache, "cache", "clear", "CloudFlare cache management.")
	flag.Parse();

	// Check allowed cache actions
	if !contains(cacheActions, cache) {
		log.Fatalf("Cache action not supported: %s\n", cache)
	}

	// Check CloudFlare API
	for _, itm := range apiEnv {
		val, ok := os.LookupEnv(itm)

		if !ok {
			missing = append(missing, itm)
			continue
		}

		reg := ""
		switch itm {
		case "CLOUDFLARE_API_ZONE_ID":
			reg = `^\w{32}$`
		case "CLOUDFLARE_API_TOKEN":
			reg = `^[\w\-]{40}$`
		}

		valid, _ := regexp.MatchString(reg, val)

		if !valid {
			invalid = append(invalid, itm)
			continue
		}

		api[itm] = val
	}

	// Validate environment variables
	if len(missing) > 0 {
		log.Fatalf("Missing environment variables: %s\n", strings.Join(missing, ", "))
	}

	// Validate API data
	if len(invalid) > 0 {
		log.Fatalf("Invalid values for environment variables: %s\n", strings.Join(invalid, ", "))
	}

	// Create CloudFlare API client
	cloudFlare, err := cloudflare.NewWithAPIToken(api["CLOUDFLARE_API_TOKEN"])

	if err != nil {
		log.Fatal(err)
	}

	purgeCache, err := cloudFlare.PurgeEverything(api["CLOUDFLARE_API_ZONE_ID"])

	if err != nil {
		log.Fatal(err)
	}

	status := ""

	if purgeCache.Response.Success {
		status = "success"
	} else {
		status = "failed"
	}

	log.Printf("Clear CloudFlare cache: %s\n", status)
}

func contains(arr []string, str string) bool {
	for _, itm := range arr {
		if itm == str {
			return true
		}
	}

	return false
}
