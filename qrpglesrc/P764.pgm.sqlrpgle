**free

ctl-opt dftactgrp(*no);

dcl-pi P764;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P412.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P309.rpgleinc'

dcl-ds theTable extname('T844') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T844 LIMIT 1;

theCharVar = 'Hello from P764';
dsply theCharVar;
P412();
P146();
P309();
return;