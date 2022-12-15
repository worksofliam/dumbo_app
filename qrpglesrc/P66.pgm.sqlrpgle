**free

ctl-opt dftactgrp(*no);

dcl-pi P66;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'

dcl-ds theTable extname('T147') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T147 LIMIT 1;

theCharVar = 'Hello from P66';
dsply theCharVar;
callp localProc();
P1();
P57();
P64();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P66 in the procedure';
end-proc;