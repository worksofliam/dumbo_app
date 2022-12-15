**free

ctl-opt dftactgrp(*no);

dcl-pi P2999;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2497.rpgleinc'
/copy 'qrpgleref/P1494.rpgleinc'
/copy 'qrpgleref/P2256.rpgleinc'

dcl-ds T768 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T768 FROM T768 LIMIT 1;

theCharVar = 'Hello from P2999';
dsply theCharVar;
callp localProc();
P2497();
P1494();
P2256();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2999 in the procedure';
end-proc;