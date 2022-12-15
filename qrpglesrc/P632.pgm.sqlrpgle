**free

ctl-opt dftactgrp(*no);

dcl-pi P632;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P195.rpgleinc'
/copy 'qrpgleref/P568.rpgleinc'
/copy 'qrpgleref/P340.rpgleinc'

dcl-ds theTable extname('T442') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T442 LIMIT 1;

theCharVar = 'Hello from P632';
dsply theCharVar;
P195();
P568();
P340();
return;