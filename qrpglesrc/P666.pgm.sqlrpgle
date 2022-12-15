**free

ctl-opt dftactgrp(*no);

dcl-pi P666;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P345.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'

dcl-ds T43 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T43 FROM T43 LIMIT 1;

theCharVar = 'Hello from P666';
dsply theCharVar;
callp localProc();
P345();
P70();
P187();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P666 in the procedure';
end-proc;