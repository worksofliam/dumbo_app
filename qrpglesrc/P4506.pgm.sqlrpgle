**free

ctl-opt dftactgrp(*no);

dcl-pi P4506;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P274.rpgleinc'
/copy 'qrpgleref/P479.rpgleinc'
/copy 'qrpgleref/P609.rpgleinc'

dcl-ds theTable extname('T593') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T593 LIMIT 1;

theCharVar = 'Hello from P4506';
dsply theCharVar;
P274();
P479();
P609();
return;