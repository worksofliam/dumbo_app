**free

ctl-opt dftactgrp(*no);

dcl-pi P3836;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P870.rpgleinc'
/copy 'qrpgleref/P3008.rpgleinc'
/copy 'qrpgleref/P3320.rpgleinc'

dcl-ds T24 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T24 FROM T24 LIMIT 1;

theCharVar = 'Hello from P3836';
dsply theCharVar;
callp localProc();
P870();
P3008();
P3320();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3836 in the procedure';
end-proc;