**free

ctl-opt dftactgrp(*no);

dcl-pi P2430;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P882.rpgleinc'
/copy 'qrpgleref/P1152.rpgleinc'
/copy 'qrpgleref/P1837.rpgleinc'

dcl-ds T1674 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1674 FROM T1674 LIMIT 1;

theCharVar = 'Hello from P2430';
dsply theCharVar;
callp localProc();
P882();
P1152();
P1837();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2430 in the procedure';
end-proc;