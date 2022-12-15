**free

ctl-opt dftactgrp(*no);

dcl-pi P1025;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P913.rpgleinc'
/copy 'qrpgleref/P491.rpgleinc'
/copy 'qrpgleref/P516.rpgleinc'

dcl-ds theTable extname('T507') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T507 LIMIT 1;

theCharVar = 'Hello from P1025';
dsply theCharVar;
P913();
P491();
P516();
return;