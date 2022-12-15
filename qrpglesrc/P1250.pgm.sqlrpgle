**free

ctl-opt dftactgrp(*no);

dcl-pi P1250;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P752.rpgleinc'
/copy 'qrpgleref/P1074.rpgleinc'
/copy 'qrpgleref/P1068.rpgleinc'

dcl-ds T838 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T838 FROM T838 LIMIT 1;

theCharVar = 'Hello from P1250';
dsply theCharVar;
callp localProc();
P752();
P1074();
P1068();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1250 in the procedure';
end-proc;