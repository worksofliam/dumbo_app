**free

ctl-opt dftactgrp(*no);

dcl-pi P2760;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P767.rpgleinc'
/copy 'qrpgleref/P2534.rpgleinc'
/copy 'qrpgleref/P1032.rpgleinc'

dcl-ds T455 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T455 FROM T455 LIMIT 1;

theCharVar = 'Hello from P2760';
dsply theCharVar;
callp localProc();
P767();
P2534();
P1032();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2760 in the procedure';
end-proc;