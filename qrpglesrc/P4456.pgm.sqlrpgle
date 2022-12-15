**free

ctl-opt dftactgrp(*no);

dcl-pi P4456;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2875.rpgleinc'
/copy 'qrpgleref/P1154.rpgleinc'
/copy 'qrpgleref/P308.rpgleinc'

dcl-ds theTable extname('T416') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T416 LIMIT 1;

theCharVar = 'Hello from P4456';
dsply theCharVar;
P2875();
P1154();
P308();
return;