**free

ctl-opt dftactgrp(*no);

dcl-pi P5059;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2441.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P2842.rpgleinc'

dcl-ds theTable extname('T1429') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1429 LIMIT 1;

theCharVar = 'Hello from P5059';
dsply theCharVar;
P2441();
P132();
P2842();
return;