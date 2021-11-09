package server

import (
	lunch "itoki-git/MyLunch/controllers"
	"net/http"

	"github.com/gin-gonic/gin"
)

// Init 初期化
func Init() {
	router := NewRouter()
	router.Run()
}

// NewRouter ルーティング
func NewRouter() *gin.Engine {
	router := gin.Default()
	// CORS対応
	router.Use(CORS())
	// ルーティング
	v1 := router.Group("/lunch")
	{
		ctrl := lunch.Controller{}
		v1.GET("", ctrl.Restaurant)
	}
	return router
}

// CORS CORS対応
func CORS() gin.HandlerFunc {
	return func(c *gin.Context) {
		c.Writer.Header().Set("Access-Control-Allow-Origin", "*")
		c.Writer.Header().Set("Access-Control-Allow-Credentials", "true")
		c.Writer.Header().Set("Access-Control-Allow-Headers", "Content-Type, Content-Length, Accept-Encoding, X-CSRF-Token, Authorization, accept, origin, Cache-Control, X-Requested-With")
		c.Writer.Header().Set("Access-Control-Allow-Methods", "GET, OPTIONS")

		if c.Request.Method == "OPTIONS" {
			c.AbortWithStatus((http.StatusNoContent))
			return
		}
		c.Next()
	}
}
