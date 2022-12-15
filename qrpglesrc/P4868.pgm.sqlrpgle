**free

ctl-opt dftactgrp(*no);

dcl-pi P4868;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1840.rpgleinc'
/copy 'qrpgleref/P2329.rpgleinc'
/copy 'qrpgleref/P2532.rpgleinc'

dcl-ds T1688 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1688 FROM T1688 LIMIT 1;

theCharVar = 'Hello from P4868';
dsply theCharVar;
callp localProc();
P1840();
P2329();
P2532();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4868 in the procedure';
end-proc;