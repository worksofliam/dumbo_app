**free

ctl-opt dftactgrp(*no);

dcl-pi P2550;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P455.rpgleinc'
/copy 'qrpgleref/P2073.rpgleinc'
/copy 'qrpgleref/P1968.rpgleinc'

dcl-ds T1101 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1101 FROM T1101 LIMIT 1;

theCharVar = 'Hello from P2550';
dsply theCharVar;
callp localProc();
P455();
P2073();
P1968();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2550 in the procedure';
end-proc;