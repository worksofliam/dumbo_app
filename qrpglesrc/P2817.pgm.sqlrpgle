**free

ctl-opt dftactgrp(*no);

dcl-pi P2817;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1181.rpgleinc'
/copy 'qrpgleref/P385.rpgleinc'
/copy 'qrpgleref/P1211.rpgleinc'

dcl-ds theTable extname('T593') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T593 LIMIT 1;

theCharVar = 'Hello from P2817';
dsply theCharVar;
callp localProc();
P1181();
P385();
P1211();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2817 in the procedure';
end-proc;