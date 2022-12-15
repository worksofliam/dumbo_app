**free

ctl-opt dftactgrp(*no);

dcl-pi P2198;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P280.rpgleinc'
/copy 'qrpgleref/P1083.rpgleinc'
/copy 'qrpgleref/P249.rpgleinc'

dcl-ds T136 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T136 FROM T136 LIMIT 1;

theCharVar = 'Hello from P2198';
dsply theCharVar;
callp localProc();
P280();
P1083();
P249();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2198 in the procedure';
end-proc;