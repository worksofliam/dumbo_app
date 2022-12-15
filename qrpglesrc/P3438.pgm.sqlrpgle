**free

ctl-opt dftactgrp(*no);

dcl-pi P3438;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3428.rpgleinc'
/copy 'qrpgleref/P1621.rpgleinc'
/copy 'qrpgleref/P3431.rpgleinc'

dcl-ds T1505 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1505 FROM T1505 LIMIT 1;

theCharVar = 'Hello from P3438';
dsply theCharVar;
callp localProc();
P3428();
P1621();
P3431();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3438 in the procedure';
end-proc;