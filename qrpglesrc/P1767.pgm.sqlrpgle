**free

ctl-opt dftactgrp(*no);

dcl-pi P1767;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1127.rpgleinc'
/copy 'qrpgleref/P1418.rpgleinc'
/copy 'qrpgleref/P436.rpgleinc'

dcl-ds theTable extname('T265') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T265 LIMIT 1;

theCharVar = 'Hello from P1767';
dsply theCharVar;
callp localProc();
P1127();
P1418();
P436();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1767 in the procedure';
end-proc;