**free

ctl-opt dftactgrp(*no);

dcl-pi P3138;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2355.rpgleinc'
/copy 'qrpgleref/P1289.rpgleinc'
/copy 'qrpgleref/P1305.rpgleinc'

dcl-ds theTable extname('T1687') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1687 LIMIT 1;

theCharVar = 'Hello from P3138';
dsply theCharVar;
callp localProc();
P2355();
P1289();
P1305();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3138 in the procedure';
end-proc;