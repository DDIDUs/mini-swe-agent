CUDA_VISIBLE_DEVICES=0 vllm serve Qwen/Qwen3-Coder-30B-A3B-Instruct \
                                    --max-model-len 129024 \
                                    --enable-expert-parallel \
                                    --tensor-parallel-size 1 \
                                    --enable-auto-tool-choice \
                                    --tool-call-parser qwen3_coder \
                                    --api-key token-abc123 \
                                    --port 8084
