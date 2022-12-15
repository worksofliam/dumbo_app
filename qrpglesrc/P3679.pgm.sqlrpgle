**free

ctl-opt dftactgrp(*no);

dcl-pi P3679;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2062.rpgleinc'
/copy 'qrpgleref/P3528.rpgleinc'
/copy 'qrpgleref/P3604.rpgleinc'

dcl-ds theTable extname('T1653') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1653 LIMIT 1;

theCharVar = 'Hello from P3679';
dsply theCharVar;
P2062();
P3528();
P3604();
return;