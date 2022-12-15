**free

ctl-opt dftactgrp(*no);

dcl-pi P2941;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P793.rpgleinc'
/copy 'qrpgleref/P1698.rpgleinc'
/copy 'qrpgleref/P2460.rpgleinc'

dcl-ds T1029 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1029 FROM T1029 LIMIT 1;

theCharVar = 'Hello from P2941';
dsply theCharVar;
callp localProc();
P793();
P1698();
P2460();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2941 in the procedure';
end-proc;