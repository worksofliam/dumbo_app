**free

ctl-opt dftactgrp(*no);

dcl-pi P1040;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P751.rpgleinc'
/copy 'qrpgleref/P1011.rpgleinc'
/copy 'qrpgleref/P708.rpgleinc'

dcl-ds T9 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T9 FROM T9 LIMIT 1;

theCharVar = 'Hello from P1040';
dsply theCharVar;
callp localProc();
P751();
P1011();
P708();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1040 in the procedure';
end-proc;