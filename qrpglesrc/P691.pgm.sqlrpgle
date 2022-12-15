**free

ctl-opt dftactgrp(*no);

dcl-pi P691;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P442.rpgleinc'
/copy 'qrpgleref/P480.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'

dcl-ds T136 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T136 FROM T136 LIMIT 1;

theCharVar = 'Hello from P691';
dsply theCharVar;
callp localProc();
P442();
P480();
P26();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P691 in the procedure';
end-proc;