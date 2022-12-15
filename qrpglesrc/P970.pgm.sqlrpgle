**free

ctl-opt dftactgrp(*no);

dcl-pi P970;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P661.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'
/copy 'qrpgleref/P425.rpgleinc'

dcl-ds theTable extname('T142') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T142 LIMIT 1;

theCharVar = 'Hello from P970';
dsply theCharVar;
callp localProc();
P661();
P126();
P425();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P970 in the procedure';
end-proc;