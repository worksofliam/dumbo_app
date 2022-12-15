**free

ctl-opt dftactgrp(*no);

dcl-pi P4683;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2941.rpgleinc'
/copy 'qrpgleref/P2338.rpgleinc'
/copy 'qrpgleref/P1092.rpgleinc'

dcl-ds T1137 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1137 FROM T1137 LIMIT 1;

theCharVar = 'Hello from P4683';
dsply theCharVar;
callp localProc();
P2941();
P2338();
P1092();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4683 in the procedure';
end-proc;