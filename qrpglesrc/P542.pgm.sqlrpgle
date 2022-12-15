**free

ctl-opt dftactgrp(*no);

dcl-pi P542;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P324.rpgleinc'
/copy 'qrpgleref/P465.rpgleinc'
/copy 'qrpgleref/P450.rpgleinc'

dcl-ds theTable extname('T1059') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1059 LIMIT 1;

theCharVar = 'Hello from P542';
dsply theCharVar;
callp localProc();
P324();
P465();
P450();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P542 in the procedure';
end-proc;