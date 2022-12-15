**free

ctl-opt dftactgrp(*no);

dcl-pi P250;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P115.rpgleinc'

dcl-ds theTable extname('T155') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T155 LIMIT 1;

theCharVar = 'Hello from P250';
dsply theCharVar;
callp localProc();
P24();
P60();
P115();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P250 in the procedure';
end-proc;