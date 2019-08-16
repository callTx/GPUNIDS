#include"WMGPUinspection.h"

void WMGPUInspection::exec(std::shared_ptr<Packet> pkt)
{



}


WMGPUInspection::WMGPUInspection()
{

}

WMGPUInspection::~WMGPUInspection()
{
}

void WMGPUInspection::cuda_sample_random_ints(int* x,int N){

	for(int i=0; i<N;i++){
		x[i]=rand();
	}
}

void WMGPUInspection::cuda_sample_print_ints(int* x,int N){

	for(int i=0; i<N;i++){
		std::cout<<"x["<<i<<"]: "<<x[i]<<std::endl;
	}
}

__global__ void add(int *a,int *b,int *c,int n){
	//*c= *a+ *b; //Heterogeneous computing
	//c[blockIdx.x] = a[blockIdx.x] + b[blockIdx.x]; //Blocks
	//c[threadIdx.x] = a[threadIdx.x] + b[threadIdx.x]; //Threads
	
	int index = threadIdx.x + blockIdx.x * blockDim.x; //
	if(index < n) c[index] = a[index] + b[index];
}

int WMGPUInspection::buildMatchingMachine(std::string rules, int bufferSize, int nThreads)
{
		std::cout<<"nThreads: "<<nThreads<<std::endl;
		
		// (14-15/05) getilne -- TmhMenorPadrao() -- padroes.size() -- TmhTodosPadroes() -- BlcStr -- B2=B --  tabeleIdxHash() -- vecPermu() -- TabelaHash() 

		//TODO (16/05) Copiar todo WMCPUInspection.cpp para WMGPUInspection.cu -- Paralelizar o "AdcTodosPadroesTabela()"

		//TODO (17/05) "for (){listPadroes[lp]}"

		//TODO (18/05)  ??? "listPotenPadr = tabelaPREFIX[j]"

		//TODO (19/05) "MathPadroes"

		//TODO (20/05) "AdcTodosPadroesTabela()"

		//TODO (21/05) "for(..){listPadroes[lp]}"

		//TODO (22/05) ??? "listPotenPadr = tabelaPREFIX[j]"

		//TODO (23/05) "MatchPadroes"


		/*
		int *a,*b,*c;
		//int a,b,c;
		int *d_a,*d_b,*d_c; 
		// size= sizeof(int);
		//std::cout<<"N: "<<N<<std::endl;
		int size = N * sizeof(int);

		//Aloca espaco para o device copiar de a,b,c
		cudaMalloc( (void **)&d_a,size );		
		cudaMalloc( (void **)&d_b,size );		
		cudaMalloc( (void **)&d_c,size );
		
		a = (int*)malloc(size);
		cuda_sample_random_ints(a,N);
		b= (int*)malloc(size);
		cuda_sample_random_ints(b,N);
		c= (int*)malloc(size);


		//a =2;
		//b =7;
		//copia a,b para o device
		cudaMemcpy(d_a,a,size,cudaMemcpyHostToDevice);		
		cudaMemcpy(d_b,b,size,cudaMemcpyHostToDevice);	

		//Launch o kernel add() na GPU
		//add<<<N,1>>>(d_a,d_b,d_c); //blocks
		//add<<<1,N>>>(d_a,d_b,d_c); //threads

		
		//	@ N/THREADS_PER_BLOCK  = blocks number
		
		//add<<<N/THREADS_PER_BLOCK,THREADS_PER_BLOCK>>>(d_a,d_b,d_c); //threads_per_block with vector multiple of blockDim.x = M 

		add<<<(N+M-1)/M, M >>>(d_a,d_b,d_c,N); //threads_per_block with vector which is not multiple of the blockDim.x = M	

		//Copiar os resultados de volta p/ host
		cudaMemcpy(c,d_c,size,cudaMemcpyDeviceToHost);

		//cuda_sample_print_ints(c,N);
		//std::cout<<"c: "<<c<<std::endl;
		
		//Cleanup
		cudaFree(d_a);
		cudaFree(d_b);
		cudaFree(d_c);

		//char *cudaGetErrorString(cudaError_t);
		//printf("%s\n",cudaGetErrorString(cudaGetLastError()));

		return 0;
		*/
}
