**free

ctl-opt dftactgrp(*no);

dcl-pi P3673;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P3345.rpgleinc'
/copy 'qrpgleref/P1636.rpgleinc'

dcl-ds theTable extname('T45') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T45 LIMIT 1;

theCharVar = 'Hello from P3673';
dsply theCharVar;
callp localProc();
P181();
P3345();
P1636();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3673 in the procedure';
end-proc;