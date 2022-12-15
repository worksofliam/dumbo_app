**free

ctl-opt dftactgrp(*no);

dcl-pi P1652;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P392.rpgleinc'
/copy 'qrpgleref/P1091.rpgleinc'
/copy 'qrpgleref/P732.rpgleinc'

dcl-ds T1122 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1122 FROM T1122 LIMIT 1;

theCharVar = 'Hello from P1652';
dsply theCharVar;
callp localProc();
P392();
P1091();
P732();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1652 in the procedure';
end-proc;