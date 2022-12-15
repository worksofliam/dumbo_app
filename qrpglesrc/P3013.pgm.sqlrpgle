**free

ctl-opt dftactgrp(*no);

dcl-pi P3013;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1131.rpgleinc'
/copy 'qrpgleref/P1283.rpgleinc'
/copy 'qrpgleref/P2877.rpgleinc'

dcl-ds T1100 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1100 FROM T1100 LIMIT 1;

theCharVar = 'Hello from P3013';
dsply theCharVar;
callp localProc();
P1131();
P1283();
P2877();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3013 in the procedure';
end-proc;