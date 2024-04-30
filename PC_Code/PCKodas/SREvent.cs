using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Runtime.Remoting.Metadata.W3cXsd2001;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace PCKodas
{
    public class SREvent<T> 
    { 
        public AutoResetEvent Event { get; private set; }
        
        public T payload { get; set; }
        public delegate void EventCallback(T payload);
        private EventCallback callback;

        public SREvent(EventCallback callback)
        {
            this.Event = new AutoResetEvent(false);
            this.callback = callback;
        }

        public void PrintData()
        {

        }

        public void Callback()
        {
            callback.Invoke(payload);
        }
        public void Set(T argument)
        {
            this.payload = argument;
            Event.Set();
        }

        public T Wait()
        {
            Event.WaitOne();
            return payload;
        }

        public T GetArgument()
        {
            return payload;
        }
    }
}
