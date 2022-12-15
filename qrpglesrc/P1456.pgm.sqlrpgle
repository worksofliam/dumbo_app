**free

ctl-opt dftactgrp(*no);

dcl-pi P1456;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P543.rpgleinc'
/copy 'qrpgleref/P1296.rpgleinc'
/copy 'qrpgleref/P723.rpgleinc'

dcl-ds T475 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T475 FROM T475 LIMIT 1;

theCharVar = 'Hello from P1456';
dsply theCharVar;
callp localProc();
P543();
P1296();
P723();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1456 in the procedure';
end-proc;