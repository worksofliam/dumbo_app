**free

ctl-opt dftactgrp(*no);

dcl-pi P5151;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1136.rpgleinc'
/copy 'qrpgleref/P921.rpgleinc'
/copy 'qrpgleref/P593.rpgleinc'

dcl-ds theTable extname('T1514') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1514 LIMIT 1;

theCharVar = 'Hello from P5151';
dsply theCharVar;
callp localProc();
P1136();
P921();
P593();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5151 in the procedure';
end-proc;