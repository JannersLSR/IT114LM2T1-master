using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // TODO 3.3 Set the text value of the finalGrade label to "Submit your grade percentage to see your final grade!". Watch out for post backs

        }

        protected void DisplayGrade(object sender, EventArgs e)
        {
            try
            {
                double grade = Convert.ToDouble(percentageGrade.Text);
                if (grade < 60)
                {
                    finalGrade.Text = "5.00";
                }
                else if (grade < 64.51)
                {
                    finalGrade.Text = "3.00";
                }
                else if (grade < 69.01)
                {
                    finalGrade.Text = "2.75";
                }
                else if (grade < 73.51)
                {
                    finalGrade.Text = "2.50";
                }
                else if (grade < 78.01)
                {
                    finalGrade.Text = "2.25";
                }
                else if (grade < 82.51)
                {
                    finalGrade.Text = "2.00";
                }
                else if (grade < 87.01)
                {
                    finalGrade.Text = "1.75";
                }
                else if (grade < 91.51)
                {
                    finalGrade.Text = "1.50";
                }
                else if (grade < 96.01)
                {
                    finalGrade.Text = "1.25";
                }
                else
                {
                    finalGrade.Text = "1.00";
                    Response.Write("<script>alert('Congratulations you are an outstanding achiever!')</script>");
                }
            }
            catch
            {
                Response.Write("<script>alert('Error! Grade Input Must a Number!')</script>");
            }
        }
    }
}