**free

ctl-opt dftactgrp(*no);

dcl-pi P4024;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2422.rpgleinc'
/copy 'qrpgleref/P3291.rpgleinc'
/copy 'qrpgleref/P3795.rpgleinc'

dcl-ds theTable extname('T992') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T992 LIMIT 1;

theCharVar = 'Hello from P4024';
dsply theCharVar;
P2422();
P3291();
P3795();
return;