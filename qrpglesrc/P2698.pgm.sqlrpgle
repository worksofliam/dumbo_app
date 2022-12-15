**free

ctl-opt dftactgrp(*no);

dcl-pi P2698;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P80.rpgleinc'
/copy 'qrpgleref/P1153.rpgleinc'
/copy 'qrpgleref/P728.rpgleinc'

dcl-ds theTable extname('T677') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T677 LIMIT 1;

theCharVar = 'Hello from P2698';
dsply theCharVar;
callp localProc();
P80();
P1153();
P728();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2698 in the procedure';
end-proc;