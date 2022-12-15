**free

ctl-opt dftactgrp(*no);

dcl-pi P2180;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1821.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P1476.rpgleinc'

dcl-ds theTable extname('T485') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T485 LIMIT 1;

theCharVar = 'Hello from P2180';
dsply theCharVar;
callp localProc();
P1821();
P27();
P1476();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2180 in the procedure';
end-proc;