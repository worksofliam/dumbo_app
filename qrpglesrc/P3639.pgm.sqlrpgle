**free

ctl-opt dftactgrp(*no);

dcl-pi P3639;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1913.rpgleinc'
/copy 'qrpgleref/P3565.rpgleinc'
/copy 'qrpgleref/P751.rpgleinc'

dcl-ds T462 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T462 FROM T462 LIMIT 1;

theCharVar = 'Hello from P3639';
dsply theCharVar;
callp localProc();
P1913();
P3565();
P751();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3639 in the procedure';
end-proc;