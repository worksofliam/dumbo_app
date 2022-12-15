**free

ctl-opt dftactgrp(*no);

dcl-pi P3348;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P2858.rpgleinc'
/copy 'qrpgleref/P1447.rpgleinc'

dcl-ds T1041 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1041 FROM T1041 LIMIT 1;

theCharVar = 'Hello from P3348';
dsply theCharVar;
callp localProc();
P82();
P2858();
P1447();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3348 in the procedure';
end-proc;