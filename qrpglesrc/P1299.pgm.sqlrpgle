**free

ctl-opt dftactgrp(*no);

dcl-pi P1299;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1048.rpgleinc'
/copy 'qrpgleref/P260.rpgleinc'
/copy 'qrpgleref/P737.rpgleinc'

dcl-ds T124 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T124 FROM T124 LIMIT 1;

theCharVar = 'Hello from P1299';
dsply theCharVar;
callp localProc();
P1048();
P260();
P737();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1299 in the procedure';
end-proc;