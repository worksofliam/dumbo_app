**free

ctl-opt dftactgrp(*no);

dcl-pi P2259;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P411.rpgleinc'
/copy 'qrpgleref/P1610.rpgleinc'
/copy 'qrpgleref/P1721.rpgleinc'

dcl-ds T625 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T625 FROM T625 LIMIT 1;

theCharVar = 'Hello from P2259';
dsply theCharVar;
callp localProc();
P411();
P1610();
P1721();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2259 in the procedure';
end-proc;