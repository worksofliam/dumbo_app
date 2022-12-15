**free

ctl-opt dftactgrp(*no);

dcl-pi P508;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P203.rpgleinc'
/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'

dcl-ds T103 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T103 FROM T103 LIMIT 1;

theCharVar = 'Hello from P508';
dsply theCharVar;
callp localProc();
P203();
P182();
P84();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P508 in the procedure';
end-proc;