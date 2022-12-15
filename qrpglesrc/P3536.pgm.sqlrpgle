**free

ctl-opt dftactgrp(*no);

dcl-pi P3536;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P3276.rpgleinc'
/copy 'qrpgleref/P299.rpgleinc'

dcl-ds theTable extname('T897') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T897 LIMIT 1;

theCharVar = 'Hello from P3536';
dsply theCharVar;
callp localProc();
P59();
P3276();
P299();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3536 in the procedure';
end-proc;