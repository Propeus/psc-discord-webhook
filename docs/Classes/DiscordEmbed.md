# DiscordEmbed
Classe de constrói um embed para a mensagem

* Construtor
  * DiscordEmbed()
  * DiscordEmbed([string]$title)
  * DiscordEmbed([string]$title, [string]$description)
  * DiscordEmbed([string]$title, [string]$description, [string]$url)
  * DiscordEmbed([string]$title, [string]$description, [Colors]$color)
  * DiscordEmbed([string]$title, [string]$description, [string]$url, [string]$color)
* Propriedades
  * title
  * description
  * url
  * color
  * author
  * image
  * thumbnail
  * footer
  * timestamp
  * fields
* Metodos
  * [DiscordEmbed]SetTitle([string]$title)
  * [DiscordEmbed]SetDescription([string]$description)
  * [DiscordEmbed]SetUrl([string]$url)
  * [DiscordEmbed]SetColorName([string]$color)
  * [DiscordEmbedAuthor]GoAuthor()
  * [DiscordEmbed]SetAuthor([string]$name)
  * [DiscordEmbed]SetAuthor([string]$name, [string]$url)
  * [DiscordEmbed]SetAuthor([string]$name, [string]$url, [string]$icon_url)
  * [DiscordEmbedImage]GoImage()
  * [DiscordEmbed]SetImage([string]$url)
  * [DiscordEmbedThumbnail]GoThumbnail()
  * [DiscordEmbed]SetThumbnail([string]$url)
  * [DiscordEmbedFooter]GoFooter()
  * [DiscordEmbed]SetFooter([string]$text)
  * [DiscordEmbed]SetFooter([string]$text, [string]$icon_url)
  * [DiscordEmbed]SetTimestamp([datetime]$timestamp)
  * [DiscordEmbed]SetTimestampNow()
  * [DiscordEmbedField]GoNewField()
  * [DiscordEmbedField]GoIndexField([int]$index)
  * [DiscordEmbed]AddField([string]$name, [string]$value)
  * [DiscordEmbed]AddField([string]$name, [string]$value, [bool]$inline)

## Propriedades
### title
* Descrição: Titulo da embed
* Tipo: string
* Obrigatório: Sim
* Valor padrão: N/A

### description
* Descrição: Descrição da embed
* Tipo: string
* Obrigatório: Não
* Valor padrão: N/A

### url
* Descrição: Link do titulo da embed
* Tipo: string
* Obrigatório: Não
* Valor padrão: N/A

### color
* Descrição: Cor da embed
* Tipo: Colors
* Obrigatório: Não
* Valor padrão: N/A

### author
* Descrição: Define um autor para a embed
* Tipo: DiscordEmbedAuthor
* Obrigatório: Não
* Valor padrão: N/A

### image
* Descrição: Adiciona uma imagem na embed
* Tipo: DiscordEmbedImage
* Obrigatório: Não
* Valor padrão: N/A

### thumbnail
* Descrição: Adiciona uma thumbnail na embed
* Tipo: DiscordEmbedThumbnail
* Obrigatório: Não
* Valor padrão: N/A

### footer
* Descrição: Adiciona um rodapé na embed
* Tipo: DiscordEmbedFooter
* Obrigatório: Não
* Valor padrão: N/A

### timestamp
* Descrição: Adiciona uma data na embed
* Tipo: System.Nullable[datetime]
* Obrigatório: Não
* Valor padrão: N/A

### fields
* Descrição: Adiciona os campos na embed
* Tipo: [System.Collections.Generic.List[DiscordEmbedField]]
* Obrigatório: Não
* Valor padrão: N/A

## Metodos

### SetTitle
* Descrição: Define um titulo para o embed
* Retorno: DiscordEmbed
* Estático: Não
* Parametros:
  * title
    * Descrição: Titulo a ser trocado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### SetDescription
* Descrição: Define uma descricao para o embed
* Retorno: DiscordEmbed
* Estático: Não
* Parametros:
  * description
    * Descrição: Descrição a ser trocado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### SetColorName
* Descrição: Define uma cor para o embed
* Retorno: DiscordEmbed
* Estático: Não
* Parametros:
  * color
    * Descrição: Nome da cor a ser trocado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### SetUrl
* Descrição: Define uma url para o titulo da embed
* Retorno: DiscordEmbed
* Estático: Não
* Parametros:
  * url
    * Descrição: Url do titulo a ser trocado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### SetTimestamp
* Descrição: Define uma data para o embed
* Retorno: DiscordEmbed
* Estático: Não
* Parametros:
  * timestamp
    * Descrição: Data para o embed
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### SetTimestampNow
* Descrição: Define a data atual para o embed
* Retorno: DiscordEmbed
* Estático: Não
* Parametros: N/A

### GoAuthor
* Descrição: Cria um autor para o embed
* Retorno: DiscordEmbedAuthor
* Estático: Não
* Parametros: N/A

