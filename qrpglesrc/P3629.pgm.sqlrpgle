**free

ctl-opt dftactgrp(*no);

dcl-pi P3629;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2792.rpgleinc'
/copy 'qrpgleref/P3139.rpgleinc'
/copy 'qrpgleref/P2386.rpgleinc'

dcl-ds T284 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T284 FROM T284 LIMIT 1;

theCharVar = 'Hello from P3629';
dsply theCharVar;
callp localProc();
P2792();
P3139();
P2386();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3629 in the procedure';
end-proc;