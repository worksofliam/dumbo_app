**free

ctl-opt dftactgrp(*no);

dcl-pi P1187;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P918.rpgleinc'
/copy 'qrpgleref/P141.rpgleinc'
/copy 'qrpgleref/P767.rpgleinc'

dcl-ds T1181 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1181 FROM T1181 LIMIT 1;

theCharVar = 'Hello from P1187';
dsply theCharVar;
callp localProc();
P918();
P141();
P767();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1187 in the procedure';
end-proc;