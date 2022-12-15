**free

ctl-opt dftactgrp(*no);

dcl-pi P2428;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1654.rpgleinc'
/copy 'qrpgleref/P2219.rpgleinc'
/copy 'qrpgleref/P685.rpgleinc'

dcl-ds T812 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T812 FROM T812 LIMIT 1;

theCharVar = 'Hello from P2428';
dsply theCharVar;
callp localProc();
P1654();
P2219();
P685();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2428 in the procedure';
end-proc;