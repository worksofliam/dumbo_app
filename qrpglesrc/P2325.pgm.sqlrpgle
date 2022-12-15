**free

ctl-opt dftactgrp(*no);

dcl-pi P2325;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P506.rpgleinc'
/copy 'qrpgleref/P761.rpgleinc'
/copy 'qrpgleref/P1604.rpgleinc'

dcl-ds theTable extname('T1793') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1793 LIMIT 1;

theCharVar = 'Hello from P2325';
dsply theCharVar;
callp localProc();
P506();
P761();
P1604();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2325 in the procedure';
end-proc;