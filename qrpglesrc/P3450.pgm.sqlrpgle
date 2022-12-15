**free

ctl-opt dftactgrp(*no);

dcl-pi P3450;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3054.rpgleinc'
/copy 'qrpgleref/P1685.rpgleinc'
/copy 'qrpgleref/P3258.rpgleinc'

dcl-ds theTable extname('T1175') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1175 LIMIT 1;

theCharVar = 'Hello from P3450';
dsply theCharVar;
callp localProc();
P3054();
P1685();
P3258();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3450 in the procedure';
end-proc;