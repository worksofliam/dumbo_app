**free

ctl-opt dftactgrp(*no);

dcl-pi P2117;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1517.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P262.rpgleinc'

dcl-ds T310 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T310 FROM T310 LIMIT 1;

theCharVar = 'Hello from P2117';
dsply theCharVar;
callp localProc();
P1517();
P102();
P262();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2117 in the procedure';
end-proc;