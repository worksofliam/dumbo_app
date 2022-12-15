**free

ctl-opt dftactgrp(*no);

dcl-pi P2270;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P780.rpgleinc'
/copy 'qrpgleref/P350.rpgleinc'
/copy 'qrpgleref/P458.rpgleinc'

dcl-ds T1031 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1031 FROM T1031 LIMIT 1;

theCharVar = 'Hello from P2270';
dsply theCharVar;
callp localProc();
P780();
P350();
P458();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2270 in the procedure';
end-proc;