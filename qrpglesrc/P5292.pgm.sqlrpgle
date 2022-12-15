**free

ctl-opt dftactgrp(*no);

dcl-pi P5292;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P993.rpgleinc'
/copy 'qrpgleref/P947.rpgleinc'
/copy 'qrpgleref/P646.rpgleinc'

dcl-ds theTable extname('T318') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T318 LIMIT 1;

theCharVar = 'Hello from P5292';
dsply theCharVar;
callp localProc();
P993();
P947();
P646();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5292 in the procedure';
end-proc;