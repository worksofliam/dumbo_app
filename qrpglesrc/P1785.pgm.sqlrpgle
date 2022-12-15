**free

ctl-opt dftactgrp(*no);

dcl-pi P1785;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P153.rpgleinc'
/copy 'qrpgleref/P1422.rpgleinc'
/copy 'qrpgleref/P1104.rpgleinc'

dcl-ds theTable extname('T976') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T976 LIMIT 1;

theCharVar = 'Hello from P1785';
dsply theCharVar;
callp localProc();
P153();
P1422();
P1104();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1785 in the procedure';
end-proc;