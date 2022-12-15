**free

ctl-opt dftactgrp(*no);

dcl-pi P718;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P248.rpgleinc'
/copy 'qrpgleref/P646.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds theTable extname('T468') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T468 LIMIT 1;

theCharVar = 'Hello from P718';
dsply theCharVar;
callp localProc();
P248();
P646();
P28();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P718 in the procedure';
end-proc;