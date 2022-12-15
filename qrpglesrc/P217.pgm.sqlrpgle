**free

ctl-opt dftactgrp(*no);

dcl-pi P217;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P196.rpgleinc'
/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'

dcl-ds theTable extname('T282') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T282 LIMIT 1;

theCharVar = 'Hello from P217';
dsply theCharVar;
P196();
P97();
P127();
return;