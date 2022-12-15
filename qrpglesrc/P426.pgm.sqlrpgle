**free

ctl-opt dftactgrp(*no);

dcl-pi P426;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P415.rpgleinc'
/copy 'qrpgleref/P311.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'

dcl-ds theTable extname('T964') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T964 LIMIT 1;

theCharVar = 'Hello from P426';
dsply theCharVar;
callp localProc();
P415();
P311();
P20();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P426 in the procedure';
end-proc;