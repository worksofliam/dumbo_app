**free

ctl-opt dftactgrp(*no);

dcl-pi P907;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P628.rpgleinc'
/copy 'qrpgleref/P571.rpgleinc'
/copy 'qrpgleref/P532.rpgleinc'

dcl-ds theTable extname('T1372') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1372 LIMIT 1;

theCharVar = 'Hello from P907';
dsply theCharVar;
P628();
P571();
P532();
return;