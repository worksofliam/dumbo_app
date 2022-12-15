**free

ctl-opt dftactgrp(*no);

dcl-pi P1647;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P112.rpgleinc'
/copy 'qrpgleref/P1512.rpgleinc'
/copy 'qrpgleref/P772.rpgleinc'

dcl-ds T604 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T604 FROM T604 LIMIT 1;

theCharVar = 'Hello from P1647';
dsply theCharVar;
callp localProc();
P112();
P1512();
P772();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1647 in the procedure';
end-proc;