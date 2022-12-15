**free

ctl-opt dftactgrp(*no);

dcl-pi P2416;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P800.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P1882.rpgleinc'

dcl-ds theTable extname('T914') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T914 LIMIT 1;

theCharVar = 'Hello from P2416';
dsply theCharVar;
P800();
P103();
P1882();
return;