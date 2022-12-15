**free

ctl-opt dftactgrp(*no);

dcl-pi P779;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P346.rpgleinc'
/copy 'qrpgleref/P239.rpgleinc'
/copy 'qrpgleref/P671.rpgleinc'

dcl-ds theTable extname('T1425') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1425 LIMIT 1;

theCharVar = 'Hello from P779';
dsply theCharVar;
callp localProc();
P346();
P239();
P671();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P779 in the procedure';
end-proc;