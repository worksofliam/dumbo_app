**free

ctl-opt dftactgrp(*no);

dcl-pi P537;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P220.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P377.rpgleinc'

dcl-ds theTable extname('T1651') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1651 LIMIT 1;

theCharVar = 'Hello from P537';
dsply theCharVar;
callp localProc();
P220();
P34();
P377();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P537 in the procedure';
end-proc;