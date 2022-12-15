**free

ctl-opt dftactgrp(*no);

dcl-pi P2660;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2489.rpgleinc'
/copy 'qrpgleref/P2206.rpgleinc'
/copy 'qrpgleref/P2535.rpgleinc'

dcl-ds T784 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T784 FROM T784 LIMIT 1;

theCharVar = 'Hello from P2660';
dsply theCharVar;
callp localProc();
P2489();
P2206();
P2535();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2660 in the procedure';
end-proc;