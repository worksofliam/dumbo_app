**free

ctl-opt dftactgrp(*no);

dcl-pi P2054;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1216.rpgleinc'
/copy 'qrpgleref/P1714.rpgleinc'
/copy 'qrpgleref/P1508.rpgleinc'

dcl-ds theTable extname('T792') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T792 LIMIT 1;

theCharVar = 'Hello from P2054';
dsply theCharVar;
P1216();
P1714();
P1508();
return;