**free

ctl-opt dftactgrp(*no);

dcl-pi P4376;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1795.rpgleinc'
/copy 'qrpgleref/P2997.rpgleinc'
/copy 'qrpgleref/P2961.rpgleinc'

dcl-ds T1019 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1019 FROM T1019 LIMIT 1;

theCharVar = 'Hello from P4376';
dsply theCharVar;
callp localProc();
P1795();
P2997();
P2961();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4376 in the procedure';
end-proc;