**free

ctl-opt dftactgrp(*no);

dcl-pi P3488;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1364.rpgleinc'
/copy 'qrpgleref/P1432.rpgleinc'
/copy 'qrpgleref/P525.rpgleinc'

dcl-ds theTable extname('T964') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T964 LIMIT 1;

theCharVar = 'Hello from P3488';
dsply theCharVar;
P1364();
P1432();
P525();
return;