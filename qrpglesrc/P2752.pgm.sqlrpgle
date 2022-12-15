**free

ctl-opt dftactgrp(*no);

dcl-pi P2752;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1755.rpgleinc'
/copy 'qrpgleref/P2741.rpgleinc'
/copy 'qrpgleref/P2394.rpgleinc'

dcl-ds theTable extname('T900') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T900 LIMIT 1;

theCharVar = 'Hello from P2752';
dsply theCharVar;
callp localProc();
P1755();
P2741();
P2394();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2752 in the procedure';
end-proc;