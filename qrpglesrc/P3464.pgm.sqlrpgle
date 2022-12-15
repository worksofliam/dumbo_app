**free

ctl-opt dftactgrp(*no);

dcl-pi P3464;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1496.rpgleinc'
/copy 'qrpgleref/P2967.rpgleinc'
/copy 'qrpgleref/P1108.rpgleinc'

dcl-ds T1353 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1353 FROM T1353 LIMIT 1;

theCharVar = 'Hello from P3464';
dsply theCharVar;
callp localProc();
P1496();
P2967();
P1108();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3464 in the procedure';
end-proc;