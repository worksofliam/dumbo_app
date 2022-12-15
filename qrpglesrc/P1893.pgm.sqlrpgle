**free

ctl-opt dftactgrp(*no);

dcl-pi P1893;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P902.rpgleinc'
/copy 'qrpgleref/P682.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'

dcl-ds T433 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T433 FROM T433 LIMIT 1;

theCharVar = 'Hello from P1893';
dsply theCharVar;
P902();
P682();
P173();
return;