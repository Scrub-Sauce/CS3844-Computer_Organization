#include <stdio.h>

void displayBits(unsigned int n){
    unsigned int i;
    int ws_count = 0;

    printf("%7u =", n);
    
    for(i = 1<<31; i > 0; i = i/2){
        if(ws_count % 8 == 0){
            printf(" ");
        }
        (n & i) ? printf("1") : printf("0");
        ws_count++;
    }
    printf("\n");
}

unsigned int setKthBit(unsigned int n, int k){
    unsigned int setBit = (1 << (k-1)) | n;
    return setBit;
}

int isPowerOfTwo(unsigned int n){
    if(n==0)
        return 0;
    else if((n-1) & n)
        return 0;
    else 
        return 1;
}

int getNoBits(unsigned int a, unsigned int b){
    unsigned int aBit, bBit, i;
    int bitCount = 0;

    for(i = 1<<31; i > 0; i = i/2){
        if(a & i)
            aBit = 1;
        else
            aBit = 0;
        if(b & i)
            bBit = 1;
        else
            bBit = 0;
        
        if(aBit ^ bBit)
            bitCount++;
    }
    return bitCount;
}

unsigned int computeXor(unsigned int n){
    int unsigned xorSummation = 0;
    int i;

    for(i=0; i < n+1; i++){
        xorSummation = xorSummation ^ i;
    }

    return xorSummation;
}
