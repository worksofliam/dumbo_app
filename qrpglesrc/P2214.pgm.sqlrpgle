**free

ctl-opt dftactgrp(*no);

dcl-pi P2214;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1010.rpgleinc'
/copy 'qrpgleref/P1365.rpgleinc'
/copy 'qrpgleref/P1541.rpgleinc'

dcl-ds theTable extname('T840') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T840 LIMIT 1;

theCharVar = 'Hello from P2214';
dsply theCharVar;
callp localProc();
P1010();
P1365();
P1541();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2214 in the procedure';
end-proc;