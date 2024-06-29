#include<stdio.h>
int main(){
    FILE* F=fopen("mt.txt","w");
    fprintf(F,"INSERT INTO memory_table (user_id, username, age)\n");
    fprintf(F,"VALUES\n");
    for(int i=0;i<100000;i++)
        fprintf(F," ('%05d', 'st%d', '%d'),\n",i,i,i%100+1,i%8+1);
    return 0;
 }