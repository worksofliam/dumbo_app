**free

ctl-opt dftactgrp(*no);

dcl-pi P222;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P86.rpgleinc'

dcl-ds T164 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T164 FROM T164 LIMIT 1;

theCharVar = 'Hello from P222';
dsply theCharVar;
callp localProc();
P79();
P6();
P86();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P222 in the procedure';
end-proc;