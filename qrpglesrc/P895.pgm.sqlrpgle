**free

ctl-opt dftactgrp(*no);

dcl-pi P895;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P707.rpgleinc'
/copy 'qrpgleref/P863.rpgleinc'

dcl-ds theTable extname('T216') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T216 LIMIT 1;

theCharVar = 'Hello from P895';
dsply theCharVar;
P175();
P707();
P863();
return;