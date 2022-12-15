**free

ctl-opt dftactgrp(*no);

dcl-pi P3669;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1270.rpgleinc'
/copy 'qrpgleref/P2595.rpgleinc'
/copy 'qrpgleref/P2796.rpgleinc'

dcl-ds theTable extname('T910') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T910 LIMIT 1;

theCharVar = 'Hello from P3669';
dsply theCharVar;
callp localProc();
P1270();
P2595();
P2796();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3669 in the procedure';
end-proc;