**free

ctl-opt dftactgrp(*no);

dcl-pi P83;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'

dcl-ds T78 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T78 FROM T78 LIMIT 1;

theCharVar = 'Hello from P83';
dsply theCharVar;
callp localProc();
P9();
P18();
P25();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P83 in the procedure';
end-proc;