<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo SITE_TITLE ?> | Fedback Email</title>
	
</head>

<body style="font-family: 'Source Sans Pro', sans-serif; padding:0; margin:0;">
    <table style="max-width: 750px; margin: 0px auto; width: 100% ! important; background: #F3F3F3; padding:30px 30px 30px 30px;" width="100% !important" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td style="text-align: center; background: #fcac35;">
                <table width="100%" border="0" cellpadding="30" cellspacing="0">	
                    <tr>
                        <td>
                            <img style="max-width: 125px; width: 100%;padding: 10px;" src="<?php echo base_url();?>backend_asset/custom/images/1(1).png">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        
        <tr>
            <td style="text-align: center;">
                <table width="100%" border="0" cellpadding="30" cellspacing="0" bgcolor="#fff">
                    <tr>
                        <td>

                            <h3 style="color: #333; font-size: 22px; font-weight: normal; margin: 0; text-transform: capitalize;">Verify your email address</h3>
                            <p style="text-align: left; color: #333; font-size: 16px; line-height: 28px;">Hello Admin,</p>
                            <p style="text-align: left;color: #333; font-size: 16px; line-height: 28px;">This is the user feedback.</p>
                            <p style="text-align: left;">Fedback by: <b><?php echo $name;?></b></p>
                            <p style="text-align: left;">User Email: <b><?php echo $email;?></b></p>
                            <p style="text-align: left;">User Message: <br><b><?php echo $message;?></b></p>
                            <p style="text-align: left;color: #333; font-size: 16px; line-height: 28px;"></p>  

                            <p style="text-align: left;color: #333; font-size: 16px; line-height: 28px;">Thanks,<br><?php echo SITE_TITLE ?> team</p>  
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="text-align: center;">
                <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#fff">
                    <tr>
                        <td style="padding: 10px;background: #fcac35;color: #fff;"><?php echo COPYRIGHT; ?></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>