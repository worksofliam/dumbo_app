**free

ctl-opt dftactgrp(*no);

dcl-pi P1157;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1018.rpgleinc'
/copy 'qrpgleref/P980.rpgleinc'
/copy 'qrpgleref/P1001.rpgleinc'

dcl-ds theTable extname('T228') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T228 LIMIT 1;

theCharVar = 'Hello from P1157';
dsply theCharVar;
callp localProc();
P1018();
P980();
P1001();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1157 in the procedure';
end-proc;