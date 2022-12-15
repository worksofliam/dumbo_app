**free

ctl-opt dftactgrp(*no);

dcl-pi P272;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P81.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'

dcl-ds theTable extname('T964') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T964 LIMIT 1;

theCharVar = 'Hello from P272';
dsply theCharVar;
callp localProc();
P81();
P130();
P250();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P272 in the procedure';
end-proc;