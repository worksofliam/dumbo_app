**free

ctl-opt dftactgrp(*no);

dcl-pi P96;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds theTable extname('T1174') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1174 LIMIT 1;

theCharVar = 'Hello from P96';
dsply theCharVar;
callp localProc();
P79();
P32();
P43();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P96 in the procedure';
end-proc;