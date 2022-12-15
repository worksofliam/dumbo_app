**free

ctl-opt dftactgrp(*no);

dcl-pi P47;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'

dcl-ds T105 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T105 FROM T105 LIMIT 1;

theCharVar = 'Hello from P47';
dsply theCharVar;
callp localProc();
P38();
P25();
P32();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P47 in the procedure';
end-proc;