**free

ctl-opt dftactgrp(*no);

dcl-pi P3608;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1539.rpgleinc'
/copy 'qrpgleref/P1355.rpgleinc'
/copy 'qrpgleref/P1033.rpgleinc'

dcl-ds theTable extname('T801') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T801 LIMIT 1;

theCharVar = 'Hello from P3608';
dsply theCharVar;
P1539();
P1355();
P1033();
return;