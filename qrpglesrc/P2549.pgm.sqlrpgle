**free

ctl-opt dftactgrp(*no);

dcl-pi P2549;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2256.rpgleinc'
/copy 'qrpgleref/P1185.rpgleinc'
/copy 'qrpgleref/P2223.rpgleinc'

dcl-ds T416 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T416 FROM T416 LIMIT 1;

theCharVar = 'Hello from P2549';
dsply theCharVar;
callp localProc();
P2256();
P1185();
P2223();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2549 in the procedure';
end-proc;