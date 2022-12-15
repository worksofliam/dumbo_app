**free

ctl-opt dftactgrp(*no);

dcl-pi P272;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'

dcl-ds theTable extname('T50') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T50 LIMIT 1;

theCharVar = 'Hello from P272';
dsply theCharVar;
callp localProc();
P21();
P34();
P38();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P272 in the procedure';
end-proc;