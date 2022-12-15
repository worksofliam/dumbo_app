**free

ctl-opt dftactgrp(*no);

dcl-pi P415;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P235.rpgleinc'
/copy 'qrpgleref/P359.rpgleinc'
/copy 'qrpgleref/P344.rpgleinc'

dcl-ds theTable extname('T1132') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1132 LIMIT 1;

theCharVar = 'Hello from P415';
dsply theCharVar;
callp localProc();
P235();
P359();
P344();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P415 in the procedure';
end-proc;