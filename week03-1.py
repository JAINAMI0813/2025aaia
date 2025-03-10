# week03-1.py
# Leetcode 2579.count total number of colored cells

class Solution:
    def coloredCells(self, n: int) -> int:
        return n*n+(n-1)*(n-1)
        #觀察題目的圖片(不看英文，不看中文)，頭轉45度，看到正方形
