**free

ctl-opt dftactgrp(*no);

dcl-pi P421;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P284.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'

dcl-ds T1081 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1081 FROM T1081 LIMIT 1;

theCharVar = 'Hello from P421';
dsply theCharVar;
callp localProc();
P284();
P96();
P110();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P421 in the procedure';
end-proc;