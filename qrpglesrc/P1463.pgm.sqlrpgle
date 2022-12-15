**free

ctl-opt dftactgrp(*no);

dcl-pi P1463;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P958.rpgleinc'
/copy 'qrpgleref/P651.rpgleinc'

dcl-ds T705 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T705 FROM T705 LIMIT 1;

theCharVar = 'Hello from P1463';
dsply theCharVar;
callp localProc();
P0();
P958();
P651();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1463 in the procedure';
end-proc;