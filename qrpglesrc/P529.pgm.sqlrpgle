**free

ctl-opt dftactgrp(*no);

dcl-pi P529;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P351.rpgleinc'
/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'

dcl-ds theTable extname('T506') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T506 LIMIT 1;

theCharVar = 'Hello from P529';
dsply theCharVar;
callp localProc();
P351();
P117();
P31();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P529 in the procedure';
end-proc;