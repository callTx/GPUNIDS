#ifndef WMGPU_INSPECTION_H
#define WMGPU_INSPECTION_H

#include "../util/Packet.h"
#include "inspection.h"
#include <vector>
#include <iostream>
#include <string>
#include <queue>
#include <fstream>
#include <cuda_runtime.h>
#include "../util/helper_cuda.h"

#define MAXC_ 127

//#define N (2048*204*)
//#define THREADS_PER_BLOCK 512

class WMGPUInspection : public Inspection
{
    private:

	int N = 33; //(2048 * 2048) //@@@ tamanho do vetor
	//int M = THREADS_PER_BLOCK = 8;//512 //  
	int M = 8; 

    public:
        WMGPUInspection();
	WMGPUInspection(const Inspection &) = delete;
	WMGPUInspection& operator = (const Inspection &) = delete;
        ~WMGPUInspection();

        virtual void exec(std::shared_ptr<Packet> pkt);

        int buildMatchingMachine(std::string rules, int bufferSize, int nThreads);
	void cuda_sample_random_ints(int* x,int N);
	void cuda_sample_print_ints(int* x,int N);
};

#endif
