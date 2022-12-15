**free

ctl-opt dftactgrp(*no);

dcl-pi P2134;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P1408.rpgleinc'
/copy 'qrpgleref/P907.rpgleinc'

dcl-ds theTable extname('T244') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T244 LIMIT 1;

theCharVar = 'Hello from P2134';
dsply theCharVar;
callp localProc();
P31();
P1408();
P907();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2134 in the procedure';
end-proc;