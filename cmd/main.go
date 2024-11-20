package main

import (
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"

	h "github.com/root27-dev/root27-dev/helpers"
	v "github.com/root27-dev/root27-dev/views"
)

func main() {

	e := echo.New()

	e.Use(middleware.Logger())

	e.Static("/assets", "assets")

	// Views

	e.GET("/", func(c echo.Context) error {

		return h.Render(c, 200, v.Index())

	})

	e.Logger.Fatal(e.Start(":8080"))
}
