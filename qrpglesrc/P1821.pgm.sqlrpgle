**free

ctl-opt dftactgrp(*no);

dcl-pi P1821;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1320.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P1240.rpgleinc'

dcl-ds T713 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T713 FROM T713 LIMIT 1;

theCharVar = 'Hello from P1821';
dsply theCharVar;
callp localProc();
P1320();
P9();
P1240();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1821 in the procedure';
end-proc;