**free

ctl-opt dftactgrp(*no);

dcl-pi P3516;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2988.rpgleinc'
/copy 'qrpgleref/P749.rpgleinc'
/copy 'qrpgleref/P3135.rpgleinc'

dcl-ds T724 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T724 FROM T724 LIMIT 1;

theCharVar = 'Hello from P3516';
dsply theCharVar;
callp localProc();
P2988();
P749();
P3135();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3516 in the procedure';
end-proc;