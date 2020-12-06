# DiscordEmbedAuthor
Classe que define um autor para a embed

* Construtor
  * DiscordEmbedAuthor([string]$name)
  * DiscordEmbedAuthor([string]$name, [string]$url)
  * DiscordEmbedAuthor([string]$name, [string]$url, [string]$icon_url)
* Propriedades
  * name
  * url
  * icon_url
* Metodos
  * [DiscordEmbedAuthor]SetName([string]$name) 
  * [DiscordEmbedAuthor]SetUrl([string]$url) 
  * [DiscordEmbedAuthor]SetIconUrl([string]$icon_url) 

## Propriedades
### name
* Descrição: Nome do autor da embed
* Tipo: string
* Obrigatório: Sim
* Valor padrão: N/A

### url
* Descrição: Link do autor da embed
* Tipo: string
* Obrigatório: Não
* Valor padrão: N/A

### icon_url
* Descrição: Define um ícone para o autor da embed
* Tipo: string
* Obrigatório: Não
* Valor padrão: N/A

## Metodos

### SetUsername
* Descrição: Define um nome para o autor do embed
* Retorno: DiscordEmbedAuthor
* Estático: Não
* Parametros:
  * name
    * Descrição: Nome do autor a ser definido
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### SetUrl
* Descrição: Define uma url para o autor do embed
* Retorno: DiscordEmbedAuthor
* Estático: Não
* Parametros:
  * url
    * Descrição: URL do autor a ser definido
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### SetIconUrl
* Descrição: Define um ícone para o autor do embed
* Retorno: DiscordEmbedAuthor
* Estático: Não
* Parametros:
  * url
    * Descrição: URL do ícone a ser definido
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

## Exemplos

### cmdlet

Define nome do autor por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.SetAuthor("nome autor");
$metadata.SendMessage();
```

Define nome do autor e link por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.SetAuthor("nome autor","https://github.com/Propeus/psc-discord-webhook/");
$metadata.SendMessage();
```

Define nome do autor, link e icone por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.SetAuthor("nome autor","https://github.com/Propeus/psc-discord-webhook/","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();
```

Define nome do autor por propriedade
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$author= $embed.GoAuthor();
$author.name="nome autor"
$metadata.SendMessage();
```

Define nome do autor, link por propriedade
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$author= $embed.GoAuthor();
$author.name="nome autor"
$author.url="https://github.com/Propeus/psc-discord-webhook/"
$metadata.SendMessage();
```

Define nome do autor, link e icone por propriedade
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$author= $embed.GoAuthor();
$author.name="nome autor"
$author.url="https://github.com/Propeus/psc-discord-webhook/"
$author.icon_url="https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg"
$metadata.SendMessage();
```
### using module

Define um novo autor com nome
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
$embed.author = [DiscordEmdebAuthor]::new("nome autor");
$metadata.SendMessage();
```

Define um novo autor com nome e link
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
$embed.author = [DiscordEmdebAuthor]::new("nome autor","https://github.com/Propeus/psc-discord-webhook/");
$metadata.SendMessage();
```

Define um novo autor com nome, link e icone
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
$embed.author = [DiscordEmdebAuthor]::new("nome autor","https://github.com/Propeus/psc-discord-webhook/","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();
```

Define nome do autor por propriedade
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmdebAuthor]$author= $embed.GoAuthor();
$author.name="nome autor"
$metadata.SendMessage();
```

Define nome do autor, link por propriedade
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmdebAuthor]$author= $embed.GoAuthor();
$author.name="nome autor"
$author.url="https://github.com/Propeus/psc-discord-webhook/"
$metadata.SendMessage();
```

Define nome do autor, link e icone por propriedade
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmdebAuthor]$author= $embed.GoAuthor();
$author.name="nome autor"
$author.url="https://github.com/Propeus/psc-discord-webhook/"
$author.icon_url="https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg"
$metadata.SendMessage();
```

Define nome do autor por função
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
$embed= $embed.SetAuthor("nome autor");
$metadata.SendMessage();
```

Define nome do autor e link por função
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
$embed= $embed.SetAuthor("nome autor","https://github.com/Propeus/psc-discord-webhook/");
$metadata.SendMessage();
```

Define nome do autor, link e icone por função
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
$embed= $embed.SetAuthor("nome autor","https://github.com/Propeus/psc-discord-webhook/","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();
```