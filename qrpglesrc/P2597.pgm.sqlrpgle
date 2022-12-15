**free

ctl-opt dftactgrp(*no);

dcl-pi P2597;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1267.rpgleinc'
/copy 'qrpgleref/P1177.rpgleinc'
/copy 'qrpgleref/P1159.rpgleinc'

dcl-ds T983 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T983 FROM T983 LIMIT 1;

theCharVar = 'Hello from P2597';
dsply theCharVar;
callp localProc();
P1267();
P1177();
P1159();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2597 in the procedure';
end-proc;