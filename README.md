# Introdução

1. Instancia
    1. cmdlet New-*
    1. using module
1. Estrutura
    1. Conteudo
    1. Embed
    1. Nome de usuario (bot)

## Instancia - cmdlet

```powershell
$metadata = New-DiscordMetadata -url_webhook $wh
$metadata.message.content = "Conteudo"
$metadata.SendMessage();
```

## Instancia - using module

```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
$metadata.message.content = "Conteudo"
$metadata.SendMessage();
```

---

## Estrutura - Conteudo

```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
$metadata.message.content = "Conteudo"
$metadata.SendMessage();
```

## Estrutura - Embed (Propriedade)

```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
$embed = $metadata.message.AddEmbed()
$embed.title = "Titulo"
$embed.url = "http://google.com"
$embed.description = "Descricao embed"
$embed.color = (Get-Color -nameColor "Red")
$embed.color = [Colors]::Red
$metadata.SendMessage();
```

## Estrutura - Embed (Metodo)

```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
$embed = $metadata.message.AddEmbed("Titulo somente")
$embed = $metadata.message.AddEmbed("Titulo com descricao","Descricao embed")
$embed = $metadata.message.AddEmbed("Titulo com descricao e com link para o dog","Descricao embed","http://google.com")
$embed = $metadata.message.AddEmbed("Titulo com descricao e com link para o dog + cor","Descricao embed","http://google.com","Red")
$embed = $metadata.message.AddEmbed("Titulo com descricao e cor","Descricao embed",[Colors]::Red)
$embed = $metadata.message.AddEmbed("Titulo com descricao e cor","Descricao embed",(Get-Color -nameColor "Red"))
$metadata.SendMessage();
```

## Estrutura - Field (Metodo)

```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
$embed = $metadata.message.AddEmbed("Titulo com descricao","Descricao embed")
$embed.AddField("Nome","Valor ")
$embed.AddField("Nome","Valor em linha",$true)
$embed.AddField("Nome","Valor em linha",$true)
$metadata.SendMessage();
```

## Estrutura - Autor (Propriedade)

```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
$embed = $metadata.message.AddEmbed("Titulo com descricao","Descricao embed")
$embed.GoAutor()
$embed.author.name="Nome autor"
$embed.author.url= $url
$embed.author.icon_url =$url_icon
$metadata.SendMessage();
```

## Estrutura - Autor (Metodo)

```powershell
[DiscordMetadata]$metadata = [DiscordMetadata]::new($wh)
$embed = $metadata.message.AddEmbed("Titulo com descricao","Descricao embed")
$embed.SetAutor("Nome autor")
# Ou
$embed.SetAutor("Nome autor com link",$url)
# Ou
$embed.SetAutor("Nome autor com link e icone",$url,$url_icon)
$metadata.SendMessage();
```

