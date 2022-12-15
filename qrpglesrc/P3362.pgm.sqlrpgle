**free

ctl-opt dftactgrp(*no);

dcl-pi P3362;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1506.rpgleinc'
/copy 'qrpgleref/P2944.rpgleinc'
/copy 'qrpgleref/P2591.rpgleinc'

dcl-ds T1 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1 FROM T1 LIMIT 1;

theCharVar = 'Hello from P3362';
dsply theCharVar;
callp localProc();
P1506();
P2944();
P2591();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3362 in the procedure';
end-proc;