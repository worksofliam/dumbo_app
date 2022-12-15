**free

ctl-opt dftactgrp(*no);

dcl-pi P1621;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1405.rpgleinc'
/copy 'qrpgleref/P525.rpgleinc'
/copy 'qrpgleref/P183.rpgleinc'

dcl-ds T1111 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1111 FROM T1111 LIMIT 1;

theCharVar = 'Hello from P1621';
dsply theCharVar;
callp localProc();
P1405();
P525();
P183();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1621 in the procedure';
end-proc;