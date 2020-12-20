# DiscordEmbedImage
Classe que define uma imagem para a embed

* Construtor
  * DiscordEmbedImage([string]$url)
* Propriedades
  * url
* Metodos
  * [DiscordEmbedImage]SetUrl([string]$url) 

## Propriedades
### url
* Descrição: link da imagem a ser enviada
* Tipo: string
* Obrigatório: Sim
* Valor padrão: N/A


## Metodos

### SetUrl
* Descrição: Adiciona uma imagem no embed
* Retorno: DiscordEmbedImage
* Estático: Não
* Parametros:
  * url
    * Descrição: Link da imagem a ser enviado
    * Tipo: string
    * Obrigatório: Sim
    * Valor padrão: N/A

## Exemplos

### cmdlet

Define imagem por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$image= $embed.GoImage();
$image = $image.SetUrl("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();
```

Define imagem por propriedade
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$image= $embed.GoImage();
$image.url= "https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg";
$metadata.SendMessage();
```

Adiciona imagem por função
```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$embed= $message.GoNewEmbed();
$embed= $embed.SetImage("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();
```

### using module

Define imagem por função
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmbedImage]$image= $embed.GoImage();
$image = $image.SetUrl("Nome do campo");
$metadata.SendMessage();
```

Define imagem por propriedade
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
[DiscordEmbedImage]$image= $embed.GoImage();
$image.url= "https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg";
$metadata.SendMessage();
```

Adiciona imagem por função
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
$embed= $embed.SetImage("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();
```

Adiciona imagem por construtor
```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
[DiscordMessage]$message = $metadata.GoMessage();
[DiscordEmbed]$embed = $message.GoNewEmbed();
$$embed.image = [DiscordEmbedImage]::new("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();
```