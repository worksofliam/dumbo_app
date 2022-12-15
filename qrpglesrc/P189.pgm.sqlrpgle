**free

ctl-opt dftactgrp(*no);

dcl-pi P189;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P36.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'

dcl-ds theTable extname('T229') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T229 LIMIT 1;

theCharVar = 'Hello from P189';
dsply theCharVar;
callp localProc();
P21();
P36();
P123();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P189 in the procedure';
end-proc;