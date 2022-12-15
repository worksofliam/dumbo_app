**free

ctl-opt dftactgrp(*no);

dcl-pi P2201;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P928.rpgleinc'
/copy 'qrpgleref/P2078.rpgleinc'
/copy 'qrpgleref/P851.rpgleinc'

dcl-ds T565 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T565 FROM T565 LIMIT 1;

theCharVar = 'Hello from P2201';
dsply theCharVar;
callp localProc();
P928();
P2078();
P851();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2201 in the procedure';
end-proc;