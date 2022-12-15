**free

ctl-opt dftactgrp(*no);

dcl-pi P277;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P202.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'

dcl-ds theTable extname('T98') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T98 LIMIT 1;

theCharVar = 'Hello from P277';
dsply theCharVar;
P202();
P17();
P112();
return;