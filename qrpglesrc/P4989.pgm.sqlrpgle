**free

ctl-opt dftactgrp(*no);

dcl-pi P4989;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1055.rpgleinc'
/copy 'qrpgleref/P3758.rpgleinc'
/copy 'qrpgleref/P2364.rpgleinc'

dcl-ds T928 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T928 FROM T928 LIMIT 1;

theCharVar = 'Hello from P4989';
dsply theCharVar;
callp localProc();
P1055();
P3758();
P2364();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4989 in the procedure';
end-proc;