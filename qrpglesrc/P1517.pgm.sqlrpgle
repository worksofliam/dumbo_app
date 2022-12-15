**free

ctl-opt dftactgrp(*no);

dcl-pi P1517;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P155.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P392.rpgleinc'

dcl-ds T526 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T526 FROM T526 LIMIT 1;

theCharVar = 'Hello from P1517';
dsply theCharVar;
callp localProc();
P155();
P4();
P392();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1517 in the procedure';
end-proc;