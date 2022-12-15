**free

ctl-opt dftactgrp(*no);

dcl-pi P1150;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P190.rpgleinc'
/copy 'qrpgleref/P269.rpgleinc'
/copy 'qrpgleref/P1142.rpgleinc'

dcl-ds T1645 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1645 FROM T1645 LIMIT 1;

theCharVar = 'Hello from P1150';
dsply theCharVar;
callp localProc();
P190();
P269();
P1142();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1150 in the procedure';
end-proc;