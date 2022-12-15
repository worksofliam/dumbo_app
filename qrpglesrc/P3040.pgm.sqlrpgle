**free

ctl-opt dftactgrp(*no);

dcl-pi P3040;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1141.rpgleinc'
/copy 'qrpgleref/P801.rpgleinc'
/copy 'qrpgleref/P3039.rpgleinc'

dcl-ds T1398 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1398 FROM T1398 LIMIT 1;

theCharVar = 'Hello from P3040';
dsply theCharVar;
callp localProc();
P1141();
P801();
P3039();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3040 in the procedure';
end-proc;