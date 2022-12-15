**free

ctl-opt dftactgrp(*no);

dcl-pi P3971;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1521.rpgleinc'
/copy 'qrpgleref/P3590.rpgleinc'
/copy 'qrpgleref/P2383.rpgleinc'

dcl-ds theTable extname('T1802') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1802 LIMIT 1;

theCharVar = 'Hello from P3971';
dsply theCharVar;
P1521();
P3590();
P2383();
return;