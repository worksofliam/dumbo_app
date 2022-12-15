**free

ctl-opt dftactgrp(*no);

dcl-pi P115;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P81.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'

dcl-ds theTable extname('T221') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T221 LIMIT 1;

theCharVar = 'Hello from P115';
dsply theCharVar;
callp localProc();
P81();
P13();
P100();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P115 in the procedure';
end-proc;