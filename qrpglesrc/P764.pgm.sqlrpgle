**free

ctl-opt dftactgrp(*no);

dcl-pi P764;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P325.rpgleinc'
/copy 'qrpgleref/P367.rpgleinc'
/copy 'qrpgleref/P699.rpgleinc'

dcl-ds theTable extname('T264') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T264 LIMIT 1;

theCharVar = 'Hello from P764';
dsply theCharVar;
P325();
P367();
P699();
return;