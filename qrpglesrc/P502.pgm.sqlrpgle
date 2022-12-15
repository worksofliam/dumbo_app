**free

ctl-opt dftactgrp(*no);

dcl-pi P502;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P474.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P243.rpgleinc'

dcl-ds T46 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T46 FROM T46 LIMIT 1;

theCharVar = 'Hello from P502';
dsply theCharVar;
callp localProc();
P474();
P69();
P243();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P502 in the procedure';
end-proc;