**free

ctl-opt dftactgrp(*no);

dcl-pi P363;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P211.rpgleinc'
/copy 'qrpgleref/P270.rpgleinc'
/copy 'qrpgleref/P355.rpgleinc'

dcl-ds T1218 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1218 FROM T1218 LIMIT 1;

theCharVar = 'Hello from P363';
dsply theCharVar;
callp localProc();
P211();
P270();
P355();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P363 in the procedure';
end-proc;