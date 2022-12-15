**free

ctl-opt dftactgrp(*no);

dcl-pi P2071;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1011.rpgleinc'
/copy 'qrpgleref/P1481.rpgleinc'
/copy 'qrpgleref/P1126.rpgleinc'

dcl-ds theTable extname('T1181') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1181 LIMIT 1;

theCharVar = 'Hello from P2071';
dsply theCharVar;
P1011();
P1481();
P1126();
return;