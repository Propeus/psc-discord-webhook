## Descrição
Este projeto tem como objetivo facilitar o envio mensagens para o discord usando o Powershell.

## Sumario
* [Discord-Metadata](https://github.com/Propeus/psc-discord-webhook/wiki/Discord-Metadata)
* [Discord-Message](https://github.com/Propeus/psc-discord-webhook/wiki/Discord-Message)
* [Discord-Embed](https://github.com/Propeus/psc-discord-webhook/wiki/Discord-Embed)
* [Discord-Embed-Autor](https://github.com/Propeus/psc-discord-webhook/wiki/Discord-Embed-Autor)
* [Discord-Embed-Field](https://github.com/Propeus/psc-discord-webhook/wiki/Discord-Embed-Field)
* [Discord-Embed-Footer](https://github.com/Propeus/psc-discord-webhook/wiki/Discord-Embed-Footer)
* [Discord-Embed-Image](https://github.com/Propeus/psc-discord-webhook/wiki/Discord-Embed-Image)
* [Discord-Embed-Thumbnail](https://github.com/Propeus/psc-discord-webhook/wiki/Discord-Embed-Thumbnail)

## Exemplos

### cmdlet
Instanciar e enviar mensagem simples
```powershell
Import-Module "psc-discord-webhook.psd1" -Force -Global
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$message= $message.SetTitle("Titulo da mensagem")
$message= $message.SetContent("Conteudo da mensagem")
$metadata.SendMessage();
```

Instanciar e enviar mensagem embed
```powershell
Import-Module "psc-discord-webhook.psd1" -Force -Global
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$message= $message.SetUsername("Titulo da mensagem")
$embed= $message.GoNewEmbed();
$embed= $embed.SetTitle("Titulo do embed com link")
$embed= $embed.SetDescription("Descrição do embed")
$embed= $embed.SetUrl("https://github.com/Propeus/psc-discord-webhook/")
$embed= $embed.SetColorName("Yellow");
$embed= $embed.SetAutor("Nome do autor com link e icone","https://github.com/Propeus/","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$embed= $embed.SetImage("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg")
$embed= $embed.SetThumbnail("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$embed= $embed.SetFooter("Texto do footer com icone","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg")
$embed= $embed.SetTimestampNow();
$embed= $embed.AddField("Versao","1.0");
$embed= $embed.AddField("Liguagem","Powershell",$True);
$embed= $embed.AddField("Edição do PS","Core",$True);
$metadata.SendMessage();
```

Instanciar e enviar mensagem embed (Envia varias mensagens exibindo cada propriedade)
```powershell
Import-Module "psc-discord-webhook.psd1" -Force -Global
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage();
$message= $message.SetUsername("Titulo da mensagem")
$embed= $message.GoNewEmbed();
$embed= $embed.SetTitle("Titulo do embed com link")
$metadata.SendMessage();
$embed= $embed.SetDescription("Descrição do embed")
$metadata.SendMessage();
$embed= $embed.SetUrl("https://github.com/Propeus/psc-discord-webhook/")
$metadata.SendMessage();
$embed= $embed.SetColorName("Yellow");
$metadata.SendMessage();
$embed= $embed.SetAutor("Nome do autor");
$metadata.SendMessage();
$embed= $embed.SetAutor("Nome do autor com link","https://github.com/Propeus/");
$metadata.SendMessage();
$embed= $embed.SetAutor("Nome do autor com link","https://github.com/Propeus/","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();
$embed= $embed.SetImage("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg")
$metadata.SendMessage();
$embed= $embed.SetThumbnail("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg");
$metadata.SendMessage();
$embed= $embed.SetFooter("Texto do footer")
$metadata.SendMessage();
$embed= $embed.SetFooter("Texto do footer com icone","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg")
$metadata.SendMessage();
$embed= $embed.SetTimestampNow();
$metadata.SendMessage();
$embed= $embed.AddField("Versao","1.0");
$metadata.SendMessage();
$embed= $embed.AddField("Liguagem","Powershell",$True);
$embed= $embed.AddField("Edição do PS","Core",$True);
$metadata.SendMessage();
```

Instanciar e enviar mensagem embed concatenado as funções
```powershell
Import-Module "psc-discord-webhook.psd1" -Force -Global
$metadata = New-DiscordMetadata -url_webhook $wh
$message= $metadata.GoMessage().SetUsername("Titulo da mensagem")
$embed= $message.GoNewEmbed().SetTitle("Titulo do embed com link").SetDescription("Descrição do embed").SetUrl("https://github.com/Propeus/psc-discord-webhook/").SetColorName("Yellow").SetAutor("Nome do autor com link e icone","https://github.com/Propeus/","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg").SetImage("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg").SetThumbnail("https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg").SetFooter("Texto do footer com icone","https://img2.gratispng.com/20180824/jtl/kisspng-computer-icons-logo-portable-network-graphics-clip-icons-for-free-iconza-circle-social-5b7fe46b0bac53.1999041115351082030478.jpg").SetTimestampNow().AddField("Versao","1.0").AddField("Liguagem","Powershell",$True).AddField("Edição do PS","Core",$True);
$metadata.SendMessage();
```
