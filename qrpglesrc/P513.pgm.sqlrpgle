**free

ctl-opt dftactgrp(*no);

dcl-pi P513;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P234.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'
/copy 'qrpgleref/P417.rpgleinc'

dcl-ds T1059 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1059 FROM T1059 LIMIT 1;

theCharVar = 'Hello from P513';
dsply theCharVar;
callp localProc();
P234();
P187();
P417();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P513 in the procedure';
end-proc;