**free

ctl-opt dftactgrp(*no);

dcl-pi P2694;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P952.rpgleinc'
/copy 'qrpgleref/P890.rpgleinc'
/copy 'qrpgleref/P871.rpgleinc'

dcl-ds theTable extname('T15') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T15 LIMIT 1;

theCharVar = 'Hello from P2694';
dsply theCharVar;
callp localProc();
P952();
P890();
P871();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2694 in the procedure';
end-proc;