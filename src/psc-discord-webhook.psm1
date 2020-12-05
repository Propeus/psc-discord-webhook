enum Colors{
    Aqua = 3394764
    Automatic = 0
    Black = 0
    Blue = 255
    BlueGray = 6710937
    BrightGreen = 65280
    Brown = 10040064
    DarkBlue = 128
    DarkGreen = 13056
    DarkRed = 8388608
    DarkTeal = 13158
    DarkYellow = 8421376
    Gold = 16763904
    Gray05 = 15987699
    Gray10 = 15132390
    Gray125 = 14737632
    Gray15 = 14277081
    Gray20 = 13421772
    Gray25 = 12632256
    Gray30 = 11776947
    Gray35 = 10921638
    Gray375 = 10526880
    Gray40 = 10066329
    Gray45 = 9211020
    Gray50 = 8421504
    Gray55 = 7566195
    Gray60 = 6710886
    Gray625 = 6316128
    Gray65 = 5855577
    Gray70 = 5000268
    Gray75 = 4210752
    Gray80 = 3355443
    Gray85 = 2500134
    Gray875 = 2105376
    Gray90 = 1644825
    Gray95 = 789516
    Green = 32768
    Indigo = 3355545
    Lavender = 13408767
    LightBlue = 3368703
    LightGreen = 13434828
    LightOrange = 16750848
    LightTurquoise = 13434879
    LightYellow = 16777113
    Lime = 10079232
    OliveGreen = 3355392
    Orange = 16737792
    PaleBlue = 10079487
    Pink = 16711935
    Plum = 10040166
    Red = 16711680
    Rose = 16751052
    SeaGreen = 3381606
    SkyBlue = 52479
    Tan = 16764057
    Teal = 32896
    Turquoise = 65535
    Violet = 8388736
    White = 16777215
    Yellow = 16776960
}

class Validator {
    [string]$paramter
    [string]$message

    Validator([string]$paramter, [string]$message) {
        $this.message = $message;
        $this.paramter = $paramter;
    }
}

class DiscordMetadata {
    [string]$url_webhook
    [string]$encoding
    [bool]$validate
    [DiscordMessage]$message


    DiscordMetadata([string]$url_webhook) {
        $this.url_webhook = $url_webhook;
        $this.encoding = "utf-8"
        $this.validate = $true
        $this.message = [DiscordMessage]::new();
    }

    [DiscordMessage]GoMessage() {
        return $this.message;
    }

    SendMessage() {
        if ($this.validate) {
            [System.Collections.Generic.List[Validator]]$errors = ([System.Collections.Generic.List[Validator]]::New());
            $this.message.Validate($errors);
            if ($errors.count -gt 0) {
                foreach ($erro in $errors) {
                    Write-Error "Parametro: $($erro.paramter)`nErro: $($erro.message)"
                }
                throw "Corrija os erros listados acima."
            }
            else {
                Invoke-RestMethod -Method "Post" -Uri $this.url_webhook -Body $this.message.Generate() -ContentType "application/json; charset=$($this.encoding)"
            }
        }
        else {
            Invoke-RestMethod -Method "Post" -Uri $this.url_webhook -Body $this.message.Generate() -ContentType "application/json; charset=$($this.encoding)"
        }

    }

    static [bool]Validate([string]$Json, [bool]$outputConsole) {
        [DiscordMessage]$msg = [DiscordMessage] (ConvertFrom-Json -InputObject $Json)
        [System.Collections.Generic.List[Validator]]$errors_in = ([System.Collections.Generic.List[Validator]]::New());
        $msg.Validate($errors_in);

        if ($outputConsole) {
            foreach ($erro in $errors_in) {
                Write-Host "Parametro: $($erro.paramter)`nErro: $($erro.message)"
            }
        }

        return $errors_in.count -eq 0;
    }

