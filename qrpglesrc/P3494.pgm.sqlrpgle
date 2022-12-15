**free

ctl-opt dftactgrp(*no);

dcl-pi P3494;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2911.rpgleinc'
/copy 'qrpgleref/P3084.rpgleinc'
/copy 'qrpgleref/P183.rpgleinc'

dcl-ds T58 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T58 FROM T58 LIMIT 1;

theCharVar = 'Hello from P3494';
dsply theCharVar;
callp localProc();
P2911();
P3084();
P183();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3494 in the procedure';
end-proc;