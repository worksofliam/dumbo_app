**free

ctl-opt dftactgrp(*no);

dcl-pi P4660;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2097.rpgleinc'
/copy 'qrpgleref/P3134.rpgleinc'
/copy 'qrpgleref/P1891.rpgleinc'

dcl-ds theTable extname('T1153') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1153 LIMIT 1;

theCharVar = 'Hello from P4660';
dsply theCharVar;
callp localProc();
P2097();
P3134();
P1891();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4660 in the procedure';
end-proc;