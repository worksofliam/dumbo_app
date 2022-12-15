**free

ctl-opt dftactgrp(*no);

dcl-pi P3147;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P578.rpgleinc'
/copy 'qrpgleref/P1408.rpgleinc'
/copy 'qrpgleref/P1998.rpgleinc'

dcl-ds theTable extname('T348') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T348 LIMIT 1;

theCharVar = 'Hello from P3147';
dsply theCharVar;
P578();
P1408();
P1998();
return;