**free

ctl-opt dftactgrp(*no);

dcl-pi P214;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P81.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'

dcl-ds T450 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T450 FROM T450 LIMIT 1;

theCharVar = 'Hello from P214';
dsply theCharVar;
callp localProc();
P79();
P81();
P130();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P214 in the procedure';
end-proc;