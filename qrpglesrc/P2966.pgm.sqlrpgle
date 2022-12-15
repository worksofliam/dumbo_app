**free

ctl-opt dftactgrp(*no);

dcl-pi P2966;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P216.rpgleinc'
/copy 'qrpgleref/P2668.rpgleinc'
/copy 'qrpgleref/P2908.rpgleinc'

dcl-ds theTable extname('T69') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T69 LIMIT 1;

theCharVar = 'Hello from P2966';
dsply theCharVar;
callp localProc();
P216();
P2668();
P2908();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2966 in the procedure';
end-proc;