**free

ctl-opt dftactgrp(*no);

dcl-pi P323;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'

dcl-ds T334 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T334 FROM T334 LIMIT 1;

theCharVar = 'Hello from P323';
dsply theCharVar;
callp localProc();
P23();
P25();
P9();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P323 in the procedure';
end-proc;