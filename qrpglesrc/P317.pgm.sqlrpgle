**free

ctl-opt dftactgrp(*no);

dcl-pi P317;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P167.rpgleinc'
/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'

dcl-ds T1236 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1236 FROM T1236 LIMIT 1;

theCharVar = 'Hello from P317';
dsply theCharVar;
callp localProc();
P167();
P221();
P112();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P317 in the procedure';
end-proc;