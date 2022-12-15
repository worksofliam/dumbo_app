**free

ctl-opt dftactgrp(*no);

dcl-pi P328;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P147.rpgleinc'

dcl-ds T135 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T135 FROM T135 LIMIT 1;

theCharVar = 'Hello from P328';
dsply theCharVar;
callp localProc();
P73();
P4();
P147();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P328 in the procedure';
end-proc;