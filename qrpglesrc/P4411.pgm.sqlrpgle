**free

ctl-opt dftactgrp(*no);

dcl-pi P4411;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1145.rpgleinc'
/copy 'qrpgleref/P4158.rpgleinc'
/copy 'qrpgleref/P3460.rpgleinc'

dcl-ds theTable extname('T1491') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1491 LIMIT 1;

theCharVar = 'Hello from P4411';
dsply theCharVar;
P1145();
P4158();
P3460();
return;