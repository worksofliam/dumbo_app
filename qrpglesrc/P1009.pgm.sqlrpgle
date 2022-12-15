**free

ctl-opt dftactgrp(*no);

dcl-pi P1009;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P256.rpgleinc'
/copy 'qrpgleref/P624.rpgleinc'

dcl-ds theTable extname('T261') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T261 LIMIT 1;

theCharVar = 'Hello from P1009';
dsply theCharVar;
P13();
P256();
P624();
return;