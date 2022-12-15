**free

ctl-opt dftactgrp(*no);

dcl-pi P952;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P519.rpgleinc'
/copy 'qrpgleref/P266.rpgleinc'
/copy 'qrpgleref/P39.rpgleinc'

dcl-ds theTable extname('T688') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T688 LIMIT 1;

theCharVar = 'Hello from P952';
dsply theCharVar;
callp localProc();
P519();
P266();
P39();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P952 in the procedure';
end-proc;