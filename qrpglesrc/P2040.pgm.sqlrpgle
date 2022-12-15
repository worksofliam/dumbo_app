**free

ctl-opt dftactgrp(*no);

dcl-pi P2040;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1876.rpgleinc'
/copy 'qrpgleref/P1487.rpgleinc'
/copy 'qrpgleref/P271.rpgleinc'

dcl-ds theTable extname('T356') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T356 LIMIT 1;

theCharVar = 'Hello from P2040';
dsply theCharVar;
callp localProc();
P1876();
P1487();
P271();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2040 in the procedure';
end-proc;