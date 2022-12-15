**free

ctl-opt dftactgrp(*no);

dcl-pi P977;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P752.rpgleinc'
/copy 'qrpgleref/P566.rpgleinc'

dcl-ds T364 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T364 FROM T364 LIMIT 1;

theCharVar = 'Hello from P977';
dsply theCharVar;
callp localProc();
P117();
P752();
P566();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P977 in the procedure';
end-proc;