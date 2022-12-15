**free

ctl-opt dftactgrp(*no);

dcl-pi P3487;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2670.rpgleinc'
/copy 'qrpgleref/P939.rpgleinc'
/copy 'qrpgleref/P1555.rpgleinc'

dcl-ds theTable extname('T479') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T479 LIMIT 1;

theCharVar = 'Hello from P3487';
dsply theCharVar;
P2670();
P939();
P1555();
return;