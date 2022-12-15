**free

ctl-opt dftactgrp(*no);

dcl-pi P1335;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P476.rpgleinc'
/copy 'qrpgleref/P1086.rpgleinc'
/copy 'qrpgleref/P585.rpgleinc'

dcl-ds T536 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T536 FROM T536 LIMIT 1;

theCharVar = 'Hello from P1335';
dsply theCharVar;
callp localProc();
P476();
P1086();
P585();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1335 in the procedure';
end-proc;