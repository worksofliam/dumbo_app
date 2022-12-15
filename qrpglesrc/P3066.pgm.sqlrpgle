**free

ctl-opt dftactgrp(*no);

dcl-pi P3066;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2933.rpgleinc'
/copy 'qrpgleref/P2188.rpgleinc'
/copy 'qrpgleref/P2371.rpgleinc'

dcl-ds T1632 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1632 FROM T1632 LIMIT 1;

theCharVar = 'Hello from P3066';
dsply theCharVar;
callp localProc();
P2933();
P2188();
P2371();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3066 in the procedure';
end-proc;