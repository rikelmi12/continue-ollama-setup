$env:OLLAMA_HOST = "127.0.0.1:11434"
$env:OLLAMA_CONTEXT_LENGTH = "16384"
$env:OLLAMA_MAX_LOADED_MODELS = "2"
$env:OLLAMA_NUM_PARALLEL = "1"
$env:OLLAMA_VULKAN = "0"
$env:GGML_VK_VISIBLE_DEVICES = "-1"
$env:OLLAMA_KEEP_ALIVE = "5m"

Write-Host "Iniciando Ollama em modo CPU..." -ForegroundColor Cyan
Write-Host "Host: $env:OLLAMA_HOST"
Write-Host "Contexto padrao para clientes sem num_ctx: $env:OLLAMA_CONTEXT_LENGTH"
Write-Host "Modelos carregados simultaneamente: $env:OLLAMA_MAX_LOADED_MODELS"
Write-Host "Requisicoes paralelas: $env:OLLAMA_NUM_PARALLEL"
Write-Host "Vulkan: desativado (CPU nativo)"
Write-Host "Tempo de permanencia na memoria (keep-alive): $env:OLLAMA_KEEP_ALIVE"
Write-Host ""

ollama serve
