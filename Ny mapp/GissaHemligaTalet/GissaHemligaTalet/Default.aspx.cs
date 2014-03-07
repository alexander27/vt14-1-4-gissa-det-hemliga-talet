using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GissaHemligaTalet
{
    public partial class Default : System.Web.UI.Page
    {
        private SecretNumber SecretNumber
        {
            get
            {
                if (Session["SecretNumber"] == null)
                {
                    Session["SecretNumber"] = new SecretNumber();
                       
                }
                return Session["SecretNumber"] as SecretNumber;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                int ValdtNummer = int.Parse(TextBox1.Text);
                Outcome svar = SecretNumber.MakeGuess(ValdtNummer);
                GuessesPlaceHolder.Visible = true;
                Guesses.Text = string.Join(",", SecretNumber.PreviousGuesses);

                if (svar == Outcome.High)
                {
                    Guesses.Text += string.Format(" För högt");
                }
                else if (svar == Outcome.Low)
                {
                    Guesses.Text += (" För lågt" );
                }
                else if (svar == Outcome.PreviousGuesses)
                {
                    Guesses.Text += (" Du har redan gissat på talet ");
                }
                else if (svar == Outcome.Correct)
                {
                    Result.Text = string.Format(" Grattis du vann! ");
                    TextBox1.Enabled = false;
                    Button1.Enabled = false;
                    ResultPlaceHolder.Visible = true;
                    RandomNumberButton.Visible = true;
                }
                //else if (svar == Outcome.NoMoreGuesses)
                //{
                //    ResultPlaceHolder.Visible = true;
                //    Result.Text = string.Format("Du har inga gissningar kvar. Det hemliga talet var {0}", SecretNumber.Number);
                //    Button1.Enabled = false;
                //    TextBox1.Enabled = false;
                //    RandomNumberButton.Visible = true;
                //    GuessesPlaceHolder.Visible = true; 
  
                //}

                if (!SecretNumber.CanMakeGuess && SecretNumber.Outcome != Outcome.Correct)
                {
                    ResultPlaceHolder.Visible = true;
                    Result.Text = string.Format("Du har inga gissningar kvar. Det hemliga talet var {0}", SecretNumber.Number);
                    Button1.Enabled = false;
                    TextBox1.Enabled = false;
                    RandomNumberButton.Visible = true;
                    GuessesPlaceHolder.Visible = true;
                }

            }


        }

        protected void RandomNumberButton_Click(object sender, EventArgs e)
        {
            SecretNumber.Initalize();
        }
    }
}