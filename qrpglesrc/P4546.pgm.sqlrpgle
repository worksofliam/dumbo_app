**free

ctl-opt dftactgrp(*no);

dcl-pi P4546;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2331.rpgleinc'
/copy 'qrpgleref/P963.rpgleinc'
/copy 'qrpgleref/P3919.rpgleinc'

dcl-ds T1717 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1717 FROM T1717 LIMIT 1;

theCharVar = 'Hello from P4546';
dsply theCharVar;
callp localProc();
P2331();
P963();
P3919();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4546 in the procedure';
end-proc;