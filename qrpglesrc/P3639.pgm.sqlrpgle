**free

ctl-opt dftactgrp(*no);

dcl-pi P3639;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2781.rpgleinc'
/copy 'qrpgleref/P3563.rpgleinc'
/copy 'qrpgleref/P1499.rpgleinc'

dcl-ds theTable extname('T578') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T578 LIMIT 1;

theCharVar = 'Hello from P3639';
dsply theCharVar;
P2781();
P3563();
P1499();
return;