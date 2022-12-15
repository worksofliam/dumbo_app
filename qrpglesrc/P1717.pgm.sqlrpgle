**free

ctl-opt dftactgrp(*no);

dcl-pi P1717;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P742.rpgleinc'
/copy 'qrpgleref/P194.rpgleinc'
/copy 'qrpgleref/P1138.rpgleinc'

dcl-ds theTable extname('T1231') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1231 LIMIT 1;

theCharVar = 'Hello from P1717';
dsply theCharVar;
P742();
P194();
P1138();
return;