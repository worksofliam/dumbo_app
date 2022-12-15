**free

ctl-opt dftactgrp(*no);

dcl-pi P2032;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P135.rpgleinc'
/copy 'qrpgleref/P1062.rpgleinc'
/copy 'qrpgleref/P788.rpgleinc'

dcl-ds theTable extname('T1176') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1176 LIMIT 1;

theCharVar = 'Hello from P2032';
dsply theCharVar;
callp localProc();
P135();
P1062();
P788();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2032 in the procedure';
end-proc;