    static SendMessage([string]$Json) {
        [DiscordMessage]$msg = [DiscordMessage] (ConvertFrom-Json -InputObject $Json)
        [System.Collections.Generic.List[Validator]]$errors_in = ([System.Collections.Generic.List[Validator]]::New());
        $msg.message.Validate($errors_in);

        if ($msg.errors.count -gt 0) {
            foreach ($erro in $errors_in) {
                Write-Error "Parametro: $($erro.paramter)`nErro: $($erro.message)"
            }
            throw "Corrija os erros listados acima."
        }
        else {
            Invoke-RestMethod -Method "Post" -Uri $msg.url_webhook -Body $msg.message.Generate() -ContentType "application/json"
        }
    }
}

class DiscordMessage {
    [string]$username
    [string]$avatar_url
    [string]$content
    [System.Collections.Generic.List[DiscordEmbed]]$embeds = ([System.Collections.Generic.List[DiscordEmbed]]::New());

    DiscordMessage([string]$content, [string]$username, [string]$avatar_url) {
        $this.username = $username;
        $this.avatar_url = $avatar_url;
        $this.content = $content;
    }

    DiscordMessage([string]$content, [string]$username) {
        $this.username = $username;
        $this.content = $content;
    }

    DiscordMessage([string]$content) {
        $this.content = $content;
    }

    DiscordMessage() {
    }

    [DiscordMessage]SetUsername([string]$username) {
        $this.username = $username;
        return $this
    }
    [DiscordMessage]SetAvatarUrl([string]$avatar_url) {
        $this.avatar_url = $avatar_url;
        return $this
    }
    [DiscordMessage]SetContent([string]$content) {
        $this.content = $content;
        return $this
    }

    [DiscordEmbed]GoNewEmbed() {
        [DiscordEmbed]$embed = [DiscordEmbed]::new();
        $this.embeds.Add($embed);
        return $embed;
    }
    [DiscordMessage]AddEmbed([string]$title) {
        [DiscordEmbed]$embed = [DiscordEmbed]::new($title);
        $this.embeds.Add($embed);
        return $this;
    }
    [DiscordMessage]AddEmbed([string]$title, [string]$description) {
        [DiscordEmbed]$embed = [DiscordEmbed]::new($title, $description);
        $this.embeds.Add($embed);
        return $this;
    }
    [DiscordMessage]AddEmbed([string]$title, [string]$description, [string]$url) {
        [DiscordEmbed]$embed = [DiscordEmbed]::new($title, $description, $url);
        $this.embeds.Add($embed);
        return $this;
    }
    [DiscordMessage]AddEmbed([string]$title, [string]$description, [string]$url, [string]$color) {
        [DiscordEmbed]$embed = [DiscordEmbed]::new($title, $description, $url, $color);
        $this.embeds.Add($embed);
        return $this;
    }
    [DiscordMessage]AddEmbed([string]$title, [string]$description, [Colors]$color) {
        [DiscordEmbed]$embed = [DiscordEmbed]::new($title, $description, $color);
        $this.embeds.Add($embed);
        return $this;
    }

    [string]Generate() {
        return ConvertTo-Json $this -Depth 4
    }

    hidden  Validate([System.Collections.Generic.List[Validator]]$errors) {

        if (($null -eq $this.content) -and (($null -eq $this.embeds) -or ($this.embeds.count -eq 0))) {
            $errors.Add([Validator]::new("DiscordMessage::content", "Deve ser preenchido um dos parametros indicados"))
            $errors.Add([Validator]::new("DiscordMessage::embeds", "Deve ser preenchido um dos parametros indicados"))
        }

        foreach ($embed in $this.embeds) {
            $embed.Validate($errors);
        }
    }
}

class DiscordEmbedAuthor {
    [string]$name
    [string]$url
    [string]$icon_url
    hidden[DiscordEmbed]$father

    DiscordEmbedAuthor([DiscordEmbed]$father) {
        $this.father = $father;
    }
    [DiscordEmbed]ReturnToEmbed() {
        return $this.father;
    }


    DiscordEmbedAuthor([string]$name) {
        $this.name = $name;
    }
    DiscordEmbedAuthor([string]$name, [string]$url) {
        $this.name = $name;
        $this.url = $url;
    }
    DiscordEmbedAuthor([string]$name, [string]$url, [string]$icon_url) {
        $this.name = $name;
        $this.url = $url;
        $this.icon_url = $icon_url;
    }

