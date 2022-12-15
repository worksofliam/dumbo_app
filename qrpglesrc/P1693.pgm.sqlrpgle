**free

ctl-opt dftactgrp(*no);

dcl-pi P1693;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P693.rpgleinc'
/copy 'qrpgleref/P1667.rpgleinc'
/copy 'qrpgleref/P533.rpgleinc'

dcl-ds T1081 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1081 FROM T1081 LIMIT 1;

theCharVar = 'Hello from P1693';
dsply theCharVar;
callp localProc();
P693();
P1667();
P533();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1693 in the procedure';
end-proc;