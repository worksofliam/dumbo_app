**free

ctl-opt dftactgrp(*no);

dcl-pi P3097;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2124.rpgleinc'
/copy 'qrpgleref/P1539.rpgleinc'
/copy 'qrpgleref/P2557.rpgleinc'

dcl-ds theTable extname('T799') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T799 LIMIT 1;

theCharVar = 'Hello from P3097';
dsply theCharVar;
P2124();
P1539();
P2557();
return;