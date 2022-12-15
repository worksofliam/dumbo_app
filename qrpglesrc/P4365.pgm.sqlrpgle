**free

ctl-opt dftactgrp(*no);

dcl-pi P4365;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3851.rpgleinc'
/copy 'qrpgleref/P333.rpgleinc'
/copy 'qrpgleref/P3099.rpgleinc'

dcl-ds T231 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T231 FROM T231 LIMIT 1;

theCharVar = 'Hello from P4365';
dsply theCharVar;
callp localProc();
P3851();
P333();
P3099();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4365 in the procedure';
end-proc;