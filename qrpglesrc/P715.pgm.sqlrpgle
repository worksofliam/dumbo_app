**free

ctl-opt dftactgrp(*no);

dcl-pi P715;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P694.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'

dcl-ds T136 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T136 FROM T136 LIMIT 1;

theCharVar = 'Hello from P715';
dsply theCharVar;
callp localProc();
P35();
P694();
P73();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P715 in the procedure';
end-proc;