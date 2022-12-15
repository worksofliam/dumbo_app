**free

ctl-opt dftactgrp(*no);

dcl-pi P1391;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P994.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P1204.rpgleinc'

dcl-ds T14 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T14 FROM T14 LIMIT 1;

theCharVar = 'Hello from P1391';
dsply theCharVar;
callp localProc();
P994();
P45();
P1204();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1391 in the procedure';
end-proc;