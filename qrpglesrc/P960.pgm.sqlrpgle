**free

ctl-opt dftactgrp(*no);

dcl-pi P960;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P774.rpgleinc'
/copy 'qrpgleref/P564.rpgleinc'
/copy 'qrpgleref/P411.rpgleinc'

dcl-ds theTable extname('T216') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T216 LIMIT 1;

theCharVar = 'Hello from P960';
dsply theCharVar;
P774();
P564();
P411();
return;