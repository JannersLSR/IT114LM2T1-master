<%@ Page Language="C#" CodeBehind="~/Exercise1.aspx.cs" Inherits="Module1Exercise1.Exercise1" %>

<%-- Exercise 1: Exploring Basic Controls of ASP.NET WebForms--%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>
<!DOCTYPE html>
<html>
<head>
    <title>Malayan Music Player</title>
</head>
<body>
    <h1>Malayan Music Player</h1>
    <%-- !! IMPORTANT: Make sure to use the asp tag for each TODO  !! --%>
    <form runat="server" style="text-align: center;">
        <%-- TODO 2.1 Create a label displaying the name of your favorite song and its artist (e.g. Yesterday - The Beatles)--%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_custom_controls.htm#:~:text=Label --%>
        <div>
            <asp:Label ID="Song" runat="server" Text="Music Player" Font-Size="X-Large"></asp:Label>
            <br />  <br />
            
        </div>
        <%-- TODO 2.2 Create an image that is 200px by 200x big showing the album cover of your favorite song. Make sure to set the alternative text. --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Image%20Control --%>
        <div">
            <asp:Image ID="Image1" runat="server" ImageUrl="https://cdn.discordapp.com/attachments/1183963527854182490/1210746758163075153/download.jpg?ex=65ebaec9&is=65d939c9&hm=b65f20d5104d52366488aeb4a3f57f2ece874672a005dacbec35c24a05af88b7&" Width="200" Height="200"></asp:Image>
        </div>
        <%-- TODO 2.3 Create three buttons with texts. "Prev", "Play", and "Next" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Button%20Controls --%>
        <div>
            <script runat="server">
                void playMusic(object sender, EventArgs e)
                {
                    string Text = $"Now Playing {Song.Text}";
                    change_text.InnerHtml = Text;
                }
                void nextMusic(object sender, EventArgs e)
                {
                    Song.Text = "<미열 37.5 - TripleS>";
                    Image1.ImageUrl = "https://cdn.discordapp.com/attachments/1183963527854182490/1210762378455687168/d121c44584ae151f99655b153f074bf7.png?ex=65ebbd55&is=65d94855&hm=7ca3f91bfacc46420c9c135954b7dfa6752804a5bbbb37ba3c8a4fd5ce863f57&";
                }
                void prevMusic(object sender, EventArgs e)
                {
                    Song.Text = "<북합성 - TripleS>";
                    Image1.ImageUrl = "https://cdn.discordapp.com/attachments/1183963527854182490/1210746758163075153/download.jpg?ex=65ebaec9&is=65d939c9&hm=b65f20d5104d52366488aeb4a3f57f2ece874672a005dacbec35c24a05af88b7&";
                }

            </script>
            <asp:Button ID="Prev_Button" runat="server" Text="⏮" OnClick="prevMusic"/>
            <asp:Button ID="Play_Button" runat="server" Text="▶️" OnClick="playMusic"/>
            <asp:Button ID="Next_Button" runat="server" Text="⏭" OnClick="nextMusic"/>
        </div>
        <%-- TODO 2.4 Create a span. Once the play button is pressed, the span should display "Now playing <favorite song>" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_first_example.htm#:~:text=convertoupper --%>
        <div">
            <span runat="server" id="change_text">- - -</span>
        </div>

        <%-- TODO 2.5 Display the current time using the template syntax <%= %> --%>
        <div>
            <%= DateTime.Now.ToString("yy-MM-dd") %>
        </div>
    </form>
</body>
</html>
