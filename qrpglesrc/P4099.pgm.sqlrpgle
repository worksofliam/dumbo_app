**free

ctl-opt dftactgrp(*no);

dcl-pi P4099;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3801.rpgleinc'
/copy 'qrpgleref/P1992.rpgleinc'
/copy 'qrpgleref/P1416.rpgleinc'

dcl-ds T695 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T695 FROM T695 LIMIT 1;

theCharVar = 'Hello from P4099';
dsply theCharVar;
callp localProc();
P3801();
P1992();
P1416();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4099 in the procedure';
end-proc;