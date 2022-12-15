**free

ctl-opt dftactgrp(*no);

dcl-pi P581;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P331.rpgleinc'
/copy 'qrpgleref/P358.rpgleinc'
/copy 'qrpgleref/P458.rpgleinc'

dcl-ds theTable extname('T163') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T163 LIMIT 1;

theCharVar = 'Hello from P581';
dsply theCharVar;
callp localProc();
P331();
P358();
P458();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P581 in the procedure';
end-proc;