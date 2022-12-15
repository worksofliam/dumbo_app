**free

ctl-opt dftactgrp(*no);

dcl-pi P3893;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1094.rpgleinc'
/copy 'qrpgleref/P2211.rpgleinc'
/copy 'qrpgleref/P396.rpgleinc'

dcl-ds theTable extname('T376') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T376 LIMIT 1;

theCharVar = 'Hello from P3893';
dsply theCharVar;
callp localProc();
P1094();
P2211();
P396();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3893 in the procedure';
end-proc;