**free

ctl-opt dftactgrp(*no);

dcl-pi P4589;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1552.rpgleinc'
/copy 'qrpgleref/P3687.rpgleinc'
/copy 'qrpgleref/P2191.rpgleinc'

dcl-ds theTable extname('T188') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T188 LIMIT 1;

theCharVar = 'Hello from P4589';
dsply theCharVar;
callp localProc();
P1552();
P3687();
P2191();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4589 in the procedure';
end-proc;