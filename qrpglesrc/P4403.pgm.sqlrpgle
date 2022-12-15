**free

ctl-opt dftactgrp(*no);

dcl-pi P4403;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3808.rpgleinc'
/copy 'qrpgleref/P2868.rpgleinc'
/copy 'qrpgleref/P3060.rpgleinc'

dcl-ds theTable extname('T1521') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1521 LIMIT 1;

theCharVar = 'Hello from P4403';
dsply theCharVar;
P3808();
P2868();
P3060();
return;