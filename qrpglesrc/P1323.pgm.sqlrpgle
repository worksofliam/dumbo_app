**free

ctl-opt dftactgrp(*no);

dcl-pi P1323;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1147.rpgleinc'
/copy 'qrpgleref/P417.rpgleinc'
/copy 'qrpgleref/P424.rpgleinc'

dcl-ds T90 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T90 FROM T90 LIMIT 1;

theCharVar = 'Hello from P1323';
dsply theCharVar;
callp localProc();
P1147();
P417();
P424();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1323 in the procedure';
end-proc;