    [DiscordEmbedAuthor]SetName([string]$name) {
        $this.name = $name;
        return $this
    }
    [DiscordEmbedAuthor]SetUrl([string]$url) {
        $this.url = $url;
        return $this
    }
    [DiscordEmbedAuthor]SetIconUrl([string]$icon_url) {
        $this.icon_url = $icon_url;
        return $this
    }



    Validate([System.Collections.Generic.List[Validator]]$errors) {
        if ($null -eq $this.name) {
            $errors.Add([Validator]::new("DiscordEmbedAuthor::name", "O parametro nao pode ser nulo"))
        }
    }
}

class DiscordEmbedField {
    [string]$name
    [string]$value
    [bool]$inline
    hidden[DiscordEmbed]$father

    DiscordEmbedField([DiscordEmbed]$father) {
        $this.father = $father;
    }
    [DiscordEmbed]ReturnToEmbed() {
        return $this.father;
    }

    DiscordEmbedField([string]$name, [string]$value) {
        $this.name = $name;
        $this.value = $value;
        $this.inline = $false;
    }
    DiscordEmbedField([string]$name, [string]$value, [bool]$inline) {
        $this.name = $name;
        $this.value = $value;
        $this.inline = $inline;
    }

    [DiscordEmbedField]SetName([string]$name) {
        $this.name = $name;
        return $this;
    }
    [DiscordEmbedField]SetValue([string]$value) {
        $this.value = $value;
        return $this;
    }
    [DiscordEmbedField]SetInline([string]$inline) {
        $this.inline = $inline;
        return $this;
    }

    Validate([System.Collections.Generic.List[Validator]]$errors) {
        if ($null -eq $this.name) {
            $errors.Add([Validator]::new("DiscordEmbedField::name", "O parametro nao pode ser nulo"))
        }
        if ($null -eq $this.value) {
            $errors.Add([Validator]::new("DiscordEmbedField::value", "O parametro nao pode ser nulo"))
        }
    }
}

class DiscordEmbedImage {
    [string]$url
    hidden[DiscordEmbed]$father

    DiscordEmbedImage([DiscordEmbed]$father) {
        $this.father = $father;
    }
    [DiscordEmbed]ReturnToEmbed() {
        return $this.father;
    }


    DiscordEmbedImage([string]$url) {
        $this.url = $url;
    }

    [DiscordEmbedImage]SetUrl([string]$url) {
        $this.url = $url;
        return $this;
    }

    [bool]Validate() {
        [bool]$IsValid = $true;
        $IsValid = $IsValid -and $null -ne ($this.url);
        return $IsValid;
    }

    Validate([System.Collections.Generic.List[Validator]]$errors) {
        if ($null -eq $this.url) {
            $errors.Add([Validator]::new("DiscordEmbedImage::url", "O parametro nao pode ser nulo"))
        }
    }
}

class DiscordEmbedThumbnail {
    [string]$url
    hidden[DiscordEmbed]$father

    DiscordEmbedThumbnail([DiscordEmbed]$father) {
        $this.father = $father;
    }
    [DiscordEmbed]ReturnToEmbed() {
        return $this.father;
    }

    DiscordEmbedThumbnail([string]$url) {
        $this.url = $url;
    }

    [DiscordEmbedThumbnail]SetUrl([string]$url) {
        $this.url = $url;
        return $this;
    }

    Validate([System.Collections.Generic.List[Validator]]$errors) {
        if ($null -eq $this.url) {
            $errors.Add([Validator]::new("DiscordEmbedThumbnail::url", "O parametro nao pode ser nulo"))
        }
    }
}

class DiscordEmbedFooter {
    [string]$text
    [string]$icon_url
    hidden[DiscordEmbed]$father

    DiscordEmbedFooter([DiscordEmbed]$father) {
        $this.father = $father;
    }
    [DiscordEmbed]ReturnToEmbed() {
        return $this.father;
    }

