**free

ctl-opt dftactgrp(*no);

dcl-pi P2548;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2225.rpgleinc'
/copy 'qrpgleref/P2039.rpgleinc'
/copy 'qrpgleref/P976.rpgleinc'

dcl-ds theTable extname('T1207') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1207 LIMIT 1;

theCharVar = 'Hello from P2548';
dsply theCharVar;
P2225();
P2039();
P976();
return;