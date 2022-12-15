**free

ctl-opt dftactgrp(*no);

dcl-pi P4437;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3539.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P1881.rpgleinc'

dcl-ds theTable extname('T677') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T677 LIMIT 1;

theCharVar = 'Hello from P4437';
dsply theCharVar;
callp localProc();
P3539();
P14();
P1881();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4437 in the procedure';
end-proc;