**free

ctl-opt dftactgrp(*no);

dcl-pi P858;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P442.rpgleinc'
/copy 'qrpgleref/P525.rpgleinc'

dcl-ds T1074 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1074 FROM T1074 LIMIT 1;

theCharVar = 'Hello from P858';
dsply theCharVar;
callp localProc();
P97();
P442();
P525();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P858 in the procedure';
end-proc;