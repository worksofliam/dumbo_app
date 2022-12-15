**free

ctl-opt dftactgrp(*no);

dcl-pi P1375;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P188.rpgleinc'
/copy 'qrpgleref/P901.rpgleinc'
/copy 'qrpgleref/P1055.rpgleinc'

dcl-ds T1623 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1623 FROM T1623 LIMIT 1;

theCharVar = 'Hello from P1375';
dsply theCharVar;
callp localProc();
P188();
P901();
P1055();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1375 in the procedure';
end-proc;