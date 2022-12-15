**free

ctl-opt dftactgrp(*no);

dcl-pi P3446;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2443.rpgleinc'
/copy 'qrpgleref/P3165.rpgleinc'
/copy 'qrpgleref/P1032.rpgleinc'

dcl-ds theTable extname('T388') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T388 LIMIT 1;

theCharVar = 'Hello from P3446';
dsply theCharVar;
callp localProc();
P2443();
P3165();
P1032();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3446 in the procedure';
end-proc;