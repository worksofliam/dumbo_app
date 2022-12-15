**free

ctl-opt dftactgrp(*no);

dcl-pi P1316;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1031.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'
/copy 'qrpgleref/P380.rpgleinc'

dcl-ds theTable extname('T1069') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1069 LIMIT 1;

theCharVar = 'Hello from P1316';
dsply theCharVar;
callp localProc();
P1031();
P439();
P380();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1316 in the procedure';
end-proc;