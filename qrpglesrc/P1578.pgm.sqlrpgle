**free

ctl-opt dftactgrp(*no);

dcl-pi P1578;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P521.rpgleinc'
/copy 'qrpgleref/P825.rpgleinc'
/copy 'qrpgleref/P356.rpgleinc'

dcl-ds theTable extname('T224') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T224 LIMIT 1;

theCharVar = 'Hello from P1578';
dsply theCharVar;
P521();
P825();
P356();
return;