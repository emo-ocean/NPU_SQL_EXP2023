#include<stdio.h>
int main(){
    FILE* F=fopen("sc.txt","w");
    fprintf(F,"INSERT INTO sc (SNO, CNO, GRADE, SEMESTER, TEACHINGCLASS)\n");
    fprintf(F,"VALUES\n");
    for(int i=0;i<100000;i++)
        fprintf(F," ('%05d', '%d', %d, '2022-2', '%d-01'),\n",i,i%6+1,i%100+1,i%8+1);
    return 0;
 }