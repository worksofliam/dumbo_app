**free

ctl-opt dftactgrp(*no);

dcl-pi P690;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P258.rpgleinc'
/copy 'qrpgleref/P180.rpgleinc'
/copy 'qrpgleref/P385.rpgleinc'

dcl-ds T146 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T146 FROM T146 LIMIT 1;

theCharVar = 'Hello from P690';
dsply theCharVar;
callp localProc();
P258();
P180();
P385();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P690 in the procedure';
end-proc;