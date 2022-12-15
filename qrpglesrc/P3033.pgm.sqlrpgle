**free

ctl-opt dftactgrp(*no);

dcl-pi P3033;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P523.rpgleinc'
/copy 'qrpgleref/P2303.rpgleinc'
/copy 'qrpgleref/P2527.rpgleinc'

dcl-ds T453 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T453 FROM T453 LIMIT 1;

theCharVar = 'Hello from P3033';
dsply theCharVar;
callp localProc();
P523();
P2303();
P2527();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3033 in the procedure';
end-proc;