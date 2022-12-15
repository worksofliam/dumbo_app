**free

ctl-opt dftactgrp(*no);

dcl-pi P1440;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P953.rpgleinc'
/copy 'qrpgleref/P216.rpgleinc'
/copy 'qrpgleref/P705.rpgleinc'

dcl-ds theTable extname('T381') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T381 LIMIT 1;

theCharVar = 'Hello from P1440';
dsply theCharVar;
callp localProc();
P953();
P216();
P705();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1440 in the procedure';
end-proc;