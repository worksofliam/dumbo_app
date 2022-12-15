**free

ctl-opt dftactgrp(*no);

dcl-pi P2871;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P452.rpgleinc'
/copy 'qrpgleref/P412.rpgleinc'
/copy 'qrpgleref/P977.rpgleinc'

dcl-ds theTable extname('T610') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T610 LIMIT 1;

theCharVar = 'Hello from P2871';
dsply theCharVar;
callp localProc();
P452();
P412();
P977();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2871 in the procedure';
end-proc;