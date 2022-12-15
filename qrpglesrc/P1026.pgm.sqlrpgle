**free

ctl-opt dftactgrp(*no);

dcl-pi P1026;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P907.rpgleinc'
/copy 'qrpgleref/P850.rpgleinc'

dcl-ds T885 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T885 FROM T885 LIMIT 1;

theCharVar = 'Hello from P1026';
dsply theCharVar;
callp localProc();
P164();
P907();
P850();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1026 in the procedure';
end-proc;