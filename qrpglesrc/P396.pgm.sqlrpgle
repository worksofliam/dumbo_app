**free

ctl-opt dftactgrp(*no);

dcl-pi P396;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P138.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds T498 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T498 FROM T498 LIMIT 1;

theCharVar = 'Hello from P396';
dsply theCharVar;
callp localProc();
P138();
P90();
P6();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P396 in the procedure';
end-proc;