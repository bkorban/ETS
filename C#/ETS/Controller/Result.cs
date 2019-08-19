﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace Controller
{
    public class Result<T>
    {
        public ResultEnum Status { get; set; }
        public List <T> Data { get; set; }
    }

    


}
