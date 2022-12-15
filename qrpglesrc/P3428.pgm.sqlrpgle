**free

ctl-opt dftactgrp(*no);

dcl-pi P3428;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2513.rpgleinc'
/copy 'qrpgleref/P2275.rpgleinc'
/copy 'qrpgleref/P1461.rpgleinc'

dcl-ds T209 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T209 FROM T209 LIMIT 1;

theCharVar = 'Hello from P3428';
dsply theCharVar;
callp localProc();
P2513();
P2275();
P1461();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3428 in the procedure';
end-proc;