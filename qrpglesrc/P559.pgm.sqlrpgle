**free

ctl-opt dftactgrp(*no);

dcl-pi P559;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P203.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'

dcl-ds T114 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T114 FROM T114 LIMIT 1;

theCharVar = 'Hello from P559';
dsply theCharVar;
callp localProc();
P203();
P218();
P70();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P559 in the procedure';
end-proc;