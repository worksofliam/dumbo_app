**free

ctl-opt dftactgrp(*no);

dcl-pi P3386;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1274.rpgleinc'
/copy 'qrpgleref/P1207.rpgleinc'
/copy 'qrpgleref/P286.rpgleinc'

dcl-ds theTable extname('T536') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T536 LIMIT 1;

theCharVar = 'Hello from P3386';
dsply theCharVar;
callp localProc();
P1274();
P1207();
P286();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3386 in the procedure';
end-proc;