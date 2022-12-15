**free

ctl-opt dftactgrp(*no);

dcl-pi P23;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'

dcl-ds theTable extname('T203') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T203 LIMIT 1;

theCharVar = 'Hello from P23';
dsply theCharVar;
callp localProc();
P4();
P21();
P2();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P23 in the procedure';
end-proc;