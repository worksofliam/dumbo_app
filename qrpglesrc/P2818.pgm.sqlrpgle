**free

ctl-opt dftactgrp(*no);

dcl-pi P2818;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1133.rpgleinc'
/copy 'qrpgleref/P1622.rpgleinc'
/copy 'qrpgleref/P2127.rpgleinc'

dcl-ds theTable extname('T845') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T845 LIMIT 1;

theCharVar = 'Hello from P2818';
dsply theCharVar;
P1133();
P1622();
P2127();
return;