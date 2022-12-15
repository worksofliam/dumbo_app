**free

ctl-opt dftactgrp(*no);

dcl-pi P3728;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P178.rpgleinc'
/copy 'qrpgleref/P1086.rpgleinc'

dcl-ds T1839 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1839 FROM T1839 LIMIT 1;

theCharVar = 'Hello from P3728';
dsply theCharVar;
callp localProc();
P178();
P1086();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3728 in the procedure';
end-proc;