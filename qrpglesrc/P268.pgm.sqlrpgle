**free

ctl-opt dftactgrp(*no);

dcl-pi P268;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P205.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'

dcl-ds theTable extname('T26') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T26 LIMIT 1;

theCharVar = 'Hello from P268';
dsply theCharVar;
callp localProc();
P205();
P26();
P133();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P268 in the procedure';
end-proc;