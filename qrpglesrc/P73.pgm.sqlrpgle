**free

ctl-opt dftactgrp(*no);

dcl-pi P73;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'

dcl-ds T1460 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1460 FROM T1460 LIMIT 1;

theCharVar = 'Hello from P73';
dsply theCharVar;
callp localProc();
P17();
P62();
P24();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P73 in the procedure';
end-proc;