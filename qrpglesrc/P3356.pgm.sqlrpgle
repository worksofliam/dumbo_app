**free

ctl-opt dftactgrp(*no);

dcl-pi P3356;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P2534.rpgleinc'
/copy 'qrpgleref/P1431.rpgleinc'

dcl-ds theTable extname('T639') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T639 LIMIT 1;

theCharVar = 'Hello from P3356';
dsply theCharVar;
P0();
P2534();
P1431();
return;