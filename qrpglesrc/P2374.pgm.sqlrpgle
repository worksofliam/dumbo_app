**free

ctl-opt dftactgrp(*no);

dcl-pi P2374;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2317.rpgleinc'
/copy 'qrpgleref/P156.rpgleinc'
/copy 'qrpgleref/P2143.rpgleinc'

dcl-ds T1638 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1638 FROM T1638 LIMIT 1;

theCharVar = 'Hello from P2374';
dsply theCharVar;
callp localProc();
P2317();
P156();
P2143();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2374 in the procedure';
end-proc;