**free

ctl-opt dftactgrp(*no);

dcl-pi P136;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'

dcl-ds T1335 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1335 FROM T1335 LIMIT 1;

theCharVar = 'Hello from P136';
dsply theCharVar;
callp localProc();
P13();
P34();
P59();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P136 in the procedure';
end-proc;