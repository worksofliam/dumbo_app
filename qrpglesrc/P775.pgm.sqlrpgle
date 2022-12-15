**free

ctl-opt dftactgrp(*no);

dcl-pi P775;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P380.rpgleinc'
/copy 'qrpgleref/P213.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'

dcl-ds T1620 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1620 FROM T1620 LIMIT 1;

theCharVar = 'Hello from P775';
dsply theCharVar;
callp localProc();
P380();
P213();
P162();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P775 in the procedure';
end-proc;