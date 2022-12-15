**free

ctl-opt dftactgrp(*no);

dcl-pi P3497;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1810.rpgleinc'
/copy 'qrpgleref/P2146.rpgleinc'
/copy 'qrpgleref/P2925.rpgleinc'

dcl-ds T1806 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1806 FROM T1806 LIMIT 1;

theCharVar = 'Hello from P3497';
dsply theCharVar;
callp localProc();
P1810();
P2146();
P2925();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3497 in the procedure';
end-proc;