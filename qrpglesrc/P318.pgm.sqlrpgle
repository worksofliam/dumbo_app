**free

ctl-opt dftactgrp(*no);

dcl-pi P318;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P234.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'

dcl-ds T1801 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1801 FROM T1801 LIMIT 1;

theCharVar = 'Hello from P318';
dsply theCharVar;
callp localProc();
P8();
P234();
P73();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P318 in the procedure';
end-proc;