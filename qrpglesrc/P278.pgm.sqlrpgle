**free

ctl-opt dftactgrp(*no);

dcl-pi P278;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P135.rpgleinc'
/copy 'qrpgleref/P277.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'

dcl-ds theTable extname('T124') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T124 LIMIT 1;

theCharVar = 'Hello from P278';
dsply theCharVar;
callp localProc();
P135();
P277();
P127();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P278 in the procedure';
end-proc;