    DiscordEmbedFooter([string]$text) {
        $this.text = $text;
    }
    DiscordEmbedFooter([string]$text, [string]$icon_url) {
        $this.text = $text;
        $this.icon_url = $icon_url;
    }

    [DiscordEmbedFooter]SetText([string]$text) {
        $this.text = $text;
        return $this;
    }
    [DiscordEmbedFooter]SetIconUrl([string]$icon_url) {
        $this.icon_url = $icon_url;
        return $this;
    }

    Validate([System.Collections.Generic.List[Validator]]$errors) {
        if ($null -eq $this.text) {
            $errors.Add([Validator]::new("DiscordEmbedFooter::text", "O parametro nao pode ser nulo"))
        }
    }
}

class DiscordEmbed {
    [string]$title
    [string]$description
    [string]$url
    [Colors]$color
    [DiscordEmbedAuthor]$author
    [DiscordEmbedImage]$image
    [DiscordEmbedThumbnail]$thumbnail
    [DiscordEmbedFooter]$footer
    [System.Nullable[datetime]]$timestamp

    [System.Collections.Generic.List[DiscordEmbedField]]$fields = ([System.Collections.Generic.List[DiscordEmbedField]]::New());

    DiscordEmbed() {
        $this.color = [Colors]::Aqua
    }

    DiscordEmbed([string]$title) {
        $this.title = $title;
        $this.color = [Colors]::Aqua
    }

    DiscordEmbed([string]$title, [string]$description) {
        $this.title = $title;
        $this.description = $description;
        $this.color = [Colors]::Aqua
    }

    DiscordEmbed([string]$title, [string]$description, [string]$url) {
        $this.title = $title;
        $this.description = $description;
        $this.url = $url;
        $this.color = [Colors]::Aqua
    }

    DiscordEmbed([string]$title, [string]$description, [Colors]$color) {
        $this.title = $title;
        $this.description = $description;
        $this.color = $color;
    }

    DiscordEmbed([string]$title, [string]$description, [string]$url, [string]$color) {
        $this.title = $title;
        $this.description = $description;
        $this.color = (Get-DiscordColor -nameColor $color);
        $this.url = $url;
    }

    [DiscordEmbed]SetTitle([string]$title) {
        $this.title = $title;
        return $this;
    }
    [DiscordEmbed]SetDescription([string]$description) {
        $this.description = $description;
        return $this;
    }
    [DiscordEmbed]SetColorName([string]$color) {
        $this.color = Get-DiscordColor -nameColor $color;
        return $this;
    }
    [DiscordEmbed]SetUrl([string]$url) {
        $this.url = $url;
        return $this;
    }
    [DiscordEmbed]SetTimestamp([datetime]$timestamp) {
        $this.timestamp = $timestamp;
        return $this;
    }
    [DiscordEmbed]SetTimestampNow() {
        $this.timestamp = Get-Date;
        return $this;
    }

    [DiscordEmbedAuthor]GoAuthor() {
      if($null -eq $this.author){
        $this.author = [DiscordEmbedAuthor]::New($this);
      }
        return $this.author;
    }
    [DiscordEmbed]SetAuthor([string]$name) {
        $this.author = [DiscordEmbedAuthor]::New($name);
        return $this;
    }
    [DiscordEmbed]SetAuthor([string]$name, [string]$url) {
        $this.author = [DiscordEmbedAuthor]::New($name, $url);
        return $this;
    }
    [DiscordEmbed]SetAuthor([string]$name, [string]$url, [string]$icon_url) {
        $this.author = [DiscordEmbedAuthor]::New($name, $url, $icon_url);
        return $this;
    }

    [DiscordEmbedField]GoNewField() {
        $field = [DiscordEmbedField]::New($this);
        $this.fields.Add($field);
        return $field;
    }
    [DiscordEmbedField]GoIndexField([int]$index) {
        return $this.fields[$index];
    }
    [DiscordEmbed]AddField([string]$name, [string]$value) {
        $this.fields.Add([DiscordEmbedField]::New($name, $value));
        return $this;
    }
    [DiscordEmbed]AddField([string]$name, [string]$value, [bool]$inline) {
        $this.fields.Add([DiscordEmbedField]::New($name, $value, $inline));
        return $this;
    }

