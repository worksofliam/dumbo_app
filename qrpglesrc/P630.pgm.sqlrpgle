**free

ctl-opt dftactgrp(*no);

dcl-pi P630;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P195.rpgleinc'
/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P393.rpgleinc'

dcl-ds theTable extname('T470') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T470 LIMIT 1;

theCharVar = 'Hello from P630';
dsply theCharVar;
P195();
P97();
P393();
return;