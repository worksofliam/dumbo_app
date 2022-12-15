**free

ctl-opt dftactgrp(*no);

dcl-pi P734;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P286.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'

dcl-ds theTable extname('T128') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T128 LIMIT 1;

theCharVar = 'Hello from P734';
dsply theCharVar;
P85();
P286();
P61();
return;