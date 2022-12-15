**free

ctl-opt dftactgrp(*no);

dcl-pi P3320;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P431.rpgleinc'
/copy 'qrpgleref/P1667.rpgleinc'
/copy 'qrpgleref/P174.rpgleinc'

dcl-ds theTable extname('T369') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T369 LIMIT 1;

theCharVar = 'Hello from P3320';
dsply theCharVar;
P431();
P1667();
P174();
return;