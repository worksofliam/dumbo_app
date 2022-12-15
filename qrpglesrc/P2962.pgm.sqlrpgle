**free

ctl-opt dftactgrp(*no);

dcl-pi P2962;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2945.rpgleinc'
/copy 'qrpgleref/P2521.rpgleinc'
/copy 'qrpgleref/P2911.rpgleinc'

dcl-ds T285 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T285 FROM T285 LIMIT 1;

theCharVar = 'Hello from P2962';
dsply theCharVar;
callp localProc();
P2945();
P2521();
P2911();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2962 in the procedure';
end-proc;