

## ⚙️ 설치 가이드

### 1. 가상환경 구성

```bash
uv init --python=3.11
source .venv/bin/activate
```

---

### 2. 기본 환경 설치

#### (1) mini-swe-agent 설치

```bash
git clone https://github.com/SWE-agent/mini-swe-agent.git
cd mini-swe-agent
uv pip install -e .
mini [-v]
```

---

### 3. LLM 구동 환경 설정 (별도 가상환경)

```bash
uv init llm_server --python=3.11
source llm_server/bin/activate
uv pip install vllm
source run_server.sh  # 서버 설정은 custom_config/server_config/qwen3_coder_30B.sh 파일 참조
```

---

## 🧱 환경 설정

### 1. 모델 레지스트리 파일 작성

- `custom_config/model_config/model_registry.json` 파일 참고  
  (사용할 모델의 설정 및 경로 포함)

### 2. 실험 환경 구성 파일 작성

- `custom_config/test_config/qwen3_config.json` 파일 참고  
  (작업 환경, 모델, 평가 설정 등 포함)

### 3. 환경 변수 설정

```bash
mini-extra config set LITELLM_MODEL_REGISTRY_PATH "/path/to/your/model/registry.json"  # 모델 레지스트리 경로
```

---

## 🚀 실행

### 1. 실행 예제

- `run_swe.sh` 참고


---

## 📚 참고 자료

- 공식 문서: [https://mini-swe-agent.com/latest/quickstart/](https://mini-swe-agent.com/latest/quickstart/)

---
