**free

ctl-opt dftactgrp(*no);

dcl-pi P3978;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3624.rpgleinc'
/copy 'qrpgleref/P559.rpgleinc'
/copy 'qrpgleref/P991.rpgleinc'

dcl-ds theTable extname('T1729') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1729 LIMIT 1;

theCharVar = 'Hello from P3978';
dsply theCharVar;
P3624();
P559();
P991();
return;