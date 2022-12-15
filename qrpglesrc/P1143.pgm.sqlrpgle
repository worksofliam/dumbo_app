**free

ctl-opt dftactgrp(*no);

dcl-pi P1143;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P380.rpgleinc'
/copy 'qrpgleref/P552.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'

dcl-ds theTable extname('T379') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T379 LIMIT 1;

theCharVar = 'Hello from P1143';
dsply theCharVar;
P380();
P552();
P17();
return;