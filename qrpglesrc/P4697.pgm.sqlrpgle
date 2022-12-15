**free

ctl-opt dftactgrp(*no);

dcl-pi P4697;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2943.rpgleinc'
/copy 'qrpgleref/P2982.rpgleinc'
/copy 'qrpgleref/P297.rpgleinc'

dcl-ds theTable extname('T95') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T95 LIMIT 1;

theCharVar = 'Hello from P4697';
dsply theCharVar;
callp localProc();
P2943();
P2982();
P297();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4697 in the procedure';
end-proc;