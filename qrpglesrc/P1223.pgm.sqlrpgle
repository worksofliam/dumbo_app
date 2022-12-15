**free

ctl-opt dftactgrp(*no);

dcl-pi P1223;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P814.rpgleinc'
/copy 'qrpgleref/P1207.rpgleinc'
/copy 'qrpgleref/P770.rpgleinc'

dcl-ds theTable extname('T162') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T162 LIMIT 1;

theCharVar = 'Hello from P1223';
dsply theCharVar;
callp localProc();
P814();
P1207();
P770();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1223 in the procedure';
end-proc;