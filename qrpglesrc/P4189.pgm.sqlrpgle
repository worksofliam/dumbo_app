**free

ctl-opt dftactgrp(*no);

dcl-pi P4189;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P511.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P2232.rpgleinc'

dcl-ds T1522 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1522 FROM T1522 LIMIT 1;

theCharVar = 'Hello from P4189';
dsply theCharVar;
callp localProc();
P511();
P67();
P2232();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4189 in the procedure';
end-proc;