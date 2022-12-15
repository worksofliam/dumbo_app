**free

ctl-opt dftactgrp(*no);

dcl-pi P4533;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4349.rpgleinc'
/copy 'qrpgleref/P944.rpgleinc'
/copy 'qrpgleref/P4147.rpgleinc'

dcl-ds theTable extname('T1061') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1061 LIMIT 1;

theCharVar = 'Hello from P4533';
dsply theCharVar;
callp localProc();
P4349();
P944();
P4147();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4533 in the procedure';
end-proc;