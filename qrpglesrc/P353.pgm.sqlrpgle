**free

ctl-opt dftactgrp(*no);

dcl-pi P353;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P309.rpgleinc'
/copy 'qrpgleref/P88.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'

dcl-ds theTable extname('T118') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T118 LIMIT 1;

theCharVar = 'Hello from P353';
dsply theCharVar;
P309();
P88();
P127();
return;