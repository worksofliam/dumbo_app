**free

ctl-opt dftactgrp(*no);

dcl-pi P275;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P143.rpgleinc'
/copy 'qrpgleref/P254.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'

dcl-ds T757 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T757 FROM T757 LIMIT 1;

theCharVar = 'Hello from P275';
dsply theCharVar;
callp localProc();
P143();
P254();
P50();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P275 in the procedure';
end-proc;