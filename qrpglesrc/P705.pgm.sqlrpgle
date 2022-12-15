**free

ctl-opt dftactgrp(*no);

dcl-pi P705;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P152.rpgleinc'
/copy 'qrpgleref/P699.rpgleinc'
/copy 'qrpgleref/P149.rpgleinc'

dcl-ds T239 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T239 FROM T239 LIMIT 1;

theCharVar = 'Hello from P705';
dsply theCharVar;
callp localProc();
P152();
P699();
P149();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P705 in the procedure';
end-proc;