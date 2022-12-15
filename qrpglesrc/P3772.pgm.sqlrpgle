**free

ctl-opt dftactgrp(*no);

dcl-pi P3772;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1846.rpgleinc'
/copy 'qrpgleref/P3318.rpgleinc'
/copy 'qrpgleref/P3050.rpgleinc'

dcl-ds theTable extname('T1610') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1610 LIMIT 1;

theCharVar = 'Hello from P3772';
dsply theCharVar;
P1846();
P3318();
P3050();
return;