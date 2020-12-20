# DiscordEmbedFooter
Classe que define um rodape para a embed

* Construtor
  * DiscordEmbedFooter([string]$text)
  * DiscordEmbedFooter([string]$text, [string]$icon_url)
* Propriedades
  * text
  * icon_url
* Metodos
  * [DiscordEmbedFooter]SetUrl([string]$url) 

## Propriedades
### text
* Descrição: texto a ser inserido no rodape
* Tipo: string
* Obrigatório: Sim
* Valor padrão: N/A

### icon_url
* Descrição: link da imagem a ser enviada no rodape
* Tipo: string
* Obrigatório: Nao
* Valor padrão: N/A

## Metodos

### SetText
* Descrição: Adiciona um texto no rodape
* Retorno: DiscordEmbedFooter
* Estático: Não
* Parametros:
  * text
    * Descrição: texto a ser inserido no rodape
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

### SetIconUrl
* Descrição: Adiciona uma imagem no rodape
* Retorno: DiscordEmbedFooter
* Estático: Não
* Parametros:
  * url
    * Descrição: link da imagem a ser enviada no rodape
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

## Exemplos

### cmdlet

Define texto por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$footer= $embed.GoFooter();
$footer = $footer.SetText("Um texto no rodape");
$metadata.SendMessage();
```

Define texto por propriedade
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$footer= $embed.GoFooter();
$footer.text= "Um texto no rodape";
$metadata.SendMessage();
```

Adiciona texto por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.SetFooter("Um texto no rodape");
$metadata.SendMessage();
```

Define imagem por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$footer= $embed.GoFooter();
$footer = $footer.SetIconUrl("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();
```

Define imagem por propriedade
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$footer= $embed.GoFooter();
$footer.icon_url= "https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg";
$metadata.SendMessage();
```

Adiciona imagem por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.SetFooter("Um texto no rodape","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();
```

### using module

Define texto por função
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmbedFooter]$footer= $embed.GoFooter();
$footer = $footer.SetText("Um texto no rodape");
$metadata.SendMessage();
```

Define texto por propriedade
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmbedFooter]$footer= $embed.GoFooter();
$footer.text= "Um texto no rodape";
$metadata.SendMessage();
```

Adiciona texto por função
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
$embed= $embed.SetFooter("Um texto no rodape");
$metadata.SendMessage();
```

Define imagem por função
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmbedFooter]$footer= $embed.GoFooter();
$footer = $footer.SetIconUrl("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();
```

Define imagem por propriedade
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmbedFooter]$footer= $embed.GoFooter();
$footer.icon_url= "https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg";
$metadata.SendMessage();
```

Adiciona imagem por função
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
$embed= $embed.SetFooter("Um texto no rodape","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();
```

Define texto por construtor
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmbedFooter]$footer= [DiscordEmbedFooter]::new("Um texto no rodape");
$embed.footer = $footer;
$metadata.SendMessage();
```

Define imagem por construtor
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmbedFooter]$footer= [DiscordEmbedFooter]::new("Um texto no rodape","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$embed.footer = $footer;
$metadata.SendMessage();
```