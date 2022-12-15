**free

ctl-opt dftactgrp(*no);

dcl-pi P5252;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3581.rpgleinc'
/copy 'qrpgleref/P896.rpgleinc'
/copy 'qrpgleref/P1947.rpgleinc'

dcl-ds T745 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T745 FROM T745 LIMIT 1;

theCharVar = 'Hello from P5252';
dsply theCharVar;
callp localProc();
P3581();
P896();
P1947();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5252 in the procedure';
end-proc;