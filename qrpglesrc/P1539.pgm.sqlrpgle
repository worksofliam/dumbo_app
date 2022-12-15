**free

ctl-opt dftactgrp(*no);

dcl-pi P1539;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1214.rpgleinc'
/copy 'qrpgleref/P396.rpgleinc'
/copy 'qrpgleref/P1534.rpgleinc'

dcl-ds theTable extname('T529') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T529 LIMIT 1;

theCharVar = 'Hello from P1539';
dsply theCharVar;
P1214();
P396();
P1534();
return;