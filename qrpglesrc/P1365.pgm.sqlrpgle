**free

ctl-opt dftactgrp(*no);

dcl-pi P1365;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1182.rpgleinc'
/copy 'qrpgleref/P400.rpgleinc'
/copy 'qrpgleref/P536.rpgleinc'

dcl-ds theTable extname('T36') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T36 LIMIT 1;

theCharVar = 'Hello from P1365';
dsply theCharVar;
callp localProc();
P1182();
P400();
P536();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1365 in the procedure';
end-proc;