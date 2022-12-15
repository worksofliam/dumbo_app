**free

ctl-opt dftactgrp(*no);

dcl-pi P1683;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P1542.rpgleinc'
/copy 'qrpgleref/P1484.rpgleinc'

dcl-ds T1118 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1118 FROM T1118 LIMIT 1;

theCharVar = 'Hello from P1683';
dsply theCharVar;
callp localProc();
P103();
P1542();
P1484();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1683 in the procedure';
end-proc;