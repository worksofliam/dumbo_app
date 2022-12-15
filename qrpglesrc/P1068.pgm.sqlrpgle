**free

ctl-opt dftactgrp(*no);

dcl-pi P1068;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P933.rpgleinc'
/copy 'qrpgleref/P852.rpgleinc'
/copy 'qrpgleref/P839.rpgleinc'

dcl-ds T458 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T458 FROM T458 LIMIT 1;

theCharVar = 'Hello from P1068';
dsply theCharVar;
callp localProc();
P933();
P852();
P839();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1068 in the procedure';
end-proc;