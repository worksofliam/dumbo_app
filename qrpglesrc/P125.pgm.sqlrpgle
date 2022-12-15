**free

ctl-opt dftactgrp(*no);

dcl-pi P125;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds theTable extname('T1662') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1662 LIMIT 1;

theCharVar = 'Hello from P125';
dsply theCharVar;
callp localProc();
P85();
P6();
P28();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P125 in the procedure';
end-proc;