**free

ctl-opt dftactgrp(*no);

dcl-pi P747;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P605.rpgleinc'
/copy 'qrpgleref/P262.rpgleinc'

dcl-ds theTable extname('T1697') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1697 LIMIT 1;

theCharVar = 'Hello from P747';
dsply theCharVar;
callp localProc();
P22();
P605();
P262();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P747 in the procedure';
end-proc;