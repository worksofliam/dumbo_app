**free

ctl-opt dftactgrp(*no);

dcl-pi P1494;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P160.rpgleinc'
/copy 'qrpgleref/P1423.rpgleinc'
/copy 'qrpgleref/P252.rpgleinc'

dcl-ds T1300 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1300 FROM T1300 LIMIT 1;

theCharVar = 'Hello from P1494';
dsply theCharVar;
callp localProc();
P160();
P1423();
P252();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1494 in the procedure';
end-proc;