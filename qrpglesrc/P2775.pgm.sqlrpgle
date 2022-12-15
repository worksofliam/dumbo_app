**free

ctl-opt dftactgrp(*no);

dcl-pi P2775;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P213.rpgleinc'
/copy 'qrpgleref/P803.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'

dcl-ds theTable extname('T1058') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1058 LIMIT 1;

theCharVar = 'Hello from P2775';
dsply theCharVar;
P213();
P803();
P38();
return;