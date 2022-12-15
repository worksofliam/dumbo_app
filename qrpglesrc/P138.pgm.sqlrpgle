**free

ctl-opt dftactgrp(*no);

dcl-pi P138;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'

dcl-ds theTable extname('T1840') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1840 LIMIT 1;

theCharVar = 'Hello from P138';
dsply theCharVar;
P24();
P131();
P5();
return;