**free

ctl-opt dftactgrp(*no);

dcl-pi P2557;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P870.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P206.rpgleinc'

dcl-ds theTable extname('T649') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T649 LIMIT 1;

theCharVar = 'Hello from P2557';
dsply theCharVar;
callp localProc();
P870();
P162();
P206();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2557 in the procedure';
end-proc;