**free

ctl-opt dftactgrp(*no);

dcl-pi P780;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P497.rpgleinc'
/copy 'qrpgleref/P155.rpgleinc'
/copy 'qrpgleref/P704.rpgleinc'

dcl-ds T476 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T476 FROM T476 LIMIT 1;

theCharVar = 'Hello from P780';
dsply theCharVar;
callp localProc();
P497();
P155();
P704();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P780 in the procedure';
end-proc;