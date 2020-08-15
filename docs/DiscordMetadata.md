# DiscordMetadata
Classe principal que possui a URL, validação, mensagem e função de envio da mensagem.

* Construtor
  * DiscordMetadata([string]$url_webhook)
* Propriedades
  * url_webhook
  * encoding
  * validate
  * message
* Metodos
  * GoMessage
  * Validate
  * SendMessage

## Propriedades
### url_webhook
* Descrição: Possui a url do webhook do discord
* Tipo: string
* Obrigatório: Sim
* Valor padrão: N/A

### encoding
* Descrição: Define o charset da requisição
* Tipo: string
* Obrigatório: Não
* Valor padrão: "utf-8"

### validate
* Descrição: Define se é necessário realizar validação do conteúdo a ser enviado
* Tipo: bool
* Obrigatório: Não
* Valor padrão: "True"

### message
* Descrição: Mensagem a ser enviado para o discord
* Tipo: DiscordMessage
* Obrigatório: Não
* Valor padrão: "DiscordMessage"

## Metodos

### GoMessage
* Descrição: Obtém a classe DiscordMessage da propriedade message
* Retorno: DiscordMessage
* Estático: Não
* Parametros: N/A

### SendMessage
* Descrição: Transforma a classe DiscordMessage em JSON e envia para o webhook
* Retorno: void
* Estático: Não
* Parametros: N/A

### Validate
* Descrição: Valida se o JSON está no padrão correto do discord
* Retorno: bool
* Estático: Sim
* Parametros:
  * Json
    * Descrição: JSON a ser enviado para o discord
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A
  * outputConsole
    * Descrição: Informa se deve ser exibido em console os erros de validação
    * Tipo: bool
    * Obrigatório: Sim
    * Valor padrão: N/A

### SendMessage
* Descrição: Envia o JSON e para o webhook
* Retorno: void
* Estático: Sim
* Parametros:
  * Json
    * Descrição: JSON a ser enviado para o discord
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

## Exemplos

### cmdlet
Importar modulo
```powershell
Import-Module "psc-discord-webhook.psd1" -Force -Global
```

Instancia da classe
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
```

Envio de conteúdo
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$metadata.message.content = "Conteudo"
$metadata.SendMessage();
```

### using module
Importar modulo
```powershell
using module "psc-discord-webhook.psm1"
```

Instancia da classe (using module)
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
```

Validação de conteúdo JSON
```powershell
$json ="{'seu json aqui...'}"
[DiscordMetadata]::Validate($json,$true)
```

Envio de conteúdo
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
$metadata.message.content = "Conteudo"
$metadata.SendMessage();
```
