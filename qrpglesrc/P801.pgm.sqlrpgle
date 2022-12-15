**free

ctl-opt dftactgrp(*no);

dcl-pi P801;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P463.rpgleinc'
/copy 'qrpgleref/P619.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'

dcl-ds theTable extname('T214') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T214 LIMIT 1;

theCharVar = 'Hello from P801';
dsply theCharVar;
callp localProc();
P463();
P619();
P76();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P801 in the procedure';
end-proc;