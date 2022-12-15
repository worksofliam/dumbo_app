**free

ctl-opt dftactgrp(*no);

dcl-pi P1806;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P790.rpgleinc'
/copy 'qrpgleref/P716.rpgleinc'
/copy 'qrpgleref/P344.rpgleinc'

dcl-ds T696 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T696 FROM T696 LIMIT 1;

theCharVar = 'Hello from P1806';
dsply theCharVar;
callp localProc();
P790();
P716();
P344();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1806 in the procedure';
end-proc;