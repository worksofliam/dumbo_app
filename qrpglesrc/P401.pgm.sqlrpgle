**free

ctl-opt dftactgrp(*no);

dcl-pi P401;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P337.rpgleinc'
/copy 'qrpgleref/P351.rpgleinc'

dcl-ds T1026 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1026 FROM T1026 LIMIT 1;

theCharVar = 'Hello from P401';
dsply theCharVar;
callp localProc();
P20();
P337();
P351();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P401 in the procedure';
end-proc;