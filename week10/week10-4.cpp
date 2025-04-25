//week10-4.cpp
//LeetCode 1399. Count Largest Group
class Solution {
public:
    int countLargestGroup(int n) {
        int a[100] = {};//這裡,要放total出現幾次(用來統計 total 出現次數)
        int largest = 0;//紀錄最大那群裡面有幾個數
        for(int i=1;i<=n;i++){//1...n 人類的迴圈
            int now = i;//現在要剝皮的數字
            int total = 0;//迴圈前面total 是0
            while(now>0){//剝皮法
            //迴圈裡,把total一直加起來
                total += now %10;//剝皮n%10把每一位數 ,加到total
                now = now/10;//剝皮後now變小
            }
            a[total]++;//迴圈後面,要統計total的出現次數
            if(a[total] > largest) largest = a[total];
        }
        int ans = 0;
        for(int i=0;i<100;i++){
            if(a[i]==largest)ans++;
        }
        return ans;
    }
};
