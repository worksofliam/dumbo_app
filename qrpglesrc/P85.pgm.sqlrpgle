**free

ctl-opt dftactgrp(*no);

dcl-pi P85;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P42.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'

dcl-ds theTable extname('T1506') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1506 LIMIT 1;

theCharVar = 'Hello from P85';
dsply theCharVar;
callp localProc();
P42();
P31();
P46();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P85 in the procedure';
end-proc;