**free

ctl-opt dftactgrp(*no);

dcl-pi P4905;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3299.rpgleinc'
/copy 'qrpgleref/P1558.rpgleinc'
/copy 'qrpgleref/P4442.rpgleinc'

dcl-ds theTable extname('T1782') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1782 LIMIT 1;

theCharVar = 'Hello from P4905';
dsply theCharVar;
callp localProc();
P3299();
P1558();
P4442();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4905 in the procedure';
end-proc;