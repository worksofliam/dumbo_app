**free

ctl-opt dftactgrp(*no);

dcl-pi P2720;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2055.rpgleinc'
/copy 'qrpgleref/P1755.rpgleinc'
/copy 'qrpgleref/P569.rpgleinc'

dcl-ds T781 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T781 FROM T781 LIMIT 1;

theCharVar = 'Hello from P2720';
dsply theCharVar;
callp localProc();
P2055();
P1755();
P569();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2720 in the procedure';
end-proc;