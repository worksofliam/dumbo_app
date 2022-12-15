**free

ctl-opt dftactgrp(*no);

dcl-pi P3642;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1151.rpgleinc'
/copy 'qrpgleref/P1452.rpgleinc'
/copy 'qrpgleref/P733.rpgleinc'

dcl-ds T1205 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1205 FROM T1205 LIMIT 1;

theCharVar = 'Hello from P3642';
dsply theCharVar;
callp localProc();
P1151();
P1452();
P733();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3642 in the procedure';
end-proc;