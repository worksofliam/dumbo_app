**free

ctl-opt dftactgrp(*no);

dcl-pi P1907;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1115.rpgleinc'
/copy 'qrpgleref/P822.rpgleinc'
/copy 'qrpgleref/P502.rpgleinc'

dcl-ds theTable extname('T946') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T946 LIMIT 1;

theCharVar = 'Hello from P1907';
dsply theCharVar;
P1115();
P822();
P502();
return;