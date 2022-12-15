**free

ctl-opt dftactgrp(*no);

dcl-pi P1523;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P907.rpgleinc'
/copy 'qrpgleref/P954.rpgleinc'
/copy 'qrpgleref/P939.rpgleinc'

dcl-ds T1257 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1257 FROM T1257 LIMIT 1;

theCharVar = 'Hello from P1523';
dsply theCharVar;
callp localProc();
P907();
P954();
P939();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1523 in the procedure';
end-proc;