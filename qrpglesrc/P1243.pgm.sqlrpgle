**free

ctl-opt dftactgrp(*no);

dcl-pi P1243;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P908.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P1055.rpgleinc'

dcl-ds T1215 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1215 FROM T1215 LIMIT 1;

theCharVar = 'Hello from P1243';
dsply theCharVar;
callp localProc();
P908();
P59();
P1055();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1243 in the procedure';
end-proc;