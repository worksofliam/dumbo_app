**free

ctl-opt dftactgrp(*no);

dcl-pi P17;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'

dcl-ds T669 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T669 FROM T669 LIMIT 1;

theCharVar = 'Hello from P17';
dsply theCharVar;
callp localProc();
P6();
P11();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P17 in the procedure';
end-proc;