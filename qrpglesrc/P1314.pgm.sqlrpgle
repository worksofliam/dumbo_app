**free

ctl-opt dftactgrp(*no);

dcl-pi P1314;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1017.rpgleinc'
/copy 'qrpgleref/P565.rpgleinc'
/copy 'qrpgleref/P771.rpgleinc'

dcl-ds T906 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T906 FROM T906 LIMIT 1;

theCharVar = 'Hello from P1314';
dsply theCharVar;
callp localProc();
P1017();
P565();
P771();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1314 in the procedure';
end-proc;