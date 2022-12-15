**free

ctl-opt dftactgrp(*no);

dcl-pi P320;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P92.rpgleinc'
/copy 'qrpgleref/P230.rpgleinc'

dcl-ds T174 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T174 FROM T174 LIMIT 1;

theCharVar = 'Hello from P320';
dsply theCharVar;
callp localProc();
P20();
P92();
P230();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P320 in the procedure';
end-proc;