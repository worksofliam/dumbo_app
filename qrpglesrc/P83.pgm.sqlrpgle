**free

ctl-opt dftactgrp(*no);

dcl-pi P83;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'

dcl-ds T165 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T165 FROM T165 LIMIT 1;

theCharVar = 'Hello from P83';
dsply theCharVar;
callp localProc();
P38();
P7();
P11();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P83 in the procedure';
end-proc;