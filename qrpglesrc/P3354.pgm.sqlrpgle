**free

ctl-opt dftactgrp(*no);

dcl-pi P3354;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1777.rpgleinc'
/copy 'qrpgleref/P1305.rpgleinc'
/copy 'qrpgleref/P3176.rpgleinc'

dcl-ds theTable extname('T1242') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1242 LIMIT 1;

theCharVar = 'Hello from P3354';
dsply theCharVar;
P1777();
P1305();
P3176();
return;