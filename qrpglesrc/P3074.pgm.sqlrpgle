**free

ctl-opt dftactgrp(*no);

dcl-pi P3074;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2516.rpgleinc'
/copy 'qrpgleref/P2138.rpgleinc'
/copy 'qrpgleref/P642.rpgleinc'

dcl-ds T623 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T623 FROM T623 LIMIT 1;

theCharVar = 'Hello from P3074';
dsply theCharVar;
callp localProc();
P2516();
P2138();
P642();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3074 in the procedure';
end-proc;