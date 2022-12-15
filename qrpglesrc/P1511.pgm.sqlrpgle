**free

ctl-opt dftactgrp(*no);

dcl-pi P1511;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1421.rpgleinc'
/copy 'qrpgleref/P660.rpgleinc'
/copy 'qrpgleref/P604.rpgleinc'

dcl-ds theTable extname('T879') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T879 LIMIT 1;

theCharVar = 'Hello from P1511';
dsply theCharVar;
P1421();
P660();
P604();
return;