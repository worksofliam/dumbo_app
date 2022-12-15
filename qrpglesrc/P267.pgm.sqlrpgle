**free

ctl-opt dftactgrp(*no);

dcl-pi P267;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P192.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P161.rpgleinc'

dcl-ds theTable extname('T1302') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1302 LIMIT 1;

theCharVar = 'Hello from P267';
dsply theCharVar;
P192();
P49();
P161();
return;