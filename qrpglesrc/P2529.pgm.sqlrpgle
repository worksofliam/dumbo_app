**free

ctl-opt dftactgrp(*no);

dcl-pi P2529;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1368.rpgleinc'
/copy 'qrpgleref/P1028.rpgleinc'
/copy 'qrpgleref/P1587.rpgleinc'

dcl-ds theTable extname('T527') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T527 LIMIT 1;

theCharVar = 'Hello from P2529';
dsply theCharVar;
callp localProc();
P1368();
P1028();
P1587();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2529 in the procedure';
end-proc;