**free

ctl-opt dftactgrp(*no);

dcl-pi P2511;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P238.rpgleinc'
/copy 'qrpgleref/P1565.rpgleinc'
/copy 'qrpgleref/P1088.rpgleinc'

dcl-ds T660 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T660 FROM T660 LIMIT 1;

theCharVar = 'Hello from P2511';
dsply theCharVar;
callp localProc();
P238();
P1565();
P1088();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2511 in the procedure';
end-proc;