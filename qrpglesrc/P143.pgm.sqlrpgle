**free

ctl-opt dftactgrp(*no);

dcl-pi P143;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'

dcl-ds theTable extname('T529') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T529 LIMIT 1;

theCharVar = 'Hello from P143';
dsply theCharVar;
callp localProc();
P20();
P38();
P31();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P143 in the procedure';
end-proc;