**free

ctl-opt dftactgrp(*no);

dcl-pi P2;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds T490 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T490 FROM T490 LIMIT 1;

theCharVar = 'Hello from P2';
dsply theCharVar;
callp localProc();
P1();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2 in the procedure';
end-proc;