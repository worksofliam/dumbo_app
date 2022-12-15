**free

ctl-opt dftactgrp(*no);

dcl-pi P74;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'

dcl-ds theTable extname('T153') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T153 LIMIT 1;

theCharVar = 'Hello from P74';
dsply theCharVar;
callp localProc();
P66();
P47();
P54();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P74 in the procedure';
end-proc;