**free

ctl-opt dftactgrp(*no);

dcl-pi P5054;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P498.rpgleinc'
/copy 'qrpgleref/P3432.rpgleinc'
/copy 'qrpgleref/P4758.rpgleinc'

dcl-ds theTable extname('T898') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T898 LIMIT 1;

theCharVar = 'Hello from P5054';
dsply theCharVar;
callp localProc();
P498();
P3432();
P4758();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5054 in the procedure';
end-proc;