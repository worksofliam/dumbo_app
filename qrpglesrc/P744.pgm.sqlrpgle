**free

ctl-opt dftactgrp(*no);

dcl-pi P744;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P679.rpgleinc'
/copy 'qrpgleref/P604.rpgleinc'
/copy 'qrpgleref/P429.rpgleinc'

dcl-ds theTable extname('T58') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T58 LIMIT 1;

theCharVar = 'Hello from P744';
dsply theCharVar;
callp localProc();
P679();
P604();
P429();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P744 in the procedure';
end-proc;