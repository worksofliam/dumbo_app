**free

ctl-opt dftactgrp(*no);

dcl-pi P501;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P240.rpgleinc'
/copy 'qrpgleref/P430.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'

dcl-ds theTable extname('T1206') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1206 LIMIT 1;

theCharVar = 'Hello from P501';
dsply theCharVar;
callp localProc();
P240();
P430();
P21();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P501 in the procedure';
end-proc;