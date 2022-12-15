**free

ctl-opt dftactgrp(*no);

dcl-pi P375;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P194.rpgleinc'
/copy 'qrpgleref/P309.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'

dcl-ds theTable extname('T1116') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1116 LIMIT 1;

theCharVar = 'Hello from P375';
dsply theCharVar;
callp localProc();
P194();
P309();
P181();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P375 in the procedure';
end-proc;