    [DiscordEmbedImage]GoImage() {
      if($null -eq $this.image){
        $this.image = [DiscordEmbedImage]::New($this);
      }
        return $this.image;
    }
    [DiscordEmbed]SetImage([string]$url) {
        $this.image = [DiscordEmbedImage]::New($url);
        return $this;
    }

    [DiscordEmbedThumbnail]GoThumbnail() {
        if($null -eq $this.thumbnail){
          $this.thumbnail = [DiscordEmbedThumbnail]::New($this);
        }
        return $this.thumbnail;
    }
    [DiscordEmbed]SetThumbnail([string]$url) {
        $this.thumbnail = [DiscordEmbedThumbnail]::New($url);
        return $this;
    }

    [DiscordEmbedFooter]GoFooter() {
        if($null -eq $this.footer){
          $this.footer = [DiscordEmbedFooter]::New($this);
        }

        return $this.footer;
    }
    [DiscordEmbed]SetFooter([string]$text) {
        $this.footer = [DiscordEmbedFooter]::new($text);
        return $this;
    }
    [DiscordEmbed]SetFooter([string]$text, [string]$icon_url) {
        $this.footer = [DiscordEmbedFooter]::new($text, $icon_url);
        return $this;
    }

    Validate([System.Collections.Generic.List[Validator]]$errors) {
        [bool]$IsValid = $true;
        $IsValid = $IsValid -and ($this.description -or $this.title -or $this.author -or $this.image -or $this.timestamp -or $this.footer -or $this.thumbnail);
        $IsValid = $IsValid -or $this.fields.count -gt 0;

        if (-not $IsValid) {
            $errors.Add([Validator]::new("DiscordEmbedFooter::description", "Deve ser preenchido um dos parametros indicados"))
            $errors.Add([Validator]::new("DiscordEmbedFooter::title", "Deve ser preenchido um dos parametros indicados"))
            $errors.Add([Validator]::new("DiscordEmbedFooter::author", "Deve ser preenchido um dos parametros indicados"))
            $errors.Add([Validator]::new("DiscordEmbedFooter::fields", "Deve ser preenchido um dos parametros indicados"))
            $errors.Add([Validator]::new("DiscordEmbedFooter::image", "Deve ser preenchido um dos parametros indicados"))
            $errors.Add([Validator]::new("DiscordEmbedFooter::timestamp", "Deve ser preenchido um dos parametros indicados"))
            $errors.Add([Validator]::new("DiscordEmbedFooter::footer", "Deve ser preenchido um dos parametros indicados"))
            $errors.Add([Validator]::new("DiscordEmbedFooter::thumbnail", "Deve ser preenchido um dos parametros indicados"))
        }

        if ($this.author) {
            $IsValid = $IsValid -and $this.author.Validate($errors);
        }
        if ($this.fields) {
            $IsValid = $IsValid -and $this.fields.Validate($errors);
        }
        if ($this.image) {
            $IsValid = $IsValid -and $this.image.Validate($errors);
        }
        if ($this.thumbnail) {
            $IsValid = $IsValid -and $this.thumbnail.Validate($errors);
        }
        if ($this.footer) {
            $IsValid = $IsValid -and $this.footer.Validate($errors);
        }
    }



}

function New-DiscordMetadata {
    param (
        # Url do webhook
        [Parameter(Mandatory)]
        [string]
        $url_webhook
    )

    begin {
        [DiscordMetadata]::new($url_webhook)
    }

}
function Export-DiscordColors {
    param (
    )

    process {
        return [enum]::GetNames([Colors]);
    }

}
function Get-DiscordColor {
    param (
        # Nome da cor
        [Parameter(Mandatory)]
        [string]
        $nameColor
    )

    process {
        return [enum]::Parse([Colors], $nameColor)
    }
}

Export-ModuleMember New-DiscordMetadata;
Export-ModuleMember Export-DiscordColors;
Export-ModuleMember Get-DiscordColor;
