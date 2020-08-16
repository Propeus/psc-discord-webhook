# DiscordMessage
Classe que monta a mensagem para ser enviado no webhook.

* Construtor
  * DiscordMessage([string]$content, [string]$username, [string]$avatar_url)
  * DiscordMessage([string]$content, [string]$username)
  * DiscordMessage([string]$content)
* Propriedades
  * username
  * avatar_url
  * content
  * embeds
* Metodos
  * [DiscordMessage]SetUsername([string]$username)
  * [DiscordMessage]SetAvatarUrl([string]$avatar_url)
  * [DiscordMessage]SetContent([string]$content)
  * [DiscordEmbed]GoNewEmbed()
  * [DiscordMessage]AddEmbed([string]$title)
  * [DiscordMessage]AddEmbed([string]$title, [string]$description)
  * [DiscordMessage]AddEmbed([string]$title, [string]$description, [string]$url)
  * [DiscordMessage]AddEmbed([string]$title, [string]$description, [Colors]$color)
  * [DiscordMessage]AddEmbed([string]$title, [string]$description, [string]$url, [string]$color)
  * [string]Generate()

## Propriedades
### username
* Descrição: Nickname do bot
* Tipo: string
* Obrigatório: Sim
* Valor padrão: N/A

### avatar_url
* Descrição: Define um icone para o bot
* Tipo: string
* Obrigatório: Não
* Valor padrão: N/A

### content
* Descrição: Mensagem a ser enviado. Um content pode substituir um embed
* Tipo: string
* Obrigatório: Depende se o embed existe
* Valor padrão: N/A

### embeds
* Descrição: Lista de embeds a ser enviado para o discord. Um embed pode substituir um content
* Tipo: System.Collections.Generic.List[DiscordEmbed]
* Obrigatório: Depende se o content existe
* Valor padrão: N/A

## Metodos

### SetUsername
* Descrição: Define um nome para o bot
* Retorno: DiscordMessage
* Estático: Não
* Parametros:
  * username
    * Descrição: Nome a ser trocado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### SetAvatarUrl
* Descrição: Define um icone para o bot
* Retorno: DiscordMessage
* Estático: Não
* Parametros:
  * avatar_url
    * Descrição: url a ser trocado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### SetContent
* Descrição: Define uma mensagem para o bot
* Retorno: DiscordMessage
* Estático: Não
* Parametros:
  * content
    * Descrição: mensagem a ser enviado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### GoNewEmbed
* Descrição: Cria um novo embed
* Retorno: DiscordEmbed
* Estático: Não
* Parametros: N/A

### AddEmbed
* Descrição: Cria um novo embed com o titulo
* Retorno: DiscordMessage
* Estático: Não
* Parametros:
  * title
    * Descrição: titulo da mensagem a ser enviado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### AddEmbed
* Descrição: Cria um novo embed com o titulo e descrição
* Retorno: DiscordMessage
* Estático: Não
* Parametros:
  * title
    * Descrição: titulo da mensagem a ser enviado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A
  * description
    * Descrição: descrição da mensagem a ser enviado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### AddEmbed
* Descrição: Cria um novo embed com o titulo com link e descrição
* Retorno: DiscordMessage
* Estático: Não
* Parametros:
  * title
    * Descrição: titulo da mensagem a ser enviado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A
  * description
    * Descrição: descrição da mensagem a ser enviado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A
  * url
    * Descrição: url do titulo da mensagem a ser enviado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### AddEmbed
* Descrição: Cria um novo embed com o titulo com link e descrição e adiciona uma cor no embed
* Retorno: DiscordMessage
* Estático: Não
* Parametros:
  * title
    * Descrição: titulo da mensagem a ser enviado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A
  * description
    * Descrição: descrição da mensagem a ser enviado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A
  * url
    * Descrição: url do titulo da mensagem a ser enviado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A
  * color
    * Descrição: cor da embed a ser enviado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### AddEmbed
* Descrição: Cria um novo embed com o titulo com descrição e adiciona uma cor no embed
* Retorno: DiscordMessage
* Estático: Não
* Parametros:
  * title
    * Descrição: titulo da mensagem a ser enviado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A
  * description
    * Descrição: descrição da mensagem a ser enviado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A
  * color
    * Descrição: cor da embed a ser enviado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### Generate
* Descrição: Transforma a mensagem em JSON
* Retorno: string
* Estático: Não
* Parametros: N/A


## Exemplos

### cmdlet
Definindo nome do bot
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$message.username = "nome do bot"
$message.content = "Altera o nome do bot"
$metadata.SendMessage();
```

Definindo avatar do bot
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$message.avatar_url = "https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg"
$message.content = "Altera o icone do bot"
$metadata.SendMessage();
```

