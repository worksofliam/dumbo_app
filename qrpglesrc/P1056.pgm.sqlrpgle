**free

ctl-opt dftactgrp(*no);

dcl-pi P1056;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P74.rpgleinc'
/copy 'qrpgleref/P739.rpgleinc'
/copy 'qrpgleref/P909.rpgleinc'

dcl-ds theTable extname('T1842') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1842 LIMIT 1;

theCharVar = 'Hello from P1056';
dsply theCharVar;
P74();
P739();
P909();
return;