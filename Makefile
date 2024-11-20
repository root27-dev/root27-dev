tailwind:
	@npx tailwindcss -i ./assets/app.css -o ./assets/output.css -m

templ:
	@templ generate

dev: tailwind 
	@templ generate
	@go run ./cmd/main.go
