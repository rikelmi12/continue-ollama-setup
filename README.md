# 🚀 Continue.dev + Ollama Local AI Setup

> **Configuração profissional, otimizada e 100% privada para desenvolvimento assistido por IA local no VS Code / JetBrains usando [Continue.dev](https://continue.dev) e [Ollama](https://ollama.ai).**

Zero telemetria, zero custos de API, zero dependência de nuvem. Seus arquivos e códigos nunca saem da sua máquina.

---

## ⚡ Diferenciais desta Configuração

* 🧠 **Dois Modelos Simultâneos na Memória (`OLLAMA_MAX_LOADED_MODELS=2`)**: Permite manter o modelo leve de **Autocomplete** (`Qwen 2.5 Coder 0.5B`) sempre pronto para preenchimento de código por `Tab`, enquanto o modelo principal (`Qwen 2.5 Coder 3B` ou `Llama 3.2`) responde às dúvidas do chat sem atrasos de troca de contexto.
* 📏 **Contexto Estendido (16.384 tokens)**: Suporta análise de múltiplos arquivos e bases de código completas no prompt.
* 🖥️ **Otimização Nativa para CPU**: Script PowerShell e Batch com parâmetros ajustados para estabilidade, tempo de permanência em cache (`keep_alive: 5m`) e sem falhas de drivers de GPU.
* 🎯 **Comandos Rápidos (Slash Commands)**:
  * `/pesquisar`: Busca orientada a documentações técnicas oficiais.
  * `/testar`: Geração automatizada de testes unitários com casos de borda.
  * `/refatorar`: Refatoração focada em tipagem estrita, performance e legibilidade.
  * `/explicar`: Explicação detalhada da arquitetura e fluxo de funções.
  * `/revisar`: Code review para segurança, bugs e gargalos.
* 🔒 **Privacidade Total**: Nenhuma memória de conversas, arquivos pessoais ou logs corporativos são compartilhados. Apenas código e configurações limpas.

---

## 📦 Modelos Recomendados

Para baixar os modelos configurados, execute no seu terminal:

```bash
# 1. Modelo Principal para Código e Edição (Recomendado)
ollama pull qwen2.5-coder:3b

# 2. Modelo de Autocomplete Instantâneo por Tab (Extremamente rápido)
ollama pull qwen2.5-coder:0.5b

# 3. Modelo para Conversas Gerais e Uso de Ferramentas
ollama pull llama3.2:3b

# 4. Modelo com Suporte a Imagens e Visão Multimodal (Opcional)
ollama pull gemma3:4b

# 5. Modelo para Tarefas Profundas e Raciocínio Pesado (Opcional)
ollama pull qwen3.5:9b
```

---

## 🛠️ Instalação e Uso

### 1. Iniciar o Ollama com Parâmetros Otimizados
Em vez de iniciar o Ollama pelo atalho comum, utilize o script deste repositório para carregar as variáveis de ambiente necessárias (contexto 16k e 2 modelos simultâneos):

* **No Windows (via arquivo .bat)**:
  Basta dar um duplo clique no arquivo [`start-ollama-cpu.bat`](start-ollama-cpu.bat).
* **No Windows (via PowerShell)**:
  ```powershell
  .\start-ollama-cpu.ps1
  ```

### 2. Configurar a Extensão Continue
1. Instale a extensão **Continue** no seu VS Code.
2. Abra a pasta de configuração do Continue na sua máquina:
   * **Windows**: `%USERPROFILE%\.continue\` (ex: `C:\Users\SEU_USUARIO\.continue\`)
   * **Linux/Mac**: `~/.continue/`
3. Copie o arquivo [`config.yaml`](config.yaml) deste repositório para dentro da sua pasta `.continue`.
4. Recarregue a janela do VS Code (`Ctrl+Shift+P` -> `Developer: Reload Window`).

---

## 📁 Estrutura dos Arquivos

```
├── config.yaml            # Configuração principal do Continue (Modelos, Contexto, Prompts e Regras)
├── start-ollama-cpu.ps1   # Script PowerShell com variáveis de ambiente para o servidor Ollama
├── start-ollama-cpu.bat   # Inicializador rápido de duplo-clique para Windows
├── config.ts              # Arquivo auxiliar TypeScript para customizações avançadas
├── tsconfig.json          # Configuração do TypeScript para Continue
├── package.json           # Metadados do pacote de configuração
├── .continueignore        # Arquivos ignorados pelo indexador do Continue
└── .gitignore             # Proteção estrita contra upload de memórias, logs e dados locais
```

---

## 🛡️ Segurança e .gitignore

O repositório inclui regras rígidas no `.gitignore` para assegurar que:
- Pastas de memória e vetores (`memory/`, `memory-system/`) **nunca** sejam enviadas.
- Históricos de sessões (`sessions/`, `dev_data/`) permaneçam 100% locais.
- Arquivos de log e bancos de dados SQLite locais fiquem protegidos na sua máquina.

---

## 📄 Licença

Distribuído sob a licença [MIT](LICENSE). Sinta-se livre para usar, adaptar e compartilhar!
