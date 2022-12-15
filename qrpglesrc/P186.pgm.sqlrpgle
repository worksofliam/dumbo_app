**free

ctl-opt dftactgrp(*no);

dcl-pi P186;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P97.rpgleinc'

dcl-ds theTable extname('T149') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T149 LIMIT 1;

theCharVar = 'Hello from P186';
dsply theCharVar;
P109();
P13();
P97();
return;