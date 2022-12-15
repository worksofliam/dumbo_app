**free

ctl-opt dftactgrp(*no);

dcl-pi P64;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'

dcl-ds theTable extname('T147') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T147 LIMIT 1;

theCharVar = 'Hello from P64';
dsply theCharVar;
callp localProc();
P26();
P40();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P64 in the procedure';
end-proc;