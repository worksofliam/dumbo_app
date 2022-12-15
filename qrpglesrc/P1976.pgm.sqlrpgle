**free

ctl-opt dftactgrp(*no);

dcl-pi P1976;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P924.rpgleinc'
/copy 'qrpgleref/P1599.rpgleinc'
/copy 'qrpgleref/P296.rpgleinc'

dcl-ds T79 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T79 FROM T79 LIMIT 1;

theCharVar = 'Hello from P1976';
dsply theCharVar;
callp localProc();
P924();
P1599();
P296();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1976 in the procedure';
end-proc;