### SetAuthor
* Descrição: Define um autor para o embed
* Retorno: DiscordEmbed
* Estático: Não
* Parametros:
  * name
    * Descrição: Nome do autor
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### SetAuthor
* Descrição: Define um autor para o embed
* Retorno: DiscordEmbed
* Estático: Não
* Parametros:
  * name
    * Descrição: Nome do autor
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A
  * url
    * Descrição: Link no nome do autor
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### SetAuthor
* Descrição: Define um autor para o embed
* Retorno: DiscordEmbed
* Estático: Não
* Parametros:
  * name
    * Descrição: Nome do autor
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A
  * url
    * Descrição: Link no nome do autor
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A
  * icon_url
    * Descrição: Icone do autor
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### GoNewField
* Descrição: Cria um novo campo para o embed
* Retorno: DiscordEmbedField
* Estático: Não
* Parametros: N/A

### GoIndexField
* Descrição: Obtem um campo a partir do índice especificado
* Retorno: DiscordEmbedField
* Estático: Não
* Parametros:
  * index
    * Descrição: Índice da lista fields
    * Tipo: int
    * Obrigatório: Sim
    * Valor padrão: N/A

### AddField
* Descrição: Adiciona um novo campo com nome e valor
* Retorno: DiscordEmbed
* Estático: Não
* Parametros:
  * name
    * Descrição: Nome do campo
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A
  * value
    * Descrição: Valor do campo
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### AddField
* Descrição: Adiciona um novo campo com nome e valor
* Retorno: DiscordEmbed
* Estático: Não
* Parametros:
  * name
    * Descrição: Nome do campo
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A
  * value
    * Descrição: Valor do campo
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A
  * inline
    * Descrição: Indica se o campo é em linha
    * Tipo: bool
    * Obrigatório: Sim
    * Valor padrão: N/A

### GoImage
* Descrição: Adiciona uma nova imagem no embed
* Retorno: DiscordEmbedImage
* Estático: Não
* Parametros: N/A

### SetImage
* Descrição: Define uma nova imagem no embed
* Retorno: DiscordEmbed
* Estático: Não
* Parametros:
  * url
    * Descrição: Link da imagem
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### GoThumbnail
* Descrição: Adiciona uma nova Thumbnail no embed
* Retorno: DiscordEmbedThumbnail
* Estático: Não
* Parametros: N/A

### SetThumbnail
* Descrição: Define uma nova Thumbnail no embed
* Retorno: DiscordEmbed
* Estático: Não
* Parametros:
  * url
    * Descrição: Link da Thumbnail
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### GoFooter
* Descrição: Adiciona um novo rodapé no embed
* Retorno: DiscordEmbedFooter
* Estático: Não
* Parametros: N/A

### SetFooter
* Descrição: Define um rodapé no embed
* Retorno: DiscordEmbed
* Estático: Não
* Parametros:
  * text
    * Descrição: Texto do rodapé
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

## Exemplos

### cmdlet
Definindo titulo do embed
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed.title = "titulo"
$metadata.SendMessage();
```

Definindo descrição do embed
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed.description = "descricao"
$metadata.SendMessage();
```

Definindo link do embed
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed.title = "titulo"
$embed.url = "https://github.com/Propeus/psc-discord-webhook/"
$metadata.SendMessage();
```

Definindo titulo do embed por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.SetTitle("titulo")
$metadata.SendMessage();
```

Definindo descrição do embed por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.SetDescription("descricao")
$metadata.SendMessage();
```

Definindo link do embed por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.SetTitle("titulo")
$embed= $embed.SetUrl("https://github.com/Propeus/psc-discord-webhook/")
$metadata.SendMessage();
```

Definindo cor do embed por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.SetTitle("titulo");
$embed= $embed.SetColorName("Red");
$metadata.SendMessage();
```

Definindo nome do autor do embed por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.SetAuthor("nome autor");
$metadata.SendMessage();
```

Definindo nome do autor e link do embed por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.SetAuthor("nome autor","https://github.com/Propeus/psc-discord-webhook/");
$metadata.SendMessage();
```

Definindo nome do autor e link com icone do embed por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.SetAuthor("nome autor","https://github.com/Propeus/psc-discord-webhook/","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();

```

Definindo url de imagem no embed por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.SetImage("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();
```

Definindo url de thumbnail no embed por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.SetThumbnail("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();
```

Definindo texto no rodapé do embed por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.SetFooter("Texto do footer");
$metadata.SendMessage();
```

Definindo texto no rodapé com icone do embed por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.SetFooter("Texto do footer","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();
```

Definindo uma data no rodapé do embed por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.SetTimestamp((Get-Date));
$metadata.SendMessage();
```

Definindo uma data atual no rodapé do embed por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.SetTimestampNow();
$metadata.SendMessage();
```

Definindo um campo com nome e valor no embed por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed.AddField("Nome","valor");
$metadata.SendMessage();
```

Definindo um campo com nome e valor em linha no embed por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed.AddField("Nome","valor",$true);
$metadata.SendMessage();
```

### using module
