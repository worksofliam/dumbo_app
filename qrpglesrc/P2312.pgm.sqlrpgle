**free

ctl-opt dftactgrp(*no);

dcl-pi P2312;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P769.rpgleinc'
/copy 'qrpgleref/P1060.rpgleinc'
/copy 'qrpgleref/P625.rpgleinc'

dcl-ds theTable extname('T1218') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1218 LIMIT 1;

theCharVar = 'Hello from P2312';
dsply theCharVar;
callp localProc();
P769();
P1060();
P625();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2312 in the procedure';
end-proc;