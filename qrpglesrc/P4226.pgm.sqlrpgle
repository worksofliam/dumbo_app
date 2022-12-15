**free

ctl-opt dftactgrp(*no);

dcl-pi P4226;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3180.rpgleinc'
/copy 'qrpgleref/P622.rpgleinc'
/copy 'qrpgleref/P3651.rpgleinc'

dcl-ds T1509 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1509 FROM T1509 LIMIT 1;

theCharVar = 'Hello from P4226';
dsply theCharVar;
P3180();
P622();
P3651();
return;