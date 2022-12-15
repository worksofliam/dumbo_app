**free

ctl-opt dftactgrp(*no);

dcl-pi P3525;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1896.rpgleinc'
/copy 'qrpgleref/P2555.rpgleinc'
/copy 'qrpgleref/P1777.rpgleinc'

dcl-ds theTable extname('T438') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T438 LIMIT 1;

theCharVar = 'Hello from P3525';
dsply theCharVar;
P1896();
P2555();
P1777();
return;