**free

ctl-opt dftactgrp(*no);

dcl-pi P5559;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4453.rpgleinc'
/copy 'qrpgleref/P314.rpgleinc'
/copy 'qrpgleref/P2188.rpgleinc'

dcl-ds T619 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T619 FROM T619 LIMIT 1;

theCharVar = 'Hello from P5559';
dsply theCharVar;
callp localProc();
P4453();
P314();
P2188();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5559 in the procedure';
end-proc;