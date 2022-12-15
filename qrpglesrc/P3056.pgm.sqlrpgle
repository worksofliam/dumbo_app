**free

ctl-opt dftactgrp(*no);

dcl-pi P3056;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1961.rpgleinc'
/copy 'qrpgleref/P2832.rpgleinc'
/copy 'qrpgleref/P1194.rpgleinc'

dcl-ds T692 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T692 FROM T692 LIMIT 1;

theCharVar = 'Hello from P3056';
dsply theCharVar;
callp localProc();
P1961();
P2832();
P1194();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3056 in the procedure';
end-proc;