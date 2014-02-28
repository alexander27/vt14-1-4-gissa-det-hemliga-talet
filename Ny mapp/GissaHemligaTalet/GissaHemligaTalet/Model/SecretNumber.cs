using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GissaHemligaTalet
{                                                                           
    public enum Outcome { Indefinite,Low,High,Correct,NoMoreGuesses,PreviousGuesses};

    public class SecretNumber
    {
        private int _number;
        private List<int> _previousGuesses;

        public const int MaxNumberOfGuesses = 7;

        public bool CanMakeGuess
        {
            get
            {
                return Count < MaxNumberOfGuesses && !_previousGuesses.Contains(_number);
            }
        }
        public int Count
        {
            get
            {
                return _previousGuesses.Count();
            }
        }
        public int Number
        {
            get
            {
                if (CanMakeGuess)
                {
                    return null;
                }
                return _number;
            }
        }

        public Outcome Outcome { get; private set; }

        public ReadOnlyCollection <int> PreviousGuesses
        {
            get
            {
                return _previousGuesses.AsReadOnly();
            }

        }
        public void Initalize()
        {
            Random Random = new Random();
            _number = Random.Next(1, 100);

            _previousGuesses.Clear();

            Outcome = Outcome.Indefinite;
        }
        public Outcome MakeGuess(int guess)
        {
            
            if (guess < 1 || guess > 100)
            
            {
                throw new ArgumentOutOfRangeException();
            }
            
            
            if (Count == MaxNumberOfGuesses)
 
            {
                return Outcome = Outcome.NoMoreGuesses;
            }


            if (_previousGuesses.Contains(guess))
            {
                return Outcome = Outcome.PreviousGuesses;
            }
            _previousGuesses.Add(guess);

            if (guess < _number)
            {
                return Outcome = Outcome.Low;
            }

            if (guess > _number)
            {
                return Outcome = Outcome.High;
            }

            else 
            {
                return Outcome = Outcome.Correct;
            }
        }
        
        public SecretNumber() 
        { 
            _previousGuesses =new List<int>(MaxNumberOfGuesses);
        }









    }
}