**free

ctl-opt dftactgrp(*no);

dcl-pi P2012;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P524.rpgleinc'
/copy 'qrpgleref/P1075.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds T1172 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1172 FROM T1172 LIMIT 1;

theCharVar = 'Hello from P2012';
dsply theCharVar;
callp localProc();
P524();
P1075();
P6();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2012 in the procedure';
end-proc;