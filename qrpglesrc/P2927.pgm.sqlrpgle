**free

ctl-opt dftactgrp(*no);

dcl-pi P2927;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P615.rpgleinc'
/copy 'qrpgleref/P1204.rpgleinc'
/copy 'qrpgleref/P1110.rpgleinc'

dcl-ds theTable extname('T1106') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1106 LIMIT 1;

theCharVar = 'Hello from P2927';
dsply theCharVar;
callp localProc();
P615();
P1204();
P1110();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2927 in the procedure';
end-proc;