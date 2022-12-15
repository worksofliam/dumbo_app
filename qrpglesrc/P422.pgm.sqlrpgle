**free

ctl-opt dftactgrp(*no);

dcl-pi P422;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P344.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'

dcl-ds theTable extname('T57') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T57 LIMIT 1;

theCharVar = 'Hello from P422';
dsply theCharVar;
P344();
P255();
P14();
return;