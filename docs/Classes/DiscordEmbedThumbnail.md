# DiscordEmbedThumbnail
Classe que define uma Thumbnail para a embed

* Construtor
  * DiscordEmbedThumbnail([string]$url)
* Propriedades
  * url
* Metodos
  * [DiscordEmbedThumbnail]SetUrl([string]$url) 

## Propriedades
### url
* Descrição: link da thumbnail a ser enviada
* Tipo: string
* Obrigatório: Sim
* Valor padrão: N/A


## Metodos

### SetUrl
* Descrição: Adiciona uma thumbnail no embed
* Retorno: DiscordEmbedThumbnail
* Estático: Não
* Parametros:
  * url
    * Descrição: Link da thumbnail a ser enviado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

## Exemplos

### cmdlet

Define thumbnail por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$image= $embed.GoThumbnail();
$image = $image.SetUrl("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();
```

Define thumbnail por propriedade
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$image= $embed.GoThumbnail();
$image.url= "https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg";
$metadata.SendMessage();
```

Adiciona thumbnail por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.SetThumbnail("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();
```

### using module

Define thumbnail por função
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmbedImage]$thumbnail= $embed.GoImage();
$thumbnail = $thumbnail.SetUrl("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();
```

Define thumbnail por propriedade
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmbedImage]$thumbnail= $embed.GoThumbnail();
$thumbnail.url= "https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg";
$metadata.SendMessage();
```

Adiciona thumbnail por função
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
$embed= $embed.SetThumbnail("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();
```

Adiciona thumbnail por construtor
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
$embed.thumbnail = [DiscordEmbedThumbnail]::new("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();
```