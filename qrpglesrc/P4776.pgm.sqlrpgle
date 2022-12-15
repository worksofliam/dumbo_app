**free

ctl-opt dftactgrp(*no);

dcl-pi P4776;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3200.rpgleinc'
/copy 'qrpgleref/P1116.rpgleinc'
/copy 'qrpgleref/P2777.rpgleinc'

dcl-ds theTable extname('T402') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T402 LIMIT 1;

theCharVar = 'Hello from P4776';
dsply theCharVar;
P3200();
P1116();
P2777();
return;