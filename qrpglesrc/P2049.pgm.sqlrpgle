**free

ctl-opt dftactgrp(*no);

dcl-pi P2049;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1205.rpgleinc'
/copy 'qrpgleref/P1883.rpgleinc'
/copy 'qrpgleref/P1554.rpgleinc'

dcl-ds theTable extname('T1629') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1629 LIMIT 1;

theCharVar = 'Hello from P2049';
dsply theCharVar;
P1205();
P1883();
P1554();
return;