Definindo conteudo do bot
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$message.content = "Conteudo"
$metadata.SendMessage();
```

Definindo nome do bot por metodo
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$message= $message.SetUsername("nome do bot")
$message= $message.SetContent("Altera o nome do bot por função")
$metadata.SendMessage();
```

Definindo avatar do bot por metodo
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$message= $message.SetAvatarUrl("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg")
$message= $message.SetContent("Altera o avatar do bot por função")
$metadata.SendMessage();
```

Definindo conteudo do bot por metodo
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$message= $message.SetContent("Conteudo")
$metadata.SendMessage();
```

Adicionando novo embed com titulo por metodo
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$message = $message.AddEmbed("titulo")
$metadata.SendMessage();
```

Adicionando novo embed com titulo e descricao por metodo
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$message = $message.AddEmbed("titulo","descricao")
$metadata.SendMessage();
```

Adicionando novo embed com titulo com link e descricao
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$message = $message.AddEmbed("titulo com link","descricao","https://github.com/Propeus/psc-discord-webhook/")
$metadata.SendMessage();
```

Adicionando novo embed com titulo com link, descricao e cor
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$message = $message.AddEmbed("titulo com link com cor vermelho","descricao","https://github.com/Propeus/psc-discord-webhook/","Red")
$metadata.SendMessage();
```

Adicionando novo embed com titulo, descricao e cor
```powershell
$cor = Get-DiscordColor -nameColor "Red"
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$message = $message.AddEmbed("titulo com embed vermelho","descricao", $cor)
$metadata.SendMessage();
```

Gerando JSON da mensagem
```powershell
$cor = Get-DiscordColor -nameColor "Red"
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$message = $message.AddEmbed("titulo com embed vermelho","descricao", $cor)
Write-Host $message.Generate();
```

### using module
Definindo nome do bot
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message= $metadata.GoMessage();
$message.username = "nome do bot"
$message.content = "Altera o nome do bot"
$metadata.SendMessage();
```

Definindo avatar do bot
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message= $metadata.GoMessage();
$message.avatar_url = "https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg"
$message.content = "Altera o icone do bot"
$metadata.SendMessage();
```

Definindo conteudo do bot
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message= $metadata.GoMessage();
$message.content = "Conteudo"
$metadata.SendMessage();
```

Definindo nome do bot por metodo
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message= $metadata.GoMessage();
$message= $message.SetUsername("nome do bot")
$message= $message.SetContent("Altera o nome do bot por função")
$metadata.SendMessage();
```

Definindo avatar do bot por metodo
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message= $metadata.GoMessage();
$message= $message.SetAvatarUrl("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg")
$metadata.SendMessage();
```

Definindo conteudo do bot por metodo
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message= $metadata.GoMessage();
$message= $message.SetContent("Conteudo")
$metadata.SendMessage();
```

Adicionando novo embed com titulo
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message= $metadata.GoMessage();
[DiscordEmbed]$embed = [DiscordEmbed]::new("titulo")
$message.embeds.Add($embed)
$metadata.SendMessage();
```

Adicionando novo embed com titulo e descricao
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message= $metadata.GoMessage();
[DiscordEmbed]$embed = [DiscordEmbed]::new("titulo","descricao")
$message.embeds.Add($embed)
$metadata.SendMessage();
```

Adicionando novo embed com titulo com link e descricao
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message= $metadata.GoMessage();
[DiscordEmbed]$embed = [DiscordEmbed]::new("titulo","descricao","https://github.com/Propeus/psc-discord-webhook/")
$message.embeds.Add($embed)
$metadata.SendMessage();
```

Adicionando novo embed com titulo com link, descricao e cor
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message= $metadata.GoMessage();
[DiscordEmbed]$embed = [DiscordEmbed]::new("titulo","descricao","https://github.com/Propeus/psc-discord-webhook/","Red")
$message.embeds.Add($embed)
$metadata.SendMessage();
```

Adicionando novo embed com titulo, descricao e cor
```powershell
$cor = [Colors]::Red
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message= $metadata.GoMessage();
[DiscordEmbed]$embed = [DiscordEmbed]::new("titulo","descricao", $cor)
$message.embeds.Add($embed)
$metadata.SendMessage();
```

Gerando JSON da mensagem
```powershell
$cor = [Colors]::Red
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message= $metadata.GoMessage();
[DiscordEmbed]$embed = [DiscordEmbed]::new("titulo","descricao", $cor)
$message.embeds.Add($embed)
Write-Host $message.Generate();
```
