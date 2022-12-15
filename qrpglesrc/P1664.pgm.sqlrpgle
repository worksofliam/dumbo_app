**free

ctl-opt dftactgrp(*no);

dcl-pi P1664;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1491.rpgleinc'
/copy 'qrpgleref/P777.rpgleinc'
/copy 'qrpgleref/P1218.rpgleinc'

dcl-ds T40 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T40 FROM T40 LIMIT 1;

theCharVar = 'Hello from P1664';
dsply theCharVar;
callp localProc();
P1491();
P777();
P1218();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1664 in the procedure';
end-proc;