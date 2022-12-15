**free

ctl-opt dftactgrp(*no);

dcl-pi P4455;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1140.rpgleinc'
/copy 'qrpgleref/P2701.rpgleinc'
/copy 'qrpgleref/P1042.rpgleinc'

dcl-ds T1731 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1731 FROM T1731 LIMIT 1;

theCharVar = 'Hello from P4455';
dsply theCharVar;
callp localProc();
P1140();
P2701();
P1042();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4455 in the procedure';
end-proc;