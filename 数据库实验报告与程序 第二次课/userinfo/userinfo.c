#include<stdio.h>
int main(){
    FILE* F=fopen("userinfo.txt","w");
    fprintf(F,"INSERT INTO userinfo (user_id, username, gender, age, c_id)\n");
    fprintf(F,"VALUES\n");
    for(int i=0;i<100000;i++)
        fprintf(F," ('%05d', 'st%d', 'F', '%d', '%05d'),\n",i,i,i%100+1,i%8+1);
    return 0;
 }