**free

ctl-opt dftactgrp(*no);

dcl-pi P4084;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4009.rpgleinc'
/copy 'qrpgleref/P1069.rpgleinc'
/copy 'qrpgleref/P2995.rpgleinc'

dcl-ds theTable extname('T1283') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1283 LIMIT 1;

theCharVar = 'Hello from P4084';
dsply theCharVar;
callp localProc();
P4009();
P1069();
P2995();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4084 in the procedure';
end-proc;