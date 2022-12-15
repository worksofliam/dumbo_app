**free

ctl-opt dftactgrp(*no);

dcl-pi P801;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P431.rpgleinc'
/copy 'qrpgleref/P729.rpgleinc'
/copy 'qrpgleref/P117.rpgleinc'

dcl-ds theTable extname('T1504') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1504 LIMIT 1;

theCharVar = 'Hello from P801';
dsply theCharVar;
callp localProc();
P431();
P729();
P117();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P801 in the procedure';
end-proc;