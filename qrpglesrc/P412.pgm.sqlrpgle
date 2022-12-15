**free

ctl-opt dftactgrp(*no);

dcl-pi P412;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'

dcl-ds T407 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T407 FROM T407 LIMIT 1;

theCharVar = 'Hello from P412';
dsply theCharVar;
callp localProc();
P129();
P70();
P76();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P412 in the procedure';
end-proc;