**free

ctl-opt dftactgrp(*no);

dcl-pi P256;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P179.rpgleinc'

dcl-ds T110 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T110 FROM T110 LIMIT 1;

theCharVar = 'Hello from P256';
dsply theCharVar;
callp localProc();
P84();
P181();
P179();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P256 in the procedure';
end-proc;