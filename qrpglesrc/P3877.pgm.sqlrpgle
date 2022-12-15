**free

ctl-opt dftactgrp(*no);

dcl-pi P3877;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2515.rpgleinc'
/copy 'qrpgleref/P3419.rpgleinc'
/copy 'qrpgleref/P209.rpgleinc'

dcl-ds theTable extname('T326') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T326 LIMIT 1;

theCharVar = 'Hello from P3877';
dsply theCharVar;
callp localProc();
P2515();
P3419();
P209();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3877 in the procedure';
end-proc;