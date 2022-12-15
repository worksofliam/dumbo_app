**free

ctl-opt dftactgrp(*no);

dcl-pi P1802;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1197.rpgleinc'
/copy 'qrpgleref/P761.rpgleinc'
/copy 'qrpgleref/P369.rpgleinc'

dcl-ds T1741 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1741 FROM T1741 LIMIT 1;

theCharVar = 'Hello from P1802';
dsply theCharVar;
callp localProc();
P1197();
P761();
P369();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1802 in the procedure';
end-proc;