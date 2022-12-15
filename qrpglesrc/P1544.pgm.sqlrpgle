**free

ctl-opt dftactgrp(*no);

dcl-pi P1544;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P1512.rpgleinc'
/copy 'qrpgleref/P1419.rpgleinc'

dcl-ds theTable extname('T968') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T968 LIMIT 1;

theCharVar = 'Hello from P1544';
dsply theCharVar;
callp localProc();
P27();
P1512();
P1419();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1544 in the procedure';
end-proc;