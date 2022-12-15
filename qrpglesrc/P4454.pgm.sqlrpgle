**free

ctl-opt dftactgrp(*no);

dcl-pi P4454;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2726.rpgleinc'
/copy 'qrpgleref/P3829.rpgleinc'
/copy 'qrpgleref/P3736.rpgleinc'

dcl-ds theTable extname('T1116') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1116 LIMIT 1;

theCharVar = 'Hello from P4454';
dsply theCharVar;
P2726();
P3829();
P3736();
return;