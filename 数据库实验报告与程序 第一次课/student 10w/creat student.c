#include<stdio.h>
int main(){
    FILE* F=fopen("student.txt","w");
    fprintf(F,"INSERT INTO student (SNO, SNAME, SGENDER, SBIRTH, SDEP)\n");
    fprintf(F,"VALUES\n");
    for(int i=0;i<100000;i++)
        fprintf(F," ('%05d', 'S%d', 'F', '2003-6-%d', 'M%d'),\n",i,i,i%29+1,i);
    return 0;
 }