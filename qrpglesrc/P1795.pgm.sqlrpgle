**free

ctl-opt dftactgrp(*no);

dcl-pi P1795;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1221.rpgleinc'
/copy 'qrpgleref/P1699.rpgleinc'
/copy 'qrpgleref/P1698.rpgleinc'

dcl-ds theTable extname('T1249') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1249 LIMIT 1;

theCharVar = 'Hello from P1795';
dsply theCharVar;
P1221();
P1699();
P1698();
return;