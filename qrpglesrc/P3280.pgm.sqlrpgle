**free

ctl-opt dftactgrp(*no);

dcl-pi P3280;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1882.rpgleinc'
/copy 'qrpgleref/P1322.rpgleinc'
/copy 'qrpgleref/P265.rpgleinc'

dcl-ds T1026 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1026 FROM T1026 LIMIT 1;

theCharVar = 'Hello from P3280';
dsply theCharVar;
callp localProc();
P1882();
P1322();
P265();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3280 in the procedure';
end-proc;