**free

ctl-opt dftactgrp(*no);

dcl-pi P3560;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3328.rpgleinc'
/copy 'qrpgleref/P3534.rpgleinc'
/copy 'qrpgleref/P1984.rpgleinc'

dcl-ds theTable extname('T363') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T363 LIMIT 1;

theCharVar = 'Hello from P3560';
dsply theCharVar;
P3328();
P3534();
P1984();
return;