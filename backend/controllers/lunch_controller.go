package lunch

import (
	"fmt"
	"itoki-git/MyLunch/models"
	lunch "itoki-git/MyLunch/service"
	"net/http"

	"github.com/gin-gonic/gin"
)

type Controller struct{}

// 検索 GET /lunch
func (pc Controller) Restaurant(c *gin.Context) {
	var req models.Lunch

	// jsonをバインドする
	if err := c.ShouldBindJSON(&req); err != nil {
		panic(err)
	}

	// 店舗検索
	var s lunch.Service
	p, err := s.Search(req.Category, req.Address)

	if err != nil {
		c.AbortWithStatus(http.StatusNotFound)
		fmt.Println(err)
	} else {
		c.JSON(http.StatusOK, p)
	}
}
