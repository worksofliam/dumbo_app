**free

ctl-opt dftactgrp(*no);

dcl-pi P3732;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3595.rpgleinc'
/copy 'qrpgleref/P3253.rpgleinc'
/copy 'qrpgleref/P353.rpgleinc'

dcl-ds theTable extname('T512') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T512 LIMIT 1;

theCharVar = 'Hello from P3732';
dsply theCharVar;
callp localProc();
P3595();
P3253();
P353();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3732 in the procedure';
end-proc;