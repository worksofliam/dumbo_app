**free

ctl-opt dftactgrp(*no);

dcl-pi P1366;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P859.rpgleinc'
/copy 'qrpgleref/P1108.rpgleinc'
/copy 'qrpgleref/P1164.rpgleinc'

dcl-ds theTable extname('T336') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T336 LIMIT 1;

theCharVar = 'Hello from P1366';
dsply theCharVar;
callp localProc();
P859();
P1108();
P1164();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1366 in the procedure';
end-proc;