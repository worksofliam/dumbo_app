**free

ctl-opt dftactgrp(*no);

dcl-pi P146;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'

dcl-ds theTable extname('T365') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T365 LIMIT 1;

theCharVar = 'Hello from P146';
dsply theCharVar;
P46();
P21();
P123();
return;