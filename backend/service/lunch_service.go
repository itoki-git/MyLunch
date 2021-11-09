package lunch

import (
	"itoki-git/MyLunch/db"
	"itoki-git/MyLunch/models"
)

type Service struct{}

type lunch models.Lunch

type Parameter struct {
	category string
	gps      string
}

type lunch models.Lunch

// 検索
func (s Service) Search(category, gps string) ([]Lunch, error) {
	// DB接続
	db := db.GetDB()

	// モデル作成
	var lunch []Lunch

	// パラメータセット
	p := Parameter{category, gps}

}
