**free

ctl-opt dftactgrp(*no);

dcl-pi P1520;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1399.rpgleinc'
/copy 'qrpgleref/P991.rpgleinc'
/copy 'qrpgleref/P890.rpgleinc'

dcl-ds T1057 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1057 FROM T1057 LIMIT 1;

theCharVar = 'Hello from P1520';
dsply theCharVar;
callp localProc();
P1399();
P991();
P890();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1520 in the procedure';
end-proc;