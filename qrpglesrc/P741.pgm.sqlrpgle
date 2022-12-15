**free

ctl-opt dftactgrp(*no);

dcl-pi P741;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P425.rpgleinc'
/copy 'qrpgleref/P612.rpgleinc'
/copy 'qrpgleref/P37.rpgleinc'

dcl-ds T805 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T805 FROM T805 LIMIT 1;

theCharVar = 'Hello from P741';
dsply theCharVar;
P425();
P612();
P37();
return;