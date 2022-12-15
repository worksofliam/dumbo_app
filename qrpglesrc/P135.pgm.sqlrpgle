**free

ctl-opt dftactgrp(*no);

dcl-pi P135;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds T379 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T379 FROM T379 LIMIT 1;

theCharVar = 'Hello from P135';
dsply theCharVar;
callp localProc();
P61();
P117();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P135 in the procedure';
end-proc;