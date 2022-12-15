**free

ctl-opt dftactgrp(*no);

dcl-pi P2982;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2857.rpgleinc'
/copy 'qrpgleref/P1849.rpgleinc'
/copy 'qrpgleref/P1511.rpgleinc'

dcl-ds theTable extname('T1268') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1268 LIMIT 1;

theCharVar = 'Hello from P2982';
dsply theCharVar;
P2857();
P1849();
P1511();
return;