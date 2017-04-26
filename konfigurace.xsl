<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    
    <xsl:template match="konfigurace">
      
        {
        "konfigurace": {
        "obrazovka": {
        "width": {
        "-units": "<xsl:value-of select="obrazovka/width/@units"/>",
        "#text": "<xsl:value-of select="obrazovka/width"/>"
        },
        "height": {
        "-units": "<xsl:value-of select="obrazovka/height/@units"/>",
        "#text": "<xsl:value-of select="obrazovka/height"/>"
        },
        "oriantation": "<xsl:value-of select="obrazovka/oriantation"/>"
        },
        "menu": {
        "positon": "<xsl:value-of select="menu/positon"/>",
        "width": {
        "-units": "<xsl:value-of select="menu/width/@units"/>",
        "#text": "<xsl:value-of select="menu/width"/>"
        },
        "height": {
        "-units": "<xsl:value-of select="menu/height/@units"/>",
        "#text": "<xsl:value-of select="menu/height"/>"
        },
        "color": {
        "-description": "<xsl:value-of select="menu/height/@description"/>",
        "#text": "<xsl:value-of select="menu/color"/>"
        }
        },
        "obecne": {
        "applanguage": {
        "-abbreviation": "<xsl:value-of select="obecne/applanguage/@abbreviation"/>",
        "-country": "<xsl:value-of select="obecne/applanguage/@country"/>",
        "#text": "<xsl:value-of select="obecne/applanguage"/>"
        },
        "startuplaunch": {
        "-enable": "<xsl:value-of select="obecne/startuplaunch/@enable"/>",
        "#text": "<xsl:value-of select="obecne/startuplaunch"/>"
        },
        "multipleinstances": {
        "-enable": "<xsl:value-of select="obecne/multipleinstances/@enable"/>",
        "#text": "<xsl:value-of select="obecne/multipleinstances"/>"
        },
        "exit": "<xsl:value-of select="obecne/exit"/>",
        "afterlaunch": "<xsl:value-of select="obecne/afterlaunch"/>",
        "security": {
        "remememail": {
        "-enable": "<xsl:value-of select="obecne/security/remememail/@enable"/>",
        "#text": "<xsl:value-of select="obecne/security/remememail"/>"
        },
        "keeplog": {
        "-enable": "<xsl:value-of select="obecne/security/keeplog/@enable"/>",
        "#text": "<xsl:value-of select="obecne/security/keeplog"/>"
        }
        },
        "advanced": {
        "browseracceleration": {
        "-enable": "<xsl:value-of select="obecne/advanced/browseracceleration/@enable"/>",
        "#text": "<xsl:value-of select="obecne/advanced/browseracceleration"/>"
        }
        }
        },
        "zvukAnotifikace": {
        "apptoasts": {
        "-enable": "<xsl:value-of select="zvukAnotifikace/apptoasts/@enable"/>",
        "#text": "<xsl:value-of select="zvukAnotifikace/apptoasts"/>"
        },
        "zvuk": {
        "-enable": "<xsl:value-of select="zvukAnotifikace/zvuk/@enable"/>",
        "#text": "<xsl:value-of select="zvukAnotifikace/zvuk"/>"
        },
        "whenplayinggame": {
        "hidetoasts": {
        "-enable": "<xsl:value-of select="zvukAnotifikace/whenplayinggame/hidetoasts/@enable"/>",
        "#text": "<xsl:value-of select="zvukAnotifikace/whenplayinggame/hidetoasts"/>"
        },
        "pop-up": {
        "-enable": "<xsl:value-of select="zvukAnotifikace/whenplayinggame/pop-up/@enable"/>",
        "#text": "<xsl:value-of select="zvukAnotifikace/whenplayinggame/pop-up"/>"
        },
        "mute": {
        "-enable": "<xsl:value-of select="zvukAnotifikace/whenplayinggame/mute/@enable"/>",
        "#text": "<xsl:value-of select="zvukAnotifikace/whenplayinggame/mute"/>"
        }
        },
        "usingapp": {
        "hidetoasts": {
        "-enable": "<xsl:value-of select="zvukAnotifikace/usingapp/hidetoasts/@enable"/>",
        "#text": "<xsl:value-of select="zvukAnotifikace/usingapp/hidetoasts"/>"
        }
        }
        },
        "prateleAchat": {
        "pratele": {
        "realname": {
        "-enable": "<xsl:value-of select="prateleAchat/pratele/realname/@enable"/>",
        "#text": "<xsl:value-of select="prateleAchat/pratele/realname"/>"
        },
        "suggfriends": {
        "-enable": "<xsl:value-of select="prateleAchat/pratele/suggfriends/@enable"/>",
        "#text": "<xsl:value-of select="prateleAchat/pratele/suggfriends"/>"
        }
        },
        "chat": {
        "flashalert": {
        "-enable": "<xsl:value-of select="prateleAchat/chat/flashalert/@enable"/>",
        "#text": "<xsl:value-of select="prateleAchat/chat/flashalert"/>"
        },
        "filtermature": {
        "-enable": "<xsl:value-of select="prateleAchat/chat/filtermature/@enable"/>",
        "#text": "<xsl:value-of select="prateleAchat/chat/filtermature"/>"
        },
        "typing": {
        "-enable": "<xsl:value-of select="prateleAchat/chat/typing/@enable"/>",
        "#text": "<xsl:value-of select="prateleAchat/chat/typing"/>"
        }
        }
        },
        "streaming": {
        "allow": {
        "-enable": "<xsl:value-of select="streaming/allow/@enable"/>",
        "#text": "<xsl:value-of select="streaming/allow"/>"
        },
        "hotkeys": {
        "start":  "<xsl:value-of select="streaming/hotkeys/start"/>",
        "stop": "<xsl:value-of select="streaming/hotkeys/stop"/>",
        "pause": "<xsl:value-of select="streaming/hotkeys/pause"/>"
        },
        "audio": { 
        "-enable": "<xsl:value-of select="streaming/audio/@enable"/>"
        },
        "ingameoverlay": {
        "overlays": {
        "-enable": "<xsl:value-of select="streaming/ingameoverlay/overlays/@enable"/>",
        "#text": "<xsl:value-of select="streaming/ingameoverlay/overlays"/>"
        },
        "streamstatus": {
        "-enable": "<xsl:value-of select="streaming/ingameoverlay/streamstatus/@enable"/>",
        "#text": "<xsl:value-of select="streaming/ingameoverlay/streamstatus"/>"
        }
        },
        "quality": "<xsl:value-of select="streaming/quality"/>"
        },
        "gamesettings": {
        "game": [
        <xsl:for-each select="gamesettings/game">
            {
            "-id": "<xsl:value-of select="./@id"/>",
            "additional": {
            "-enable": "<xsl:value-of select="./additional/@enable"/>",
            "#text":  "<xsl:value-of select="./additional"/>"
            },
            "client32-bit": {
            "-enable": "<xsl:value-of select="./client32-bit/@enable"/>",
            "#text": "<xsl:value-of select="./client32-bit"/>"
            },
            "textlanguage": "<xsl:value-of select="./textlanguage"/>",
            "spokenlanguage": "<xsl:value-of select="./spokenlanguage"/>"
        
            }
            <xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>
        ]}
        }
        }       
    </xsl:template>
</xsl:stylesheet>
