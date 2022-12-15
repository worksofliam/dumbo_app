**free

ctl-opt dftactgrp(*no);

dcl-pi P4941;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P493.rpgleinc'
/copy 'qrpgleref/P1371.rpgleinc'
/copy 'qrpgleref/P3555.rpgleinc'

dcl-ds T1501 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1501 FROM T1501 LIMIT 1;

theCharVar = 'Hello from P4941';
dsply theCharVar;
callp localProc();
P493();
P1371();
P3555();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4941 in the procedure';
end-proc;