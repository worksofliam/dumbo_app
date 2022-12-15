**free

ctl-opt dftactgrp(*no);

dcl-pi P3455;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3031.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P553.rpgleinc'

dcl-ds theTable extname('T247') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T247 LIMIT 1;

theCharVar = 'Hello from P3455';
dsply theCharVar;
callp localProc();
P3031();
P34();
P553();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3455 in the procedure';
end-proc;