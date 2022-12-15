**free

ctl-opt dftactgrp(*no);

dcl-pi P2599;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2573.rpgleinc'
/copy 'qrpgleref/P526.rpgleinc'
/copy 'qrpgleref/P2064.rpgleinc'

dcl-ds T48 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T48 FROM T48 LIMIT 1;

theCharVar = 'Hello from P2599';
dsply theCharVar;
callp localProc();
P2573();
P526();
P2064();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2599 in the procedure';
end-proc;