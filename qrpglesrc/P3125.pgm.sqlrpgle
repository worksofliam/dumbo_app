**free

ctl-opt dftactgrp(*no);

dcl-pi P3125;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1197.rpgleinc'
/copy 'qrpgleref/P2844.rpgleinc'
/copy 'qrpgleref/P2512.rpgleinc'

dcl-ds theTable extname('T746') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T746 LIMIT 1;

theCharVar = 'Hello from P3125';
dsply theCharVar;
P1197();
P2844();
P2512();
return;