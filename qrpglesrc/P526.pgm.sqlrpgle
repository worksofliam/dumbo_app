**free

ctl-opt dftactgrp(*no);

dcl-pi P526;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P293.rpgleinc'
/copy 'qrpgleref/P274.rpgleinc'
/copy 'qrpgleref/P452.rpgleinc'

dcl-ds theTable extname('T319') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T319 LIMIT 1;

theCharVar = 'Hello from P526';
dsply theCharVar;
callp localProc();
P293();
P274();
P452();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P526 in the procedure';
end-proc;